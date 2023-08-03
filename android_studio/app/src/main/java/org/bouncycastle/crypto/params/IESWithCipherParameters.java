package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class IESWithCipherParameters extends IESParameters {
    private int cipherKeySize;

    public IESWithCipherParameters(byte[] bArr, byte[] bArr2, int i4, int i10) {
        super(bArr, bArr2, i4);
        this.cipherKeySize = i10;
    }

    public int getCipherKeySize() {
        return this.cipherKeySize;
    }
}
