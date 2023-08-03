package com.google.android.exoplayer2.source.chunk;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.m0;
import java.util.List;
import java.util.Map;

/* compiled from: Chunk.java */
/* loaded from: classes2.dex */
public abstract class f implements Loader.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f24819a = com.google.android.exoplayer2.source.o.a();

    /* renamed from: b  reason: collision with root package name */
    public final com.google.android.exoplayer2.upstream.o f24820b;

    /* renamed from: c  reason: collision with root package name */
    public final int f24821c;

    /* renamed from: d  reason: collision with root package name */
    public final Format f24822d;

    /* renamed from: e  reason: collision with root package name */
    public final int f24823e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Object f24824f;

    /* renamed from: g  reason: collision with root package name */
    public final long f24825g;

    /* renamed from: h  reason: collision with root package name */
    public final long f24826h;

    /* renamed from: i  reason: collision with root package name */
    protected final m0 f24827i;

    public f(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, int i4, Format format, int i10, @Nullable Object obj, long j4, long j10) {
        this.f24827i = new m0(mVar);
        this.f24820b = (com.google.android.exoplayer2.upstream.o) com.google.android.exoplayer2.util.a.g(oVar);
        this.f24821c = i4;
        this.f24822d = format;
        this.f24823e = i10;
        this.f24824f = obj;
        this.f24825g = j4;
        this.f24826h = j10;
    }

    public final long b() {
        return this.f24827i.t();
    }

    public final long d() {
        return this.f24826h - this.f24825g;
    }

    public final Map<String, List<String>> e() {
        return this.f24827i.v();
    }

    public final Uri f() {
        return this.f24827i.u();
    }
}
