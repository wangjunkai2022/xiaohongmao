package org.bouncycastle.crypto.fpe;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public abstract class FPEEngine {
    protected final BlockCipher baseCipher;
    protected boolean forEncryption;
    protected FPEParameters fpeParameters;

    /* JADX INFO: Access modifiers changed from: protected */
    public FPEEngine(BlockCipher blockCipher) {
        this.baseCipher = blockCipher;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] toByteArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length * 2];
        for (int i4 = 0; i4 != sArr.length; i4++) {
            Pack.shortToBigEndian(sArr[i4], bArr, i4 * 2);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static short[] toShortArray(byte[] bArr) {
        if ((bArr.length & 1) == 0) {
            int length = bArr.length / 2;
            short[] sArr = new short[length];
            for (int i4 = 0; i4 != length; i4++) {
                sArr[i4] = Pack.bigEndianToShort(bArr, i4 * 2);
            }
            return sArr;
        }
        throw new IllegalArgumentException("data must be an even number of bytes for a wide radix");
    }

    protected abstract int decryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11);

    protected abstract int encryptBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11);

    public abstract String getAlgorithmName();

    public abstract void init(boolean z9, CipherParameters cipherParameters);

    public int processBlock(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (this.fpeParameters != null) {
            if (i10 >= 0) {
                if (bArr == null || bArr2 == null) {
                    throw new NullPointerException("buffer value is null");
                }
                if (bArr.length >= i4 + i10) {
                    if (bArr2.length >= i11 + i10) {
                        return this.forEncryption ? encryptBlock(bArr, i4, i10, bArr2, i11) : decryptBlock(bArr, i4, i10, bArr2, i11);
                    }
                    throw new OutputLengthException("output buffer too short");
                }
                throw new DataLengthException("input buffer too short");
            }
            throw new IllegalArgumentException("input length cannot be negative");
        }
        throw new IllegalStateException("FPE engine not initialized");
    }
}
