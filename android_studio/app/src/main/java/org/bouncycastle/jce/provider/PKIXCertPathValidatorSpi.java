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
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.interfaces.BCX509Certificate;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

/* loaded from: classes5.dex */
public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    private final JcaJceHelper helper;
    private final boolean isForCRLCheck;

    public PKIXCertPathValidatorSpi() {
        this(false);
    }

    public PKIXCertPathValidatorSpi(boolean z9) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.security.PublicKey, int] */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        PKIXExtendedParameters pKIXExtendedParameters;
        List<? extends Certificate> list;
        int i4;
        X500Name ca;
        PublicKey cAPublicKey;
        HashSet hashSet;
        int i10;
        ArrayList[] arrayListArr;
        List list2;
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
            int i12 = size + 1;
            ArrayList[] arrayListArr2 = new ArrayList[i12];
            for (int i13 = 0; i13 < i12; i13++) {
                arrayListArr2[i13] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add(RFC3280CertPathUtilities.ANY_POLICY);
            arrayListArr2[0].add(new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false));
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
                        List<PKIXCertPathChecker> certPathCheckers = build.getCertPathCheckers();
                        for (PKIXCertPathChecker pKIXCertPathChecker : certPathCheckers) {
                            pKIXCertPathChecker.init(false);
                        }
                        ProvCrlRevocationChecker provCrlRevocationChecker = build.isRevocationEnabled() ? new ProvCrlRevocationChecker(this.helper) : null;
                        TrustAnchor trustAnchor = findTrustAnchor;
                        int i16 = size;
                        X509Certificate x509Certificate = null;
                        ?? r52 = i12;
                        int i17 = i15;
                        PKIXPolicyNode pKIXPolicyNode = r52;
                        int i18 = i14;
                        int size2 = certificates.size() - 1;
                        int i19 = i18;
                        int i20 = r52;
                        while (size2 >= 0) {
                            int i21 = size - size2;
                            int i22 = size;
                            X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                            boolean z9 = size2 == certificates.size() + (-1);
                            try {
                                checkCertificate(x509Certificate2);
                                List<? extends Certificate> list3 = certificates;
                                int i23 = i19;
                                int i24 = size2;
                                Date date = validityDate;
                                ProvCrlRevocationChecker provCrlRevocationChecker2 = provCrlRevocationChecker;
                                ProvCrlRevocationChecker provCrlRevocationChecker3 = provCrlRevocationChecker;
                                PKIXNameConstraintValidator pKIXNameConstraintValidator2 = pKIXNameConstraintValidator;
                                ?? r72 = cAPublicKey;
                                ArrayList[] arrayListArr3 = arrayListArr2;
                                boolean z10 = z9;
                                TrustAnchor trustAnchor2 = trustAnchor;
                                PKIXExtendedParameters pKIXExtendedParameters2 = build;
                                X500Name x500Name = ca;
                                List list4 = certPathCheckers;
                                RFC3280CertPathUtilities.processCertA(certPath, build, validityDate, provCrlRevocationChecker2, i24, r72, z10, x500Name, trustedCert);
                                RFC3280CertPathUtilities.processCertBC(certPath, i24, pKIXNameConstraintValidator2, this.isForCRLCheck);
                                PKIXPolicyNode processCertE = RFC3280CertPathUtilities.processCertE(certPath, i24, RFC3280CertPathUtilities.processCertD(certPath, i24, hashSet4, pKIXPolicyNode, arrayListArr3, r72, this.isForCRLCheck));
                                RFC3280CertPathUtilities.processCertF(certPath, i24, processCertE, i23);
                                if (x500Name != i22) {
                                    if (x509Certificate2 == null || x509Certificate2.getVersion() != 1) {
                                        RFC3280CertPathUtilities.prepareNextCertA(certPath, i24);
                                        arrayListArr = arrayListArr3;
                                        PKIXPolicyNode prepareCertB = RFC3280CertPathUtilities.prepareCertB(certPath, i24, arrayListArr, processCertE, 1);
                                        RFC3280CertPathUtilities.prepareNextCertG(certPath, i24, pKIXNameConstraintValidator2);
                                        int prepareNextCertH1 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, i24, i23);
                                        int prepareNextCertH2 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, i24, 1);
                                        int prepareNextCertH3 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, i24, r72);
                                        i11 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, i24, prepareNextCertH1);
                                        i10 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, i24, prepareNextCertH2);
                                        int prepareNextCertJ = RFC3280CertPathUtilities.prepareNextCertJ(certPath, i24, prepareNextCertH3);
                                        RFC3280CertPathUtilities.prepareNextCertK(certPath, i24);
                                        i16 = RFC3280CertPathUtilities.prepareNextCertM(certPath, i24, RFC3280CertPathUtilities.prepareNextCertL(certPath, i24, i16));
                                        RFC3280CertPathUtilities.prepareNextCertN(certPath, i24);
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
                                        list2 = list4;
                                        RFC3280CertPathUtilities.prepareNextCertO(certPath, i24, hashSet2, list2);
                                        X500Name subjectPrincipal = PrincipalUtils.getSubjectPrincipal(x509Certificate2);
                                        try {
                                            PublicKey nextWorkingKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), i24, this.helper);
                                            AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey);
                                            algorithmIdentifier2.getAlgorithm();
                                            algorithmIdentifier2.getParameters();
                                            pKIXPolicyNode = prepareCertB;
                                            i17 = prepareNextCertJ;
                                            ca = subjectPrincipal;
                                            cAPublicKey = nextWorkingKey;
                                            trustedCert = x509Certificate2;
                                            arrayListArr2 = arrayListArr;
                                            certPathCheckers = list2;
                                            x509Certificate = x509Certificate2;
                                            certificates = list3;
                                            validityDate = date;
                                            build = pKIXExtendedParameters2;
                                            size = i22;
                                            i19 = i11;
                                            trustAnchor = trustAnchor2;
                                            i20 = i10;
                                            size2 = i24 - 1;
                                            pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                                            provCrlRevocationChecker = provCrlRevocationChecker3;
                                        } catch (CertPathValidatorException e10) {
                                            throw new CertPathValidatorException("Next working key could not be retrieved.", e10, certPath, i24);
                                        }
                                    } else if (x500Name != 1 || !x509Certificate2.equals(trustAnchor2.getTrustedCert())) {
                                        throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i24);
                                    }
                                }
                                i10 = 1;
                                int i25 = i16;
                                arrayListArr = arrayListArr3;
                                list2 = list4;
                                pKIXPolicyNode = processCertE;
                                i17 = i25;
                                i16 = i25;
                                i11 = i23;
                                arrayListArr2 = arrayListArr;
                                certPathCheckers = list2;
                                x509Certificate = x509Certificate2;
                                certificates = list3;
                                validityDate = date;
                                build = pKIXExtendedParameters2;
                                size = i22;
                                i19 = i11;
                                trustAnchor = trustAnchor2;
                                i20 = i10;
                                size2 = i24 - 1;
                                pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                                provCrlRevocationChecker = provCrlRevocationChecker3;
                            } catch (AnnotatedException e11) {
                                throw new CertPathValidatorException(e11.getMessage(), e11.getUnderlyingException(), certPath, size2);
                            }
                        }
                        TrustAnchor trustAnchor3 = trustAnchor;
                        PKIXExtendedParameters pKIXExtendedParameters3 = build;
                        ArrayList[] arrayListArr4 = arrayListArr2;
                        List list5 = certPathCheckers;
                        int i26 = size2;
                        int i27 = i26 + 1;
                        int wrapupCertB = RFC3280CertPathUtilities.wrapupCertB(certPath, i27, RFC3280CertPathUtilities.wrapupCertA(i19, x509Certificate));
                        Set<String> criticalExtensionOIDs2 = x509Certificate.getCriticalExtensionOIDs();
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
                        RFC3280CertPathUtilities.wrapupCertF(certPath, i27, list5, hashSet);
                        PKIXPolicyNode wrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, pKIXExtendedParameters3, initialPolicies, i27, arrayListArr4, pKIXPolicyNode, hashSet4);
                        if (wrapupCertB > 0 || wrapupCertG != null) {
                            return new PKIXCertPathValidatorResult(trustAnchor3, wrapupCertG, x509Certificate.getPublicKey());
                        }
                        throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i26);
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
