package com.google.android.exoplayer2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlaybackInfo.java */
/* loaded from: classes2.dex */
public final class r1 {

    /* renamed from: t  reason: collision with root package name */
    private static final z.a f24517t = new z.a(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final s2 f24518a;

    /* renamed from: b  reason: collision with root package name */
    public final z.a f24519b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24520c;

    /* renamed from: d  reason: collision with root package name */
    public final long f24521d;

    /* renamed from: e  reason: collision with root package name */
    public final int f24522e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final ExoPlaybackException f24523f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f24524g;

    /* renamed from: h  reason: collision with root package name */
    public final TrackGroupArray f24525h;

    /* renamed from: i  reason: collision with root package name */
    public final com.google.android.exoplayer2.trackselection.p f24526i;

    /* renamed from: j  reason: collision with root package name */
    public final List<Metadata> f24527j;

    /* renamed from: k  reason: collision with root package name */
    public final z.a f24528k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f24529l;

    /* renamed from: m  reason: collision with root package name */
    public final int f24530m;

    /* renamed from: n  reason: collision with root package name */
    public final t1 f24531n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f24532o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f24533p;

    /* renamed from: q  reason: collision with root package name */
    public volatile long f24534q;

    /* renamed from: r  reason: collision with root package name */
    public volatile long f24535r;

    /* renamed from: s  reason: collision with root package name */
    public volatile long f24536s;

    public r1(s2 s2Var, z.a aVar, long j4, long j10, int i4, @Nullable ExoPlaybackException exoPlaybackException, boolean z9, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.p pVar, List<Metadata> list, z.a aVar2, boolean z10, int i10, t1 t1Var, long j11, long j12, long j13, boolean z11, boolean z12) {
        this.f24518a = s2Var;
        this.f24519b = aVar;
        this.f24520c = j4;
        this.f24521d = j10;
        this.f24522e = i4;
        this.f24523f = exoPlaybackException;
        this.f24524g = z9;
        this.f24525h = trackGroupArray;
        this.f24526i = pVar;
        this.f24527j = list;
        this.f24528k = aVar2;
        this.f24529l = z10;
        this.f24530m = i10;
        this.f24531n = t1Var;
        this.f24534q = j11;
        this.f24535r = j12;
        this.f24536s = j13;
        this.f24532o = z11;
        this.f24533p = z12;
    }

    public static r1 k(com.google.android.exoplayer2.trackselection.p pVar) {
        s2 s2Var = s2.f24542a;
        z.a aVar = f24517t;
        return new r1(s2Var, aVar, i.f23649b, 0L, 1, null, false, TrackGroupArray.EMPTY, pVar, ImmutableList.of(), aVar, false, 0, t1.f25296d, 0L, 0L, 0L, false, false);
    }

    public static z.a l() {
        return f24517t;
    }

    @CheckResult
    public r1 a(boolean z9) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, z9, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 b(z.a aVar) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, aVar, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 c(z.a aVar, long j4, long j10, long j11, long j12, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.p pVar, List<Metadata> list) {
        return new r1(this.f24518a, aVar, j10, j11, this.f24522e, this.f24523f, this.f24524g, trackGroupArray, pVar, list, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, j12, j4, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 d(boolean z9) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, z9, this.f24533p);
    }

    @CheckResult
    public r1 e(boolean z9, int i4) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, z9, i4, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 f(@Nullable ExoPlaybackException exoPlaybackException) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, exoPlaybackException, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 g(t1 t1Var) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, t1Var, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 h(int i4) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, i4, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }

    @CheckResult
    public r1 i(boolean z9) {
        return new r1(this.f24518a, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, z9);
    }

    @CheckResult
    public r1 j(s2 s2Var) {
        return new r1(s2Var, this.f24519b, this.f24520c, this.f24521d, this.f24522e, this.f24523f, this.f24524g, this.f24525h, this.f24526i, this.f24527j, this.f24528k, this.f24529l, this.f24530m, this.f24531n, this.f24534q, this.f24535r, this.f24536s, this.f24532o, this.f24533p);
    }
}
