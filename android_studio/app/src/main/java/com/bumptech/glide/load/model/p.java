package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ModelLoaderRegistry.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final r f9080a;

    /* renamed from: b  reason: collision with root package name */
    private final a f9081b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ModelLoaderRegistry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, C0059a<?>> f9082a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ModelLoaderRegistry.java */
        /* renamed from: com.bumptech.glide.load.model.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0059a<Model> {

            /* renamed from: a  reason: collision with root package name */
            final List<n<Model, ?>> f9083a;

            public C0059a(List<n<Model, ?>> list) {
                this.f9083a = list;
            }
        }

        a() {
        }

        public void a() {
            this.f9082a.clear();
        }

        @Nullable
        public <Model> List<n<Model, ?>> b(Class<Model> cls) {
            C0059a<?> c0059a = this.f9082a.get(cls);
            if (c0059a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0059a.f9083a;
        }

        public <Model> void c(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f9082a.put(cls, new C0059a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public p(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new r(pool));
    }

    @NonNull
    private static <A> Class<A> c(@NonNull A a10) {
        return (Class<A>) a10.getClass();
    }

    @NonNull
    private synchronized <A> List<n<A, ?>> f(@NonNull Class<A> cls) {
        List<n<A, ?>> b10;
        b10 = this.f9081b.b(cls);
        if (b10 == null) {
            b10 = Collections.unmodifiableList(this.f9080a.e(cls));
            this.f9081b.c(cls, b10);
        }
        return b10;
    }

    private <Model, Data> void j(@NonNull List<o<? extends Model, ? extends Data>> list) {
        for (o<? extends Model, ? extends Data> oVar : list) {
            oVar.a();
        }
    }

    public synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f9080a.b(cls, cls2, oVar);
        this.f9081b.a();
    }

    public synchronized <Model, Data> n<Model, Data> b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.f9080a.d(cls, cls2);
    }

    @NonNull
    public synchronized List<Class<?>> d(@NonNull Class<?> cls) {
        return this.f9080a.g(cls);
    }

    @NonNull
    public <A> List<n<A, ?>> e(@NonNull A a10) {
        List<n<A, ?>> f10 = f(c(a10));
        if (!f10.isEmpty()) {
            int size = f10.size();
            List<n<A, ?>> emptyList = Collections.emptyList();
            boolean z9 = true;
            for (int i4 = 0; i4 < size; i4++) {
                n<A, ?> nVar = f10.get(i4);
                if (nVar.a(a10)) {
                    if (z9) {
                        emptyList = new ArrayList<>(size - i4);
                        z9 = false;
                    }
                    emptyList.add(nVar);
                }
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a10, f10);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a10);
    }

    public synchronized <Model, Data> void g(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f9080a.i(cls, cls2, oVar);
        this.f9081b.a();
    }

    public synchronized <Model, Data> void h(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        j(this.f9080a.j(cls, cls2));
        this.f9081b.a();
    }

    public synchronized <Model, Data> void i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        j(this.f9080a.k(cls, cls2, oVar));
        this.f9081b.a();
    }

    private p(@NonNull r rVar) {
        this.f9081b = new a();
        this.f9080a = rVar;
    }
}
