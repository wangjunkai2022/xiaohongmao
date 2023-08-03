package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.k;

/* compiled from: CacheDataSinkFactory.java */
@Deprecated
/* loaded from: classes2.dex */
public final class a implements k.a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f27043a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27044b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27045c;

    public a(Cache cache, long j4) {
        this(cache, j4, CacheDataSink.f27027l);
    }

    @Override // com.google.android.exoplayer2.upstream.k.a
    public com.google.android.exoplayer2.upstream.k a() {
        return new CacheDataSink(this.f27043a, this.f27044b, this.f27045c);
    }

    public a(Cache cache, long j4, int i4) {
        this.f27043a = cache;
        this.f27044b = j4;
        this.f27045c = i4;
    }
}
