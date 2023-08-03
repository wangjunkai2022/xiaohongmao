package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes4.dex */
public class GSKKDFParameters implements DerivationParameters {
    private final byte[] nonce;
    private final int startCounter;

    /* renamed from: z  reason: collision with root package name */
    private final byte[] f91177z;

    public GSKKDFParameters(byte[] bArr, int i4) {
        this(bArr, i4, null);
    }

    public GSKKDFParameters(byte[] bArr, int i4, byte[] bArr2) {
        this.f91177z = bArr;
        this.startCounter = i4;
        this.nonce = bArr2;
    }

    public byte[] getNonce() {
        return this.nonce;
    }

    public int getStartCounter() {
        return this.startCounter;
    }

    public byte[] getZ() {
        return this.f91177z;
    }
}
