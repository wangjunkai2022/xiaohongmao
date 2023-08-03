package org.bouncycastle.crypto.engines;

/* loaded from: classes4.dex */
public class AESWrapEngine extends RFC3394WrapEngine {
    public AESWrapEngine() {
        super(new AESEngine());
    }

    public AESWrapEngine(boolean z9) {
        super(new AESEngine(), z9);
    }
}
