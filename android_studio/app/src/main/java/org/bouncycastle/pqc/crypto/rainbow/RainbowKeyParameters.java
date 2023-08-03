package org.bouncycastle.pqc.crypto.rainbow;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: classes5.dex */
public class RainbowKeyParameters extends AsymmetricKeyParameter {
    private int docLength;

    public RainbowKeyParameters(boolean z9, int i4) {
        super(z9);
        this.docLength = i4;
    }

    public int getDocLength() {
        return this.docLength;
    }
}
