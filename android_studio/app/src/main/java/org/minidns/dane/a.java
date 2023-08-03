package org.minidns.dane;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.security.cert.CertificateEncodingException;
import org.minidns.AbstractDnsClient;
import org.minidns.dane.DaneCertificateException;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.dnssec.c;
import org.minidns.dnssec.e;
import org.minidns.record.Record;
import org.minidns.record.TLSA;
import org.minidns.record.h;

/* compiled from: DaneVerifier.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f92640b = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final AbstractDnsClient f92641a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DaneVerifier.java */
    /* renamed from: org.minidns.dane.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C0823a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92642a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f92643b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f92644c;

        static {
            int[] iArr = new int[TLSA.MatchingType.values().length];
            f92644c = iArr;
            try {
                iArr[TLSA.MatchingType.noHash.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92644c[TLSA.MatchingType.sha256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92644c[TLSA.MatchingType.sha512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TLSA.Selector.values().length];
            f92643b = iArr2;
            try {
                iArr2[TLSA.Selector.fullCertificate.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92643b[TLSA.Selector.subjectPublicKeyInfo.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[TLSA.CertUsage.values().length];
            f92642a = iArr3;
            try {
                iArr3[TLSA.CertUsage.serviceCertificateConstraint.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f92642a[TLSA.CertUsage.domainIssuedCertificate.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f92642a[TLSA.CertUsage.caConstraint.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f92642a[TLSA.CertUsage.trustAnchorAssertion.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public a() {
        this(new org.minidns.dnssec.b());
    }

    private static boolean a(X509Certificate x509Certificate, TLSA tlsa, String str) throws CertificateException {
        byte[] encoded;
        TLSA.CertUsage certUsage = tlsa.f92915d;
        if (certUsage == null) {
            Logger logger = f92640b;
            logger.warning("TLSA certificate usage byte " + ((int) tlsa.f92914c) + " is not supported while verifying " + str);
            return false;
        }
        int i4 = C0823a.f92642a[certUsage.ordinal()];
        if (i4 != 1 && i4 != 2) {
            Logger logger2 = f92640b;
            logger2.warning("TLSA certificate usage " + tlsa.f92915d + " (" + ((int) tlsa.f92914c) + ") not supported while verifying " + str);
            return false;
        }
        TLSA.Selector selector = tlsa.f92917f;
        if (selector == null) {
            Logger logger3 = f92640b;
            logger3.warning("TLSA selector byte " + ((int) tlsa.f92916e) + " is not supported while verifying " + str);
            return false;
        }
        int i10 = C0823a.f92643b[selector.ordinal()];
        if (i10 == 1) {
            encoded = x509Certificate.getEncoded();
        } else if (i10 != 2) {
            Logger logger4 = f92640b;
            logger4.warning("TLSA selector " + tlsa.f92917f + " (" + ((int) tlsa.f92916e) + ") not supported while verifying " + str);
            return false;
        } else {
            encoded = x509Certificate.getPublicKey().getEncoded();
        }
        TLSA.MatchingType matchingType = tlsa.f92919h;
        if (matchingType == null) {
            Logger logger5 = f92640b;
            logger5.warning("TLSA matching type byte " + ((int) tlsa.f92918g) + " is not supported while verifying " + str);
            return false;
        }
        int i11 = C0823a.f92644c[matchingType.ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                try {
                    encoded = MessageDigest.getInstance("SHA-256").digest(encoded);
                } catch (NoSuchAlgorithmException e4) {
                    throw new CertificateException("Verification using TLSA failed: could not SHA-256 for matching", e4);
                }
            } else if (i11 != 3) {
                Logger logger6 = f92640b;
                logger6.warning("TLSA matching type " + tlsa.f92919h + " not supported while verifying " + str);
                return false;
            } else {
                try {
                    encoded = MessageDigest.getInstance("SHA-512").digest(encoded);
                } catch (NoSuchAlgorithmException e10) {
                    throw new CertificateException("Verification using TLSA failed: could not SHA-512 for matching", e10);
                }
            }
        }
        if (tlsa.k(encoded)) {
            return tlsa.f92915d == TLSA.CertUsage.domainIssuedCertificate;
        }
        throw new DaneCertificateException.CertificateMismatch(tlsa, encoded);
    }

    private static X509Certificate[] b(Certificate[] certificateArr) {
        ArrayList arrayList = new ArrayList();
        for (Certificate certificate : certificateArr) {
            if (certificate instanceof X509Certificate) {
                arrayList.add((X509Certificate) certificate);
            }
        }
        return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
    }

    private static X509Certificate[] c(javax.security.cert.X509Certificate[] x509CertificateArr) {
        X509Certificate[] x509CertificateArr2 = new X509Certificate[x509CertificateArr.length];
        for (int i4 = 0; i4 < x509CertificateArr.length; i4++) {
            try {
                x509CertificateArr2[i4] = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(x509CertificateArr[i4].getEncoded()));
            } catch (CertificateException | CertificateEncodingException e4) {
                f92640b.log(Level.WARNING, "Could not convert", e4);
            }
        }
        return x509CertificateArr2;
    }

    public HttpsURLConnection d(HttpsURLConnection httpsURLConnection) throws IOException, CertificateException {
        return e(httpsURLConnection, null);
    }

    public HttpsURLConnection e(HttpsURLConnection httpsURLConnection, X509TrustManager x509TrustManager) throws IOException, CertificateException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            b bVar = new b(x509TrustManager);
            sSLContext.init(null, new TrustManager[]{bVar}, null);
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.connect();
            if (!h(b(httpsURLConnection.getServerCertificates()), httpsURLConnection.getURL().getHost(), httpsURLConnection.getURL().getPort() < 0 ? httpsURLConnection.getURL().getDefaultPort() : httpsURLConnection.getURL().getPort()) && bVar.c()) {
                throw new IOException("Peer verification failed using PKIX", bVar.b());
            }
            return httpsURLConnection;
        } catch (KeyManagementException | NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        }
    }

    public boolean f(SSLSession sSLSession) throws CertificateException {
        try {
            return h(c(sSLSession.getPeerCertificateChain()), sSLSession.getPeerHost(), sSLSession.getPeerPort());
        } catch (SSLPeerUnverifiedException e4) {
            throw new CertificateException("Peer not verified", e4);
        }
    }

    public boolean g(SSLSocket sSLSocket) throws CertificateException {
        if (sSLSocket.isConnected()) {
            return f(sSLSocket.getSession());
        }
        throw new IllegalStateException("Socket not yet connected.");
    }

    public boolean h(X509Certificate[] x509CertificateArr, String str, int i4) throws CertificateException {
        Iterator<e> it;
        DnsName from = DnsName.from("_" + i4 + "._tcp." + str);
        try {
            DnsMessage z9 = this.f92641a.z(from, Record.TYPE.TLSA);
            if (!z9.f92667i) {
                String str2 = "Got TLSA response from DNS server, but was not signed properly.";
                if (z9 instanceof c) {
                    str2 = "Got TLSA response from DNS server, but was not signed properly. Reasons:";
                    while (((c) z9).u().iterator().hasNext()) {
                        str2 = str2 + " " + it.next();
                    }
                }
                f92640b.info(str2);
                return false;
            }
            LinkedList linkedList = new LinkedList();
            boolean z10 = false;
            for (Record<? extends h> record : z9.f92670l) {
                if (record.f92894b == Record.TYPE.TLSA && record.f92893a.equals(from)) {
                    try {
                        z10 |= a(x509CertificateArr[0], (TLSA) record.f92898f, str);
                    } catch (DaneCertificateException.CertificateMismatch e4) {
                        linkedList.add(e4);
                    }
                    if (z10) {
                        break;
                    }
                }
            }
            if (z10 || linkedList.isEmpty()) {
                return z10;
            }
            throw new DaneCertificateException.MultipleCertificateMismatchExceptions(linkedList);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public a(AbstractDnsClient abstractDnsClient) {
        this.f92641a = abstractDnsClient;
    }
}
