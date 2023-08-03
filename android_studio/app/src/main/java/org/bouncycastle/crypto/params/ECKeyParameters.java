package org.bouncycastle.crypto.params;

import java.util.Objects;

/* loaded from: classes4.dex */
public class ECKeyParameters extends AsymmetricKeyParameter {
    private final ECDomainParameters parameters;

    /* JADX INFO: Access modifiers changed from: protected */
    public ECKeyParameters(boolean z9, ECDomainParameters eCDomainParameters) {
        super(z9);
        Objects.requireNonNull(eCDomainParameters, "'parameters' cannot be null");
        this.parameters = eCDomainParameters;
    }

    public ECDomainParameters getParameters() {
        return this.parameters;
    }
}
