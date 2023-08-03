package org.bouncycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes5.dex */
public class McElieceCCA2KeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    public static final String SHA1 = "SHA-1";
    public static final String SHA224 = "SHA-224";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private final String digest;
    private int fieldPoly;

    /* renamed from: m  reason: collision with root package name */
    private final int f91568m;

    /* renamed from: n  reason: collision with root package name */
    private final int f91569n;

    /* renamed from: t  reason: collision with root package name */
    private final int f91570t;

    public McElieceCCA2KeyGenParameterSpec() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i4) {
        this(i4, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i4, int i10) {
        this(i4, i10, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i4, int i10, int i11) {
        this(i4, i10, i11, "SHA-256");
    }

    public McElieceCCA2KeyGenParameterSpec(int i4, int i10, int i11, String str) {
        this.f91568m = i4;
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i12 = 1 << i4;
        this.f91569n = i12;
        this.f91570t = i10;
        if (i10 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i10 > i12) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (PolynomialRingGF2.degree(i11) != i4 || !PolynomialRingGF2.isIrreducible(i11)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.fieldPoly = i11;
        this.digest = str;
    }

    public McElieceCCA2KeyGenParameterSpec(int i4, int i10, String str) {
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f91568m = i4;
        int i11 = 1 << i4;
        this.f91569n = i11;
        if (i10 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f91570t = i10;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i4);
        this.digest = str;
    }

    public McElieceCCA2KeyGenParameterSpec(int i4, String str) {
        int i10 = 1;
        if (i4 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        int i11 = 0;
        while (i10 < i4) {
            i10 <<= 1;
            i11++;
        }
        this.f91570t = (i10 >>> 1) / i11;
        this.f91568m = i11;
        this.f91569n = i10;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i11);
        this.digest = str;
    }

    public String getDigest() {
        return this.digest;
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f91568m;
    }

    public int getN() {
        return this.f91569n;
    }

    public int getT() {
        return this.f91570t;
    }
}
