package com.coremedia.iso.boxes;

/* compiled from: MediaInformationBox.java */
/* loaded from: classes.dex */
public class f0 extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f10028n = "minf";

    public f0() {
        super(f10028n);
    }

    public a J() {
        for (d dVar : y()) {
            if (dVar instanceof a) {
                return (a) dVar;
            }
        }
        return null;
    }

    public u0 K() {
        for (d dVar : y()) {
            if (dVar instanceof u0) {
                return (u0) dVar;
            }
        }
        return null;
    }
}
