package com.coremedia.iso.boxes;

/* compiled from: SampleTableBox.java */
/* loaded from: classes.dex */
public class u0 extends com.googlecode.mp4parser.b {

    /* renamed from: o  reason: collision with root package name */
    public static final String f10411o = "stbl";

    /* renamed from: n  reason: collision with root package name */
    private v0 f10412n;

    public u0() {
        super(f10411o);
    }

    public f J() {
        for (d dVar : y()) {
            if (dVar instanceof f) {
                return (f) dVar;
            }
        }
        return null;
    }

    public i K() {
        for (d dVar : y()) {
            if (dVar instanceof i) {
                return (i) dVar;
            }
        }
        return null;
    }

    public r0 L() {
        for (d dVar : y()) {
            if (dVar instanceof r0) {
                return (r0) dVar;
            }
        }
        return null;
    }

    public t0 M() {
        for (d dVar : y()) {
            if (dVar instanceof t0) {
                return (t0) dVar;
            }
        }
        return null;
    }

    public v0 W() {
        v0 v0Var = this.f10412n;
        if (v0Var != null) {
            return v0Var;
        }
        for (d dVar : y()) {
            if (dVar instanceof v0) {
                v0 v0Var2 = (v0) dVar;
                this.f10412n = v0Var2;
                return v0Var2;
            }
        }
        return null;
    }

    public c1 X() {
        for (d dVar : y()) {
            if (dVar instanceof c1) {
                return (c1) dVar;
            }
        }
        return null;
    }

    public d1 b0() {
        for (d dVar : y()) {
            if (dVar instanceof d1) {
                return (d1) dVar;
            }
        }
        return null;
    }

    public s0 u() {
        for (d dVar : y()) {
            if (dVar instanceof s0) {
                return (s0) dVar;
            }
        }
        return null;
    }
}
