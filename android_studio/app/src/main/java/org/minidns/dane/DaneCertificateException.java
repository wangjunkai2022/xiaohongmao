package org.minidns.dane;

import java.security.cert.CertificateException;
import java.util.Collections;
import java.util.List;
import org.minidns.record.TLSA;

/* loaded from: classes5.dex */
public abstract class DaneCertificateException extends CertificateException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f92636a = 1;

    /* loaded from: classes5.dex */
    public static class CertificateMismatch extends DaneCertificateException {

        /* renamed from: b  reason: collision with root package name */
        private static final long f92637b = 1;
        public final byte[] computed;
        public final TLSA tlsa;

        public CertificateMismatch(TLSA tlsa, byte[] bArr) {
            super("The TLSA RR does not match the certificate");
            this.tlsa = tlsa;
            this.computed = bArr;
        }
    }

    /* loaded from: classes5.dex */
    public static class MultipleCertificateMismatchExceptions extends DaneCertificateException {

        /* renamed from: b  reason: collision with root package name */
        private static final long f92638b = 1;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f92639c = false;
        public final List<CertificateMismatch> certificateMismatchExceptions;

        public MultipleCertificateMismatchExceptions(List<CertificateMismatch> list) {
            super("There where multiple CertificateMismatch exceptions because none of the TLSA RR does match the certificate");
            this.certificateMismatchExceptions = Collections.unmodifiableList(list);
        }
    }

    protected DaneCertificateException() {
    }

    protected DaneCertificateException(String str) {
        super(str);
    }
}
