package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* compiled from: CachedRegionTracker.java */
/* loaded from: classes2.dex */
public final class n implements Cache.a {

    /* renamed from: f  reason: collision with root package name */
    private static final String f27163f = "CachedRegionTracker";

    /* renamed from: g  reason: collision with root package name */
    public static final int f27164g = -1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f27165h = -2;

    /* renamed from: a  reason: collision with root package name */
    private final Cache f27166a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27167b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.e f27168c;

    /* renamed from: d  reason: collision with root package name */
    private final TreeSet<a> f27169d = new TreeSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final a f27170e = new a(0, 0);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CachedRegionTracker.java */
    /* loaded from: classes2.dex */
    public static class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public long f27171a;

        /* renamed from: b  reason: collision with root package name */
        public long f27172b;

        /* renamed from: c  reason: collision with root package name */
        public int f27173c;

        public a(long j4, long j10) {
            this.f27171a = j4;
            this.f27172b = j10;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            return z0.r(this.f27171a, aVar.f27171a);
        }
    }

    public n(Cache cache, String str, com.google.android.exoplayer2.extractor.e eVar) {
        this.f27166a = cache;
        this.f27167b = str;
        this.f27168c = eVar;
        synchronized (this) {
            Iterator<j> descendingIterator = cache.o(str, this).descendingIterator();
            while (descendingIterator.hasNext()) {
                h(descendingIterator.next());
            }
        }
    }

    private void h(j jVar) {
        long j4 = jVar.f27106b;
        a aVar = new a(j4, jVar.f27107c + j4);
        a floor = this.f27169d.floor(aVar);
        a ceiling = this.f27169d.ceiling(aVar);
        boolean i4 = i(floor, aVar);
        if (i(aVar, ceiling)) {
            if (i4) {
                floor.f27172b = ceiling.f27172b;
                floor.f27173c = ceiling.f27173c;
            } else {
                aVar.f27172b = ceiling.f27172b;
                aVar.f27173c = ceiling.f27173c;
                this.f27169d.add(aVar);
            }
            this.f27169d.remove(ceiling);
        } else if (i4) {
            floor.f27172b = aVar.f27172b;
            int i10 = floor.f27173c;
            while (true) {
                com.google.android.exoplayer2.extractor.e eVar = this.f27168c;
                if (i10 >= eVar.f22133d - 1) {
                    break;
                }
                int i11 = i10 + 1;
                if (eVar.f22135f[i11] > floor.f27172b) {
                    break;
                }
                i10 = i11;
            }
            floor.f27173c = i10;
        } else {
            int binarySearch = Arrays.binarySearch(this.f27168c.f22135f, aVar.f27172b);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            aVar.f27173c = binarySearch;
            this.f27169d.add(aVar);
        }
    }

    private boolean i(@Nullable a aVar, @Nullable a aVar2) {
        return (aVar == null || aVar2 == null || aVar.f27172b != aVar2.f27171a) ? false : true;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public synchronized void a(Cache cache, j jVar) {
        h(jVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public synchronized void d(Cache cache, j jVar) {
        long j4 = jVar.f27106b;
        a aVar = new a(j4, jVar.f27107c + j4);
        a floor = this.f27169d.floor(aVar);
        if (floor == null) {
            com.google.android.exoplayer2.util.w.d(f27163f, "Removed a span we were not aware of");
            return;
        }
        this.f27169d.remove(floor);
        long j10 = floor.f27171a;
        long j11 = aVar.f27171a;
        if (j10 < j11) {
            a aVar2 = new a(j10, j11);
            int binarySearch = Arrays.binarySearch(this.f27168c.f22135f, aVar2.f27172b);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            aVar2.f27173c = binarySearch;
            this.f27169d.add(aVar2);
        }
        long j12 = floor.f27172b;
        long j13 = aVar.f27172b;
        if (j12 > j13) {
            a aVar3 = new a(j13 + 1, j12);
            aVar3.f27173c = floor.f27173c;
            this.f27169d.add(aVar3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void e(Cache cache, j jVar, j jVar2) {
    }

    public synchronized int g(long j4) {
        int i4;
        a aVar = this.f27170e;
        aVar.f27171a = j4;
        a floor = this.f27169d.floor(aVar);
        if (floor != null) {
            long j10 = floor.f27172b;
            if (j4 <= j10 && (i4 = floor.f27173c) != -1) {
                com.google.android.exoplayer2.extractor.e eVar = this.f27168c;
                if (i4 == eVar.f22133d - 1) {
                    if (j10 == eVar.f22135f[i4] + eVar.f22134e[i4]) {
                        return -2;
                    }
                }
                return (int) ((eVar.f22137h[i4] + ((eVar.f22136g[i4] * (j10 - eVar.f22135f[i4])) / eVar.f22134e[i4])) / 1000);
            }
        }
        return -1;
    }

    public void j() {
        this.f27166a.q(this.f27167b, this);
    }
}
