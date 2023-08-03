package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiModelLoader.java */
/* loaded from: classes.dex */
public class q<Model, Data> implements n<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n<Model, Data>> f9084a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f9085b;

    /* compiled from: MultiModelLoader.java */
    /* loaded from: classes.dex */
    static class a<Data> implements com.bumptech.glide.load.data.d<Data>, d.a<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final List<com.bumptech.glide.load.data.d<Data>> f9086a;

        /* renamed from: b  reason: collision with root package name */
        private final Pools.Pool<List<Throwable>> f9087b;

        /* renamed from: c  reason: collision with root package name */
        private int f9088c;

        /* renamed from: d  reason: collision with root package name */
        private Priority f9089d;

        /* renamed from: e  reason: collision with root package name */
        private d.a<? super Data> f9090e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private List<Throwable> f9091f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f9092g;

        a(@NonNull List<com.bumptech.glide.load.data.d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f9087b = pool;
            com.bumptech.glide.util.m.c(list);
            this.f9086a = list;
            this.f9088c = 0;
        }

        private void f() {
            if (this.f9092g) {
                return;
            }
            if (this.f9088c < this.f9086a.size() - 1) {
                this.f9088c++;
                d(this.f9089d, this.f9090e);
                return;
            }
            com.bumptech.glide.util.m.d(this.f9091f);
            this.f9090e.c(new GlideException("Fetch failed", new ArrayList(this.f9091f)));
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.f9086a.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            List<Throwable> list = this.f9091f;
            if (list != null) {
                this.f9087b.release(list);
            }
            this.f9091f = null;
            for (com.bumptech.glide.load.data.d<Data> dVar : this.f9086a) {
                dVar.b();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(@NonNull Exception exc) {
            ((List) com.bumptech.glide.util.m.d(this.f9091f)).add(exc);
            f();
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f9092g = true;
            for (com.bumptech.glide.load.data.d<Data> dVar : this.f9086a) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super Data> aVar) {
            this.f9089d = priority;
            this.f9090e = aVar;
            this.f9091f = this.f9087b.acquire();
            this.f9086a.get(this.f9088c).d(priority, this);
            if (this.f9092g) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void e(@Nullable Data data) {
            if (data != null) {
                this.f9090e.e(data);
            } else {
                f();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return this.f9086a.get(0).getDataSource();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f9084a = list;
        this.f9085b = pool;
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean a(@NonNull Model model) {
        for (n<Model, Data> nVar : this.f9084a) {
            if (nVar.a(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Data> b(@NonNull Model model, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        n.a<Data> b10;
        int size = this.f9084a.size();
        ArrayList arrayList = new ArrayList(size);
        com.bumptech.glide.load.c cVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            n<Model, Data> nVar = this.f9084a.get(i11);
            if (nVar.a(model) && (b10 = nVar.b(model, i4, i10, fVar)) != null) {
                cVar = b10.f9077a;
                arrayList.add(b10.f9079c);
            }
        }
        if (arrayList.isEmpty() || cVar == null) {
            return null;
        }
        return new n.a<>(cVar, new a(arrayList, this.f9085b));
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f9084a.toArray()) + '}';
    }
}
