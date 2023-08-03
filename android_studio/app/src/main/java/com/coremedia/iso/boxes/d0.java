package com.coremedia.iso.boxes;

/* compiled from: MediaBox.java */
/* loaded from: classes.dex */
public class d0 extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f9990n = "mdia";

    public d0() {
        super(f9990n);
    }

    public x J() {
        for (d dVar : y()) {
            if (dVar instanceof x) {
                return (x) dVar;
            }
        }
        return null;
    }

    public e0 K() {
        for (d dVar : y()) {
            if (dVar instanceof e0) {
                return (e0) dVar;
            }
        }
        return null;
    }

    public f0 L() {
        for (d dVar : y()) {
            if (dVar instanceof f0) {
                return (f0) dVar;
            }
        }
        return null;
    }
}
