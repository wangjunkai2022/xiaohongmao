package org.bouncycastle.crypto.engines;

/* loaded from: classes4.dex */
public class ARIAWrapEngine extends RFC3394WrapEngine {
    public ARIAWrapEngine() {
        super(new ARIAEngine());
    }

    public ARIAWrapEngine(boolean z9) {
        super(new ARIAEngine(), z9);
    }
}
