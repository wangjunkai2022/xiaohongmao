package org.bouncycastle.crypto.engines;

import com.google.common.base.c;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class TEAEngine implements BlockCipher {
    private static final int block_size = 8;
    private static final int d_sum = -957401312;
    private static final int delta = -1640531527;
    private static final int rounds = 32;
    private int _a;
    private int _b;
    private int _c;
    private int _d;
    private boolean _forEncryption;
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
        int i11 = d_sum;
        for (int i12 = 0; i12 != 32; i12++) {
            bytesToInt2 -= (((bytesToInt << 4) + this._c) ^ (bytesToInt + i11)) ^ ((bytesToInt >>> 5) + this._d);
            bytesToInt -= (((bytesToInt2 << 4) + this._a) ^ (bytesToInt2 + i11)) ^ ((bytesToInt2 >>> 5) + this._b);
            i11 += 1640531527;
        }
        unpackInt(bytesToInt, bArr2, i10);
        unpackInt(bytesToInt2, bArr2, i10 + 4);
        return 8;
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToInt = bytesToInt(bArr, i4);
        int bytesToInt2 = bytesToInt(bArr, i4 + 4);
        int i11 = bytesToInt;
        int i12 = 0;
        for (int i13 = 0; i13 != 32; i13++) {
            i12 -= 1640531527;
            i11 += (((bytesToInt2 << 4) + this._a) ^ (bytesToInt2 + i12)) ^ ((bytesToInt2 >>> 5) + this._b);
            bytesToInt2 += (((i11 << 4) + this._c) ^ (i11 + i12)) ^ ((i11 >>> 5) + this._d);
        }
        unpackInt(i11, bArr2, i10);
        unpackInt(bytesToInt2, bArr2, i10 + 4);
        return 8;
    }

    private void setKey(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        this._a = bytesToInt(bArr, 0);
        this._b = bytesToInt(bArr, 4);
        this._c = bytesToInt(bArr, 8);
        this._d = bytesToInt(bArr, 12);
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
        return "TEA";
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
