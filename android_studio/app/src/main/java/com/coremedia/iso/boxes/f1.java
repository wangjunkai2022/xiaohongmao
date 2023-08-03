package com.coremedia.iso.boxes;

import java.util.List;

/* compiled from: TrackBox.java */
/* loaded from: classes.dex */
public class f1 extends com.googlecode.mp4parser.b {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10029o = "trak";

    /* renamed from: n  reason: collision with root package name */
    private u0 f10030n;

    public f1() {
        super(f10029o);
    }

    public d0 J() {
        for (d dVar : y()) {
            if (dVar instanceof d0) {
                return (d0) dVar;
            }
        }
        return null;
    }

    public u0 K() {
        f0 L;
        u0 u0Var = this.f10030n;
        if (u0Var != null) {
            return u0Var;
        }
        d0 J = J();
        if (J == null || (L = J.L()) == null) {
            return null;
        }
        u0 K = L.K();
        this.f10030n = K;
        return K;
    }

    public g1 L() {
        for (d dVar : y()) {
            if (dVar instanceof g1) {
                return (g1) dVar;
            }
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public void b(List<d> list) {
        super.b(list);
        this.f10030n = null;
    }
}
