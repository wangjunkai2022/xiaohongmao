package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class CramerShoupKeyParameters extends AsymmetricKeyParameter {
    private CramerShoupParameters params;

    /* JADX INFO: Access modifiers changed from: protected */
    public CramerShoupKeyParameters(boolean z9, CramerShoupParameters cramerShoupParameters) {
        super(z9);
        this.params = cramerShoupParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CramerShoupKeyParameters) {
            CramerShoupParameters cramerShoupParameters = this.params;
            CramerShoupParameters parameters = ((CramerShoupKeyParameters) obj).getParameters();
            return cramerShoupParameters == null ? parameters == null : cramerShoupParameters.equals(parameters);
        }
        return false;
    }

    public CramerShoupParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        int i4 = !isPrivate();
        CramerShoupParameters cramerShoupParameters = this.params;
        return cramerShoupParameters != null ? i4 ^ cramerShoupParameters.hashCode() : i4;
    }
}
