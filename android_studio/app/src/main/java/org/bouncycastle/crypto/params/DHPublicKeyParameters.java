package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Integers;

/* loaded from: classes4.dex */
public class DHPublicKeyParameters extends DHKeyParameters {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f91315y;

    public DHPublicKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(false, dHParameters);
        this.f91315y = validate(bigInteger, dHParameters);
    }

    private static int legendre(BigInteger bigInteger, BigInteger bigInteger2) {
        int bitLength = bigInteger2.bitLength();
        int[] fromBigInteger = Nat.fromBigInteger(bitLength, bigInteger);
        int[] fromBigInteger2 = Nat.fromBigInteger(bitLength, bigInteger2);
        int length = fromBigInteger2.length;
        int i4 = 0;
        while (true) {
            if (fromBigInteger[0] == 0) {
                Nat.shiftDownWord(length, fromBigInteger, 0);
            } else {
                int numberOfTrailingZeros = Integers.numberOfTrailingZeros(fromBigInteger[0]);
                if (numberOfTrailingZeros > 0) {
                    Nat.shiftDownBits(length, fromBigInteger, numberOfTrailingZeros, 0);
                    int i10 = fromBigInteger2[0];
                    i4 ^= (numberOfTrailingZeros << 1) & (i10 ^ (i10 >>> 1));
                }
                int compare = Nat.compare(length, fromBigInteger, fromBigInteger2);
                if (compare == 0) {
                    break;
                }
                if (compare < 0) {
                    i4 ^= fromBigInteger[0] & fromBigInteger2[0];
                    int[] iArr = fromBigInteger2;
                    fromBigInteger2 = fromBigInteger;
                    fromBigInteger = iArr;
                }
                while (true) {
                    int i11 = length - 1;
                    if (fromBigInteger[i11] != 0) {
                        break;
                    }
                    length = i11;
                }
                Nat.sub(length, fromBigInteger, fromBigInteger2, fromBigInteger);
            }
        }
        if (Nat.isOne(length, fromBigInteger2)) {
            return 1 - (i4 & 2);
        }
        return 0;
    }

    private BigInteger validate(BigInteger bigInteger, DHParameters dHParameters) {
        Objects.requireNonNull(bigInteger, "y value cannot be null");
        BigInteger p9 = dHParameters.getP();
        BigInteger bigInteger2 = TWO;
        if (bigInteger.compareTo(bigInteger2) < 0 || bigInteger.compareTo(p9.subtract(bigInteger2)) > 0) {
            throw new IllegalArgumentException("invalid DH public key");
        }
        BigInteger q9 = dHParameters.getQ();
        if (q9 == null) {
            return bigInteger;
        }
        if (p9.testBit(0) && p9.bitLength() - 1 == q9.bitLength() && p9.shiftRight(1).equals(q9)) {
            if (1 == legendre(bigInteger, p9)) {
                return bigInteger;
            }
        } else if (ONE.equals(bigInteger.modPow(q9, p9))) {
            return bigInteger;
        }
        throw new IllegalArgumentException("Y value does not appear to be in correct group");
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        return (obj instanceof DHPublicKeyParameters) && ((DHPublicKeyParameters) obj).getY().equals(this.f91315y) && super.equals(obj);
    }

    public BigInteger getY() {
        return this.f91315y;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f91315y.hashCode() ^ super.hashCode();
    }
}
