package org.bouncycastle.crypto.engines;

import com.google.common.base.c;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class XTEAEngine implements BlockCipher {
    private static final int block_size = 8;
    private static final int delta = -1640531527;
    private static final int rounds = 32;
    private boolean _forEncryption;
    private int[] _S = new int[4];
    private int[] _sum0 = new int[32];
    private int[] _sum1 = new int[32];
    private boolean _initialised = false;

    private int bytesToInt(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i4] << c.B) | ((bArr[i10] & 255) << 16);
        return (bArr[i11 + 1] & 255) | i12 | ((bArr[i11] & 255) << 8);
    }

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToInt = bytesToInt(bArr, i4);
        int bytesToInt2 = bytesToInt(bArr, i4 + 4);
        for (int i11 = 31; i11 >= 0; i11--) {
            bytesToInt2 -= (((bytesToInt << 4) ^ (bytesToInt >>> 5)) + bytesToInt) ^ this._sum1[i11];
            bytesToInt -= (((bytesToInt2 << 4) ^ (bytesToInt2 >>> 5)) + bytesToInt2) ^ this._sum0[i11];
        }
        unpackInt(bytesToInt, bArr2, i10);
        unpackInt(bytesToInt2, bArr2, i10 + 4);
        return 8;
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToInt = bytesToInt(bArr, i4);
        int bytesToInt2 = bytesToInt(bArr, i4 + 4);
        for (int i11 = 0; i11 < 32; i11++) {
            bytesToInt += (((bytesToInt2 << 4) ^ (bytesToInt2 >>> 5)) + bytesToInt2) ^ this._sum0[i11];
            bytesToInt2 += (((bytesToInt << 4) ^ (bytesToInt >>> 5)) + bytesToInt) ^ this._sum1[i11];
        }
        unpackInt(bytesToInt, bArr2, i10);
        unpackInt(bytesToInt2, bArr2, i10 + 4);
        return 8;
    }

    private void setKey(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        int i4 = 0;
        int i10 = 0;
        while (i4 < 4) {
            this._S[i4] = bytesToInt(bArr, i10);
            i4++;
            i10 += 4;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 32; i12++) {
            int[] iArr = this._sum0;
            int[] iArr2 = this._S;
            iArr[i12] = iArr2[i11 & 3] + i11;
            i11 -= 1640531527;
            this._sum1[i12] = iArr2[(i11 >>> 11) & 3] + i11;
        }
    }

    private void unpackInt(int i4, byte[] bArr, int i10) {
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i4 >>> 24);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i4 >>> 16);
        bArr[i12] = (byte) (i4 >>> 8);
        bArr[i12 + 1] = (byte) i4;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "XTEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this._forEncryption = z9;
            this._initialised = true;
            setKey(((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to TEA init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (!this._initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + 8 <= bArr.length) {
            if (i10 + 8 <= bArr2.length) {
                return this._forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
