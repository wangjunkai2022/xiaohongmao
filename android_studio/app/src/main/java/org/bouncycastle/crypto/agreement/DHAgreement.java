package org.bouncycastle.crypto.agreement;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.generators.DHKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;

/* loaded from: classes4.dex */
public class DHAgreement {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private DHParameters dhParams;
    private DHPrivateKeyParameters key;
    private BigInteger privateValue;
    private SecureRandom random;

    public BigInteger calculateAgreement(DHPublicKeyParameters dHPublicKeyParameters, BigInteger bigInteger) {
        if (dHPublicKeyParameters.getParameters().equals(this.dhParams)) {
            BigInteger p9 = this.dhParams.getP();
            BigInteger y9 = dHPublicKeyParameters.getY();
            if (y9 != null) {
                BigInteger bigInteger2 = ONE;
                if (y9.compareTo(bigInteger2) > 0 && y9.compareTo(p9.subtract(bigInteger2)) < 0) {
                    BigInteger modPow = y9.modPow(this.privateValue, p9);
                    if (modPow.equals(bigInteger2)) {
                        throw new IllegalStateException("Shared key can't be 1");
                    }
                    return bigInteger.modPow(this.key.getX(), p9).multiply(modPow).mod(p9);
                }
            }
            throw new IllegalArgumentException("Diffie-Hellman public key is weak");
        }
        throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
    }

    public BigInteger calculateMessage() {
        DHKeyPairGenerator dHKeyPairGenerator = new DHKeyPairGenerator();
        dHKeyPairGenerator.init(new DHKeyGenerationParameters(this.random, this.dhParams));
        AsymmetricCipherKeyPair generateKeyPair = dHKeyPairGenerator.generateKeyPair();
        this.privateValue = ((DHPrivateKeyParameters) generateKeyPair.getPrivate()).getX();
        return ((DHPublicKeyParameters) generateKeyPair.getPublic()).getY();
    }

    public void init(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            this.random = CryptoServicesRegistrar.getSecureRandom();
        }
        AsymmetricKeyParameter asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
        if (!(asymmetricKeyParameter instanceof DHPrivateKeyParameters)) {
            throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
        }
        DHPrivateKeyParameters dHPrivateKeyParameters = (DHPrivateKeyParameters) asymmetricKeyParameter;
        this.key = dHPrivateKeyParameters;
        this.dhParams = dHPrivateKeyParameters.getParameters();
    }
}
