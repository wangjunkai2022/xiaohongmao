package com.google.android.exoplayer2.upstream.cache;

import java.util.TreeSet;

/* compiled from: LeastRecentlyUsedCacheEvictor.java */
/* loaded from: classes2.dex */
public final class t implements d {

    /* renamed from: a  reason: collision with root package name */
    private final long f27183a;

    /* renamed from: b  reason: collision with root package name */
    private final TreeSet<j> f27184b = new TreeSet<>(s.f27182a);

    /* renamed from: c  reason: collision with root package name */
    private long f27185c;

    public t(long j4) {
        this.f27183a = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(j jVar, j jVar2) {
        long j4 = jVar.f27110f;
        long j10 = jVar2.f27110f;
        if (j4 - j10 == 0) {
            return jVar.compareTo(jVar2);
        }
        return j4 < j10 ? -1 : 1;
    }

    private void i(Cache cache, long j4) {
        while (this.f27185c + j4 > this.f27183a && !this.f27184b.isEmpty()) {
            cache.j(this.f27184b.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void a(Cache cache, j jVar) {
        this.f27184b.add(jVar);
        this.f27185c += jVar.f27107c;
        i(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.d
    public boolean b() {
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.d
    public void c(Cache cache, String str, long j4, long j10) {
        if (j10 != -1) {
            i(cache, j10);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void d(Cache cache, j jVar) {
        this.f27184b.remove(jVar);
        this.f27185c -= jVar.f27107c;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void e(Cache cache, j jVar, j jVar2) {
        d(cache, jVar);
        a(cache, jVar2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.d
    public void f() {
    }
}
