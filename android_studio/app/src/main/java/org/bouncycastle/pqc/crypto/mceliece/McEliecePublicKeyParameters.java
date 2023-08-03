package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

/* loaded from: classes5.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* renamed from: g  reason: collision with root package name */
    private GF2Matrix f91553g;

    /* renamed from: n  reason: collision with root package name */
    private int f91554n;

    /* renamed from: t  reason: collision with root package name */
    private int f91555t;

    public McEliecePublicKeyParameters(int i4, int i10, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f91554n = i4;
        this.f91555t = i10;
        this.f91553g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f91553g;
    }

    public int getK() {
        return this.f91553g.getNumRows();
    }

    public int getN() {
        return this.f91554n;
    }

    public int getT() {
        return this.f91555t;
    }
}
