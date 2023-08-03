package com.squareup.moshi;

import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: CollectionJsonAdapter.java */
/* loaded from: classes3.dex */
abstract class e<C extends Collection<T>, T> extends h<C> {

    /* renamed from: b  reason: collision with root package name */
    public static final h.e f55597b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f55598a;

    /* compiled from: CollectionJsonAdapter.java */
    /* loaded from: classes3.dex */
    class a implements h.e {
        a() {
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            Class<?> j4 = z.j(type);
            if (set.isEmpty()) {
                if (j4 != List.class && j4 != Collection.class) {
                    if (j4 == Set.class) {
                        return e.d(type, uVar).nullSafe();
                    }
                    return null;
                }
                return e.b(type, uVar).nullSafe();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CollectionJsonAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends e<Collection<T>, T> {
        b(h hVar) {
            super(hVar, null);
        }

        @Override // com.squareup.moshi.e
        Collection<T> c() {
            return new ArrayList();
        }

        @Override // com.squareup.moshi.e, com.squareup.moshi.h
        public /* bridge */ /* synthetic */ Object fromJson(JsonReader jsonReader) throws IOException {
            return super.fromJson(jsonReader);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.squareup.moshi.e, com.squareup.moshi.h
        public /* bridge */ /* synthetic */ void toJson(q qVar, Object obj) throws IOException {
            super.toJson(qVar, (Collection) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CollectionJsonAdapter.java */
    /* loaded from: classes3.dex */
    public class c extends e<Set<T>, T> {
        c(h hVar) {
            super(hVar, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.squareup.moshi.e
        /* renamed from: f */
        public Set<T> c() {
            return new LinkedHashSet();
        }

        @Override // com.squareup.moshi.e, com.squareup.moshi.h
        public /* bridge */ /* synthetic */ Object fromJson(JsonReader jsonReader) throws IOException {
            return super.fromJson(jsonReader);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.squareup.moshi.e, com.squareup.moshi.h
        public /* bridge */ /* synthetic */ void toJson(q qVar, Object obj) throws IOException {
            super.toJson(qVar, (Collection) obj);
        }
    }

    /* synthetic */ e(h hVar, a aVar) {
        this(hVar);
    }

    static <T> h<Collection<T>> b(Type type, u uVar) {
        return new b(uVar.d(z.c(type, Collection.class)));
    }

    static <T> h<Set<T>> d(Type type, u uVar) {
        return new c(uVar.d(z.c(type, Collection.class)));
    }

    @Override // com.squareup.moshi.h
    /* renamed from: a */
    public C fromJson(JsonReader jsonReader) throws IOException {
        C c10 = c();
        jsonReader.a();
        while (jsonReader.k()) {
            c10.add(this.f55598a.fromJson(jsonReader));
        }
        jsonReader.d();
        return c10;
    }

    abstract C c();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.moshi.h
    /* renamed from: e */
    public void toJson(q qVar, C c10) throws IOException {
        qVar.a();
        for (Object obj : c10) {
            this.f55598a.toJson(qVar, (q) obj);
        }
        qVar.i();
    }

    public String toString() {
        return this.f55598a + ".collection()";
    }

    private e(h<T> hVar) {
        this.f55598a = hVar;
    }
}
