package org.bouncycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.util.Selector;

/* loaded from: classes5.dex */
public class ExtendedPKIXBuilderParameters extends ExtendedPKIXParameters {
    private Set excludedCerts;
    private int maxPathLength;

    public ExtendedPKIXBuilderParameters(Set set, Selector selector) throws InvalidAlgorithmParameterException {
        super(set);
        this.maxPathLength = 5;
        this.excludedCerts = Collections.EMPTY_SET;
        setTargetConstraints(selector);
    }

    public static ExtendedPKIXParameters getInstance(PKIXParameters pKIXParameters) {
        try {
            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(pKIXParameters.getTrustAnchors(), X509CertStoreSelector.getInstance((X509CertSelector) pKIXParameters.getTargetCertConstraints()));
            extendedPKIXBuilderParameters.setParams(pKIXParameters);
            return extendedPKIXBuilderParameters;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }

    @Override // org.bouncycastle.x509.ExtendedPKIXParameters, java.security.cert.PKIXParameters, java.security.cert.CertPathParameters
    public Object clone() {
        try {
            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(getTrustAnchors(), getTargetConstraints());
            extendedPKIXBuilderParameters.setParams(this);
            return extendedPKIXBuilderParameters;
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }

    public Set getExcludedCerts() {
        return Collections.unmodifiableSet(this.excludedCerts);
    }

    public int getMaxPathLength() {
        return this.maxPathLength;
    }

    public void setExcludedCerts(Set set) {
        if (set == null) {
            Set set2 = Collections.EMPTY_SET;
        } else {
            this.excludedCerts = new HashSet(set);
        }
    }

    public void setMaxPathLength(int i4) {
        if (i4 < -1) {
            throw new InvalidParameterException("The maximum path length parameter can not be less than -1.");
        }
        this.maxPathLength = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.x509.ExtendedPKIXParameters
    public void setParams(PKIXParameters pKIXParameters) {
        super.setParams(pKIXParameters);
        if (pKIXParameters instanceof ExtendedPKIXBuilderParameters) {
            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) pKIXParameters;
            this.maxPathLength = extendedPKIXBuilderParameters.maxPathLength;
            this.excludedCerts = new HashSet(extendedPKIXBuilderParameters.excludedCerts);
        }
        if (pKIXParameters instanceof PKIXBuilderParameters) {
            this.maxPathLength = ((PKIXBuilderParameters) pKIXParameters).getMaxPathLength();
        }
    }
}
