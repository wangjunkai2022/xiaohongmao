package com.coremedia.iso.boxes;

import java.util.List;

/* compiled from: MovieBox.java */
/* loaded from: classes.dex */
public class h0 extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f10153n = "moov";

    public h0() {
        super(f10153n);
    }

    public i0 J() {
        for (d dVar : y()) {
            if (dVar instanceof i0) {
                return (i0) dVar;
            }
        }
        return null;
    }

    public int K() {
        return h(f1.class).size();
    }

    public long[] L() {
        List h4 = h(f1.class);
        long[] jArr = new long[h4.size()];
        for (int i4 = 0; i4 < h4.size(); i4++) {
            jArr[i4] = ((f1) h4.get(i4)).L().C();
        }
        return jArr;
    }
}
