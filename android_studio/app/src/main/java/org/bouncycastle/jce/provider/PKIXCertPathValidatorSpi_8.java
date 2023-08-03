package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.PKIXRevocationChecker;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.TBSCertificate;
import org.bouncycastle.jcajce.PKIXCertRevocationChecker;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.interfaces.BCX509Certificate;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

/* loaded from: classes5.dex */
public class PKIXCertPathValidatorSpi_8 extends CertPathValidatorSpi {
    private final JcaJceHelper helper;
    private final boolean isForCRLCheck;

    public PKIXCertPathValidatorSpi_8() {
        this(false);
    }

    public PKIXCertPathValidatorSpi_8(boolean z9) {
        this.helper = new BCJcaJceHelper();
        this.isForCRLCheck = z9;
    }

    static void checkCertificate(X509Certificate x509Certificate) throws AnnotatedException {
        if (x509Certificate instanceof BCX509Certificate) {
            RuntimeException runtimeException = null;
            try {
                if (((BCX509Certificate) x509Certificate).getTBSCertificateNative() != null) {
                    return;
                }
            } catch (RuntimeException e4) {
                runtimeException = e4;
            }
            throw new AnnotatedException("unable to process TBSCertificate", runtimeException);
        }
        try {
            TBSCertificate.getInstance(x509Certificate.getTBSCertificate());
        } catch (IllegalArgumentException e10) {
            throw new AnnotatedException(e10.getMessage());
        } catch (CertificateEncodingException e11) {
            throw new AnnotatedException("unable to process TBSCertificate", e11);
        }
    }

    @Override // java.security.cert.CertPathValidatorSpi
    public PKIXCertPathChecker engineGetRevocationChecker() {
        return new ProvRevocationChecker(this.helper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        PKIXExtendedParameters pKIXExtendedParameters;
        List<? extends Certificate> list;
        int i4;
        X500Name ca;
        PublicKey cAPublicKey;
        HashSet hashSet;
        int i10;
        ArrayList arrayList;
        int i11;
        HashSet hashSet2;
        if (certPathParameters instanceof PKIXParameters) {
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) certPathParameters;
                builder.setUseDeltasEnabled(extendedPKIXParameters.isUseDeltasEnabled());
                builder.setValidityModel(extendedPKIXParameters.getValidityModel());
            }
            pKIXExtendedParameters = builder.build();
        } else if (certPathParameters instanceof PKIXExtendedBuilderParameters) {
            pKIXExtendedParameters = ((PKIXExtendedBuilderParameters) certPathParameters).getBaseParameters();
        } else if (!(certPathParameters instanceof PKIXExtendedParameters)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
        } else {
            pKIXExtendedParameters = (PKIXExtendedParameters) certPathParameters;
        }
        if (pKIXExtendedParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Date validityDate = CertPathValidatorUtilities.getValidityDate(pKIXExtendedParameters, new Date());
        Set initialPolicies = pKIXExtendedParameters.getInitialPolicies();
        try {
            TrustAnchor findTrustAnchor = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) certificates.get(certificates.size() - 1), pKIXExtendedParameters.getTrustAnchors(), pKIXExtendedParameters.getSigProvider());
            if (findTrustAnchor == null) {
                list = certificates;
                i4 = 1;
                try {
                    throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
                } catch (AnnotatedException e4) {
                    e = e4;
                    throw new CertPathValidatorException(e.getMessage(), e.getUnderlyingException(), certPath, list.size() - i4);
                }
            }
            checkCertificate(findTrustAnchor.getTrustedCert());
            PKIXExtendedParameters build = new PKIXExtendedParameters.Builder(pKIXExtendedParameters).setTrustAnchor(findTrustAnchor).build();
            ArrayList arrayList2 = new ArrayList();
            PKIXCertRevocationChecker pKIXCertRevocationChecker = null;
            for (PKIXCertPathChecker pKIXCertPathChecker : build.getCertPathCheckers()) {
                pKIXCertPathChecker.init(false);
                if (!(pKIXCertPathChecker instanceof PKIXRevocationChecker)) {
                    arrayList2.add(pKIXCertPathChecker);
                } else if (pKIXCertRevocationChecker != null) {
                    throw new CertPathValidatorException("only one PKIXRevocationChecker allowed");
                } else {
                    pKIXCertRevocationChecker = pKIXCertPathChecker instanceof PKIXCertRevocationChecker ? (PKIXCertRevocationChecker) pKIXCertPathChecker : new WrappedRevocationChecker(pKIXCertPathChecker);
                }
            }
            if (build.isRevocationEnabled() && pKIXCertRevocationChecker == null) {
                pKIXCertRevocationChecker = new ProvRevocationChecker(this.helper);
            }
            PKIXCertRevocationChecker pKIXCertRevocationChecker2 = pKIXCertRevocationChecker;
            int i12 = size + 1;
            ArrayList[] arrayListArr = new ArrayList[i12];
            for (int i13 = 0; i13 < i12; i13++) {
                arrayListArr[i13] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add(RFC3280CertPathUtilities.ANY_POLICY);
            arrayListArr[0].add(new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false));
            PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
            HashSet hashSet4 = new HashSet();
            int i14 = build.isExplicitPolicyRequired() ? 0 : i12;
            int i15 = build.isAnyPolicyInhibited() ? 0 : i12;
            if (build.isPolicyMappingInhibited()) {
                i12 = 0;
            }
            X509Certificate trustedCert = findTrustAnchor.getTrustedCert();
            try {
                if (trustedCert != null) {
                    ca = PrincipalUtils.getSubjectPrincipal(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    ca = PrincipalUtils.getCA(findTrustAnchor);
                    cAPublicKey = findTrustAnchor.getCAPublicKey();
                }
                try {
                    AlgorithmIdentifier algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(cAPublicKey);
                    algorithmIdentifier.getAlgorithm();
                    algorithmIdentifier.getParameters();
                    if (build.getTargetConstraints() == null || build.getTargetConstraints().match((Certificate) ((X509Certificate) certificates.get(0)))) {
                        int size2 = certificates.size() - 1;
                        int i16 = size;
                        X509Certificate x509Certificate = null;
                        int i17 = i15;
                        ?? r52 = i12;
                        int i18 = i14;
                        PKIXPolicyNode pKIXPolicyNode = r52;
                        int i19 = r52;
                        while (size2 >= 0) {
                            int i20 = size - size2;
                            int i21 = size;
                            X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                            boolean z9 = size2 == certificates.size() + (-1);
                            try {
                                checkCertificate(x509Certificate2);
                                int i22 = size2;
                                List<? extends Certificate> list2 = certificates;
                                PKIXNameConstraintValidator pKIXNameConstraintValidator2 = pKIXNameConstraintValidator;
                                Date date = validityDate;
                                ArrayList[] arrayListArr2 = arrayListArr;
                                PKIXExtendedParameters pKIXExtendedParameters2 = build;
                                int i23 = i18;
                                ArrayList arrayList3 = arrayList2;
                                boolean z10 = z9;
                                TrustAnchor trustAnchor = findTrustAnchor;
                                RFC3280CertPathUtilities.processCertA(certPath, build, validityDate, pKIXCertRevocationChecker2, i22, cAPublicKey, z10, ca, trustedCert);
                                RFC3280CertPathUtilities.processCertBC(certPath, i22, pKIXNameConstraintValidator2, this.isForCRLCheck);
                                PKIXPolicyNode processCertE = RFC3280CertPathUtilities.processCertE(certPath, i22, RFC3280CertPathUtilities.processCertD(certPath, i22, hashSet4, pKIXPolicyNode, arrayListArr2, i17, this.isForCRLCheck));
                                RFC3280CertPathUtilities.processCertF(certPath, i22, processCertE, i23);
                                if (i20 != i21) {
                                    if (x509Certificate2 == null || x509Certificate2.getVersion() != 1) {
                                        RFC3280CertPathUtilities.prepareNextCertA(certPath, i22);
                                        arrayListArr = arrayListArr2;
                                        PKIXPolicyNode prepareCertB = RFC3280CertPathUtilities.prepareCertB(certPath, i22, arrayListArr, processCertE, 1);
                                        RFC3280CertPathUtilities.prepareNextCertG(certPath, i22, pKIXNameConstraintValidator2);
                                        int prepareNextCertH1 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, i22, i23);
                                        int prepareNextCertH2 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, i22, 1);
                                        int prepareNextCertH3 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, i22, i17);
                                        i23 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, i22, prepareNextCertH1);
                                        i11 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, i22, prepareNextCertH2);
                                        i10 = RFC3280CertPathUtilities.prepareNextCertJ(certPath, i22, prepareNextCertH3);
                                        RFC3280CertPathUtilities.prepareNextCertK(certPath, i22);
                                        i16 = RFC3280CertPathUtilities.prepareNextCertM(certPath, i22, RFC3280CertPathUtilities.prepareNextCertL(certPath, i22, i16));
                                        RFC3280CertPathUtilities.prepareNextCertN(certPath, i22);
                                        Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                        if (criticalExtensionOIDs != null) {
                                            hashSet2 = new HashSet(criticalExtensionOIDs);
                                            hashSet2.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                            hashSet2.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                            hashSet2.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                            hashSet2.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                            hashSet2.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                            hashSet2.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                            hashSet2.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                            hashSet2.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                            hashSet2.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                            hashSet2.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                                        } else {
                                            hashSet2 = new HashSet();
                                        }
                                        arrayList = arrayList3;
                                        RFC3280CertPathUtilities.prepareNextCertO(certPath, i22, hashSet2, arrayList);
                                        X500Name subjectPrincipal = PrincipalUtils.getSubjectPrincipal(x509Certificate2);
                                        try {
                                            PublicKey nextWorkingKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), i22, this.helper);
                                            AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey);
                                            algorithmIdentifier2.getAlgorithm();
                                            algorithmIdentifier2.getParameters();
                                            pKIXPolicyNode = prepareCertB;
                                            ca = subjectPrincipal;
                                            cAPublicKey = nextWorkingKey;
                                            trustedCert = x509Certificate2;
                                            i18 = i23;
                                            i17 = i10;
                                            arrayList2 = arrayList;
                                            x509Certificate = x509Certificate2;
                                            findTrustAnchor = trustAnchor;
                                            validityDate = date;
                                            size = i21;
                                            i19 = i11;
                                            pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                                            certificates = list2;
                                            size2 = i22 - 1;
                                            build = pKIXExtendedParameters2;
                                        } catch (CertPathValidatorException e10) {
                                            throw new CertPathValidatorException("Next working key could not be retrieved.", e10, certPath, i22);
                                        }
                                    } else if (i20 != 1 || !x509Certificate2.equals(trustAnchor.getTrustedCert())) {
                                        throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i22);
                                    }
                                }
                                i10 = i17;
                                arrayListArr = arrayListArr2;
                                arrayList = arrayList3;
                                i11 = 1;
                                pKIXPolicyNode = processCertE;
                                i16 = i16;
                                i18 = i23;
                                i17 = i10;
                                arrayList2 = arrayList;
                                x509Certificate = x509Certificate2;
                                findTrustAnchor = trustAnchor;
                                validityDate = date;
                                size = i21;
                                i19 = i11;
                                pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                                certificates = list2;
                                size2 = i22 - 1;
                                build = pKIXExtendedParameters2;
                            } catch (AnnotatedException e11) {
                                throw new CertPathValidatorException(e11.getMessage(), e11.getUnderlyingException(), certPath, size2);
                            }
                        }
                        PKIXExtendedParameters pKIXExtendedParameters3 = build;
                        ArrayList arrayList4 = arrayList2;
                        TrustAnchor trustAnchor2 = findTrustAnchor;
                        X509Certificate x509Certificate3 = x509Certificate;
                        int i24 = size2;
                        int i25 = i24 + 1;
                        int wrapupCertB = RFC3280CertPathUtilities.wrapupCertB(certPath, i25, RFC3280CertPathUtilities.wrapupCertA(i18, x509Certificate3));
                        Set<String> criticalExtensionOIDs2 = x509Certificate3.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs2 != null) {
                            hashSet = new HashSet(criticalExtensionOIDs2);
                            hashSet.remove(RFC3280CertPathUtilities.KEY_USAGE);
                            hashSet.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                            hashSet.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                            hashSet.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                            hashSet.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                            hashSet.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                            hashSet.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                            hashSet.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                            hashSet.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                            hashSet.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                            hashSet.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                            hashSet.remove(Extension.extendedKeyUsage.getId());
                        } else {
                            hashSet = new HashSet();
                        }
                        RFC3280CertPathUtilities.wrapupCertF(certPath, i25, arrayList4, hashSet);
                        PKIXPolicyNode wrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, pKIXExtendedParameters3, initialPolicies, i25, arrayListArr, pKIXPolicyNode, hashSet4);
                        if (wrapupCertB > 0 || wrapupCertG != null) {
                            return new PKIXCertPathValidatorResult(trustAnchor2, wrapupCertG, x509Certificate3.getPublicKey());
                        }
                        throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i24);
                    }
                    throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                } catch (CertPathValidatorException e12) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e12, certPath, -1);
                }
            } catch (RuntimeException e13) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e13, certPath, -1);
            }
        } catch (AnnotatedException e14) {
            e = e14;
            list = certificates;
            i4 = 1;
        }
    }
}
