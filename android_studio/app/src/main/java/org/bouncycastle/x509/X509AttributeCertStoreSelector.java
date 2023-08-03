package org.bouncycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.Target;
import org.bouncycastle.asn1.x509.TargetInformation;
import org.bouncycastle.asn1.x509.Targets;
import org.bouncycastle.util.Selector;

/* loaded from: classes5.dex */
public class X509AttributeCertStoreSelector implements Selector {
    private X509AttributeCertificate attributeCert;
    private Date attributeCertificateValid;
    private AttributeCertificateHolder holder;
    private AttributeCertificateIssuer issuer;
    private BigInteger serialNumber;
    private Collection targetNames = new HashSet();
    private Collection targetGroups = new HashSet();

    private Set extractGeneralNames(Collection collection) throws IOException {
        if (collection == null || collection.isEmpty()) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (Object obj : collection) {
            if (!(obj instanceof GeneralName)) {
                obj = GeneralName.getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            }
            hashSet.add(obj);
        }
        return hashSet;
    }

    public void addTargetGroup(GeneralName generalName) {
        this.targetGroups.add(generalName);
    }

    public void addTargetGroup(byte[] bArr) throws IOException {
        addTargetGroup(GeneralName.getInstance(ASN1Primitive.fromByteArray(bArr)));
    }

    public void addTargetName(GeneralName generalName) {
        this.targetNames.add(generalName);
    }

    public void addTargetName(byte[] bArr) throws IOException {
        addTargetName(GeneralName.getInstance(ASN1Primitive.fromByteArray(bArr)));
    }

    @Override // org.bouncycastle.util.Selector
    public Object clone() {
        X509AttributeCertStoreSelector x509AttributeCertStoreSelector = new X509AttributeCertStoreSelector();
        x509AttributeCertStoreSelector.attributeCert = this.attributeCert;
        x509AttributeCertStoreSelector.attributeCertificateValid = getAttributeCertificateValid();
        x509AttributeCertStoreSelector.holder = this.holder;
        x509AttributeCertStoreSelector.issuer = this.issuer;
        x509AttributeCertStoreSelector.serialNumber = this.serialNumber;
        x509AttributeCertStoreSelector.targetGroups = getTargetGroups();
        x509AttributeCertStoreSelector.targetNames = getTargetNames();
        return x509AttributeCertStoreSelector;
    }

    public X509AttributeCertificate getAttributeCert() {
        return this.attributeCert;
    }

    public Date getAttributeCertificateValid() {
        if (this.attributeCertificateValid != null) {
            return new Date(this.attributeCertificateValid.getTime());
        }
        return null;
    }

    public AttributeCertificateHolder getHolder() {
        return this.holder;
    }

    public AttributeCertificateIssuer getIssuer() {
        return this.issuer;
    }

    public BigInteger getSerialNumber() {
        return this.serialNumber;
    }

    public Collection getTargetGroups() {
        return Collections.unmodifiableCollection(this.targetGroups);
    }

    public Collection getTargetNames() {
        return Collections.unmodifiableCollection(this.targetNames);
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        byte[] extensionValue;
        Targets[] targetsObjects;
        if (obj instanceof X509AttributeCertificate) {
            X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) obj;
            X509AttributeCertificate x509AttributeCertificate2 = this.attributeCert;
            if (x509AttributeCertificate2 == null || x509AttributeCertificate2.equals(x509AttributeCertificate)) {
                if (this.serialNumber == null || x509AttributeCertificate.getSerialNumber().equals(this.serialNumber)) {
                    if (this.holder == null || x509AttributeCertificate.getHolder().equals(this.holder)) {
                        if (this.issuer == null || x509AttributeCertificate.getIssuer().equals(this.issuer)) {
                            Date date = this.attributeCertificateValid;
                            if (date != null) {
                                try {
                                    x509AttributeCertificate.checkValidity(date);
                                } catch (CertificateExpiredException | CertificateNotYetValidException unused) {
                                    return false;
                                }
                            }
                            if ((!this.targetNames.isEmpty() || !this.targetGroups.isEmpty()) && (extensionValue = x509AttributeCertificate.getExtensionValue(Extension.targetInformation.getId())) != null) {
                                try {
                                    targetsObjects = TargetInformation.getInstance(new ASN1InputStream(((DEROctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()).readObject()).getTargetsObjects();
                                    if (!this.targetNames.isEmpty()) {
                                        boolean z9 = false;
                                        for (Targets targets : targetsObjects) {
                                            Target[] targets2 = targets.getTargets();
                                            int i4 = 0;
                                            while (true) {
                                                if (i4 >= targets2.length) {
                                                    break;
                                                } else if (this.targetNames.contains(GeneralName.getInstance(targets2[i4].getTargetName()))) {
                                                    z9 = true;
                                                    break;
                                                } else {
                                                    i4++;
                                                }
                                            }
                                        }
                                        if (!z9) {
                                            return false;
                                        }
                                    }
                                } catch (IOException | IllegalArgumentException unused2) {
                                }
                                if (!this.targetGroups.isEmpty()) {
                                    boolean z10 = false;
                                    for (Targets targets3 : targetsObjects) {
                                        Target[] targets4 = targets3.getTargets();
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 >= targets4.length) {
                                                break;
                                            } else if (this.targetGroups.contains(GeneralName.getInstance(targets4[i10].getTargetGroup()))) {
                                                z10 = true;
                                                break;
                                            } else {
                                                i10++;
                                            }
                                        }
                                    }
                                    if (!z10) {
                                        return false;
                                    }
                                }
                            }
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public void setAttributeCert(X509AttributeCertificate x509AttributeCertificate) {
        this.attributeCert = x509AttributeCertificate;
    }

    public void setAttributeCertificateValid(Date date) {
        if (date != null) {
            this.attributeCertificateValid = new Date(date.getTime());
        } else {
            this.attributeCertificateValid = null;
        }
    }

    public void setHolder(AttributeCertificateHolder attributeCertificateHolder) {
        this.holder = attributeCertificateHolder;
    }

    public void setIssuer(AttributeCertificateIssuer attributeCertificateIssuer) {
        this.issuer = attributeCertificateIssuer;
    }

    public void setSerialNumber(BigInteger bigInteger) {
        this.serialNumber = bigInteger;
    }

    public void setTargetGroups(Collection collection) throws IOException {
        this.targetGroups = extractGeneralNames(collection);
    }

    public void setTargetNames(Collection collection) throws IOException {
        this.targetNames = extractGeneralNames(collection);
    }
}
