package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes4.dex */
public class MGFParameters implements DerivationParameters {
    byte[] seed;

    public MGFParameters(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public MGFParameters(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        this.seed = bArr2;
        System.arraycopy(bArr, i4, bArr2, 0, i10);
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
