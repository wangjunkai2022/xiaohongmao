package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.cache.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: CountingMemoryCacheInspector.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class k<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final j<K, V> f12117a;

    /* compiled from: CountingMemoryCacheInspector.java */
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final int f12118a;

        /* renamed from: b  reason: collision with root package name */
        public final int f12119b;

        /* renamed from: c  reason: collision with root package name */
        public final int f12120c;

        /* renamed from: d  reason: collision with root package name */
        public final int f12121d;

        /* renamed from: e  reason: collision with root package name */
        public final int f12122e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b<K, V>> f12123f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        public final List<b<K, V>> f12124g = new ArrayList();

        /* renamed from: h  reason: collision with root package name */
        public final Map<Bitmap, Object> f12125h = new HashMap();

        public a(int size, int lruSize, v params) {
            this.f12118a = params.f12157a;
            this.f12119b = params.f12158b;
            this.f12120c = params.f12161e;
            this.f12121d = size;
            this.f12122e = lruSize;
        }

        public void a() {
            for (b<K, V> bVar : this.f12123f) {
                bVar.a();
            }
            for (b<K, V> bVar2 : this.f12124g) {
                bVar2.a();
            }
        }
    }

    /* compiled from: CountingMemoryCacheInspector.java */
    /* loaded from: classes.dex */
    public static class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f12126a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        public final com.facebook.common.references.a<V> f12127b;

        public b(final K key, final com.facebook.common.references.a<V> valueRef) {
            this.f12126a = (K) com.facebook.common.internal.j.i(key);
            this.f12127b = com.facebook.common.references.a.h(valueRef);
        }

        public void a() {
            com.facebook.common.references.a.k(this.f12127b);
        }
    }

    public k(j<K, V> countingBitmapCache) {
        this.f12117a = countingBitmapCache;
    }

    public a a() {
        a aVar;
        synchronized (this.f12117a) {
            aVar = new a(this.f12117a.b(), this.f12117a.f(), this.f12117a.h());
            for (Map.Entry<K, j.a<K, V>> entry : this.f12117a.e().g(null)) {
                j.a<K, V> value = entry.getValue();
                b<K, V> bVar = new b<>(value.f12110a, value.f12111b);
                if (value.f12112c > 0) {
                    aVar.f12124g.add(bVar);
                } else {
                    aVar.f12123f.add(bVar);
                }
            }
            for (Map.Entry<Bitmap, Object> entry2 : this.f12117a.g().entrySet()) {
                if (entry2 != null && !entry2.getKey().isRecycled()) {
                    aVar.f12125h.put(entry2.getKey(), entry2.getValue());
                }
            }
        }
        return aVar;
    }
}
