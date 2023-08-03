package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: CountingMemoryCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface j<K, V> extends u<K, V>, com.facebook.common.memory.b {

    /* compiled from: CountingMemoryCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f12110a;

        /* renamed from: b  reason: collision with root package name */
        public final com.facebook.common.references.a<V> f12111b;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        public final b<K> f12114e;

        /* renamed from: g  reason: collision with root package name */
        public int f12116g;

        /* renamed from: c  reason: collision with root package name */
        public int f12112c = 0;

        /* renamed from: d  reason: collision with root package name */
        public boolean f12113d = false;

        /* renamed from: f  reason: collision with root package name */
        public int f12115f = 0;

        private a(K key, com.facebook.common.references.a<V> valueRef, @r7.h b<K> observer, int size) {
            this.f12110a = (K) com.facebook.common.internal.j.i(key);
            this.f12111b = (com.facebook.common.references.a) com.facebook.common.internal.j.i(com.facebook.common.references.a.h(valueRef));
            this.f12114e = observer;
            this.f12116g = size;
        }

        @VisibleForTesting
        public static <K, V> a<K, V> a(final K key, final com.facebook.common.references.a<V> valueRef, final int size, @r7.h final b<K> observer) {
            return new a<>(key, valueRef, observer, size);
        }

        @VisibleForTesting
        public static <K, V> a<K, V> b(final K key, final com.facebook.common.references.a<V> valueRef, @r7.h final b<K> observer) {
            return a(key, valueRef, -1, observer);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes.dex */
    public interface b<K> {
        void a(K key, boolean isExclusive);
    }

    void clear();

    i<K, a<K, V>> e();

    int f();

    Map<Bitmap, Object> g();

    v h();

    @r7.h
    com.facebook.common.references.a<V> j(K key, com.facebook.common.references.a<V> valueRef, b<K> observer);

    @r7.h
    com.facebook.common.references.a<V> n(K key);

    int o();

    void p();

    int q();
}
