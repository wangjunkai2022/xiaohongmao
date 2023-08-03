package org.bouncycastle.crypto.modes;

import com.google.common.primitives.k;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class CCMBlockCipher implements AEADBlockCipher {
    private int blockSize;
    private BlockCipher cipher;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private CipherParameters keyParam;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public ExposedByteArrayOutputStream() {
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public CCMBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.macBlock = new byte[blockSize];
        if (blockSize != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
    }

    private int calculateMac(byte[] bArr, int i4, int i10, byte[] bArr2) {
        CBCBlockCipherMac cBCBlockCipherMac = new CBCBlockCipherMac(this.cipher, this.macSize * 8);
        cBCBlockCipherMac.init(this.keyParam);
        byte[] bArr3 = new byte[16];
        if (hasAssociatedText()) {
            bArr3[0] = (byte) (bArr3[0] | k.f34876a);
        }
        int i11 = 2;
        bArr3[0] = (byte) (bArr3[0] | ((((cBCBlockCipherMac.getMacSize() - 2) / 2) & 7) << 3));
        byte b10 = bArr3[0];
        byte[] bArr4 = this.nonce;
        bArr3[0] = (byte) (b10 | (((15 - bArr4.length) - 1) & 7));
        System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
        int i12 = i10;
        int i13 = 1;
        while (i12 > 0) {
            bArr3[16 - i13] = (byte) (i12 & 255);
            i12 >>>= 8;
            i13++;
        }
        cBCBlockCipherMac.update(bArr3, 0, 16);
        if (hasAssociatedText()) {
            int associatedTextLength = getAssociatedTextLength();
            if (associatedTextLength < 65280) {
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
            } else {
                cBCBlockCipherMac.update((byte) -1);
                cBCBlockCipherMac.update((byte) -2);
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 24));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 16));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
                i11 = 6;
            }
            byte[] bArr5 = this.initialAssociatedText;
            if (bArr5 != null) {
                cBCBlockCipherMac.update(bArr5, 0, bArr5.length);
            }
            if (this.associatedText.size() > 0) {
                cBCBlockCipherMac.update(this.associatedText.getBuffer(), 0, this.associatedText.size());
            }
            int i14 = (i11 + associatedTextLength) % 16;
            if (i14 != 0) {
                while (i14 != 16) {
                    cBCBlockCipherMac.update((byte) 0);
                    i14++;
                }
            }
        }
        cBCBlockCipherMac.update(bArr, i4, i10);
        return cBCBlockCipherMac.doFinal(bArr2, 0);
    }

    private int getAssociatedTextLength() {
        int size = this.associatedText.size();
        byte[] bArr = this.initialAssociatedText;
        return size + (bArr == null ? 0 : bArr.length);
    }

    private int getMacSize(boolean z9, int i4) {
        if (!z9 || (i4 >= 32 && i4 <= 128 && (i4 & 15) == 0)) {
            return i4 >>> 3;
        }
        throw new IllegalArgumentException("tag length in octets must be one of {4,6,8,10,12,14,16}");
    }

    private boolean hasAssociatedText() {
        return getAssociatedTextLength() > 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        int processPacket = processPacket(this.data.getBuffer(), 0, this.data.size(), bArr, i4);
        reset();
        return processPacket;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CCM";
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
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        this.forEncryption = z9;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            this.nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            this.macSize = getMacSize(z9, aEADParameters.getMacSize());
            parameters = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to CCM: " + cipherParameters.getClass().getName());
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = getMacSize(z9, 64);
            parameters = parametersWithIV.getParameters();
        }
        if (parameters != null) {
            this.keyParam = parameters;
        }
        byte[] bArr = this.nonce;
        if (bArr == null || bArr.length < 7 || bArr.length > 13) {
            throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
        }
        reset();
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
        throw new DataLengthException("Input buffer too short");
    }

    public int processPacket(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IllegalStateException, InvalidCipherTextException, DataLengthException {
        int i12;
        if (this.keyParam == null) {
            throw new IllegalStateException("CCM cipher unitialized.");
        }
        byte[] bArr3 = this.nonce;
        int length = 15 - bArr3.length;
        if (length < 4 && i10 >= (1 << (length * 8))) {
            throw new IllegalStateException("CCM packet too large for choice of q.");
        }
        byte[] bArr4 = new byte[this.blockSize];
        bArr4[0] = (byte) ((length - 1) & 7);
        System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
        SICBlockCipher sICBlockCipher = new SICBlockCipher(this.cipher);
        sICBlockCipher.init(this.forEncryption, new ParametersWithIV(this.keyParam, bArr4));
        if (!this.forEncryption) {
            int i13 = this.macSize;
            if (i10 >= i13) {
                int i14 = i10 - i13;
                if (bArr2.length >= i14 + i11) {
                    int i15 = i4 + i14;
                    System.arraycopy(bArr, i15, this.macBlock, 0, i13);
                    byte[] bArr5 = this.macBlock;
                    sICBlockCipher.processBlock(bArr5, 0, bArr5, 0);
                    int i16 = this.macSize;
                    while (true) {
                        byte[] bArr6 = this.macBlock;
                        if (i16 == bArr6.length) {
                            break;
                        }
                        bArr6[i16] = 0;
                        i16++;
                    }
                    int i17 = i4;
                    int i18 = i11;
                    while (true) {
                        i12 = this.blockSize;
                        if (i17 >= i15 - i12) {
                            break;
                        }
                        sICBlockCipher.processBlock(bArr, i17, bArr2, i18);
                        int i19 = this.blockSize;
                        i18 += i19;
                        i17 += i19;
                    }
                    byte[] bArr7 = new byte[i12];
                    int i20 = i14 - (i17 - i4);
                    System.arraycopy(bArr, i17, bArr7, 0, i20);
                    sICBlockCipher.processBlock(bArr7, 0, bArr7, 0);
                    System.arraycopy(bArr7, 0, bArr2, i18, i20);
                    byte[] bArr8 = new byte[this.blockSize];
                    calculateMac(bArr2, i11, i14, bArr8);
                    if (Arrays.constantTimeAreEqual(this.macBlock, bArr8)) {
                        return i14;
                    }
                    throw new InvalidCipherTextException("mac check in CCM failed");
                }
                throw new OutputLengthException("Output buffer too short.");
            }
            throw new InvalidCipherTextException("data too short");
        }
        int i21 = this.macSize + i10;
        if (bArr2.length < i21 + i11) {
            throw new OutputLengthException("Output buffer too short.");
        }
        calculateMac(bArr, i4, i10, this.macBlock);
        byte[] bArr9 = new byte[this.blockSize];
        sICBlockCipher.processBlock(this.macBlock, 0, bArr9, 0);
        int i22 = i4;
        int i23 = i11;
        while (true) {
            int i24 = i4 + i10;
            int i25 = this.blockSize;
            if (i22 >= i24 - i25) {
                byte[] bArr10 = new byte[i25];
                int i26 = i24 - i22;
                System.arraycopy(bArr, i22, bArr10, 0, i26);
                sICBlockCipher.processBlock(bArr10, 0, bArr10, 0);
                System.arraycopy(bArr10, 0, bArr2, i23, i26);
                System.arraycopy(bArr9, 0, bArr2, i11 + i10, this.macSize);
                return i21;
            }
            sICBlockCipher.processBlock(bArr, i22, bArr2, i23);
            int i27 = this.blockSize;
            i23 += i27;
            i22 += i27;
        }
    }

    public byte[] processPacket(byte[] bArr, int i4, int i10) throws IllegalStateException, InvalidCipherTextException {
        int i11;
        if (this.forEncryption) {
            i11 = this.macSize + i10;
        } else {
            int i12 = this.macSize;
            if (i10 < i12) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 = i10 - i12;
        }
        byte[] bArr2 = new byte[i11];
        processPacket(bArr, i4, i10, bArr2, 0);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        this.cipher.reset();
        this.associatedText.reset();
        this.data.reset();
    }
}
