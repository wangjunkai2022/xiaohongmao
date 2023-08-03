package org.bouncycastle.crypto.params;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class DHUPublicParameters implements CipherParameters {
    private DHPublicKeyParameters ephemeralPublicKey;
    private DHPublicKeyParameters staticPublicKey;

    public DHUPublicParameters(DHPublicKeyParameters dHPublicKeyParameters, DHPublicKeyParameters dHPublicKeyParameters2) {
        Objects.requireNonNull(dHPublicKeyParameters, "staticPublicKey cannot be null");
        Objects.requireNonNull(dHPublicKeyParameters2, "ephemeralPublicKey cannot be null");
        if (!dHPublicKeyParameters.getParameters().equals(dHPublicKeyParameters2.getParameters())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.staticPublicKey = dHPublicKeyParameters;
        this.ephemeralPublicKey = dHPublicKeyParameters2;
    }

    public DHPublicKeyParameters getEphemeralPublicKey() {
        return this.ephemeralPublicKey;
    }

    public DHPublicKeyParameters getStaticPublicKey() {
        return this.staticPublicKey;
    }
}
