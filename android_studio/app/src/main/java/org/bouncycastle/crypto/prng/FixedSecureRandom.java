package org.bouncycastle.crypto.prng;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

/* loaded from: classes4.dex */
public class FixedSecureRandom extends SecureRandom {
    private byte[] _data;
    private int _index;
    private int _intPad;

    public FixedSecureRandom(boolean z9, byte[] bArr) {
        this(z9, new byte[][]{bArr});
    }

    public FixedSecureRandom(boolean z9, byte[][] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i4 = 0; i4 != bArr.length; i4++) {
            try {
                byteArrayOutputStream.write(bArr[i4]);
            } catch (IOException unused) {
                throw new IllegalArgumentException("can't save value array.");
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this._data = byteArray;
        if (z9) {
            this._intPad = byteArray.length % 4;
        }
    }

    public FixedSecureRandom(byte[] bArr) {
        this(false, new byte[][]{bArr});
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(false, bArr);
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int i4 = this._index;
        this._index = i4 + 1;
        return bArr[i4] & 255;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i4) {
        byte[] bArr = new byte[i4];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        int nextValue = (nextValue() << 24) | 0 | (nextValue() << 16);
        int i4 = this._intPad;
        if (i4 == 2) {
            this._intPad = i4 - 1;
        } else {
            nextValue |= nextValue() << 8;
        }
        int i10 = this._intPad;
        if (i10 == 1) {
            this._intPad = i10 - 1;
            return nextValue;
        }
        return nextValue | nextValue();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
