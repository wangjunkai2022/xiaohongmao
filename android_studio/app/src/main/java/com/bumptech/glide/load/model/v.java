package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;

/* compiled from: UnitModelLoader.java */
/* loaded from: classes.dex */
public class v<Model> implements n<Model, Model> {

    /* renamed from: a  reason: collision with root package name */
    private static final v<?> f9139a = new v<>();

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Model> implements o<Model, Model> {

        /* renamed from: a  reason: collision with root package name */
        private static final a<?> f9140a = new a<>();

        public static <T> a<T> b() {
            return (a<T>) f9140a;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Model, Model> c(r rVar) {
            return v.c();
        }
    }

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    private static class b<Model> implements com.bumptech.glide.load.data.d<Model> {

        /* renamed from: a  reason: collision with root package name */
        private final Model f9141a;

        b(Model model) {
            this.f9141a = model;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Model> a() {
            return (Class<Model>) this.f9141a.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super Model> aVar) {
            aVar.e((Model) this.f9141a);
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public static <T> v<T> c() {
        return (v<T>) f9139a;
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean a(@NonNull Model model) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Model> b(@NonNull Model model, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(model), new b(model));
    }
}
