package org.bouncycastle.jcajce.provider.asymmetric.gost;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.generators.GOST3410KeyPairGenerator;
import org.bouncycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.bouncycastle.crypto.params.GOST3410PublicKeyParameters;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

/* loaded from: classes4.dex */
public class KeyPairGeneratorSpi extends KeyPairGenerator {
    GOST3410KeyPairGenerator engine;
    GOST3410ParameterSpec gost3410Params;
    boolean initialised;
    GOST3410KeyGenerationParameters param;
    SecureRandom random;
    int strength;

    public KeyPairGeneratorSpi() {
        super("GOST3410");
        this.engine = new GOST3410KeyPairGenerator();
        this.strength = 1024;
        this.random = null;
        this.initialised = false;
    }

    private void init(GOST3410ParameterSpec gOST3410ParameterSpec, SecureRandom secureRandom) {
        GOST3410PublicKeyParameterSetSpec publicKeyParameters = gOST3410ParameterSpec.getPublicKeyParameters();
        GOST3410KeyGenerationParameters gOST3410KeyGenerationParameters = new GOST3410KeyGenerationParameters(secureRandom, new GOST3410Parameters(publicKeyParameters.getP(), publicKeyParameters.getQ(), publicKeyParameters.getA()));
        this.param = gOST3410KeyGenerationParameters;
        this.engine.init(gOST3410KeyGenerationParameters);
        this.initialised = true;
        this.gost3410Params = gOST3410ParameterSpec;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.initialised) {
            init(new GOST3410ParameterSpec(CryptoProObjectIdentifiers.gostR3410_94_CryptoPro_A.getId()), CryptoServicesRegistrar.getSecureRandom());
        }
        AsymmetricCipherKeyPair generateKeyPair = this.engine.generateKeyPair();
        return new KeyPair(new BCGOST3410PublicKey((GOST3410PublicKeyParameters) generateKeyPair.getPublic(), this.gost3410Params), new BCGOST3410PrivateKey((GOST3410PrivateKeyParameters) generateKeyPair.getPrivate(), this.gost3410Params));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i4, SecureRandom secureRandom) {
        this.strength = i4;
        this.random = secureRandom;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof GOST3410ParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a GOST3410ParameterSpec");
        }
        init((GOST3410ParameterSpec) algorithmParameterSpec, secureRandom);
    }
}
