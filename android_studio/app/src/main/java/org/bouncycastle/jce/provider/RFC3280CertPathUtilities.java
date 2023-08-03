package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.jcajce.PKIXCertRevocationChecker;
import org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.provider.symmetric.util.ClassUtil;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class RFC3280CertPathUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    private static final Class revChkClass = ClassUtil.loadClass(RFC3280CertPathUtilities.class, "java.security.cert.PKIXRevocationChecker");
    public static final String CERTIFICATE_POLICIES = Extension.certificatePolicies.getId();
    public static final String POLICY_MAPPINGS = Extension.policyMappings.getId();
    public static final String INHIBIT_ANY_POLICY = Extension.inhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    public static final String FRESHEST_CRL = Extension.freshestCRL.getId();
    public static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    public static final String POLICY_CONSTRAINTS = Extension.policyConstraints.getId();
    public static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    public static final String CRL_DISTRIBUTION_POINTS = Extension.cRLDistributionPoints.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = Extension.subjectAlternativeName.getId();
    public static final String NAME_CONSTRAINTS = Extension.nameConstraints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = Extension.authorityKeyIdentifier.getId();
    public static final String KEY_USAGE = Extension.keyUsage.getId();
    public static final String CRL_NUMBER = Extension.cRLNumber.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    RFC3280CertPathUtilities() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x013f, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void checkCRL(org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters r21, org.bouncycastle.asn1.x509.DistributionPoint r22, org.bouncycastle.jcajce.PKIXExtendedParameters r23, java.util.Date r24, java.util.Date r25, java.security.cert.X509Certificate r26, java.security.cert.X509Certificate r27, java.security.PublicKey r28, org.bouncycastle.jce.provider.CertStatus r29, org.bouncycastle.jce.provider.ReasonsMask r30, java.util.List r31, org.bouncycastle.jcajce.util.JcaJceHelper r32) throws org.bouncycastle.jce.provider.AnnotatedException, org.bouncycastle.jce.provider.RecoverableCertPathValidatorException {
        /*
            Method dump skipped, instructions count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.checkCRL(org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters, org.bouncycastle.asn1.x509.DistributionPoint, org.bouncycastle.jcajce.PKIXExtendedParameters, java.util.Date, java.util.Date, java.security.cert.X509Certificate, java.security.cert.X509Certificate, java.security.PublicKey, org.bouncycastle.jce.provider.CertStatus, org.bouncycastle.jce.provider.ReasonsMask, java.util.List, org.bouncycastle.jcajce.util.JcaJceHelper):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void checkCRLs(org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters r23, org.bouncycastle.jcajce.PKIXExtendedParameters r24, java.util.Date r25, java.util.Date r26, java.security.cert.X509Certificate r27, java.security.cert.X509Certificate r28, java.security.PublicKey r29, java.util.List r30, org.bouncycastle.jcajce.util.JcaJceHelper r31) throws org.bouncycastle.jce.provider.AnnotatedException, org.bouncycastle.jce.provider.RecoverableCertPathValidatorException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.checkCRLs(org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters, org.bouncycastle.jcajce.PKIXExtendedParameters, java.util.Date, java.util.Date, java.security.cert.X509Certificate, java.security.cert.X509Certificate, java.security.PublicKey, java.util.List, org.bouncycastle.jcajce.util.JcaJceHelper):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d4, code lost:
        r7 = ((org.bouncycastle.asn1.ASN1Sequence) org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r4, org.bouncycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES)).getObjects();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00dc, code lost:
        if (r7.hasMoreElements() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00de, code lost:
        r9 = org.bouncycastle.asn1.x509.PolicyInformation.getInstance(r7.nextElement());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f2, code lost:
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getPolicyIdentifier().getId()) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f4, code lost:
        r5 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getQualifierSet(r9.getPolicyQualifiers());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00fd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0105, code lost:
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0106, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010e, code lost:
        throw new java.security.cert.CertPathValidatorException("Policy information could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010f, code lost:
        r10 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0114, code lost:
        if (r4.getCriticalExtensionOIDs() == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0116, code lost:
        r12 = r4.getCriticalExtensionOIDs().contains(org.bouncycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0122, code lost:
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0123, code lost:
        r9 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r6.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0132, code lost:
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getValidPolicy()) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0134, code lost:
        r8 = new org.bouncycastle.jce.provider.PKIXPolicyNode(new java.util.ArrayList(), r3, (java.util.Set) r13.get(r11), r9, r10, r11, r12);
        r9.addChild(r8);
        r21[r3].add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0158, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0160, code lost:
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Certificate policies extension could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b5, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.bouncycastle.jce.provider.PKIXPolicyNode prepareCertB(java.security.cert.CertPath r19, int r20, java.util.List[] r21, org.bouncycastle.jce.provider.PKIXPolicyNode r22, int r23) throws java.security.cert.CertPathValidatorException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareCertB(java.security.cert.CertPath, int, java.util.List[], org.bouncycastle.jce.provider.PKIXPolicyNode, int):org.bouncycastle.jce.provider.PKIXPolicyNode");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertA(CertPath certPath, int i4) throws CertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), POLICY_MAPPINGS));
            if (aSN1Sequence != null) {
                for (int i10 = 0; i10 < aSN1Sequence.size(); i10++) {
                    try {
                        ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(i10));
                        ASN1ObjectIdentifier aSN1ObjectIdentifier = ASN1ObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(0));
                        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = ASN1ObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(1));
                        if (ANY_POLICY.equals(aSN1ObjectIdentifier.getId())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i4);
                        }
                        if (ANY_POLICY.equals(aSN1ObjectIdentifier2.getId())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy", null, certPath, i4);
                        }
                    } catch (Exception e4) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e4, certPath, i4);
                    }
                }
            }
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e10, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertG(CertPath certPath, int i4, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), NAME_CONSTRAINTS));
            NameConstraints nameConstraints = aSN1Sequence != null ? NameConstraints.getInstance(aSN1Sequence) : null;
            if (nameConstraints != null) {
                GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    try {
                        pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                    } catch (Exception e4) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e4, certPath, i4);
                    }
                }
                GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    for (int i10 = 0; i10 != excludedSubtrees.length; i10++) {
                        try {
                            pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i10]);
                        } catch (Exception e10) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e10, certPath, i4);
                        }
                    }
                }
            }
        } catch (Exception e11) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e11, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH1(CertPath certPath, int i4, int i10) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i4)) || i10 == 0) ? i10 : i10 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH2(CertPath certPath, int i4, int i10) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i4)) || i10 == 0) ? i10 : i10 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH3(CertPath certPath, int i4, int i10) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i4)) || i10 == 0) ? i10 : i10 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
        r3 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, false).intValueExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if (r3 >= r5) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int prepareNextCertI1(java.security.cert.CertPath r3, int r4, int r5) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.List r0 = r3.getCertificates()
            java.lang.Object r0 = r0.get(r4)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            java.lang.String r1 = org.bouncycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: java.lang.Exception -> L44
            org.bouncycastle.asn1.ASN1Primitive r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: java.lang.Exception -> L44
            org.bouncycastle.asn1.ASN1Sequence r0 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)     // Catch: java.lang.Exception -> L44
            if (r0 == 0) goto L43
            java.util.Enumeration r0 = r0.getObjects()
        L1a:
            boolean r1 = r0.hasMoreElements()
            if (r1 == 0) goto L43
            java.lang.Object r1 = r0.nextElement()     // Catch: java.lang.IllegalArgumentException -> L3a
            org.bouncycastle.asn1.ASN1TaggedObject r1 = org.bouncycastle.asn1.ASN1TaggedObject.getInstance(r1)     // Catch: java.lang.IllegalArgumentException -> L3a
            int r2 = r1.getTagNo()     // Catch: java.lang.IllegalArgumentException -> L3a
            if (r2 != 0) goto L1a
            r0 = 0
            org.bouncycastle.asn1.ASN1Integer r0 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, r0)     // Catch: java.lang.IllegalArgumentException -> L3a
            int r3 = r0.intValueExact()     // Catch: java.lang.IllegalArgumentException -> L3a
            if (r3 >= r5) goto L43
            return r3
        L3a:
            r5 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Policy constraints extension contents cannot be decoded."
            r0.<init>(r1, r5, r3, r4)
            throw r0
        L43:
            return r5
        L44:
            r5 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Policy constraints extension cannot be decoded."
            r0.<init>(r1, r5, r3, r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI1(java.security.cert.CertPath, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
        r4 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, false).intValueExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (r4 >= r6) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int prepareNextCertI2(java.security.cert.CertPath r4, int r5, int r6) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.List r0 = r4.getCertificates()
            java.lang.Object r0 = r0.get(r5)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            java.lang.String r1 = org.bouncycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: java.lang.Exception -> L45
            org.bouncycastle.asn1.ASN1Primitive r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: java.lang.Exception -> L45
            org.bouncycastle.asn1.ASN1Sequence r0 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)     // Catch: java.lang.Exception -> L45
            if (r0 == 0) goto L44
            java.util.Enumeration r0 = r0.getObjects()
        L1a:
            boolean r1 = r0.hasMoreElements()
            if (r1 == 0) goto L44
            java.lang.Object r1 = r0.nextElement()     // Catch: java.lang.IllegalArgumentException -> L3b
            org.bouncycastle.asn1.ASN1TaggedObject r1 = org.bouncycastle.asn1.ASN1TaggedObject.getInstance(r1)     // Catch: java.lang.IllegalArgumentException -> L3b
            int r2 = r1.getTagNo()     // Catch: java.lang.IllegalArgumentException -> L3b
            r3 = 1
            if (r2 != r3) goto L1a
            r0 = 0
            org.bouncycastle.asn1.ASN1Integer r0 = org.bouncycastle.asn1.ASN1Integer.getInstance(r1, r0)     // Catch: java.lang.IllegalArgumentException -> L3b
            int r4 = r0.intValueExact()     // Catch: java.lang.IllegalArgumentException -> L3b
            if (r4 >= r6) goto L44
            return r4
        L3b:
            r6 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Policy constraints extension contents cannot be decoded."
            r0.<init>(r1, r6, r4, r5)
            throw r0
        L44:
            return r6
        L45:
            r6 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Policy constraints extension cannot be decoded."
            r0.<init>(r1, r6, r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI2(java.security.cert.CertPath, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertJ(CertPath certPath, int i4, int i10) throws CertPathValidatorException {
        int intValueExact;
        try {
            ASN1Integer aSN1Integer = ASN1Integer.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), INHIBIT_ANY_POLICY));
            return (aSN1Integer == null || (intValueExact = aSN1Integer.intValueExact()) >= i10) ? i10 : intValueExact;
        } catch (Exception e4) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e4, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertK(CertPath certPath, int i4) throws CertPathValidatorException {
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), BASIC_CONSTRAINTS));
            if (basicConstraints == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints", null, certPath, i4);
            }
            if (!basicConstraints.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate", null, certPath, i4);
            }
        } catch (Exception e4) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e4, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertL(CertPath certPath, int i4, int i10) throws CertPathValidatorException {
        if (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i4))) {
            return i10;
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertM(CertPath certPath, int i4, int i10) throws CertPathValidatorException {
        BigInteger pathLenConstraint;
        int intValue;
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), BASIC_CONSTRAINTS));
            return (basicConstraints == null || (pathLenConstraint = basicConstraints.getPathLenConstraint()) == null || (intValue = pathLenConstraint.intValue()) >= i10) ? i10 : intValue;
        } catch (Exception e4) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e4, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertN(CertPath certPath, int i4) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i4)).getKeyUsage();
        if (keyUsage != null) {
            if (keyUsage.length <= 5 || !keyUsage[5]) {
                throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertO(CertPath certPath, int i4, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i4);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e4) {
                throw new CertPathValidatorException(e4.getMessage(), e4.getCause(), certPath, i4);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        int i4 = 0;
        boolean z9 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        try {
            byte[] encoded = PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded();
            if (distributionPoint.getCRLIssuer() != null) {
                GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                int i10 = 0;
                while (i4 < names.length) {
                    if (names[i4].getTagNo() == 4) {
                        try {
                            if (Arrays.areEqual(names[i4].getName().toASN1Primitive().getEncoded(), encoded)) {
                                i10 = 1;
                            }
                        } catch (IOException e4) {
                            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e4);
                        }
                    }
                    i4++;
                }
                if (i10 != 0 && !z9) {
                    throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
                }
                if (i10 == 0) {
                    throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
                }
                i4 = i10;
            } else if (PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getEncodedIssuerPrincipal(obj))) {
                i4 = 1;
            }
            if (i4 == 0) {
                throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e10) {
            throw new AnnotatedException("Exception encoding CRL issuer: " + e10.getMessage(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        GeneralName[] generalNameArr;
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null) {
                if (issuingDistributionPoint.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(issuingDistributionPoint).getDistributionPoint();
                    ArrayList arrayList = new ArrayList();
                    boolean z9 = false;
                    if (distributionPoint2.getType() == 0) {
                        for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                            arrayList.add(generalName);
                        }
                    }
                    if (distributionPoint2.getType() == 1) {
                        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                        try {
                            Enumeration objects = ASN1Sequence.getInstance(PrincipalUtils.getIssuerPrincipal(x509crl)).getObjects();
                            while (objects.hasMoreElements()) {
                                aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                            }
                            aSN1EncodableVector.add(distributionPoint2.getName());
                            arrayList.add(new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector))));
                        } catch (Exception e4) {
                            throw new AnnotatedException("Could not read CRL issuer.", e4);
                        }
                    }
                    if (distributionPoint.getDistributionPoint() != null) {
                        DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                        GeneralName[] names = distributionPoint3.getType() == 0 ? GeneralNames.getInstance(distributionPoint3.getName()).getNames() : null;
                        if (distributionPoint3.getType() == 1) {
                            if (distributionPoint.getCRLIssuer() != null) {
                                generalNameArr = distributionPoint.getCRLIssuer().getNames();
                            } else {
                                generalNameArr = new GeneralName[1];
                                try {
                                    generalNameArr[0] = new GeneralName(PrincipalUtils.getEncodedIssuerPrincipal(obj));
                                } catch (Exception e10) {
                                    throw new AnnotatedException("Could not read certificate issuer.", e10);
                                }
                            }
                            names = generalNameArr;
                            for (int i4 = 0; i4 < names.length; i4++) {
                                Enumeration objects2 = ASN1Sequence.getInstance(names[i4].getName().toASN1Primitive()).getObjects();
                                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                                while (objects2.hasMoreElements()) {
                                    aSN1EncodableVector2.add((ASN1Encodable) objects2.nextElement());
                                }
                                aSN1EncodableVector2.add(distributionPoint3.getName());
                                names[i4] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector2)));
                            }
                        }
                        if (names != null) {
                            int i10 = 0;
                            while (true) {
                                if (i10 >= names.length) {
                                    break;
                                } else if (arrayList.contains(names[i10])) {
                                    z9 = true;
                                    break;
                                } else {
                                    i10++;
                                }
                            }
                        }
                        if (!z9) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    } else if (distributionPoint.getCRLIssuer() == null) {
                        throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                    } else {
                        GeneralName[] names2 = distributionPoint.getCRLIssuer().getNames();
                        int i11 = 0;
                        while (true) {
                            if (i11 >= names2.length) {
                                break;
                            } else if (arrayList.contains(names2[i11])) {
                                z9 = true;
                                break;
                            } else {
                                i11++;
                            }
                        }
                        if (!z9) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    }
                }
                try {
                    BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                    if (obj instanceof X509Certificate) {
                        if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        }
                        if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e11) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e11);
                }
            }
        } catch (Exception e12) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e12);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLC(X509CRL x509crl, X509CRL x509crl2, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (x509crl == null) {
            return;
        }
        if (x509crl.hasUnsupportedCriticalExtension()) {
            throw new AnnotatedException("delta CRL has unsupported critical extensions");
        }
        try {
            String str = ISSUING_DISTRIBUTION_POINT;
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, str));
            if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                if (!PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getIssuerPrincipal(x509crl2))) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    IssuingDistributionPoint issuingDistributionPoint2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                    boolean z9 = false;
                    if (issuingDistributionPoint != null ? issuingDistributionPoint.equals(issuingDistributionPoint2) : issuingDistributionPoint2 == null) {
                        z9 = true;
                    }
                    if (!z9) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        String str2 = AUTHORITY_KEY_IDENTIFIER;
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, str2);
                        try {
                            ASN1Primitive extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, str2);
                            if (extensionValue == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            }
                            if (extensionValue2 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            }
                            if (!extensionValue.equals(extensionValue2)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e4) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e4);
                        }
                    } catch (AnnotatedException e10) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e10);
                    }
                } catch (Exception e11) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e11);
                }
            }
        } catch (Exception e12) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e12);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null || distributionPoint.getReasons() == null) {
                if ((issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                    return ReasonsMask.allReasons;
                }
                return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons())).intersect(issuingDistributionPoint == null ? ReasonsMask.allReasons : new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
            }
            return new ReasonsMask(distributionPoint.getReasons()).intersect(new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, PKIXExtendedParameters pKIXExtendedParameters, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        int i4;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCertStoreSelector<? extends Certificate> build = new PKIXCertStoreSelector.Builder(x509CertSelector).build();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                CertPathValidatorUtilities.findCertificates(linkedHashSet, build, pKIXExtendedParameters.getCertificateStores());
                CertPathValidatorUtilities.findCertificates(linkedHashSet, build, pKIXExtendedParameters.getCertStores());
                linkedHashSet.add(x509Certificate);
                Iterator it = linkedHashSet.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilderSpi pKIXCertPathBuilderSpi_8 = revChkClass != null ? new PKIXCertPathBuilderSpi_8(true) : new PKIXCertPathBuilderSpi(true);
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            PKIXExtendedParameters.Builder targetConstraints = new PKIXExtendedParameters.Builder(pKIXExtendedParameters).setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertSelector2).build());
                            if (list.contains(x509Certificate2)) {
                                targetConstraints.setRevocationEnabled(false);
                            } else {
                                targetConstraints.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = pKIXCertPathBuilderSpi_8.engineBuild(new PKIXExtendedBuilderParameters.Builder(targetConstraints.build()).build()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e4) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e4);
                        } catch (CertPathValidatorException e10) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e10);
                        } catch (Exception e11) {
                            throw new AnnotatedException(e11.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i4 = 0; i4 < arrayList.size(); i4++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i4)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length > 6 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i4));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                }
                throw annotatedException;
            } catch (AnnotatedException e12) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e12);
            }
        } catch (IOException e13) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PublicKey processCRLG(X509CRL x509crl, Set set) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e4 = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e10) {
                e4 = e10;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509CRL processCRLH(Set set, PublicKey publicKey) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e4 = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e10) {
                e4 = e10;
            }
        }
        if (e4 == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (!pKIXExtendedParameters.isUseDeltasEnabled() || x509crl == null) {
            return;
        }
        CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertA(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, Date date, PKIXCertRevocationChecker pKIXCertRevocationChecker, int i4, PublicKey publicKey, boolean z9, X500Name x500Name, X509Certificate x509Certificate) throws CertPathValidatorException {
        X509Certificate x509Certificate2 = (X509Certificate) certPath.getCertificates().get(i4);
        if (!z9) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, pKIXExtendedParameters.getSigProvider());
            } catch (GeneralSecurityException e4) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e4, certPath, i4);
            }
        }
        try {
            Date validCertDateFromValidityModel = CertPathValidatorUtilities.getValidCertDateFromValidityModel(date, pKIXExtendedParameters.getValidityModel(), certPath, i4);
            try {
                x509Certificate2.checkValidity(validCertDateFromValidityModel);
                if (pKIXCertRevocationChecker != null) {
                    pKIXCertRevocationChecker.initialize(new PKIXCertRevocationCheckerParameters(pKIXExtendedParameters, validCertDateFromValidityModel, certPath, i4, x509Certificate, publicKey));
                    pKIXCertRevocationChecker.check(x509Certificate2);
                }
                X500Name issuerPrincipal = PrincipalUtils.getIssuerPrincipal(x509Certificate2);
                if (issuerPrincipal.equals(x500Name)) {
                    return;
                }
                throw new ExtCertPathValidatorException("IssuerName(" + issuerPrincipal + ") does not match SubjectName(" + x500Name + ") of signing certificate.", null, certPath, i4);
            } catch (CertificateExpiredException e10) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e10.getMessage(), e10, certPath, i4);
            } catch (CertificateNotYetValidException e11) {
                throw new ExtCertPathValidatorException("Could not validate certificate: " + e11.getMessage(), e11, certPath, i4);
            }
        } catch (AnnotatedException e12) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e12, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertBC(CertPath certPath, int i4, PKIXNameConstraintValidator pKIXNameConstraintValidator, boolean z9) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i4);
        int size = certificates.size();
        int i10 = size - i4;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || (i10 >= size && !z9)) {
            try {
                ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(PrincipalUtils.getSubjectPrincipal(x509Certificate));
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                    pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                    try {
                        GeneralNames generalNames = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        RDN[] rDNs = X500Name.getInstance(aSN1Sequence).getRDNs(BCStyle.EmailAddress);
                        for (int i11 = 0; i11 != rDNs.length; i11++) {
                            GeneralName generalName = new GeneralName(1, ((ASN1String) rDNs[i11].getFirst().getValue()).getString());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                            } catch (PKIXNameConstraintValidatorException e4) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e4, certPath, i4);
                            }
                        }
                        if (generalNames != null) {
                            try {
                                GeneralName[] names = generalNames.getNames();
                                for (int i12 = 0; i12 < names.length; i12++) {
                                    try {
                                        pKIXNameConstraintValidator.checkPermitted(names[i12]);
                                        pKIXNameConstraintValidator.checkExcluded(names[i12]);
                                    } catch (PKIXNameConstraintValidatorException e10) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e10, certPath, i4);
                                    }
                                }
                            } catch (Exception e11) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e11, certPath, i4);
                            }
                        }
                    } catch (Exception e12) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e12, certPath, i4);
                    }
                } catch (PKIXNameConstraintValidatorException e13) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e13, certPath, i4);
                }
            } catch (Exception e14) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e14, certPath, i4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode processCertD(CertPath certPath, int i4, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i10, boolean z9) throws CertPathValidatorException {
        String str;
        int i11;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i4);
        int size = certificates.size();
        int i12 = size - i4;
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (aSN1Sequence == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = aSN1Sequence.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                ASN1ObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!ANY_POLICY.equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i12, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i12, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e4) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e4, certPath, i4);
                    }
                }
            }
            if (set.isEmpty() || set.contains(ANY_POLICY)) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i10 > 0 || ((i12 < size || z9) && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = aSN1Sequence.getObjects();
                while (true) {
                    if (!objects2.hasMoreElements()) {
                        break;
                    }
                    PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                    if (ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                        List list = listArr[i12 - 1];
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i13);
                            for (Object obj2 : pKIXPolicyNode2.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    str = (String) obj2;
                                } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                    str = ((ASN1ObjectIdentifier) obj2).getId();
                                }
                                String str2 = str;
                                Iterator children = pKIXPolicyNode2.getChildren();
                                boolean z10 = false;
                                while (children.hasNext()) {
                                    if (str2.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                        z10 = true;
                                    }
                                }
                                if (!z10) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str2);
                                    PKIXPolicyNode pKIXPolicyNode3 = new PKIXPolicyNode(new ArrayList(), i12, hashSet3, pKIXPolicyNode2, qualifierSet2, str2, false);
                                    pKIXPolicyNode2.addChild(pKIXPolicyNode3);
                                    listArr[i12].add(pKIXPolicyNode3);
                                }
                            }
                        }
                    }
                }
            }
            PKIXPolicyNode pKIXPolicyNode4 = pKIXPolicyNode;
            for (int i14 = i12 - 1; i14 >= 0; i14--) {
                List list2 = listArr[i14];
                while (i11 < list2.size()) {
                    PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list2.get(i11);
                    i11 = (pKIXPolicyNode5.hasChildren() || (pKIXPolicyNode4 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode4, listArr, pKIXPolicyNode5)) != null) ? i11 + 1 : 0;
                }
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean contains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                List list3 = listArr[i12];
                for (int i15 = 0; i15 < list3.size(); i15++) {
                    ((PKIXPolicyNode) list3.get(i15)).setCritical(contains);
                }
            }
            return pKIXPolicyNode4;
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e10, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode processCertE(CertPath certPath, int i4, PKIXPolicyNode pKIXPolicyNode) throws CertPathValidatorException {
        try {
            if (ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), CERTIFICATE_POLICIES)) == null) {
                return null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e4) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e4, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertF(CertPath certPath, int i4, PKIXPolicyNode pKIXPolicyNode, int i10) throws CertPathValidatorException {
        if (i10 <= 0 && pKIXPolicyNode == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int wrapupCertA(int i4, X509Certificate x509Certificate) {
        return (CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i4 == 0) ? i4 : i4 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int wrapupCertB(CertPath certPath, int i4, int i10) throws CertPathValidatorException {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i4), POLICY_CONSTRAINTS));
            if (aSN1Sequence != null) {
                Enumeration objects = aSN1Sequence.getObjects();
                while (objects.hasMoreElements()) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                    if (aSN1TaggedObject.getTagNo() == 0) {
                        try {
                            if (ASN1Integer.getInstance(aSN1TaggedObject, false).intValueExact() == 0) {
                                return 0;
                            }
                        } catch (Exception e4) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e4, certPath, i4);
                        }
                    }
                }
            }
            return i10;
        } catch (AnnotatedException e10) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e10, certPath, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void wrapupCertF(CertPath certPath, int i4, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i4);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e4) {
                throw new ExtCertPathValidatorException(e4.getMessage(), e4, certPath, i4);
            } catch (Exception e10) {
                throw new CertPathValidatorException("Additional certificate path checker failed.", e10, certPath, i4);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode wrapupCertG(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, Set set, int i4, List[] listArr, PKIXPolicyNode pKIXPolicyNode, Set set2) throws CertPathValidatorException {
        int size = certPath.getCertificates().size();
        if (pKIXPolicyNode == null) {
            if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i4);
            }
            return null;
        }
        if (!CertPathValidatorUtilities.isAnyPolicy(set)) {
            HashSet<PKIXPolicyNode> hashSet = new HashSet();
            for (List list : listArr) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i10);
                    if (ANY_POLICY.equals(pKIXPolicyNode2.getValidPolicy())) {
                        Iterator children = pKIXPolicyNode2.getChildren();
                        while (children.hasNext()) {
                            PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) children.next();
                            if (!ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                                hashSet.add(pKIXPolicyNode3);
                            }
                        }
                    }
                }
            }
            for (PKIXPolicyNode pKIXPolicyNode4 : hashSet) {
                if (!set.contains(pKIXPolicyNode4.getValidPolicy())) {
                    pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode4);
                }
            }
            if (pKIXPolicyNode != null) {
                for (int i11 = size - 1; i11 >= 0; i11--) {
                    List list2 = listArr[i11];
                    for (int i12 = 0; i12 < list2.size(); i12++) {
                        PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list2.get(i12);
                        if (!pKIXPolicyNode5.hasChildren()) {
                            pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode5);
                        }
                    }
                }
            }
        } else if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
            if (set2.isEmpty()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i4);
            }
            HashSet<PKIXPolicyNode> hashSet2 = new HashSet();
            for (List list3 : listArr) {
                for (int i13 = 0; i13 < list3.size(); i13++) {
                    PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) list3.get(i13);
                    if (ANY_POLICY.equals(pKIXPolicyNode6.getValidPolicy())) {
                        Iterator children2 = pKIXPolicyNode6.getChildren();
                        while (children2.hasNext()) {
                            hashSet2.add(children2.next());
                        }
                    }
                }
            }
            for (PKIXPolicyNode pKIXPolicyNode7 : hashSet2) {
                set2.contains(pKIXPolicyNode7.getValidPolicy());
            }
            for (int i14 = size - 1; i14 >= 0; i14--) {
                List list4 = listArr[i14];
                for (int i15 = 0; i15 < list4.size(); i15++) {
                    PKIXPolicyNode pKIXPolicyNode8 = (PKIXPolicyNode) list4.get(i15);
                    if (!pKIXPolicyNode8.hasChildren()) {
                        pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode8);
                    }
                }
            }
        }
        return pKIXPolicyNode;
    }
}
