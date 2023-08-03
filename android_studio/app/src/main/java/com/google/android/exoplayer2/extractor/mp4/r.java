package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.z0;

/* compiled from: TrackSampleTable.java */
/* loaded from: classes2.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    public final o f22848a;

    /* renamed from: b  reason: collision with root package name */
    public final int f22849b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f22850c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f22851d;

    /* renamed from: e  reason: collision with root package name */
    public final int f22852e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f22853f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f22854g;

    /* renamed from: h  reason: collision with root package name */
    public final long f22855h;

    public r(o oVar, long[] jArr, int[] iArr, int i4, long[] jArr2, int[] iArr2, long j4) {
        com.google.android.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(iArr2.length == jArr2.length);
        this.f22848a = oVar;
        this.f22850c = jArr;
        this.f22851d = iArr;
        this.f22852e = i4;
        this.f22853f = jArr2;
        this.f22854g = iArr2;
        this.f22855h = j4;
        this.f22849b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j4) {
        for (int j10 = z0.j(this.f22853f, j4, true, false); j10 >= 0; j10--) {
            if ((this.f22854g[j10] & 1) != 0) {
                return j10;
            }
        }
        return -1;
    }

    public int b(long j4) {
        for (int f10 = z0.f(this.f22853f, j4, true, false); f10 < this.f22853f.length; f10++) {
            if ((this.f22854g[f10] & 1) != 0) {
                return f10;
            }
        }
        return -1;
    }
}
