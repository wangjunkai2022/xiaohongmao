package org.bouncycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class KCCMBlockCipher implements AEADBlockCipher {
    private static final int BITS_IN_BYTE = 8;
    private static final int BYTES_IN_INT = 4;
    private static final int MAX_MAC_BIT_LENGTH = 512;
    private static final int MIN_MAC_BIT_LENGTH = 64;
    private byte[] G1;
    private int Nb_;
    private ExposedByteArrayOutputStream associatedText;
    private byte[] buffer;
    private byte[] counter;
    private ExposedByteArrayOutputStream data;
    private BlockCipher engine;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private byte[] mac;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;

    /* renamed from: s  reason: collision with root package name */
    private byte[] f91294s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public ExposedByteArrayOutputStream() {
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public KCCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, 4);
    }

    public KCCMBlockCipher(BlockCipher blockCipher, int i4) {
        this.associatedText = new ExposedByteArrayOutputStream();
        this.data = new ExposedByteArrayOutputStream();
        this.Nb_ = 4;
        this.engine = blockCipher;
        this.macSize = blockCipher.getBlockSize();
        this.nonce = new byte[blockCipher.getBlockSize()];
        this.initialAssociatedText = new byte[blockCipher.getBlockSize()];
        this.mac = new byte[blockCipher.getBlockSize()];
        this.macBlock = new byte[blockCipher.getBlockSize()];
        this.G1 = new byte[blockCipher.getBlockSize()];
        this.buffer = new byte[blockCipher.getBlockSize()];
        this.f91294s = new byte[blockCipher.getBlockSize()];
        this.counter = new byte[blockCipher.getBlockSize()];
        setNb(i4);
    }

    private void CalculateMac(byte[] bArr, int i4, int i10) {
        while (i10 > 0) {
            for (int i11 = 0; i11 < this.engine.getBlockSize(); i11++) {
                byte[] bArr2 = this.macBlock;
                bArr2[i11] = (byte) (bArr2[i11] ^ bArr[i4 + i11]);
            }
            BlockCipher blockCipher = this.engine;
            byte[] bArr3 = this.macBlock;
            blockCipher.processBlock(bArr3, 0, bArr3, 0);
            i10 -= this.engine.getBlockSize();
            i4 += this.engine.getBlockSize();
        }
    }

    private void ProcessBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        int i12 = 0;
        while (true) {
            byte[] bArr3 = this.counter;
            if (i12 >= bArr3.length) {
                break;
            }
            byte[] bArr4 = this.f91294s;
            bArr4[i12] = (byte) (bArr4[i12] + bArr3[i12]);
            i12++;
        }
        this.engine.processBlock(this.f91294s, 0, this.buffer, 0);
        for (int i13 = 0; i13 < this.engine.getBlockSize(); i13++) {
            bArr2[i11 + i13] = (byte) (this.buffer[i13] ^ bArr[i4 + i13]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047 A[LOOP:0: B:24:0x0040->B:26:0x0047, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte getFlag(boolean r4, int r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "0"
            if (r4 == 0) goto Lf
            java.lang.String r4 = "1"
            r0.append(r4)
            goto L12
        Lf:
            r0.append(r1)
        L12:
            r4 = 8
            if (r5 == r4) goto L33
            r4 = 16
            if (r5 == r4) goto L30
            r4 = 32
            if (r5 == r4) goto L2d
            r4 = 48
            if (r5 == r4) goto L2a
            r4 = 64
            if (r5 == r4) goto L27
            goto L38
        L27:
            java.lang.String r4 = "110"
            goto L35
        L2a:
            java.lang.String r4 = "101"
            goto L35
        L2d:
            java.lang.String r4 = "100"
            goto L35
        L30:
            java.lang.String r4 = "011"
            goto L35
        L33:
            java.lang.String r4 = "010"
        L35:
            r0.append(r4)
        L38:
            int r4 = r3.Nb_
            int r4 = r4 + (-1)
            java.lang.String r4 = java.lang.Integer.toBinaryString(r4)
        L40:
            int r5 = r4.length()
            r2 = 4
            if (r5 >= r2) goto L56
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            r5.<init>(r4)
            r4 = 0
            java.lang.StringBuffer r4 = r5.insert(r4, r1)
            java.lang.String r4 = r4.toString()
            goto L40
        L56:
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5 = 2
            int r4 = java.lang.Integer.parseInt(r4, r5)
            byte r4 = (byte) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.modes.KCCMBlockCipher.getFlag(boolean, int):byte");
    }

    private void intToBytes(int i4, byte[] bArr, int i10) {
        bArr[i10 + 3] = (byte) (i4 >> 24);
        bArr[i10 + 2] = (byte) (i4 >> 16);
        bArr[i10 + 1] = (byte) (i4 >> 8);
        bArr[i10] = (byte) i4;
    }

    private void processAAD(byte[] bArr, int i4, int i10, int i11) {
        if (i10 - i4 < this.engine.getBlockSize()) {
            throw new IllegalArgumentException("authText buffer too short");
        }
        if (i10 % this.engine.getBlockSize() != 0) {
            throw new IllegalArgumentException("padding not supported");
        }
        byte[] bArr2 = this.nonce;
        System.arraycopy(bArr2, 0, this.G1, 0, (bArr2.length - this.Nb_) - 1);
        intToBytes(i11, this.buffer, 0);
        System.arraycopy(this.buffer, 0, this.G1, (this.nonce.length - this.Nb_) - 1, 4);
        byte[] bArr3 = this.G1;
        bArr3[bArr3.length - 1] = getFlag(true, this.macSize);
        this.engine.processBlock(this.G1, 0, this.macBlock, 0);
        intToBytes(i10, this.buffer, 0);
        if (i10 <= this.engine.getBlockSize() - this.Nb_) {
            for (int i12 = 0; i12 < i10; i12++) {
                byte[] bArr4 = this.buffer;
                int i13 = this.Nb_ + i12;
                bArr4[i13] = (byte) (bArr4[i13] ^ bArr[i4 + i12]);
            }
            for (int i14 = 0; i14 < this.engine.getBlockSize(); i14++) {
                byte[] bArr5 = this.macBlock;
                bArr5[i14] = (byte) (bArr5[i14] ^ this.buffer[i14]);
            }
            BlockCipher blockCipher = this.engine;
            byte[] bArr6 = this.macBlock;
            blockCipher.processBlock(bArr6, 0, bArr6, 0);
            return;
        }
        for (int i15 = 0; i15 < this.engine.getBlockSize(); i15++) {
            byte[] bArr7 = this.macBlock;
            bArr7[i15] = (byte) (bArr7[i15] ^ this.buffer[i15]);
        }
        BlockCipher blockCipher2 = this.engine;
        byte[] bArr8 = this.macBlock;
        blockCipher2.processBlock(bArr8, 0, bArr8, 0);
        while (i10 != 0) {
            for (int i16 = 0; i16 < this.engine.getBlockSize(); i16++) {
                byte[] bArr9 = this.macBlock;
                bArr9[i16] = (byte) (bArr9[i16] ^ bArr[i16 + i4]);
            }
            BlockCipher blockCipher3 = this.engine;
            byte[] bArr10 = this.macBlock;
            blockCipher3.processBlock(bArr10, 0, bArr10, 0);
            i4 += this.engine.getBlockSize();
            i10 -= this.engine.getBlockSize();
        }
    }

    private void setNb(int i4) {
        if (i4 != 4 && i4 != 6 && i4 != 8) {
            throw new IllegalArgumentException("Nb = 4 is recommended by DSTU7624 but can be changed to only 6 or 8 in this implementation");
        }
        this.Nb_ = i4;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        int processPacket = processPacket(this.data.getBuffer(), 0, this.data.size(), bArr, i4);
        reset();
        return processPacket;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KCCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.mac);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i4) {
        return i4 + this.macSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        return i4;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            if (aEADParameters.getMacSize() > 512 || aEADParameters.getMacSize() < 64 || aEADParameters.getMacSize() % 8 != 0) {
                throw new IllegalArgumentException("Invalid mac size specified");
            }
            this.nonce = aEADParameters.getNonce();
            this.macSize = aEADParameters.getMacSize() / 8;
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            parameters = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Invalid parameters specified");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.macSize = this.engine.getBlockSize();
            this.initialAssociatedText = null;
            parameters = parametersWithIV.getParameters();
        }
        this.mac = new byte[this.macSize];
        this.forEncryption = z9;
        this.engine.init(true, parameters);
        this.counter[0] = 1;
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
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

    public int processPacket(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IllegalStateException, InvalidCipherTextException {
        int i12;
        if (bArr.length - i4 < i10) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length - i11 < i10) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.associatedText.size() > 0) {
            if (this.forEncryption) {
                processAAD(this.associatedText.getBuffer(), 0, this.associatedText.size(), this.data.size());
            } else {
                processAAD(this.associatedText.getBuffer(), 0, this.associatedText.size(), this.data.size() - this.macSize);
            }
        }
        if (!this.forEncryption) {
            if ((i10 - this.macSize) % this.engine.getBlockSize() == 0) {
                this.engine.processBlock(this.nonce, 0, this.f91294s, 0);
                int blockSize = i10 / this.engine.getBlockSize();
                for (int i13 = 0; i13 < blockSize; i13++) {
                    ProcessBlock(bArr, i4, i10, bArr2, i11);
                    i4 += this.engine.getBlockSize();
                    i11 += this.engine.getBlockSize();
                }
                if (i10 > i4) {
                    int i14 = 0;
                    while (true) {
                        byte[] bArr3 = this.counter;
                        if (i14 >= bArr3.length) {
                            break;
                        }
                        byte[] bArr4 = this.f91294s;
                        bArr4[i14] = (byte) (bArr4[i14] + bArr3[i14]);
                        i14++;
                    }
                    this.engine.processBlock(this.f91294s, 0, this.buffer, 0);
                    int i15 = 0;
                    while (true) {
                        i12 = this.macSize;
                        if (i15 >= i12) {
                            break;
                        }
                        bArr2[i11 + i15] = (byte) (this.buffer[i15] ^ bArr[i4 + i15]);
                        i15++;
                    }
                    i11 += i12;
                }
                int i16 = 0;
                while (true) {
                    byte[] bArr5 = this.counter;
                    if (i16 >= bArr5.length) {
                        break;
                    }
                    byte[] bArr6 = this.f91294s;
                    bArr6[i16] = (byte) (bArr6[i16] + bArr5[i16]);
                    i16++;
                }
                this.engine.processBlock(this.f91294s, 0, this.buffer, 0);
                int i17 = this.macSize;
                System.arraycopy(bArr2, i11 - i17, this.buffer, 0, i17);
                CalculateMac(bArr2, 0, i11 - this.macSize);
                System.arraycopy(this.macBlock, 0, this.mac, 0, this.macSize);
                int i18 = this.macSize;
                byte[] bArr7 = new byte[i18];
                System.arraycopy(this.buffer, 0, bArr7, 0, i18);
                if (Arrays.constantTimeAreEqual(this.mac, bArr7)) {
                    reset();
                    return i10 - this.macSize;
                }
                throw new InvalidCipherTextException("mac check failed");
            }
            throw new DataLengthException("partial blocks not supported");
        } else if (i10 % this.engine.getBlockSize() != 0) {
            throw new DataLengthException("partial blocks not supported");
        } else {
            CalculateMac(bArr, i4, i10);
            this.engine.processBlock(this.nonce, 0, this.f91294s, 0);
            int i19 = i10;
            while (i19 > 0) {
                ProcessBlock(bArr, i4, i10, bArr2, i11);
                i19 -= this.engine.getBlockSize();
                i4 += this.engine.getBlockSize();
                i11 += this.engine.getBlockSize();
            }
            int i20 = 0;
            while (true) {
                byte[] bArr8 = this.counter;
                if (i20 >= bArr8.length) {
                    break;
                }
                byte[] bArr9 = this.f91294s;
                bArr9[i20] = (byte) (bArr9[i20] + bArr8[i20]);
                i20++;
            }
            this.engine.processBlock(this.f91294s, 0, this.buffer, 0);
            int i21 = 0;
            while (true) {
                int i22 = this.macSize;
                if (i21 >= i22) {
                    System.arraycopy(this.macBlock, 0, this.mac, 0, i22);
                    reset();
                    return i10 + this.macSize;
                }
                bArr2[i11 + i21] = (byte) (this.buffer[i21] ^ this.macBlock[i21]);
                i21++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        Arrays.fill(this.G1, (byte) 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.counter, (byte) 0);
        Arrays.fill(this.macBlock, (byte) 0);
        this.counter[0] = 1;
        this.data.reset();
        this.associatedText.reset();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
