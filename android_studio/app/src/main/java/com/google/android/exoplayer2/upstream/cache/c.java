package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.m;

/* compiled from: CacheDataSourceFactory.java */
@Deprecated
/* loaded from: classes2.dex */
public final class c implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f27081a;

    /* renamed from: b  reason: collision with root package name */
    private final m.a f27082b;

    /* renamed from: c  reason: collision with root package name */
    private final m.a f27083c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27084d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final k.a f27085e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final b.c f27086f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final i f27087g;

    public c(Cache cache, m.a aVar) {
        this(cache, aVar, 0);
    }

    @Override // com.google.android.exoplayer2.upstream.m.a
    /* renamed from: d */
    public b a() {
        Cache cache = this.f27081a;
        com.google.android.exoplayer2.upstream.m a10 = this.f27082b.a();
        com.google.android.exoplayer2.upstream.m a11 = this.f27083c.a();
        k.a aVar = this.f27085e;
        return new b(cache, a10, a11, aVar == null ? null : aVar.a(), this.f27084d, this.f27086f, this.f27087g);
    }

    public c(Cache cache, m.a aVar, int i4) {
        this(cache, aVar, new FileDataSource.a(), new CacheDataSink.a().c(cache), i4, null);
    }

    public c(Cache cache, m.a aVar, m.a aVar2, @Nullable k.a aVar3, int i4, @Nullable b.c cVar) {
        this(cache, aVar, aVar2, aVar3, i4, cVar, null);
    }

    public c(Cache cache, m.a aVar, m.a aVar2, @Nullable k.a aVar3, int i4, @Nullable b.c cVar, @Nullable i iVar) {
        this.f27081a = cache;
        this.f27082b = aVar;
        this.f27083c = aVar2;
        this.f27085e = aVar3;
        this.f27084d = i4;
        this.f27086f = cVar;
        this.f27087g = iVar;
    }
}
