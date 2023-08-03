package com.coremedia.iso.boxes.fragment;

/* compiled from: TrackFragmentBox.java */
/* loaded from: classes.dex */
public class k extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f10079n = "traf";

    public k() {
        super(f10079n);
    }

    @s3.a
    public l J() {
        for (com.coremedia.iso.boxes.d dVar : y()) {
            if (dVar instanceof l) {
                return (l) dVar;
            }
        }
        return null;
    }
}
