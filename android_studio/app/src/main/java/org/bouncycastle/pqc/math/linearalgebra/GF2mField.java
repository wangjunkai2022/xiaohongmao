package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicesRegistrar;

/* loaded from: classes5.dex */
public class GF2mField {
    private int degree;
    private int polynomial;

    public GF2mField(int i4) {
        this.degree = 0;
        if (i4 >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        }
        if (i4 < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        }
        this.degree = i4;
        this.polynomial = PolynomialRingGF2.getIrreduciblePolynomial(i4);
    }

    public GF2mField(int i4, int i10) {
        this.degree = 0;
        if (i4 != PolynomialRingGF2.degree(i10)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        }
        if (!PolynomialRingGF2.isIrreducible(i10)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        }
        this.degree = i4;
        this.polynomial = i10;
    }

    public GF2mField(GF2mField gF2mField) {
        this.degree = 0;
        this.degree = gF2mField.degree;
        this.polynomial = gF2mField.polynomial;
    }

    public GF2mField(byte[] bArr) {
        this.degree = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int OS2IP = LittleEndianConversions.OS2IP(bArr);
        this.polynomial = OS2IP;
        if (!PolynomialRingGF2.isIrreducible(OS2IP)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.degree = PolynomialRingGF2.degree(this.polynomial);
    }

    private static String polyToString(int i4) {
        if (i4 == 0) {
            return "0";
        }
        String str = ((byte) (i4 & 1)) == 1 ? "1" : "";
        int i10 = i4 >>> 1;
        int i11 = 1;
        while (i10 != 0) {
            if (((byte) (i10 & 1)) == 1) {
                str = str + "+x^" + i11;
            }
            i10 >>>= 1;
            i11++;
        }
        return str;
    }

    public int add(int i4, int i10) {
        return i4 ^ i10;
    }

    public String elementToStr(int i4) {
        StringBuilder sb;
        String str;
        String str2 = "";
        for (int i10 = 0; i10 < this.degree; i10++) {
            if ((((byte) i4) & 1) == 0) {
                sb = new StringBuilder();
                str = "0";
            } else {
                sb = new StringBuilder();
                str = "1";
            }
            sb.append(str);
            sb.append(str2);
            str2 = sb.toString();
            i4 >>>= 1;
        }
        return str2;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mField)) {
            GF2mField gF2mField = (GF2mField) obj;
            if (this.degree == gF2mField.degree && this.polynomial == gF2mField.polynomial) {
                return true;
            }
        }
        return false;
    }

    public int exp(int i4, int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i4 == 0) {
            return 0;
        }
        if (i4 == 1) {
            return 1;
        }
        if (i10 < 0) {
            i4 = inverse(i4);
            i10 = -i10;
        }
        int i11 = 1;
        while (i10 != 0) {
            if ((i10 & 1) == 1) {
                i11 = mult(i11, i4);
            }
            i4 = mult(i4, i4);
            i10 >>>= 1;
        }
        return i11;
    }

    public int getDegree() {
        return this.degree;
    }

    public byte[] getEncoded() {
        return LittleEndianConversions.I2OSP(this.polynomial);
    }

    public int getPolynomial() {
        return this.polynomial;
    }

    public int getRandomElement(SecureRandom secureRandom) {
        return RandUtils.nextInt(secureRandom, 1 << this.degree);
    }

    public int getRandomNonZeroElement() {
        return getRandomNonZeroElement(CryptoServicesRegistrar.getSecureRandom());
    }

    public int getRandomNonZeroElement(SecureRandom secureRandom) {
        int nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
        int i4 = 0;
        while (nextInt == 0 && i4 < 1048576) {
            nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
            i4++;
        }
        if (i4 == 1048576) {
            return 1;
        }
        return nextInt;
    }

    public int hashCode() {
        return this.polynomial;
    }

    public int inverse(int i4) {
        return exp(i4, (1 << this.degree) - 2);
    }

    public boolean isElementOfThisField(int i4) {
        int i10 = this.degree;
        return i10 == 31 ? i4 >= 0 : i4 >= 0 && i4 < (1 << i10);
    }

    public int mult(int i4, int i10) {
        return PolynomialRingGF2.modMultiply(i4, i10, this.polynomial);
    }

    public int sqRoot(int i4) {
        for (int i10 = 1; i10 < this.degree; i10++) {
            i4 = mult(i4, i4);
        }
        return i4;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.degree + ") = GF(2)[X]/<" + polyToString(this.polynomial) + "> ";
    }
}
