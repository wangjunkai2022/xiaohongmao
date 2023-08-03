package org.bouncycastle.crypto.prng.drbg;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class CTRSP800DRBG implements SP80090DRBG {
    private static final int AES_MAX_BITS_REQUEST = 262144;
    private static final long AES_RESEED_MAX = 140737488355328L;
    private static final byte[] K_BITS = Hex.decodeStrict("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");
    private static final int TDEA_MAX_BITS_REQUEST = 4096;
    private static final long TDEA_RESEED_MAX = 2147483648L;
    private byte[] _Key;
    private byte[] _V;
    private BlockCipher _engine;
    private EntropySource _entropySource;
    private boolean _isTDEA;
    private int _keySizeInBits;
    private long _reseedCounter = 0;
    private int _securityStrength;
    private int _seedLength;

    public CTRSP800DRBG(BlockCipher blockCipher, int i4, int i10, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this._isTDEA = false;
        this._entropySource = entropySource;
        this._engine = blockCipher;
        this._keySizeInBits = i4;
        this._securityStrength = i10;
        this._seedLength = (blockCipher.getBlockSize() * 8) + i4;
        this._isTDEA = isTDEA(blockCipher);
        if (i10 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (getMaxSecurityStrength(blockCipher, i4) < i10) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        }
        if (entropySource.entropySize() < i10) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        CTR_DRBG_Instantiate_algorithm(getEntropy(), bArr2, bArr);
    }

    private void BCC(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int blockSize = this._engine.getBlockSize();
        byte[] bArr5 = new byte[blockSize];
        int length = bArr4.length / blockSize;
        byte[] bArr6 = new byte[blockSize];
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        this._engine.processBlock(bArr3, 0, bArr5, 0);
        for (int i4 = 0; i4 < length; i4++) {
            XOR(bArr6, bArr5, bArr4, i4 * blockSize);
            this._engine.processBlock(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    private byte[] Block_Cipher_df(byte[] bArr, int i4) {
        int blockSize = this._engine.getBlockSize();
        int length = bArr.length;
        int i10 = i4 / 8;
        int i11 = length + 8;
        byte[] bArr2 = new byte[((((i11 + 1) + blockSize) - 1) / blockSize) * blockSize];
        copyIntToByteArray(bArr2, length, 0);
        copyIntToByteArray(bArr2, i10, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[i11] = Byte.MIN_VALUE;
        int i12 = this._keySizeInBits;
        int i13 = (i12 / 8) + blockSize;
        byte[] bArr3 = new byte[i13];
        byte[] bArr4 = new byte[blockSize];
        byte[] bArr5 = new byte[blockSize];
        int i14 = i12 / 8;
        byte[] bArr6 = new byte[i14];
        System.arraycopy(K_BITS, 0, bArr6, 0, i14);
        int i15 = 0;
        while (true) {
            int i16 = i15 * blockSize;
            if (i16 * 8 >= this._keySizeInBits + (blockSize * 8)) {
                break;
            }
            copyIntToByteArray(bArr5, i15, 0);
            BCC(bArr4, bArr6, bArr5, bArr2);
            int i17 = i13 - i16;
            if (i17 > blockSize) {
                i17 = blockSize;
            }
            System.arraycopy(bArr4, 0, bArr3, i16, i17);
            i15++;
        }
        byte[] bArr7 = new byte[blockSize];
        System.arraycopy(bArr3, 0, bArr6, 0, i14);
        System.arraycopy(bArr3, i14, bArr7, 0, blockSize);
        byte[] bArr8 = new byte[i10];
        this._engine.init(true, new KeyParameter(expandKey(bArr6)));
        int i18 = 0;
        while (true) {
            int i19 = i18 * blockSize;
            if (i19 >= i10) {
                return bArr8;
            }
            this._engine.processBlock(bArr7, 0, bArr7, 0);
            int i20 = i10 - i19;
            if (i20 > blockSize) {
                i20 = blockSize;
            }
            System.arraycopy(bArr7, 0, bArr8, i19, i20);
            i18++;
        }
    }

    private void CTR_DRBG_Instantiate_algorithm(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] Block_Cipher_df = Block_Cipher_df(Arrays.concatenate(bArr, bArr2, bArr3), this._seedLength);
        int blockSize = this._engine.getBlockSize();
        byte[] bArr4 = new byte[(this._keySizeInBits + 7) / 8];
        this._Key = bArr4;
        byte[] bArr5 = new byte[blockSize];
        this._V = bArr5;
        CTR_DRBG_Update(Block_Cipher_df, bArr4, bArr5);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Reseed_algorithm(byte[] bArr) {
        CTR_DRBG_Update(Block_Cipher_df(Arrays.concatenate(getEntropy(), bArr), this._seedLength), this._Key, this._V);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Update(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[this._engine.getBlockSize()];
        int blockSize = this._engine.getBlockSize();
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        int i4 = 0;
        while (true) {
            int i10 = i4 * blockSize;
            if (i10 >= bArr.length) {
                XOR(bArr4, bArr, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            }
            addOneTo(bArr3);
            this._engine.processBlock(bArr3, 0, bArr5, 0);
            int i11 = length - i10;
            if (i11 > blockSize) {
                i11 = blockSize;
            }
            System.arraycopy(bArr5, 0, bArr4, i10, i11);
            i4++;
        }
    }

    private void XOR(byte[] bArr, byte[] bArr2, byte[] bArr3, int i4) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = (byte) (bArr2[i10] ^ bArr3[i10 + i4]);
        }
    }

    private void addOneTo(byte[] bArr) {
        int i4 = 1;
        for (int i10 = 1; i10 <= bArr.length; i10++) {
            int i11 = (bArr[bArr.length - i10] & 255) + i4;
            i4 = i11 > 255 ? 1 : 0;
            bArr[bArr.length - i10] = (byte) i11;
        }
    }

    private void copyIntToByteArray(byte[] bArr, int i4, int i10) {
        bArr[i10 + 0] = (byte) (i4 >> 24);
        bArr[i10 + 1] = (byte) (i4 >> 16);
        bArr[i10 + 2] = (byte) (i4 >> 8);
        bArr[i10 + 3] = (byte) i4;
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private int getMaxSecurityStrength(BlockCipher blockCipher, int i4) {
        if (isTDEA(blockCipher) && i4 == 168) {
            return 112;
        }
        if (blockCipher.getAlgorithmName().equals("AES")) {
            return i4;
        }
        return -1;
    }

    private boolean isTDEA(BlockCipher blockCipher) {
        return blockCipher.getAlgorithmName().equals("DESede") || blockCipher.getAlgorithmName().equals("TDEA");
    }

    private void padKey(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = i4 + 0;
        bArr2[i10 + 0] = (byte) (bArr[i11] & 254);
        int i12 = i4 + 1;
        bArr2[i10 + 1] = (byte) ((bArr[i11] << 7) | ((bArr[i12] & 252) >>> 1));
        int i13 = i4 + 2;
        bArr2[i10 + 2] = (byte) ((bArr[i12] << 6) | ((bArr[i13] & 248) >>> 2));
        int i14 = i4 + 3;
        bArr2[i10 + 3] = (byte) ((bArr[i13] << 5) | ((bArr[i14] & 240) >>> 3));
        int i15 = i4 + 4;
        bArr2[i10 + 4] = (byte) ((bArr[i14] << 4) | ((bArr[i15] & 224) >>> 4));
        int i16 = i4 + 5;
        bArr2[i10 + 5] = (byte) ((bArr[i15] << 3) | ((bArr[i16] & 192) >>> 5));
        int i17 = i4 + 6;
        bArr2[i10 + 6] = (byte) ((bArr[i16] << 2) | ((bArr[i17] & 128) >>> 6));
        int i18 = i10 + 7;
        bArr2[i18] = (byte) (bArr[i17] << 1);
        while (i10 <= i18) {
            byte b10 = bArr2[i10];
            bArr2[i10] = (byte) (((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) & 1) | (b10 & 254));
            i10++;
        }
    }

    byte[] expandKey(byte[] bArr) {
        if (this._isTDEA) {
            byte[] bArr2 = new byte[24];
            padKey(bArr, 0, bArr2, 0);
            padKey(bArr, 7, bArr2, 8);
            padKey(bArr, 14, bArr2, 16);
            return bArr2;
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z9) {
        byte[] bArr3;
        boolean z10 = this._isTDEA;
        long j4 = this._reseedCounter;
        if (z10) {
            if (j4 > 2147483648L) {
                return -1;
            }
            if (Utils.isTooLarge(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else if (j4 > AES_RESEED_MAX) {
            return -1;
        } else {
            if (Utils.isTooLarge(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z9) {
            CTR_DRBG_Reseed_algorithm(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            bArr3 = Block_Cipher_df(bArr2, this._seedLength);
            CTR_DRBG_Update(bArr3, this._Key, this._V);
        } else {
            bArr3 = new byte[this._seedLength / 8];
        }
        int length = this._V.length;
        byte[] bArr4 = new byte[length];
        this._engine.init(true, new KeyParameter(expandKey(this._Key)));
        for (int i4 = 0; i4 <= bArr.length / length; i4++) {
            int i10 = i4 * length;
            int length2 = bArr.length - i10 > length ? length : bArr.length - (this._V.length * i4);
            if (length2 != 0) {
                addOneTo(this._V);
                this._engine.processBlock(this._V, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr, i10, length2);
            }
        }
        CTR_DRBG_Update(bArr3, this._Key, this._V);
        this._reseedCounter++;
        return bArr.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this._V.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        CTR_DRBG_Reseed_algorithm(bArr);
    }
}
