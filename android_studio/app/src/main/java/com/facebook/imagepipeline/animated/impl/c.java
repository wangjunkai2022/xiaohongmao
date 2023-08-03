package com.facebook.imagepipeline.animated.impl;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.cache.j;
import java.util.Iterator;
import java.util.LinkedHashSet;
import r7.h;

/* compiled from: AnimatedFrameCache.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.cache.common.c f11867a;

    /* renamed from: b  reason: collision with root package name */
    private final j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11868b;
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<com.facebook.cache.common.c> f11870d = new LinkedHashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final j.b<com.facebook.cache.common.c> f11869c = new a();

    /* compiled from: AnimatedFrameCache.java */
    /* loaded from: classes.dex */
    class a implements j.b<com.facebook.cache.common.c> {
        a() {
        }

        @Override // com.facebook.imagepipeline.cache.j.b
        /* renamed from: b */
        public void a(com.facebook.cache.common.c key, boolean isExclusive) {
            c.this.f(key, isExclusive);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedFrameCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b implements com.facebook.cache.common.c {

        /* renamed from: a  reason: collision with root package name */
        private final com.facebook.cache.common.c f11872a;

        /* renamed from: b  reason: collision with root package name */
        private final int f11873b;

        public b(com.facebook.cache.common.c imageCacheKey, int frameIndex) {
            this.f11872a = imageCacheKey;
            this.f11873b = frameIndex;
        }

        @Override // com.facebook.cache.common.c
        @h
        public String a() {
            return null;
        }

        @Override // com.facebook.cache.common.c
        public boolean b(Uri uri) {
            return this.f11872a.b(uri);
        }

        @Override // com.facebook.cache.common.c
        public boolean c() {
            return false;
        }

        @Override // com.facebook.cache.common.c
        public boolean equals(@h Object o9) {
            if (o9 == this) {
                return true;
            }
            if (o9 instanceof b) {
                b bVar = (b) o9;
                return this.f11873b == bVar.f11873b && this.f11872a.equals(bVar.f11872a);
            }
            return false;
        }

        @Override // com.facebook.cache.common.c
        public int hashCode() {
            return (this.f11872a.hashCode() * 1013) + this.f11873b;
        }

        @Override // com.facebook.cache.common.c
        public String toString() {
            return i.e(this).f("imageCacheKey", this.f11872a).d("frameIndex", this.f11873b).toString();
        }
    }

    public c(com.facebook.cache.common.c imageCacheKey, final j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache) {
        this.f11867a = imageCacheKey;
        this.f11868b = backingCache;
    }

    private b e(int frameIndex) {
        return new b(this.f11867a, frameIndex);
    }

    @h
    private synchronized com.facebook.cache.common.c g() {
        com.facebook.cache.common.c cVar;
        cVar = null;
        Iterator<com.facebook.cache.common.c> it = this.f11870d.iterator();
        if (it.hasNext()) {
            cVar = it.next();
            it.remove();
        }
        return cVar;
    }

    @h
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a(int frameIndex, com.facebook.common.references.a<com.facebook.imagepipeline.image.c> imageRef) {
        return this.f11868b.j(e(frameIndex), imageRef, this.f11869c);
    }

    public boolean b(int frameIndex) {
        return this.f11868b.contains(e(frameIndex));
    }

    @h
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c(int frameIndex) {
        return this.f11868b.get(e(frameIndex));
    }

    @h
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> d() {
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> n9;
        do {
            com.facebook.cache.common.c g4 = g();
            if (g4 == null) {
                return null;
            }
            n9 = this.f11868b.n(g4);
        } while (n9 == null);
        return n9;
    }

    public synchronized void f(com.facebook.cache.common.c key, boolean isReusable) {
        if (isReusable) {
            this.f11870d.add(key);
        } else {
            this.f11870d.remove(key);
        }
    }
}
