package org.bouncycastle.jce;

import java.io.IOException;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.TBSCertificateStructure;
import org.bouncycastle.asn1.x509.X509Name;

/* loaded from: classes5.dex */
public class PrincipalUtil {
    public static X509Principal getIssuerX509Principal(X509CRL x509crl) throws CRLException {
        try {
            return new X509Principal(X509Name.getInstance(TBSCertList.getInstance(ASN1Primitive.fromByteArray(x509crl.getTBSCertList())).getIssuer()));
        } catch (IOException e4) {
            throw new CRLException(e4.toString());
        }
    }

    public static X509Principal getIssuerX509Principal(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new X509Principal(X509Name.getInstance(TBSCertificateStructure.getInstance(ASN1Primitive.fromByteArray(x509Certificate.getTBSCertificate())).getIssuer()));
        } catch (IOException e4) {
            throw new CertificateEncodingException(e4.toString());
        }
    }

    public static X509Principal getSubjectX509Principal(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new X509Principal(X509Name.getInstance(TBSCertificateStructure.getInstance(ASN1Primitive.fromByteArray(x509Certificate.getTBSCertificate())).getSubject()));
        } catch (IOException e4) {
            throw new CertificateEncodingException(e4.toString());
        }
    }
}
