package org.bouncycastle.crypto.agreement.jpake;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class JPAKEPrimeOrderGroup {

    /* renamed from: g  reason: collision with root package name */
    private final BigInteger f91170g;

    /* renamed from: p  reason: collision with root package name */
    private final BigInteger f91171p;

    /* renamed from: q  reason: collision with root package name */
    private final BigInteger f91172q;

    public JPAKEPrimeOrderGroup(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JPAKEPrimeOrderGroup(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, boolean z9) {
        JPAKEUtil.validateNotNull(bigInteger, "p");
        JPAKEUtil.validateNotNull(bigInteger2, "q");
        JPAKEUtil.validateNotNull(bigInteger3, "g");
        if (!z9) {
            BigInteger bigInteger4 = JPAKEUtil.ONE;
            if (!bigInteger.subtract(bigInteger4).mod(bigInteger2).equals(JPAKEUtil.ZERO)) {
                throw new IllegalArgumentException("p-1 must be evenly divisible by q");
            }
            if (bigInteger3.compareTo(BigInteger.valueOf(2L)) == -1 || bigInteger3.compareTo(bigInteger.subtract(bigInteger4)) == 1) {
                throw new IllegalArgumentException("g must be in [2, p-1]");
            }
            if (!bigInteger3.modPow(bigInteger2, bigInteger).equals(bigInteger4)) {
                throw new IllegalArgumentException("g^q mod p must equal 1");
            }
            if (!bigInteger.isProbablePrime(20)) {
                throw new IllegalArgumentException("p must be prime");
            }
            if (!bigInteger2.isProbablePrime(20)) {
                throw new IllegalArgumentException("q must be prime");
            }
        }
        this.f91171p = bigInteger;
        this.f91172q = bigInteger2;
        this.f91170g = bigInteger3;
    }

    public BigInteger getG() {
        return this.f91170g;
    }

    public BigInteger getP() {
        return this.f91171p;
    }

    public BigInteger getQ() {
        return this.f91172q;
    }
}
