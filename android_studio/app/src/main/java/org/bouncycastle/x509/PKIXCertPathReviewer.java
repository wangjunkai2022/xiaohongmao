package org.bouncycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.bouncycastle.util.Integers;

/* loaded from: classes5.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected Date currentDate;
    protected List[] errors;
    private boolean initialized;

    /* renamed from: n  reason: collision with root package name */
    protected int f91582n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i4 = 0; i4 != bArr.length; i4++) {
                stringBuffer.append(Integer.toHexString(bArr[i4] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        for (PKIXCertPathChecker pKIXCertPathChecker : certPathCheckers) {
            try {
                try {
                    pKIXCertPathChecker.init(false);
                } catch (CertPathValidatorException e4) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e4.getMessage(), e4, e4.getClass().getName()}), e4);
                }
            } catch (CertPathReviewerException e10) {
                addError(e10.getErrorMessage(), e10.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.KEY_USAGE);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.NAME_CONSTRAINTS);
                if (size == 0) {
                    criticalExtensionOIDs.remove(Extension.extendedKeyUsage.getId());
                }
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                for (PKIXCertPathChecker pKIXCertPathChecker2 : certPathCheckers) {
                    try {
                        pKIXCertPathChecker2.check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e11) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e11.getMessage(), e11, e11.getClass().getName()}), e11.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it = criticalExtensionOIDs.iterator();
                    while (it.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i4 = 0; i4 < aSN1Sequence2.size(); i4++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i4));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e4) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e4, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e10) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e10, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e11) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e11, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e12) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e12, this.certPath, size);
                        }
                    } catch (IOException e13) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e13, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i10 = 0; i10 != excludedSubtrees.length; i10++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i10]);
                            }
                        }
                    }
                } catch (AnnotatedException e14) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e14, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e15) {
            addError(e15.getErrorMessage(), e15.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        BigInteger pathLenConstraint;
        int intValue;
        int i4 = this.f91582n;
        int i10 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (i4 <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                i4--;
                i10++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && (pathLenConstraint = basicConstraints.getPathLenConstraint()) != null && (intValue = pathLenConstraint.intValue()) < i4) {
                i4 = intValue;
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i10)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x023f A[Catch: CertPathReviewerException -> 0x05f7, TryCatch #7 {CertPathReviewerException -> 0x05f7, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d0, B:194:0x03dd, B:196:0x03e7, B:207:0x0425, B:199:0x03ef, B:200:0x03fd, B:201:0x03fe, B:202:0x040c, B:204:0x040e, B:205:0x041c, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0434, B:210:0x0441, B:211:0x0442, B:215:0x0453, B:217:0x045d, B:218:0x0462, B:220:0x0468, B:223:0x0476, B:230:0x048b, B:308:0x05dd, B:309:0x05e9, B:233:0x0496, B:234:0x04a2, B:235:0x04a3, B:237:0x04a9, B:239:0x04b1, B:241:0x04b7, B:244:0x04c1, B:245:0x04c4, B:247:0x04ca, B:249:0x04da, B:250:0x04de, B:252:0x04e4, B:253:0x04ec, B:254:0x04ef, B:255:0x04f4, B:256:0x04f8, B:258:0x04fe, B:259:0x050c, B:261:0x0514, B:262:0x0517, B:264:0x051d, B:266:0x0529, B:267:0x052d, B:268:0x0530, B:269:0x0533, B:270:0x053f, B:272:0x0544, B:274:0x054e, B:275:0x0551, B:277:0x0557, B:279:0x0567, B:280:0x056b, B:282:0x0571, B:284:0x0581, B:285:0x0585, B:286:0x0588, B:287:0x058b, B:288:0x0591, B:290:0x0597, B:292:0x05a9, B:295:0x05b3, B:297:0x05b9, B:298:0x05bc, B:300:0x05c2, B:302:0x05ce, B:303:0x05d2, B:304:0x05d5, B:310:0x05ea, B:311:0x05f6), top: B:327:0x006f, inners: #0, #1, #2, #3, #5, #6, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0120 A[Catch: CertPathReviewerException -> 0x05f7, TryCatch #7 {CertPathReviewerException -> 0x05f7, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d0, B:194:0x03dd, B:196:0x03e7, B:207:0x0425, B:199:0x03ef, B:200:0x03fd, B:201:0x03fe, B:202:0x040c, B:204:0x040e, B:205:0x041c, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0434, B:210:0x0441, B:211:0x0442, B:215:0x0453, B:217:0x045d, B:218:0x0462, B:220:0x0468, B:223:0x0476, B:230:0x048b, B:308:0x05dd, B:309:0x05e9, B:233:0x0496, B:234:0x04a2, B:235:0x04a3, B:237:0x04a9, B:239:0x04b1, B:241:0x04b7, B:244:0x04c1, B:245:0x04c4, B:247:0x04ca, B:249:0x04da, B:250:0x04de, B:252:0x04e4, B:253:0x04ec, B:254:0x04ef, B:255:0x04f4, B:256:0x04f8, B:258:0x04fe, B:259:0x050c, B:261:0x0514, B:262:0x0517, B:264:0x051d, B:266:0x0529, B:267:0x052d, B:268:0x0530, B:269:0x0533, B:270:0x053f, B:272:0x0544, B:274:0x054e, B:275:0x0551, B:277:0x0557, B:279:0x0567, B:280:0x056b, B:282:0x0571, B:284:0x0581, B:285:0x0585, B:286:0x0588, B:287:0x058b, B:288:0x0591, B:290:0x0597, B:292:0x05a9, B:295:0x05b3, B:297:0x05b9, B:298:0x05bc, B:300:0x05c2, B:302:0x05ce, B:303:0x05d2, B:304:0x05d5, B:310:0x05ea, B:311:0x05f6), top: B:327:0x006f, inners: #0, #1, #2, #3, #5, #6, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013d A[Catch: CertPathReviewerException -> 0x05f7, TRY_LEAVE, TryCatch #7 {CertPathReviewerException -> 0x05f7, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d0, B:194:0x03dd, B:196:0x03e7, B:207:0x0425, B:199:0x03ef, B:200:0x03fd, B:201:0x03fe, B:202:0x040c, B:204:0x040e, B:205:0x041c, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0434, B:210:0x0441, B:211:0x0442, B:215:0x0453, B:217:0x045d, B:218:0x0462, B:220:0x0468, B:223:0x0476, B:230:0x048b, B:308:0x05dd, B:309:0x05e9, B:233:0x0496, B:234:0x04a2, B:235:0x04a3, B:237:0x04a9, B:239:0x04b1, B:241:0x04b7, B:244:0x04c1, B:245:0x04c4, B:247:0x04ca, B:249:0x04da, B:250:0x04de, B:252:0x04e4, B:253:0x04ec, B:254:0x04ef, B:255:0x04f4, B:256:0x04f8, B:258:0x04fe, B:259:0x050c, B:261:0x0514, B:262:0x0517, B:264:0x051d, B:266:0x0529, B:267:0x052d, B:268:0x0530, B:269:0x0533, B:270:0x053f, B:272:0x0544, B:274:0x054e, B:275:0x0551, B:277:0x0557, B:279:0x0567, B:280:0x056b, B:282:0x0571, B:284:0x0581, B:285:0x0585, B:286:0x0588, B:287:0x058b, B:288:0x0591, B:290:0x0597, B:292:0x05a9, B:295:0x05b3, B:297:0x05b9, B:298:0x05bc, B:300:0x05c2, B:302:0x05ce, B:303:0x05d2, B:304:0x05d5, B:310:0x05ea, B:311:0x05f6), top: B:327:0x006f, inners: #0, #1, #2, #3, #5, #6, #8, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0216 A[Catch: CertPathReviewerException -> 0x05f7, TryCatch #7 {CertPathReviewerException -> 0x05f7, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d0, B:194:0x03dd, B:196:0x03e7, B:207:0x0425, B:199:0x03ef, B:200:0x03fd, B:201:0x03fe, B:202:0x040c, B:204:0x040e, B:205:0x041c, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0434, B:210:0x0441, B:211:0x0442, B:215:0x0453, B:217:0x045d, B:218:0x0462, B:220:0x0468, B:223:0x0476, B:230:0x048b, B:308:0x05dd, B:309:0x05e9, B:233:0x0496, B:234:0x04a2, B:235:0x04a3, B:237:0x04a9, B:239:0x04b1, B:241:0x04b7, B:244:0x04c1, B:245:0x04c4, B:247:0x04ca, B:249:0x04da, B:250:0x04de, B:252:0x04e4, B:253:0x04ec, B:254:0x04ef, B:255:0x04f4, B:256:0x04f8, B:258:0x04fe, B:259:0x050c, B:261:0x0514, B:262:0x0517, B:264:0x051d, B:266:0x0529, B:267:0x052d, B:268:0x0530, B:269:0x0533, B:270:0x053f, B:272:0x0544, B:274:0x054e, B:275:0x0551, B:277:0x0557, B:279:0x0567, B:280:0x056b, B:282:0x0571, B:284:0x0581, B:285:0x0585, B:286:0x0588, B:287:0x058b, B:288:0x0591, B:290:0x0597, B:292:0x05a9, B:295:0x05b3, B:297:0x05b9, B:298:0x05bc, B:300:0x05c2, B:302:0x05ce, B:303:0x05d2, B:304:0x05d5, B:310:0x05ea, B:311:0x05f6), top: B:327:0x006f, inners: #0, #1, #2, #3, #5, #6, #8, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void checkPolicy() {
        /*
            Method dump skipped, instructions count: 1540
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:91|92|(15:94|95|96|(11:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)|122|95|96|(0)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:30|(2:137|138)(2:32|(2:130|131)(20:34|(2:38|(17:40|41|42|43|44|(18:91|92|(15:94|95|96|(11:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)|122|95|96|(0)|119|99|(1:100)|103|104|(1:105)|108|109|110|111|112)(1:46)|(1:90)(1:50)|51|(1:89)(7:53|(1:57)|58|59|(2:61|(1:63))(1:85)|64|(9:66|(1:83)|70|71|72|74|75|77|78))|84|70|71|72|74|75|77|78))|129|41|42|43|44|(0)(0)|(1:48)|90|51|(0)(0)|84|70|71|72|74|75|77|78))|132|42|43|44|(0)(0)|(0)|90|51|(0)(0)|84|70|71|72|74|75|77|78) */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03e2, code lost:
        r6 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03e4, code lost:
        addError(new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.pubKeyError"), r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0254, code lost:
        r1 = new java.lang.Object[r13];
        r1[r12] = new org.bouncycastle.i18n.filter.TrustedInput(r3.getNotAfter());
        r0 = new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.certificateExpired", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0269, code lost:
        r1 = new java.lang.Object[r13];
        r1[r12] = new org.bouncycastle.i18n.filter.TrustedInput(r3.getNotBefore());
        r0 = new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.certificateNotYetValid", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x027d, code lost:
        addError(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02af, code lost:
        addError(new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.crlAuthInfoAccError"), r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02cc A[LOOP:1: B:100:0x02c6->B:102:0x02cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02f0 A[LOOP:2: B:104:0x02ea->B:106:0x02f0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0288 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02aa A[Catch: AnnotatedException -> 0x02af, TRY_LEAVE, TryCatch #2 {AnnotatedException -> 0x02af, blocks: (B:93:0x02a2, B:95:0x02aa), top: B:160:0x02a2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void checkSignatures() {
        /*
            Method dump skipped, instructions count: 1029
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkSignatures():void");
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e4) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e4.getMessage(), e4, e4.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i4) {
        ErrorBundle errorBundle;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z9 = false;
            for (int i10 = 0; i10 < aSN1Sequence.size(); i10++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i10));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance");
                } else {
                    if (!RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals((ASN1Primitive) qCStatement.getStatementId())) {
                        if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD");
                        } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                            monetaryValue.getCurrency();
                            double doubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                            addNotification(monetaryValue.getCurrency().isAlphabetic() ? new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(doubleValue)), monetaryValue}) : new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), monetaryValue}), i4);
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i4);
                            z9 = true;
                        }
                    }
                }
                addNotification(errorBundle, i4);
            }
            return true ^ z9;
        } catch (AnnotatedException unused) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i4);
            return false;
        }
    }

    protected void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle, int i4) {
        if (i4 < -1 || i4 >= this.f91582n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i4 + 1].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle, int i4) {
        if (i4 < -1 || i4 >= this.f91582n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i4 + 1].add(errorBundle);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:39:0x0165
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    protected void checkCRLs(java.security.cert.PKIXParameters r21, java.security.cert.X509Certificate r22, java.util.Date r23, java.security.cert.X509Certificate r24, java.security.PublicKey r25, java.util.Vector r26, int r27) throws org.bouncycastle.x509.CertPathReviewerException {
        /*
            Method dump skipped, instructions count: 1063
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkCRLs(java.security.cert.PKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.Vector, int):void");
    }

    protected void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i4) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i4);
    }

    protected void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i4 = this.f91582n;
        this.notifications = new List[i4 + 1];
        this.errors = new List[i4 + 1];
        int i10 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i10 >= listArr.length) {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
            listArr[i10] = new ArrayList();
            this.errors[i10] = new ArrayList();
            i10++;
        }
    }

    protected Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i4 = 0; i4 < names.length; i4++) {
                        if (names[i4].getTagNo() == 6) {
                            vector.add(((ASN1IA5String) names[i4].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.f91582n;
    }

    public List getErrors(int i4) {
        doChecks();
        return this.errors[i4 + 1];
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getNotifications(int i4) {
        doChecks();
        return this.notifications[i4 + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    protected Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i4 = 0; i4 < accessDescriptions.length; i4++) {
                if (accessDescriptions[i4].getAccessMethod().equals((ASN1Primitive) AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i4].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((ASN1IA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    protected Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                if (authorityKeyIdentifier.getAuthorityCertSerialNumber() != null) {
                    x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        Objects.requireNonNull(certPath, "certPath was null");
        this.certPath = certPath;
        List<? extends Certificate> certificates = certPath.getCertificates();
        this.certs = certificates;
        this.f91582n = certificates.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.currentDate = date;
        this.validDate = CertPathValidatorUtilities.getValidityDate(this.pkixParams, date);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        int i4 = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i4 >= listArr.length) {
                return true;
            }
            if (!listArr[i4].isEmpty()) {
                return false;
            }
            i4++;
        }
    }
}
