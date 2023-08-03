package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Tnaf {
    private static final BigInteger MINUS_ONE;
    private static final BigInteger MINUS_THREE;
    private static final BigInteger MINUS_TWO;
    public static final byte POW_2_WIDTH = 16;
    public static final byte WIDTH = 4;
    public static final ZTauElement[] alpha0;
    public static final byte[][] alpha0Tnaf;
    public static final ZTauElement[] alpha1;
    public static final byte[][] alpha1Tnaf;

    static {
        BigInteger bigInteger = ECConstants.ONE;
        BigInteger negate = bigInteger.negate();
        MINUS_ONE = negate;
        MINUS_TWO = ECConstants.TWO.negate();
        BigInteger negate2 = ECConstants.THREE.negate();
        MINUS_THREE = negate2;
        BigInteger bigInteger2 = ECConstants.ZERO;
        alpha0 = new ZTauElement[]{null, new ZTauElement(bigInteger, bigInteger2), null, new ZTauElement(negate2, negate), null, new ZTauElement(negate, negate), null, new ZTauElement(bigInteger, negate), null};
        alpha0Tnaf = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, 1}};
        alpha1 = new ZTauElement[]{null, new ZTauElement(bigInteger, bigInteger2), null, new ZTauElement(negate2, bigInteger), null, new ZTauElement(negate, bigInteger), null, new ZTauElement(bigInteger, bigInteger), null};
        alpha1Tnaf = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, -1}};
    }

    Tnaf() {
    }

    public static SimpleBigDecimal approximateDivisionByN(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte b10, int i4, int i10) {
        int i11 = ((i4 + 5) / 2) + i10;
        BigInteger multiply = bigInteger2.multiply(bigInteger.shiftRight(((i4 - i11) - 2) + b10));
        BigInteger add = multiply.add(bigInteger3.multiply(multiply.shiftRight(i4)));
        int i12 = i11 - i10;
        BigInteger shiftRight = add.shiftRight(i12);
        if (add.testBit(i12 - 1)) {
            shiftRight = shiftRight.add(ECConstants.ONE);
        }
        return new SimpleBigDecimal(shiftRight, i10);
    }

    public static BigInteger[] getLucas(byte b10, int i4, boolean z9) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        if (b10 == 1 || b10 == -1) {
            if (z9) {
                bigInteger = ECConstants.TWO;
                bigInteger2 = BigInteger.valueOf(b10);
            } else {
                bigInteger = ECConstants.ZERO;
                bigInteger2 = ECConstants.ONE;
            }
            int i10 = 1;
            while (i10 < i4) {
                i10++;
                BigInteger bigInteger3 = bigInteger2;
                bigInteger2 = (b10 == 1 ? bigInteger2 : bigInteger2.negate()).subtract(bigInteger.shiftLeft(1));
                bigInteger = bigInteger3;
            }
            return new BigInteger[]{bigInteger, bigInteger2};
        }
        throw new IllegalArgumentException("mu must be 1 or -1");
    }

    public static byte getMu(int i4) {
        return (byte) (i4 == 0 ? -1 : 1);
    }

    public static byte getMu(ECCurve.AbstractF2m abstractF2m) {
        if (abstractF2m.isKoblitz()) {
            return abstractF2m.getA().isZero() ? (byte) -1 : (byte) 1;
        }
        throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
    }

    public static byte getMu(ECFieldElement eCFieldElement) {
        return (byte) (eCFieldElement.isZero() ? -1 : 1);
    }

    public static ECPoint.AbstractF2m[] getPreComp(ECPoint.AbstractF2m abstractF2m, byte b10) {
        byte[][] bArr = b10 == 0 ? alpha0Tnaf : alpha1Tnaf;
        ECPoint.AbstractF2m[] abstractF2mArr = new ECPoint.AbstractF2m[(bArr.length + 1) >>> 1];
        abstractF2mArr[0] = abstractF2m;
        int length = bArr.length;
        for (int i4 = 3; i4 < length; i4 += 2) {
            abstractF2mArr[i4 >>> 1] = multiplyFromTnaf(abstractF2m, bArr[i4]);
        }
        abstractF2m.getCurve().normalizeAll(abstractF2mArr);
        return abstractF2mArr;
    }

    protected static int getShiftsForCofactor(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.equals(ECConstants.TWO)) {
                return 1;
            }
            if (bigInteger.equals(ECConstants.FOUR)) {
                return 2;
            }
        }
        throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
    }

    public static BigInteger[] getSi(int i4, int i10, BigInteger bigInteger) {
        byte mu = getMu(i10);
        int shiftsForCofactor = getShiftsForCofactor(bigInteger);
        BigInteger[] lucas = getLucas(mu, (i4 + 3) - i10, false);
        if (mu == 1) {
            lucas[0] = lucas[0].negate();
            lucas[1] = lucas[1].negate();
        }
        BigInteger bigInteger2 = ECConstants.ONE;
        return new BigInteger[]{bigInteger2.add(lucas[1]).shiftRight(shiftsForCofactor), bigInteger2.add(lucas[0]).shiftRight(shiftsForCofactor).negate()};
    }

    public static BigInteger[] getSi(ECCurve.AbstractF2m abstractF2m) {
        if (abstractF2m.isKoblitz()) {
            int fieldSize = abstractF2m.getFieldSize();
            int intValue = abstractF2m.getA().toBigInteger().intValue();
            byte mu = getMu(intValue);
            int shiftsForCofactor = getShiftsForCofactor(abstractF2m.getCofactor());
            BigInteger[] lucas = getLucas(mu, (fieldSize + 3) - intValue, false);
            if (mu == 1) {
                lucas[0] = lucas[0].negate();
                lucas[1] = lucas[1].negate();
            }
            BigInteger bigInteger = ECConstants.ONE;
            return new BigInteger[]{bigInteger.add(lucas[1]).shiftRight(shiftsForCofactor), bigInteger.add(lucas[0]).shiftRight(shiftsForCofactor).negate()};
        }
        throw new IllegalArgumentException("si is defined for Koblitz curves only");
    }

    public static BigInteger getTw(byte b10, int i4) {
        if (i4 == 4) {
            return b10 == 1 ? BigInteger.valueOf(6L) : BigInteger.valueOf(10L);
        }
        BigInteger[] lucas = getLucas(b10, i4, false);
        BigInteger bit = ECConstants.ZERO.setBit(i4);
        return ECConstants.TWO.multiply(lucas[0]).multiply(lucas[1].modInverse(bit)).mod(bit);
    }

    public static ECPoint.AbstractF2m multiplyFromTnaf(ECPoint.AbstractF2m abstractF2m, byte[] bArr) {
        ECPoint.AbstractF2m abstractF2m2 = (ECPoint.AbstractF2m) abstractF2m.getCurve().getInfinity();
        ECPoint.AbstractF2m abstractF2m3 = (ECPoint.AbstractF2m) abstractF2m.negate();
        int i4 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i4++;
            byte b10 = bArr[length];
            if (b10 != 0) {
                abstractF2m2 = (ECPoint.AbstractF2m) abstractF2m2.tauPow(i4).add(b10 > 0 ? abstractF2m : abstractF2m3);
                i4 = 0;
            }
        }
        return i4 > 0 ? abstractF2m2.tauPow(i4) : abstractF2m2;
    }

    public static ECPoint.AbstractF2m multiplyRTnaf(ECPoint.AbstractF2m abstractF2m, BigInteger bigInteger) {
        ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
        int fieldSize = abstractF2m2.getFieldSize();
        int intValue = abstractF2m2.getA().toBigInteger().intValue();
        return multiplyTnaf(abstractF2m, partModReduction(bigInteger, fieldSize, (byte) intValue, abstractF2m2.getSi(), getMu(intValue), (byte) 10));
    }

    public static ECPoint.AbstractF2m multiplyTnaf(ECPoint.AbstractF2m abstractF2m, ZTauElement zTauElement) {
        return multiplyFromTnaf(abstractF2m, tauAdicNaf(getMu(((ECCurve.AbstractF2m) abstractF2m.getCurve()).getA()), zTauElement));
    }

    public static BigInteger norm(byte b10, ZTauElement zTauElement) {
        BigInteger subtract;
        BigInteger bigInteger = zTauElement.f91425u;
        BigInteger multiply = bigInteger.multiply(bigInteger);
        BigInteger multiply2 = zTauElement.f91425u.multiply(zTauElement.f91426v);
        BigInteger bigInteger2 = zTauElement.f91426v;
        BigInteger shiftLeft = bigInteger2.multiply(bigInteger2).shiftLeft(1);
        if (b10 == 1) {
            subtract = multiply.add(multiply2);
        } else if (b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        } else {
            subtract = multiply.subtract(multiply2);
        }
        return subtract.add(shiftLeft);
    }

    public static SimpleBigDecimal norm(byte b10, SimpleBigDecimal simpleBigDecimal, SimpleBigDecimal simpleBigDecimal2) {
        SimpleBigDecimal subtract;
        SimpleBigDecimal multiply = simpleBigDecimal.multiply(simpleBigDecimal);
        SimpleBigDecimal multiply2 = simpleBigDecimal.multiply(simpleBigDecimal2);
        SimpleBigDecimal shiftLeft = simpleBigDecimal2.multiply(simpleBigDecimal2).shiftLeft(1);
        if (b10 == 1) {
            subtract = multiply.add(multiply2);
        } else if (b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        } else {
            subtract = multiply.subtract(multiply2);
        }
        return subtract.add(shiftLeft);
    }

    public static ZTauElement partModReduction(BigInteger bigInteger, int i4, byte b10, BigInteger[] bigIntegerArr, byte b11, byte b12) {
        BigInteger add = b11 == 1 ? bigIntegerArr[0].add(bigIntegerArr[1]) : bigIntegerArr[0].subtract(bigIntegerArr[1]);
        BigInteger bigInteger2 = getLucas(b11, i4, true)[1];
        ZTauElement round = round(approximateDivisionByN(bigInteger, bigIntegerArr[0], bigInteger2, b10, i4, b12), approximateDivisionByN(bigInteger, bigIntegerArr[1], bigInteger2, b10, i4, b12), b11);
        return new ZTauElement(bigInteger.subtract(add.multiply(round.f91425u)).subtract(BigInteger.valueOf(2L).multiply(bigIntegerArr[1]).multiply(round.f91426v)), bigIntegerArr[1].multiply(round.f91425u).subtract(bigIntegerArr[0].multiply(round.f91426v)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if (r5.compareTo(org.bouncycastle.math.ec.Tnaf.MINUS_ONE) < 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        if (r8.compareTo(org.bouncycastle.math.ec.ECConstants.TWO) >= 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        if (r5.compareTo(r9) >= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
        if (r8.compareTo(org.bouncycastle.math.ec.Tnaf.MINUS_TWO) < 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.bouncycastle.math.ec.ZTauElement round(org.bouncycastle.math.ec.SimpleBigDecimal r8, org.bouncycastle.math.ec.SimpleBigDecimal r9, byte r10) {
        /*
            int r0 = r8.getScale()
            int r1 = r9.getScale()
            if (r1 != r0) goto La5
            r0 = -1
            r1 = 1
            if (r10 == r1) goto L19
            if (r10 != r0) goto L11
            goto L19
        L11:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "mu must be 1 or -1"
            r8.<init>(r9)
            throw r8
        L19:
            java.math.BigInteger r2 = r8.round()
            java.math.BigInteger r3 = r9.round()
            org.bouncycastle.math.ec.SimpleBigDecimal r8 = r8.subtract(r2)
            org.bouncycastle.math.ec.SimpleBigDecimal r9 = r9.subtract(r3)
            org.bouncycastle.math.ec.SimpleBigDecimal r4 = r8.add(r8)
            if (r10 != r1) goto L34
            org.bouncycastle.math.ec.SimpleBigDecimal r4 = r4.add(r9)
            goto L38
        L34:
            org.bouncycastle.math.ec.SimpleBigDecimal r4 = r4.subtract(r9)
        L38:
            org.bouncycastle.math.ec.SimpleBigDecimal r5 = r9.add(r9)
            org.bouncycastle.math.ec.SimpleBigDecimal r5 = r5.add(r9)
            org.bouncycastle.math.ec.SimpleBigDecimal r9 = r5.add(r9)
            if (r10 != r1) goto L4f
            org.bouncycastle.math.ec.SimpleBigDecimal r5 = r8.subtract(r5)
            org.bouncycastle.math.ec.SimpleBigDecimal r8 = r8.add(r9)
            goto L57
        L4f:
            org.bouncycastle.math.ec.SimpleBigDecimal r5 = r8.add(r5)
            org.bouncycastle.math.ec.SimpleBigDecimal r8 = r8.subtract(r9)
        L57:
            java.math.BigInteger r9 = org.bouncycastle.math.ec.ECConstants.ONE
            int r6 = r4.compareTo(r9)
            r7 = 0
            if (r6 < 0) goto L69
            java.math.BigInteger r6 = org.bouncycastle.math.ec.Tnaf.MINUS_ONE
            int r6 = r5.compareTo(r6)
            if (r6 >= 0) goto L73
            goto L71
        L69:
            java.math.BigInteger r1 = org.bouncycastle.math.ec.ECConstants.TWO
            int r1 = r8.compareTo(r1)
            if (r1 < 0) goto L72
        L71:
            r7 = r10
        L72:
            r1 = 0
        L73:
            java.math.BigInteger r6 = org.bouncycastle.math.ec.Tnaf.MINUS_ONE
            int r4 = r4.compareTo(r6)
            if (r4 >= 0) goto L82
            int r8 = r5.compareTo(r9)
            if (r8 < 0) goto L8d
            goto L8a
        L82:
            java.math.BigInteger r9 = org.bouncycastle.math.ec.Tnaf.MINUS_TWO
            int r8 = r8.compareTo(r9)
            if (r8 >= 0) goto L8c
        L8a:
            int r8 = -r10
            byte r7 = (byte) r8
        L8c:
            r0 = r1
        L8d:
            long r8 = (long) r0
            java.math.BigInteger r8 = java.math.BigInteger.valueOf(r8)
            java.math.BigInteger r8 = r2.add(r8)
            long r9 = (long) r7
            java.math.BigInteger r9 = java.math.BigInteger.valueOf(r9)
            java.math.BigInteger r9 = r3.add(r9)
            org.bouncycastle.math.ec.ZTauElement r10 = new org.bouncycastle.math.ec.ZTauElement
            r10.<init>(r8, r9)
            return r10
        La5:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "lambda0 and lambda1 do not have same scale"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.ec.Tnaf.round(org.bouncycastle.math.ec.SimpleBigDecimal, org.bouncycastle.math.ec.SimpleBigDecimal, byte):org.bouncycastle.math.ec.ZTauElement");
    }

    public static ECPoint.AbstractF2m tau(ECPoint.AbstractF2m abstractF2m) {
        return abstractF2m.tau();
    }

    public static byte[] tauAdicNaf(byte b10, ZTauElement zTauElement) {
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int bitLength = norm(b10, zTauElement).bitLength();
        byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 : 34];
        BigInteger bigInteger = zTauElement.f91425u;
        BigInteger bigInteger2 = zTauElement.f91426v;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            BigInteger bigInteger3 = ECConstants.ZERO;
            if (bigInteger.equals(bigInteger3) && bigInteger2.equals(bigInteger3)) {
                int i11 = i4 + 1;
                byte[] bArr2 = new byte[i11];
                System.arraycopy(bArr, 0, bArr2, 0, i11);
                return bArr2;
            }
            if (bigInteger.testBit(0)) {
                bArr[i10] = (byte) ECConstants.TWO.subtract(bigInteger.subtract(bigInteger2.shiftLeft(1)).mod(ECConstants.FOUR)).intValue();
                bigInteger = bArr[i10] == 1 ? bigInteger.clearBit(0) : bigInteger.add(ECConstants.ONE);
                i4 = i10;
            } else {
                bArr[i10] = 0;
            }
            BigInteger shiftRight = bigInteger.shiftRight(1);
            BigInteger add = b10 == 1 ? bigInteger2.add(shiftRight) : bigInteger2.subtract(shiftRight);
            BigInteger negate = bigInteger.shiftRight(1).negate();
            i10++;
            bigInteger = add;
            bigInteger2 = negate;
        }
    }

    public static byte[] tauAdicWNaf(byte b10, ZTauElement zTauElement, byte b11, BigInteger bigInteger, BigInteger bigInteger2, ZTauElement[] zTauElementArr) {
        boolean z9;
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int bitLength = norm(b10, zTauElement).bitLength();
        byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 + b11 : b11 + 34];
        BigInteger shiftRight = bigInteger.shiftRight(1);
        BigInteger bigInteger3 = zTauElement.f91425u;
        BigInteger bigInteger4 = zTauElement.f91426v;
        int i4 = 0;
        while (true) {
            BigInteger bigInteger5 = ECConstants.ZERO;
            if (bigInteger3.equals(bigInteger5) && bigInteger4.equals(bigInteger5)) {
                return bArr;
            }
            if (bigInteger3.testBit(0)) {
                BigInteger mod = bigInteger3.add(bigInteger4.multiply(bigInteger2)).mod(bigInteger);
                if (mod.compareTo(shiftRight) >= 0) {
                    mod = mod.subtract(bigInteger);
                }
                byte intValue = (byte) mod.intValue();
                bArr[i4] = intValue;
                if (intValue < 0) {
                    intValue = (byte) (-intValue);
                    z9 = false;
                } else {
                    z9 = true;
                }
                if (z9) {
                    bigInteger3 = bigInteger3.subtract(zTauElementArr[intValue].f91425u);
                    bigInteger4 = bigInteger4.subtract(zTauElementArr[intValue].f91426v);
                } else {
                    bigInteger3 = bigInteger3.add(zTauElementArr[intValue].f91425u);
                    bigInteger4 = bigInteger4.add(zTauElementArr[intValue].f91426v);
                }
            } else {
                bArr[i4] = 0;
            }
            BigInteger shiftRight2 = bigInteger3.shiftRight(1);
            BigInteger add = b10 == 1 ? bigInteger4.add(shiftRight2) : bigInteger4.subtract(shiftRight2);
            BigInteger negate = bigInteger3.shiftRight(1).negate();
            i4++;
            bigInteger3 = add;
            bigInteger4 = negate;
        }
    }
}
