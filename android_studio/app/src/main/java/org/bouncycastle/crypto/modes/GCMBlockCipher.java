package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.modes.gcm.BasicGCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;
import org.bouncycastle.crypto.modes.gcm.GCMUtil;
import org.bouncycastle.crypto.modes.gcm.Tables4kGCMMultiplier;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class GCMBlockCipher implements AEADBlockCipher {
    private static final int BLOCK_SIZE = 16;
    private byte[] H;
    private byte[] J0;
    private byte[] S;
    private byte[] S_at;
    private byte[] S_atPre;
    private byte[] atBlock;
    private int atBlockPos;
    private long atLength;
    private long atLengthPre;
    private int blocksRemaining;
    private byte[] bufBlock;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] counter;
    private GCMExponentiator exp;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private boolean initialised;
    private byte[] lastKey;
    private byte[] macBlock;
    private int macSize;
    private GCMMultiplier multiplier;
    private byte[] nonce;
    private long totalLength;

    public GCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    public GCMBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
        gCMMultiplier = gCMMultiplier == null ? new Tables4kGCMMultiplier() : gCMMultiplier;
        this.cipher = blockCipher;
        this.multiplier = gCMMultiplier;
    }

    private void checkStatus() {
        if (this.initialised) {
            return;
        }
        if (!this.forEncryption) {
            throw new IllegalStateException("GCM cipher needs to be initialised");
        }
        throw new IllegalStateException("GCM cipher cannot be reused for encryption");
    }

    private void gHASH(byte[] bArr, byte[] bArr2, int i4) {
        for (int i10 = 0; i10 < i4; i10 += 16) {
            gHASHPartial(bArr, bArr2, i10, Math.min(i4 - i10, 16));
        }
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2) {
        GCMUtil.xor(bArr, bArr2);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2, int i4) {
        GCMUtil.xor(bArr, bArr2, i4);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHPartial(byte[] bArr, byte[] bArr2, int i4, int i10) {
        GCMUtil.xor(bArr, bArr2, i4, i10);
        this.multiplier.multiplyH(bArr);
    }

    private void getNextCTRBlock(byte[] bArr) {
        int i4 = this.blocksRemaining;
        if (i4 == 0) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.blocksRemaining = i4 - 1;
        byte[] bArr2 = this.counter;
        int i10 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) i10;
        int i11 = (i10 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) i11;
        int i12 = (i11 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) i12;
        bArr2[12] = (byte) ((i12 >>> 8) + (bArr2[12] & 255));
        this.cipher.processBlock(bArr2, 0, bArr, 0);
    }

    private void initCipher() {
        if (this.atLength > 0) {
            System.arraycopy(this.S_at, 0, this.S_atPre, 0, 16);
            this.atLengthPre = this.atLength;
        }
        int i4 = this.atBlockPos;
        if (i4 > 0) {
            gHASHPartial(this.S_atPre, this.atBlock, 0, i4);
            this.atLengthPre += this.atBlockPos;
        }
        if (this.atLengthPre > 0) {
            System.arraycopy(this.S_atPre, 0, this.S, 0, 16);
        }
    }

    private void processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (bArr2.length - i10 < 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        if (this.forEncryption) {
            GCMUtil.xor(bArr3, bArr, i4);
            gHASHBlock(this.S, bArr3);
            System.arraycopy(bArr3, 0, bArr2, i10, 16);
        } else {
            gHASHBlock(this.S, bArr, i4);
            GCMUtil.xor(bArr3, 0, bArr, i4, bArr2, i10);
        }
        this.totalLength += 16;
    }

    private void processPartial(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        if (this.forEncryption) {
            GCMUtil.xor(bArr, i4, bArr3, 0, i10);
            gHASHPartial(this.S, bArr, i4, i10);
        } else {
            gHASHPartial(this.S, bArr, i4, i10);
            GCMUtil.xor(bArr, i4, bArr3, 0, i10);
        }
        System.arraycopy(bArr, i4, bArr2, i11, i10);
        this.totalLength += i10;
    }

    private void reset(boolean z9) {
        this.cipher.reset();
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr = this.bufBlock;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        if (z9) {
            this.macBlock = null;
        }
        if (this.forEncryption) {
            this.initialised = false;
            return;
        }
        byte[] bArr2 = this.initialAssociatedText;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        checkStatus();
        if (this.totalLength == 0) {
            initCipher();
        }
        int i10 = this.bufOff;
        if (!this.forEncryption) {
            int i11 = this.macSize;
            if (i10 < i11) {
                throw new InvalidCipherTextException("data too short");
            }
            i10 -= i11;
            if (bArr.length - i4 < i10) {
                throw new OutputLengthException("Output buffer too short");
            }
        } else if (bArr.length - i4 < this.macSize + i10) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (i10 > 0) {
            processPartial(this.bufBlock, 0, i10, bArr, i4);
        }
        long j4 = this.atLength;
        int i12 = this.atBlockPos;
        long j10 = j4 + i12;
        this.atLength = j10;
        if (j10 > this.atLengthPre) {
            if (i12 > 0) {
                gHASHPartial(this.S_at, this.atBlock, 0, i12);
            }
            if (this.atLengthPre > 0) {
                GCMUtil.xor(this.S_at, this.S_atPre);
            }
            long j11 = ((this.totalLength * 8) + 127) >>> 7;
            byte[] bArr2 = new byte[16];
            if (this.exp == null) {
                BasicGCMExponentiator basicGCMExponentiator = new BasicGCMExponentiator();
                this.exp = basicGCMExponentiator;
                basicGCMExponentiator.init(this.H);
            }
            this.exp.exponentiateX(j11, bArr2);
            GCMUtil.multiply(this.S_at, bArr2);
            GCMUtil.xor(this.S, this.S_at);
        }
        byte[] bArr3 = new byte[16];
        Pack.longToBigEndian(this.atLength * 8, bArr3, 0);
        Pack.longToBigEndian(this.totalLength * 8, bArr3, 8);
        gHASHBlock(this.S, bArr3);
        byte[] bArr4 = new byte[16];
        this.cipher.processBlock(this.J0, 0, bArr4, 0);
        GCMUtil.xor(bArr4, this.S);
        int i13 = this.macSize;
        byte[] bArr5 = new byte[i13];
        this.macBlock = bArr5;
        System.arraycopy(bArr4, 0, bArr5, 0, i13);
        if (this.forEncryption) {
            System.arraycopy(this.macBlock, 0, bArr, i4 + this.bufOff, this.macSize);
            i10 += this.macSize;
        } else {
            int i14 = this.macSize;
            byte[] bArr6 = new byte[i14];
            System.arraycopy(this.bufBlock, i10, bArr6, 0, i14);
            if (!Arrays.constantTimeAreEqual(this.macBlock, bArr6)) {
                throw new InvalidCipherTextException("mac check in GCM failed");
            }
        }
        reset(false);
        return i10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        byte[] bArr = this.macBlock;
        return bArr == null ? new byte[this.macSize] : Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i4) {
        int i10 = i4 + this.bufOff;
        if (this.forEncryption) {
            return i10 + this.macSize;
        }
        int i11 = this.macSize;
        if (i10 < i11) {
            return 0;
        }
        return i10 - i11;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        int i10 = i4 + this.bufOff;
        if (!this.forEncryption) {
            int i11 = this.macSize;
            if (i10 < i11) {
                return 0;
            }
            i10 -= i11;
        }
        return i10 - (i10 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] iv;
        KeyParameter keyParameter;
        byte[] bArr;
        this.forEncryption = z9;
        this.macBlock = null;
        this.initialised = true;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 32 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            this.macSize = macSize / 8;
            keyParameter = aEADParameters.getKey();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to GCM");
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
        }
        this.bufBlock = new byte[z9 ? 16 : this.macSize + 16];
        if (iv == null || iv.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (z9 && (bArr = this.nonce) != null && Arrays.areEqual(bArr, iv)) {
            if (keyParameter == null) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
            byte[] bArr2 = this.lastKey;
            if (bArr2 != null && Arrays.areEqual(bArr2, keyParameter.getKey())) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
        }
        this.nonce = iv;
        if (keyParameter != null) {
            this.lastKey = keyParameter.getKey();
        }
        if (keyParameter != null) {
            this.cipher.init(true, keyParameter);
            byte[] bArr3 = new byte[16];
            this.H = bArr3;
            this.cipher.processBlock(bArr3, 0, bArr3, 0);
            this.multiplier.init(this.H);
            this.exp = null;
        } else if (this.H == null) {
            throw new IllegalArgumentException("Key must be specified in initial init");
        }
        byte[] bArr4 = new byte[16];
        this.J0 = bArr4;
        byte[] bArr5 = this.nonce;
        if (bArr5.length == 12) {
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            this.J0[15] = 1;
        } else {
            gHASH(bArr4, bArr5, bArr5.length);
            byte[] bArr6 = new byte[16];
            Pack.longToBigEndian(this.nonce.length * 8, bArr6, 8);
            gHASHBlock(this.J0, bArr6);
        }
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr7 = this.initialAssociatedText;
        if (bArr7 != null) {
            processAADBytes(bArr7, 0, bArr7.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkStatus();
        byte[] bArr = this.atBlock;
        int i4 = this.atBlockPos;
        bArr[i4] = b10;
        int i10 = i4 + 1;
        this.atBlockPos = i10;
        if (i10 == 16) {
            gHASHBlock(this.S_at, bArr);
            this.atBlockPos = 0;
            this.atLength += 16;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i4, int i10) {
        checkStatus();
        for (int i11 = 0; i11 < i10; i11++) {
            byte[] bArr2 = this.atBlock;
            int i12 = this.atBlockPos;
            bArr2[i12] = bArr[i4 + i11];
            int i13 = i12 + 1;
            this.atBlockPos = i13;
            if (i13 == 16) {
                gHASHBlock(this.S_at, bArr2);
                this.atBlockPos = 0;
                this.atLength += 16;
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException {
        checkStatus();
        byte[] bArr2 = this.bufBlock;
        int i10 = this.bufOff;
        bArr2[i10] = b10;
        int i11 = i10 + 1;
        this.bufOff = i11;
        if (i11 == bArr2.length) {
            processBlock(bArr2, 0, bArr, i4);
            if (this.forEncryption) {
                this.bufOff = 0;
            } else {
                byte[] bArr3 = this.bufBlock;
                System.arraycopy(bArr3, 16, bArr3, 0, this.macSize);
                this.bufOff = this.macSize;
            }
            return 16;
        }
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        int i12;
        checkStatus();
        if (bArr.length - i4 >= i10) {
            if (this.forEncryption) {
                if (this.bufOff != 0) {
                    while (i10 > 0) {
                        i10--;
                        byte[] bArr3 = this.bufBlock;
                        int i13 = this.bufOff;
                        int i14 = i4 + 1;
                        bArr3[i13] = bArr[i4];
                        int i15 = i13 + 1;
                        this.bufOff = i15;
                        if (i15 == 16) {
                            processBlock(bArr3, 0, bArr2, i11);
                            this.bufOff = 0;
                            i4 = i14;
                            i12 = 16;
                            break;
                        }
                        i4 = i14;
                    }
                }
                i12 = 0;
                while (i10 >= 16) {
                    processBlock(bArr, i4, bArr2, i11 + i12);
                    i4 += 16;
                    i10 -= 16;
                    i12 += 16;
                }
                if (i10 > 0) {
                    System.arraycopy(bArr, i4, this.bufBlock, 0, i10);
                    this.bufOff = i10;
                }
            } else {
                i12 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    byte[] bArr4 = this.bufBlock;
                    int i17 = this.bufOff;
                    bArr4[i17] = bArr[i4 + i16];
                    int i18 = i17 + 1;
                    this.bufOff = i18;
                    if (i18 == bArr4.length) {
                        processBlock(bArr4, 0, bArr2, i11 + i12);
                        byte[] bArr5 = this.bufBlock;
                        System.arraycopy(bArr5, 16, bArr5, 0, this.macSize);
                        this.bufOff = this.macSize;
                        i12 += 16;
                    }
                }
            }
            return i12;
        }
        throw new DataLengthException("Input buffer too short");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
