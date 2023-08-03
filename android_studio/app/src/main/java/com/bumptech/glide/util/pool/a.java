package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FactoryPools.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9735a = "FactoryPools";

    /* renamed from: b  reason: collision with root package name */
    private static final int f9736b = 20;

    /* renamed from: c  reason: collision with root package name */
    private static final g<Object> f9737c = new C0067a();

    /* compiled from: FactoryPools.java */
    /* renamed from: com.bumptech.glide.util.pool.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0067a implements g<Object> {
        C0067a() {
        }

        @Override // com.bumptech.glide.util.pool.a.g
        public void a(@NonNull Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public class b implements d<List<T>> {
        b() {
        }

        @Override // com.bumptech.glide.util.pool.a.d
        @NonNull
        /* renamed from: b */
        public List<T> a() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public class c implements g<List<T>> {
        c() {
        }

        @Override // com.bumptech.glide.util.pool.a.g
        /* renamed from: b */
        public void a(@NonNull List<T> list) {
            list.clear();
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public static final class e<T> implements Pools.Pool<T> {

        /* renamed from: a  reason: collision with root package name */
        private final d<T> f9738a;

        /* renamed from: b  reason: collision with root package name */
        private final g<T> f9739b;

        /* renamed from: c  reason: collision with root package name */
        private final Pools.Pool<T> f9740c;

        e(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
            this.f9740c = pool;
            this.f9738a = dVar;
            this.f9739b = gVar;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f9740c.acquire();
            if (acquire == null) {
                acquire = this.f9738a.a();
                if (Log.isLoggable(a.f9735a, 2)) {
                    Log.v(a.f9735a, "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof f) {
                ((f) acquire).d().b(false);
            }
            return acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t9) {
            if (t9 instanceof f) {
                ((f) t9).d().b(true);
            }
            this.f9739b.a(t9);
            return this.f9740c.release(t9);
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface f {
        @NonNull
        com.bumptech.glide.util.pool.c d();
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface g<T> {
        void a(@NonNull T t9);
    }

    private a() {
    }

    @NonNull
    private static <T extends f> Pools.Pool<T> a(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar) {
        return b(pool, dVar, c());
    }

    @NonNull
    private static <T> Pools.Pool<T> b(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
        return new e(pool, dVar, gVar);
    }

    @NonNull
    private static <T> g<T> c() {
        return (g<T>) f9737c;
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> d(int i4, @NonNull d<T> dVar) {
        return a(new Pools.SimplePool(i4), dVar);
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> e(int i4, @NonNull d<T> dVar) {
        return a(new Pools.SynchronizedPool(i4), dVar);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> f() {
        return g(20);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> g(int i4) {
        return b(new Pools.SynchronizedPool(i4), new b(), new c());
    }
}
