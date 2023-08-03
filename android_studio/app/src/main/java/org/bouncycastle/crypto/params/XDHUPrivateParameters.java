package org.bouncycastle.crypto.params;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class XDHUPrivateParameters implements CipherParameters {
    private AsymmetricKeyParameter ephemeralPrivateKey;
    private AsymmetricKeyParameter ephemeralPublicKey;
    private AsymmetricKeyParameter staticPrivateKey;

    public XDHUPrivateParameters(AsymmetricKeyParameter asymmetricKeyParameter, AsymmetricKeyParameter asymmetricKeyParameter2) {
        this(asymmetricKeyParameter, asymmetricKeyParameter2, null);
    }

    public XDHUPrivateParameters(AsymmetricKeyParameter asymmetricKeyParameter, AsymmetricKeyParameter asymmetricKeyParameter2, AsymmetricKeyParameter asymmetricKeyParameter3) {
        Objects.requireNonNull(asymmetricKeyParameter, "staticPrivateKey cannot be null");
        boolean z9 = asymmetricKeyParameter instanceof X448PrivateKeyParameters;
        if (!z9 && !(asymmetricKeyParameter instanceof X25519PrivateKeyParameters)) {
            throw new IllegalArgumentException("only X25519 and X448 paramaters can be used");
        }
        Objects.requireNonNull(asymmetricKeyParameter2, "ephemeralPrivateKey cannot be null");
        if (!asymmetricKeyParameter.getClass().isAssignableFrom(asymmetricKeyParameter2.getClass())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (asymmetricKeyParameter3 == null) {
            asymmetricKeyParameter3 = asymmetricKeyParameter2 instanceof X448PrivateKeyParameters ? ((X448PrivateKeyParameters) asymmetricKeyParameter2).generatePublicKey() : ((X25519PrivateKeyParameters) asymmetricKeyParameter2).generatePublicKey();
        } else if ((asymmetricKeyParameter3 instanceof X448PublicKeyParameters) && !z9) {
            throw new IllegalArgumentException("ephemeral public key has different domain parameters");
        } else {
            if ((asymmetricKeyParameter3 instanceof X25519PublicKeyParameters) && !(asymmetricKeyParameter instanceof X25519PrivateKeyParameters)) {
                throw new IllegalArgumentException("ephemeral public key has different domain parameters");
            }
        }
        this.staticPrivateKey = asymmetricKeyParameter;
        this.ephemeralPrivateKey = asymmetricKeyParameter2;
        this.ephemeralPublicKey = asymmetricKeyParameter3;
    }

    public AsymmetricKeyParameter getEphemeralPrivateKey() {
        return this.ephemeralPrivateKey;
    }

    public AsymmetricKeyParameter getEphemeralPublicKey() {
        return this.ephemeralPublicKey;
    }

    public AsymmetricKeyParameter getStaticPrivateKey() {
        return this.staticPrivateKey;
    }
}
