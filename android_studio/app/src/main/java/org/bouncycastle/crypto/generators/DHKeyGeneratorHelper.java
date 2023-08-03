package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
class DHKeyGeneratorHelper {
    static final DHKeyGeneratorHelper INSTANCE = new DHKeyGeneratorHelper();
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    private DHKeyGeneratorHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigInteger calculatePrivate(DHParameters dHParameters, SecureRandom secureRandom) {
        BigInteger createRandomInRange;
        BigInteger bit;
        int l10 = dHParameters.getL();
        if (l10 != 0) {
            int i4 = l10 >>> 2;
            do {
                bit = BigIntegers.createRandomBigInteger(l10, secureRandom).setBit(l10 - 1);
            } while (WNafUtil.getNafWeight(bit) < i4);
            return bit;
        }
        BigInteger bigInteger = TWO;
        int m9 = dHParameters.getM();
        BigInteger shiftLeft = m9 != 0 ? ONE.shiftLeft(m9 - 1) : bigInteger;
        BigInteger q9 = dHParameters.getQ();
        if (q9 == null) {
            q9 = dHParameters.getP();
        }
        BigInteger subtract = q9.subtract(bigInteger);
        int bitLength = subtract.bitLength() >>> 2;
        do {
            createRandomInRange = BigIntegers.createRandomInRange(shiftLeft, subtract, secureRandom);
        } while (WNafUtil.getNafWeight(createRandomInRange) < bitLength);
        return createRandomInRange;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BigInteger calculatePublic(DHParameters dHParameters, BigInteger bigInteger) {
        return dHParameters.getG().modPow(bigInteger, dHParameters.getP());
    }
}
