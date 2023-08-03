package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class ElGamalKeyParameters extends AsymmetricKeyParameter {
    private ElGamalParameters params;

    /* JADX INFO: Access modifiers changed from: protected */
    public ElGamalKeyParameters(boolean z9, ElGamalParameters elGamalParameters) {
        super(z9);
        this.params = elGamalParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ElGamalKeyParameters) {
            ElGamalParameters elGamalParameters = this.params;
            ElGamalParameters parameters = ((ElGamalKeyParameters) obj).getParameters();
            return elGamalParameters == null ? parameters == null : elGamalParameters.equals(parameters);
        }
        return false;
    }

    public ElGamalParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        ElGamalParameters elGamalParameters = this.params;
        if (elGamalParameters != null) {
            return elGamalParameters.hashCode();
        }
        return 0;
    }
}
