package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class AsymmetricKeyParameter implements CipherParameters {
    boolean privateKey;

    public AsymmetricKeyParameter(boolean z9) {
        this.privateKey = z9;
    }

    public boolean isPrivate() {
        return this.privateKey;
    }
}
