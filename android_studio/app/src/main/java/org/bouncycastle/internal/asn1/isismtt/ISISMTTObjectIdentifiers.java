package org.bouncycastle.internal.asn1.isismtt;

import g5.h;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

/* loaded from: classes4.dex */
public interface ISISMTTObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_isismtt;
    public static final ASN1ObjectIdentifier id_isismtt_at;
    public static final ASN1ObjectIdentifier id_isismtt_at_PKReference;
    public static final ASN1ObjectIdentifier id_isismtt_at_additionalInformation;
    public static final ASN1ObjectIdentifier id_isismtt_at_admission;
    public static final ASN1ObjectIdentifier id_isismtt_at_certHash;
    public static final ASN1ObjectIdentifier id_isismtt_at_certInDirSince;
    public static final ASN1ObjectIdentifier id_isismtt_at_dateOfCertGen;
    public static final ASN1ObjectIdentifier id_isismtt_at_declarationOfMajority;
    public static final ASN1ObjectIdentifier id_isismtt_at_iCCSN;
    public static final ASN1ObjectIdentifier id_isismtt_at_liabilityLimitationFlag;
    public static final ASN1ObjectIdentifier id_isismtt_at_monetaryLimit;
    public static final ASN1ObjectIdentifier id_isismtt_at_nameAtBirth;
    public static final ASN1ObjectIdentifier id_isismtt_at_namingAuthorities;
    public static final ASN1ObjectIdentifier id_isismtt_at_procuration;
    public static final ASN1ObjectIdentifier id_isismtt_at_requestedCertificate;
    public static final ASN1ObjectIdentifier id_isismtt_at_restriction;
    public static final ASN1ObjectIdentifier id_isismtt_at_retrieveIfAllowed;
    public static final ASN1ObjectIdentifier id_isismtt_cp;
    public static final ASN1ObjectIdentifier id_isismtt_cp_accredited;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.36.8");
        id_isismtt = aSN1ObjectIdentifier;
        ASN1ObjectIdentifier branch = aSN1ObjectIdentifier.branch("1");
        id_isismtt_cp = branch;
        id_isismtt_cp_accredited = branch.branch("1");
        ASN1ObjectIdentifier branch2 = aSN1ObjectIdentifier.branch("3");
        id_isismtt_at = branch2;
        id_isismtt_at_dateOfCertGen = branch2.branch("1");
        id_isismtt_at_procuration = branch2.branch("2");
        id_isismtt_at_admission = branch2.branch("3");
        id_isismtt_at_monetaryLimit = branch2.branch(h.f67840d);
        id_isismtt_at_declarationOfMajority = branch2.branch(h.f67841e);
        id_isismtt_at_iCCSN = branch2.branch("6");
        id_isismtt_at_PKReference = branch2.branch(h.f67842f);
        id_isismtt_at_restriction = branch2.branch(h.f67843g);
        id_isismtt_at_retrieveIfAllowed = branch2.branch(h.f67844h);
        id_isismtt_at_requestedCertificate = branch2.branch("10");
        id_isismtt_at_namingAuthorities = branch2.branch("11");
        id_isismtt_at_certInDirSince = branch2.branch("12");
        id_isismtt_at_certHash = branch2.branch("13");
        id_isismtt_at_nameAtBirth = branch2.branch("14");
        id_isismtt_at_additionalInformation = branch2.branch("15");
        id_isismtt_at_liabilityLimitationFlag = new ASN1ObjectIdentifier("0.2.262.1.10.12.0");
    }
}
