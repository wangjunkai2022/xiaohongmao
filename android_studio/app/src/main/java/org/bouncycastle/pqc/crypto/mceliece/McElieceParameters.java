package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2;

/* loaded from: classes5.dex */
public class McElieceParameters implements CipherParameters {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private Digest digest;
    private int fieldPoly;

    /* renamed from: m  reason: collision with root package name */
    private int f91542m;

    /* renamed from: n  reason: collision with root package name */
    private int f91543n;

    /* renamed from: t  reason: collision with root package name */
    private int f91544t;

    public McElieceParameters() {
        this(11, 50);
    }

    public McElieceParameters(int i4) {
        this(i4, (Digest) null);
    }

    public McElieceParameters(int i4, int i10) {
        this(i4, i10, (Digest) null);
    }

    public McElieceParameters(int i4, int i10, int i11) {
        this(i4, i10, i11, null);
    }

    public McElieceParameters(int i4, int i10, int i11, Digest digest) {
        this.f91542m = i4;
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i12 = 1 << i4;
        this.f91543n = i12;
        this.f91544t = i10;
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
        this.digest = digest;
    }

    public McElieceParameters(int i4, int i10, Digest digest) {
        if (i4 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i4 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f91542m = i4;
        int i11 = 1 << i4;
        this.f91543n = i11;
        if (i10 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f91544t = i10;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i4);
        this.digest = digest;
    }

    public McElieceParameters(int i4, Digest digest) {
        if (i4 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f91542m = 0;
        this.f91543n = 1;
        while (true) {
            int i10 = this.f91543n;
            if (i10 >= i4) {
                int i11 = i10 >>> 1;
                this.f91544t = i11;
                int i12 = this.f91542m;
                this.f91544t = i11 / i12;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i12);
                this.digest = digest;
                return;
            }
            this.f91543n = i10 << 1;
            this.f91542m++;
        }
    }

    public McElieceParameters(Digest digest) {
        this(11, 50, digest);
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.f91542m;
    }

    public int getN() {
        return this.f91543n;
    }

    public int getT() {
        return this.f91544t;
    }
}
