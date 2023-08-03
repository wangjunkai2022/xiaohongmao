package org.bouncycastle.pqc.jcajce.spec;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes5.dex */
public class McElieceKeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private int fieldPoly;

    /* renamed from: m  reason: collision with root package name */
    private int f91571m;

    /* renamed from: n  reason: collision with root package name */
    private int f91572n;

    /* renamed from: t  reason: collision with root package name */
    private int f91573t;

    public McElieceKeyGenParameterSpec() {
        this(11, 50);
    }

    public McElieceKeyGenParameterSpec(int i4) {
        if (i4 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f91571m = 0;
        this.f91572n = 1;
        while (true) {
            int i10 = this.f91572n;
            if (i10 >= i4) {
                int i11 = i10 >>> 1;
                this.f91573t = i11;
                int i12 = this.f91571m;
                this.f91573t = i11 / i12;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i12);
                return;
            }
            this.f91572n = i10 << 1;
            this.f91571m++;
        }
    }

    public McElieceKeyGenParameterSpec(int i4, int i10) throws InvalidParameterException {
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f91571m = i4;
        int i11 = 1 << i4;
        this.f91572n = i11;
        if (i10 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f91573t = i10;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i4);
    }

    public McElieceKeyGenParameterSpec(int i4, int i10, int i11) {
        this.f91571m = i4;
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i12 = 1 << i4;
        this.f91572n = i12;
        this.f91573t = i10;
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
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f91571m;
    }

    public int getN() {
        return this.f91572n;
    }

    public int getT() {
        return this.f91573t;
    }
}
