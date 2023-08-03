package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class DHKeyParameters extends AsymmetricKeyParameter {
    private DHParameters params;

    /* JADX INFO: Access modifiers changed from: protected */
    public DHKeyParameters(boolean z9, DHParameters dHParameters) {
        super(z9);
        this.params = dHParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHKeyParameters) {
            DHParameters dHParameters = this.params;
            DHParameters parameters = ((DHKeyParameters) obj).getParameters();
            return dHParameters == null ? parameters == null : dHParameters.equals(parameters);
        }
        return false;
    }

    public DHParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        int i4 = !isPrivate();
        DHParameters dHParameters = this.params;
        return dHParameters != null ? i4 ^ dHParameters.hashCode() : i4;
    }
}
