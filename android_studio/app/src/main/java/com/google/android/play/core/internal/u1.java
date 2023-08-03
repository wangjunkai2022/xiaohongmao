package com.google.android.play.core.internal;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class u1 extends v1 {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f31765b;

    public u1(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f31765b = bArr;
    }

    @Override // com.google.android.play.core.internal.v1, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f31765b;
    }
}
