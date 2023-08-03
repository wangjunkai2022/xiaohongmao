package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class DSAKeyParameters extends AsymmetricKeyParameter {
    private DSAParameters params;

    public DSAKeyParameters(boolean z9, DSAParameters dSAParameters) {
        super(z9);
        this.params = dSAParameters;
    }

    public DSAParameters getParameters() {
        return this.params;
    }
}
