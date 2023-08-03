package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

/* compiled from: AbstractCache.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class a<K, V> implements c<K, V> {

    /* compiled from: AbstractCache.java */
    /* renamed from: com.google.common.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0208a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final k f32341a = l.a();

        /* renamed from: b  reason: collision with root package name */
        private final k f32342b = l.a();

        /* renamed from: c  reason: collision with root package name */
        private final k f32343c = l.a();

        /* renamed from: d  reason: collision with root package name */
        private final k f32344d = l.a();

        /* renamed from: e  reason: collision with root package name */
        private final k f32345e = l.a();

        /* renamed from: f  reason: collision with root package name */
        private final k f32346f = l.a();

        @Override // com.google.common.cache.a.b
        public void a(int i4) {
            this.f32341a.a(i4);
        }

        @Override // com.google.common.cache.a.b
        public void b(int i4) {
            this.f32342b.a(i4);
        }

        @Override // com.google.common.cache.a.b
        public void c() {
            this.f32346f.b();
        }

        @Override // com.google.common.cache.a.b
        public void d(long j4) {
            this.f32344d.b();
            this.f32345e.a(j4);
        }

        @Override // com.google.common.cache.a.b
        public void e(long j4) {
            this.f32343c.b();
            this.f32345e.a(j4);
        }

        @Override // com.google.common.cache.a.b
        public f f() {
            return new f(this.f32341a.c(), this.f32342b.c(), this.f32343c.c(), this.f32344d.c(), this.f32345e.c(), this.f32346f.c());
        }

        public void g(b bVar) {
            f f10 = bVar.f();
            this.f32341a.a(f10.c());
            this.f32342b.a(f10.j());
            this.f32343c.a(f10.h());
            this.f32344d.a(f10.f());
            this.f32345e.a(f10.n());
            this.f32346f.a(f10.b());
        }
    }

    /* compiled from: AbstractCache.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(int i4);

        void b(int i4);

        void c();

        void d(long j4);

        void e(long j4);

        f f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.cache.c
    public ImmutableMap<K, V> G(Iterable<?> iterable) {
        V s9;
        LinkedHashMap c02 = f3.c0();
        for (Object obj : iterable) {
            if (!c02.containsKey(obj) && (s9 = s(obj)) != null) {
                c02.put(obj, s9);
            }
        }
        return ImmutableMap.copyOf((Map) c02);
    }

    @Override // com.google.common.cache.c
    public f J() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public void K() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public ConcurrentMap<K, V> asMap() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public void c() {
    }

    @Override // com.google.common.cache.c
    public V e(K k10, Callable<? extends V> callable) throws ExecutionException {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public void put(K k10, V v9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.cache.c
    public void q(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public long size() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.c
    public void u(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            q(it.next());
        }
    }
}
