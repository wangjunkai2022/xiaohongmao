package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class KeyParameter implements CipherParameters {
    private byte[] key;

    public KeyParameter(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public KeyParameter(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        this.key = bArr2;
        System.arraycopy(bArr, i4, bArr2, 0, i10);
    }

    public byte[] getKey() {
        return this.key;
    }
}
