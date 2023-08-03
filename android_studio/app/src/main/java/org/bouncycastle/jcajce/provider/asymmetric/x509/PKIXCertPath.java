package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.pkcs.ContentInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.SignedData;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemWriter;

/* loaded from: classes4.dex */
public class PKIXCertPath extends CertPath {
    static final List certPathEncodings;
    private List certificates;
    private final JcaJceHelper helper;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PkiPath");
        arrayList.add("PEM");
        arrayList.add("PKCS7");
        certPathEncodings = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PKIXCertPath(InputStream inputStream, String str) throws CertificateException {
        super("X.509");
        BCJcaJceHelper bCJcaJceHelper = new BCJcaJceHelper();
        this.helper = bCJcaJceHelper;
        try {
            if (!str.equalsIgnoreCase("PkiPath")) {
                if (!str.equalsIgnoreCase("PKCS7") && !str.equalsIgnoreCase("PEM")) {
                    throw new CertificateException("unsupported encoding: " + str);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                this.certificates = new ArrayList();
                java.security.cert.CertificateFactory createCertificateFactory = bCJcaJceHelper.createCertificateFactory("X.509");
                while (true) {
                    Certificate generateCertificate = createCertificateFactory.generateCertificate(bufferedInputStream);
                    if (generateCertificate == null) {
                        break;
                    }
                    this.certificates.add(generateCertificate);
                }
            } else {
                ASN1Primitive readObject = new ASN1InputStream(inputStream).readObject();
                if (!(readObject instanceof ASN1Sequence)) {
                    throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
                }
                Enumeration objects = ((ASN1Sequence) readObject).getObjects();
                this.certificates = new ArrayList();
                java.security.cert.CertificateFactory createCertificateFactory2 = bCJcaJceHelper.createCertificateFactory("X.509");
                while (objects.hasMoreElements()) {
                    this.certificates.add(0, createCertificateFactory2.generateCertificate(new ByteArrayInputStream(((ASN1Encodable) objects.nextElement()).toASN1Primitive().getEncoded(ASN1Encoding.DER))));
                }
            }
            this.certificates = sortCerts(this.certificates);
        } catch (IOException e4) {
            throw new CertificateException("IOException throw while decoding CertPath:\n" + e4.toString());
        } catch (NoSuchProviderException e10) {
            throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + e10.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PKIXCertPath(List list) {
        super("X.509");
        this.helper = new BCJcaJceHelper();
        this.certificates = sortCerts(new ArrayList(list));
    }

    private List sortCerts(List list) {
        boolean z9;
        boolean z10;
        if (list.size() < 2) {
            return list;
        }
        X500Principal issuerX500Principal = ((X509Certificate) list.get(0)).getIssuerX500Principal();
        int i4 = 1;
        while (true) {
            if (i4 == list.size()) {
                z9 = true;
                break;
            } else if (!issuerX500Principal.equals(((X509Certificate) list.get(i4)).getSubjectX500Principal())) {
                z9 = false;
                break;
            } else {
                issuerX500Principal = ((X509Certificate) list.get(i4)).getIssuerX500Principal();
                i4++;
            }
        }
        if (z9) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list);
        for (int i10 = 0; i10 < list.size(); i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            int i11 = 0;
            while (true) {
                if (i11 == list.size()) {
                    z10 = false;
                    break;
                } else if (((X509Certificate) list.get(i11)).getIssuerX500Principal().equals(subjectX500Principal)) {
                    z10 = true;
                    break;
                } else {
                    i11++;
                }
            }
            if (!z10) {
                arrayList.add(x509Certificate);
                list.remove(i10);
            }
        }
        if (arrayList.size() > 1) {
            return arrayList2;
        }
        for (int i12 = 0; i12 != arrayList.size(); i12++) {
            X500Principal issuerX500Principal2 = ((X509Certificate) arrayList.get(i12)).getIssuerX500Principal();
            int i13 = 0;
            while (true) {
                if (i13 < list.size()) {
                    X509Certificate x509Certificate2 = (X509Certificate) list.get(i13);
                    if (issuerX500Principal2.equals(x509Certificate2.getSubjectX500Principal())) {
                        arrayList.add(x509Certificate2);
                        list.remove(i13);
                        break;
                    }
                    i13++;
                }
            }
        }
        return list.size() > 0 ? arrayList2 : arrayList;
    }

    private ASN1Primitive toASN1Object(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new ASN1InputStream(x509Certificate.getEncoded()).readObject();
        } catch (Exception e4) {
            throw new CertificateEncodingException("Exception while encoding certificate: " + e4.toString());
        }
    }

    private byte[] toDEREncoded(ASN1Encodable aSN1Encodable) throws CertificateEncodingException {
        try {
            return aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        } catch (IOException e4) {
            throw new CertificateEncodingException("Exception thrown: " + e4);
        }
    }

    @Override // java.security.cert.CertPath
    public List getCertificates() {
        return Collections.unmodifiableList(new ArrayList(this.certificates));
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded() throws CertificateEncodingException {
        Iterator encodings = getEncodings();
        if (encodings.hasNext()) {
            Object next = encodings.next();
            if (next instanceof String) {
                return getEncoded((String) next);
            }
            return null;
        }
        return null;
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded(String str) throws CertificateEncodingException {
        if (str.equalsIgnoreCase("PkiPath")) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            List list = this.certificates;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                aSN1EncodableVector.add(toASN1Object((X509Certificate) listIterator.previous()));
            }
            return toDEREncoded(new DERSequence(aSN1EncodableVector));
        }
        int i4 = 0;
        if (str.equalsIgnoreCase("PKCS7")) {
            ContentInfo contentInfo = new ContentInfo(PKCSObjectIdentifiers.data, null);
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            while (i4 != this.certificates.size()) {
                aSN1EncodableVector2.add(toASN1Object((X509Certificate) this.certificates.get(i4)));
                i4++;
            }
            return toDEREncoded(new ContentInfo(PKCSObjectIdentifiers.signedData, new SignedData(new ASN1Integer(1L), new DERSet(), contentInfo, new DERSet(aSN1EncodableVector2), null, new DERSet())));
        } else if (!str.equalsIgnoreCase("PEM")) {
            throw new CertificateEncodingException("unsupported encoding: " + str);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PemWriter pemWriter = new PemWriter(new OutputStreamWriter(byteArrayOutputStream));
            while (i4 != this.certificates.size()) {
                try {
                    pemWriter.writeObject(new PemObject("CERTIFICATE", ((X509Certificate) this.certificates.get(i4)).getEncoded()));
                    i4++;
                } catch (Exception unused) {
                    throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
                }
            }
            pemWriter.close();
            return byteArrayOutputStream.toByteArray();
        }
    }

    @Override // java.security.cert.CertPath
    public Iterator getEncodings() {
        return certPathEncodings.iterator();
    }
}
