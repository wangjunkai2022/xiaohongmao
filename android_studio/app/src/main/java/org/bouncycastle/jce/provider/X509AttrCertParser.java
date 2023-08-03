package org.bouncycastle.jce.provider;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.SignedData;
import org.bouncycastle.x509.X509AttributeCertificate;
import org.bouncycastle.x509.X509StreamParserSpi;
import org.bouncycastle.x509.X509V2AttributeCertificate;
import org.bouncycastle.x509.util.StreamParsingException;

/* loaded from: classes5.dex */
public class X509AttrCertParser extends X509StreamParserSpi {
    private static final PEMUtil PEM_PARSER = new PEMUtil("ATTRIBUTE CERTIFICATE");
    private ASN1Set sData = null;
    private int sDataObjectCount = 0;
    private InputStream currentStream = null;

    private X509AttributeCertificate getCertificate() throws IOException {
        if (this.sData != null) {
            while (this.sDataObjectCount < this.sData.size()) {
                ASN1Set aSN1Set = this.sData;
                int i4 = this.sDataObjectCount;
                this.sDataObjectCount = i4 + 1;
                ASN1Encodable objectAt = aSN1Set.getObjectAt(i4);
                if (objectAt instanceof ASN1TaggedObject) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objectAt;
                    if (aSN1TaggedObject.getTagNo() == 2) {
                        return new X509V2AttributeCertificate(ASN1Sequence.getInstance(aSN1TaggedObject, false).getEncoded());
                    }
                }
            }
            return null;
        }
        return null;
    }

    private X509AttributeCertificate readDERCertificate(InputStream inputStream) throws IOException {
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(new ASN1InputStream(inputStream).readObject());
        if (aSN1Sequence.size() > 1 && (aSN1Sequence.getObjectAt(0) instanceof ASN1ObjectIdentifier) && aSN1Sequence.getObjectAt(0).equals(PKCSObjectIdentifiers.signedData)) {
            this.sData = new SignedData(ASN1Sequence.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(1), true)).getCertificates();
            return getCertificate();
        }
        return new X509V2AttributeCertificate(aSN1Sequence.getEncoded());
    }

    private X509AttributeCertificate readPEMCertificate(InputStream inputStream) throws IOException {
        ASN1Sequence readPEMObject = PEM_PARSER.readPEMObject(inputStream);
        if (readPEMObject != null) {
            return new X509V2AttributeCertificate(readPEMObject.getEncoded());
        }
        return null;
    }

    @Override // org.bouncycastle.x509.X509StreamParserSpi
    public void engineInit(InputStream inputStream) {
        this.currentStream = inputStream;
        this.sData = null;
        this.sDataObjectCount = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.currentStream = new BufferedInputStream(this.currentStream);
    }

    @Override // org.bouncycastle.x509.X509StreamParserSpi
    public Object engineRead() throws StreamParsingException {
        try {
            ASN1Set aSN1Set = this.sData;
            if (aSN1Set != null) {
                if (this.sDataObjectCount != aSN1Set.size()) {
                    return getCertificate();
                }
                this.sData = null;
                this.sDataObjectCount = 0;
                return null;
            }
            this.currentStream.mark(10);
            int read = this.currentStream.read();
            if (read == -1) {
                return null;
            }
            if (read != 48) {
                this.currentStream.reset();
                return readPEMCertificate(this.currentStream);
            }
            this.currentStream.reset();
            return readDERCertificate(this.currentStream);
        } catch (Exception e4) {
            throw new StreamParsingException(e4.toString(), e4);
        }
    }

    @Override // org.bouncycastle.x509.X509StreamParserSpi
    public Collection engineReadAll() throws StreamParsingException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) engineRead();
            if (x509AttributeCertificate == null) {
                return arrayList;
            }
            arrayList.add(x509AttributeCertificate);
        }
    }
}
