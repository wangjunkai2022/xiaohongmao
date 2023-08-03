package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
class DHParametersHelper {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    DHParametersHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger[] generateSafePrimes(int i4, int i10, SecureRandom secureRandom) {
        int i11 = i4 - 1;
        int i12 = i4 >>> 2;
        while (true) {
            BigInteger createRandomPrime = BigIntegers.createRandomPrime(i11, 2, secureRandom);
            BigInteger add = createRandomPrime.shiftLeft(1).add(ONE);
            if (add.isProbablePrime(i10) && (i10 <= 2 || createRandomPrime.isProbablePrime(i10 - 2))) {
                if (WNafUtil.getNafWeight(add) >= i12) {
                    return new BigInteger[]{add, createRandomPrime};
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger selectGenerator(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger subtract = bigInteger.subtract(TWO);
        do {
            BigInteger bigInteger3 = TWO;
            modPow = BigIntegers.createRandomInRange(bigInteger3, subtract, secureRandom).modPow(bigInteger3, bigInteger);
        } while (modPow.equals(ONE));
        return modPow;
    }
}
