package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

/* loaded from: classes5.dex */
public class McElieceCCA2PublicKeyParameters extends McElieceCCA2KeyParameters {
    private GF2Matrix matrixG;

    /* renamed from: n  reason: collision with root package name */
    private int f91528n;

    /* renamed from: t  reason: collision with root package name */
    private int f91529t;

    public McElieceCCA2PublicKeyParameters(int i4, int i10, GF2Matrix gF2Matrix, String str) {
        super(false, str);
        this.f91528n = i4;
        this.f91529t = i10;
        this.matrixG = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.matrixG;
    }

    public int getK() {
        return this.matrixG.getNumRows();
    }

    public int getN() {
        return this.f91528n;
    }

    public int getT() {
        return this.f91529t;
    }
}
