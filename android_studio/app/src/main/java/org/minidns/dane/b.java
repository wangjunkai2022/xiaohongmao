package org.minidns.dane;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: ExpectingTrustManager.java */
/* loaded from: classes5.dex */
public class b implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    private CertificateException f92645a;

    /* renamed from: b  reason: collision with root package name */
    private final X509TrustManager f92646b;

    public b(X509TrustManager x509TrustManager) {
        this.f92646b = x509TrustManager == null ? a() : x509TrustManager;
    }

    private static X509TrustManager a() {
        TrustManager[] trustManagers;
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            return null;
        } catch (KeyStoreException | NoSuchAlgorithmException e4) {
            throw new RuntimeException("X.509 not supported.", e4);
        }
    }

    public CertificateException b() {
        CertificateException certificateException = this.f92645a;
        this.f92645a = null;
        return certificateException;
    }

    public boolean c() {
        return this.f92645a != null;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        try {
            this.f92646b.checkClientTrusted(x509CertificateArr, str);
        } catch (CertificateException e4) {
            this.f92645a = e4;
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        try {
            this.f92646b.checkServerTrusted(x509CertificateArr, str);
        } catch (CertificateException e4) {
            this.f92645a = e4;
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return this.f92646b.getAcceptedIssuers();
    }
}
