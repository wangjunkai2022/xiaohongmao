package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.RSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.math.Primes;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private RSAKeyGenerationParameters param;

    private static int getNumberOfIterations(int i4, int i10) {
        if (i4 >= 1536) {
            if (i10 <= 100) {
                return 3;
            }
            if (i10 <= 128) {
                return 4;
            }
            return 4 + (((i10 - 128) + 1) / 2);
        } else if (i4 >= 1024) {
            if (i10 <= 100) {
                return 4;
            }
            if (i10 <= 112) {
                return 5;
            }
            return (((i10 - 112) + 1) / 2) + 5;
        } else if (i4 < 512) {
            if (i10 <= 80) {
                return 40;
            }
            return 40 + (((i10 - 80) + 1) / 2);
        } else if (i10 <= 80) {
            return 5;
        } else {
            if (i10 <= 100) {
                return 7;
            }
            return (((i10 - 100) + 1) / 2) + 7;
        }
    }

    protected BigInteger chooseRandomPrime(int i4, BigInteger bigInteger, BigInteger bigInteger2) {
        for (int i10 = 0; i10 != i4 * 5; i10++) {
            BigInteger createRandomPrime = BigIntegers.createRandomPrime(i4, 1, this.param.getRandom());
            BigInteger mod = createRandomPrime.mod(bigInteger);
            BigInteger bigInteger3 = ONE;
            if (!mod.equals(bigInteger3) && createRandomPrime.multiply(createRandomPrime).compareTo(bigInteger2) >= 0 && isProbablePrime(createRandomPrime) && bigInteger.gcd(createRandomPrime.subtract(bigInteger3)).equals(bigInteger3)) {
                return createRandomPrime;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger chooseRandomPrime;
        BigInteger chooseRandomPrime2;
        BigInteger multiply;
        BigInteger bigInteger;
        RSAKeyPairGenerator rSAKeyPairGenerator = this;
        int strength = rSAKeyPairGenerator.param.getStrength();
        int i4 = (strength + 1) / 2;
        int i10 = strength - i4;
        int i11 = strength / 2;
        int i12 = i11 - 100;
        int i13 = strength / 3;
        if (i12 < i13) {
            i12 = i13;
        }
        int i14 = strength >> 2;
        BigInteger pow = BigInteger.valueOf(2L).pow(i11);
        BigInteger bigInteger2 = ONE;
        BigInteger shiftLeft = bigInteger2.shiftLeft(strength - 1);
        BigInteger shiftLeft2 = bigInteger2.shiftLeft(i12);
        AsymmetricCipherKeyPair asymmetricCipherKeyPair = null;
        boolean z9 = false;
        while (!z9) {
            BigInteger publicExponent = rSAKeyPairGenerator.param.getPublicExponent();
            do {
                chooseRandomPrime = rSAKeyPairGenerator.chooseRandomPrime(i4, publicExponent, shiftLeft);
                while (true) {
                    chooseRandomPrime2 = rSAKeyPairGenerator.chooseRandomPrime(i10, publicExponent, shiftLeft);
                    BigInteger abs = chooseRandomPrime2.subtract(chooseRandomPrime).abs();
                    if (abs.bitLength() < i12 || abs.compareTo(shiftLeft2) <= 0) {
                        rSAKeyPairGenerator = this;
                        strength = strength;
                    } else {
                        multiply = chooseRandomPrime.multiply(chooseRandomPrime2);
                        if (multiply.bitLength() != strength) {
                            chooseRandomPrime = chooseRandomPrime.max(chooseRandomPrime2);
                        }
                    }
                }
            } while (WNafUtil.getNafWeight(multiply) < i14);
            if (chooseRandomPrime.compareTo(chooseRandomPrime2) < 0) {
                bigInteger = chooseRandomPrime;
                chooseRandomPrime = chooseRandomPrime2;
            } else {
                bigInteger = chooseRandomPrime2;
            }
            BigInteger bigInteger3 = ONE;
            BigInteger subtract = chooseRandomPrime.subtract(bigInteger3);
            BigInteger subtract2 = bigInteger.subtract(bigInteger3);
            int i15 = strength;
            BigInteger modInverse = publicExponent.modInverse(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2));
            if (modInverse.compareTo(pow) > 0) {
                asymmetricCipherKeyPair = new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RSAKeyParameters(false, multiply, publicExponent), (AsymmetricKeyParameter) new RSAPrivateCrtKeyParameters(multiply, publicExponent, modInverse, chooseRandomPrime, bigInteger, modInverse.remainder(subtract), modInverse.remainder(subtract2), BigIntegers.modOddInverse(chooseRandomPrime, bigInteger)));
                z9 = true;
            }
            rSAKeyPairGenerator = this;
            strength = i15;
        }
        return asymmetricCipherKeyPair;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (RSAKeyGenerationParameters) keyGenerationParameters;
    }

    protected boolean isProbablePrime(BigInteger bigInteger) {
        return !Primes.hasAnySmallFactors(bigInteger) && Primes.isMRProbablePrime(bigInteger, this.param.getRandom(), getNumberOfIterations(bigInteger.bitLength(), this.param.getCertainty()));
    }
}
