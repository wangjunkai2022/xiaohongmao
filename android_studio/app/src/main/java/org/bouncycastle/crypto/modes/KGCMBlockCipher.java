package org.bouncycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;
import org.bouncycastle.crypto.modes.kgcm.Tables16kKGCMMultiplier_512;
import org.bouncycastle.crypto.modes.kgcm.Tables4kKGCMMultiplier_128;
import org.bouncycastle.crypto.modes.kgcm.Tables8kKGCMMultiplier_256;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class KGCMBlockCipher implements AEADBlockCipher {
    private static final int MIN_MAC_BITS = 64;

    /* renamed from: b  reason: collision with root package name */
    private long[] f91295b;
    private final int blockSize;
    private BufferedBlockCipher ctrEngine;
    private BlockCipher engine;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private byte[] iv;
    private byte[] macBlock;
    private KGCMMultiplier multiplier;
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();
    private int macSize = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public ExposedByteArrayOutputStream() {
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public KGCMBlockCipher(BlockCipher blockCipher) {
        this.engine = blockCipher;
        this.ctrEngine = new BufferedBlockCipher(new KCTRBlockCipher(blockCipher));
        int blockSize = this.engine.getBlockSize();
        this.blockSize = blockSize;
        this.initialAssociatedText = new byte[blockSize];
        this.iv = new byte[blockSize];
        this.multiplier = createDefaultMultiplier(blockSize);
        this.f91295b = new long[blockSize >>> 3];
        this.macBlock = null;
    }

    private void calculateMac(byte[] bArr, int i4, int i10, int i11) {
        int i12 = i4 + i10;
        while (i4 < i12) {
            xorWithInput(this.f91295b, bArr, i4);
            this.multiplier.multiplyH(this.f91295b);
            i4 += this.blockSize;
        }
        long[] jArr = this.f91295b;
        jArr[0] = ((i11 & 4294967295L) << 3) ^ jArr[0];
        int i13 = this.blockSize >>> 4;
        jArr[i13] = jArr[i13] ^ ((4294967295L & i10) << 3);
        byte[] longToLittleEndian = Pack.longToLittleEndian(jArr);
        this.macBlock = longToLittleEndian;
        this.engine.processBlock(longToLittleEndian, 0, longToLittleEndian, 0);
    }

    private static KGCMMultiplier createDefaultMultiplier(int i4) {
        if (i4 != 16) {
            if (i4 != 32) {
                if (i4 == 64) {
                    return new Tables16kKGCMMultiplier_512();
                }
                throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
            }
            return new Tables8kKGCMMultiplier_256();
        }
        return new Tables4kKGCMMultiplier_128();
    }

    private void processAAD(byte[] bArr, int i4, int i10) {
        int i11 = i10 + i4;
        while (i4 < i11) {
            xorWithInput(this.f91295b, bArr, i4);
            this.multiplier.multiplyH(this.f91295b);
            i4 += this.blockSize;
        }
    }

    private static void xorWithInput(long[] jArr, byte[] bArr, int i4) {
        for (int i10 = 0; i10 < jArr.length; i10++) {
            jArr[i10] = jArr[i10] ^ Pack.littleEndianToLong(bArr, i4);
            i4 += 8;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        int doFinal;
        int size = this.data.size();
        if (this.forEncryption || size >= this.macSize) {
            byte[] bArr2 = new byte[this.blockSize];
            this.engine.processBlock(bArr2, 0, bArr2, 0);
            long[] jArr = new long[this.blockSize >>> 3];
            Pack.littleEndianToLong(bArr2, 0, jArr);
            this.multiplier.init(jArr);
            Arrays.fill(bArr2, (byte) 0);
            Arrays.fill(jArr, 0L);
            int size2 = this.associatedText.size();
            if (size2 > 0) {
                processAAD(this.associatedText.getBuffer(), 0, size2);
            }
            if (!this.forEncryption) {
                int i10 = size - this.macSize;
                if (bArr.length - i4 < i10) {
                    throw new OutputLengthException("Output buffer too short");
                }
                calculateMac(this.data.getBuffer(), 0, i10, size2);
                int processBytes = this.ctrEngine.processBytes(this.data.getBuffer(), 0, i10, bArr, i4);
                doFinal = processBytes + this.ctrEngine.doFinal(bArr, i4 + processBytes);
            } else if ((bArr.length - i4) - this.macSize < size) {
                throw new OutputLengthException("Output buffer too short");
            } else {
                int processBytes2 = this.ctrEngine.processBytes(this.data.getBuffer(), 0, size, bArr, i4);
                doFinal = processBytes2 + this.ctrEngine.doFinal(bArr, i4 + processBytes2);
                calculateMac(bArr, i4, size, size2);
            }
            byte[] bArr3 = this.macBlock;
            if (bArr3 != null) {
                if (this.forEncryption) {
                    System.arraycopy(bArr3, 0, bArr, i4 + doFinal, this.macSize);
                    reset();
                    return doFinal + this.macSize;
                }
                byte[] bArr4 = new byte[this.macSize];
                byte[] buffer = this.data.getBuffer();
                int i11 = this.macSize;
                System.arraycopy(buffer, size - i11, bArr4, 0, i11);
                int i12 = this.macSize;
                byte[] bArr5 = new byte[i12];
                System.arraycopy(this.macBlock, 0, bArr5, 0, i12);
                if (Arrays.constantTimeAreEqual(bArr4, bArr5)) {
                    reset();
                    return doFinal;
                }
                throw new InvalidCipherTextException("mac verification failed");
            }
            throw new IllegalStateException("mac is not calculated");
        }
        throw new InvalidCipherTextException("data too short");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KGCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        int i4 = this.macSize;
        byte[] bArr = new byte[i4];
        System.arraycopy(this.macBlock, 0, bArr, 0, i4);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i4) {
        int size = i4 + this.data.size();
        if (this.forEncryption) {
            return size + this.macSize;
        }
        int i10 = this.macSize;
        if (size < i10) {
            return 0;
        }
        return size - i10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter keyParameter;
        this.forEncryption = z9;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            byte[] nonce = aEADParameters.getNonce();
            byte[] bArr = this.iv;
            Arrays.fill(bArr, (byte) 0);
            System.arraycopy(nonce, 0, this.iv, bArr.length - nonce.length, nonce.length);
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 64 || macSize > (this.blockSize << 3) || (macSize & 7) != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            this.macSize = macSize >>> 3;
            keyParameter = aEADParameters.getKey();
            byte[] bArr2 = this.initialAssociatedText;
            if (bArr2 != null) {
                processAADBytes(bArr2, 0, bArr2.length);
            }
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Invalid parameter passed");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            byte[] bArr3 = this.iv;
            Arrays.fill(bArr3, (byte) 0);
            System.arraycopy(iv, 0, this.iv, bArr3.length - iv.length, iv.length);
            this.initialAssociatedText = null;
            this.macSize = this.blockSize;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
        }
        this.macBlock = new byte[this.blockSize];
        this.ctrEngine.init(true, new ParametersWithIV(keyParameter, this.iv));
        this.engine.init(true, keyParameter);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        this.associatedText.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i4, int i10) {
        this.associatedText.write(bArr, i4, i10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        this.data.write(b10);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (bArr.length >= i4 + i10) {
            this.data.write(bArr, i4, i10);
            return 0;
        }
        throw new DataLengthException("input buffer too short");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        Arrays.fill(this.f91295b, 0L);
        this.engine.reset();
        this.data.reset();
        this.associatedText.reset();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
