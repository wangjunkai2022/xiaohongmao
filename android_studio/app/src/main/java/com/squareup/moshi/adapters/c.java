package com.squareup.moshi.adapters;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import com.squareup.moshi.u;
import com.squareup.moshi.z;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* compiled from: PolymorphicJsonAdapterFactory.java */
/* loaded from: classes3.dex */
public final class c<T> implements h.e {

    /* renamed from: a  reason: collision with root package name */
    final Class<T> f55563a;

    /* renamed from: b  reason: collision with root package name */
    final String f55564b;

    /* renamed from: c  reason: collision with root package name */
    final List<String> f55565c;

    /* renamed from: d  reason: collision with root package name */
    final List<Type> f55566d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    final h<Object> f55567e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PolymorphicJsonAdapterFactory.java */
    /* loaded from: classes3.dex */
    public class a extends h<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f55568a;

        a(Object obj) {
            this.f55568a = obj;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public Object fromJson(JsonReader jsonReader) throws IOException {
            jsonReader.l0();
            return this.f55568a;
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, Object obj) throws IOException {
            throw new IllegalArgumentException("Expected one of " + c.this.f55566d + " but found " + obj + ", a " + obj.getClass() + ". Register this subtype.");
        }
    }

    /* compiled from: PolymorphicJsonAdapterFactory.java */
    /* loaded from: classes3.dex */
    static final class b extends h<Object> {

        /* renamed from: a  reason: collision with root package name */
        final String f55570a;

        /* renamed from: b  reason: collision with root package name */
        final List<String> f55571b;

        /* renamed from: c  reason: collision with root package name */
        final List<Type> f55572c;

        /* renamed from: d  reason: collision with root package name */
        final List<h<Object>> f55573d;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        final h<Object> f55574e;

        /* renamed from: f  reason: collision with root package name */
        final JsonReader.b f55575f;

        /* renamed from: g  reason: collision with root package name */
        final JsonReader.b f55576g;

        b(String str, List<String> list, List<Type> list2, List<h<Object>> list3, @r7.h h<Object> hVar) {
            this.f55570a = str;
            this.f55571b = list;
            this.f55572c = list2;
            this.f55573d = list3;
            this.f55574e = hVar;
            this.f55575f = JsonReader.b.a(str);
            this.f55576g = JsonReader.b.a((String[]) list.toArray(new String[0]));
        }

        private int a(JsonReader jsonReader) throws IOException {
            jsonReader.b();
            while (jsonReader.k()) {
                if (jsonReader.W(this.f55575f) == -1) {
                    jsonReader.h0();
                    jsonReader.l0();
                } else {
                    int X = jsonReader.X(this.f55576g);
                    if (X == -1 && this.f55574e == null) {
                        throw new JsonDataException("Expected one of " + this.f55571b + " for key '" + this.f55570a + "' but found '" + jsonReader.G() + "'. Register a subtype for this label.");
                    }
                    return X;
                }
            }
            throw new JsonDataException("Missing label for " + this.f55570a);
        }

        @Override // com.squareup.moshi.h
        public Object fromJson(JsonReader jsonReader) throws IOException {
            JsonReader J = jsonReader.J();
            J.b0(false);
            try {
                int a10 = a(J);
                J.close();
                if (a10 == -1) {
                    return this.f55574e.fromJson(jsonReader);
                }
                return this.f55573d.get(a10).fromJson(jsonReader);
            } catch (Throwable th) {
                J.close();
                throw th;
            }
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, Object obj) throws IOException {
            h<Object> hVar;
            int indexOf = this.f55572c.indexOf(obj.getClass());
            if (indexOf == -1) {
                hVar = this.f55574e;
                if (hVar == null) {
                    throw new IllegalArgumentException("Expected one of " + this.f55572c + " but found " + obj + ", a " + obj.getClass() + ". Register this subtype.");
                }
            } else {
                hVar = this.f55573d.get(indexOf);
            }
            qVar.d();
            if (hVar != this.f55574e) {
                qVar.A(this.f55570a).l0(this.f55571b.get(indexOf));
            }
            int b10 = qVar.b();
            hVar.toJson(qVar, (q) obj);
            qVar.k(b10);
            qVar.p();
        }

        public String toString() {
            return "PolymorphicJsonAdapter(" + this.f55570a + ")";
        }
    }

    c(Class<T> cls, String str, List<String> list, List<Type> list2, @r7.h h<Object> hVar) {
        this.f55563a = cls;
        this.f55564b = str;
        this.f55565c = list;
        this.f55566d = list2;
        this.f55567e = hVar;
    }

    private h<Object> a(T t9) {
        return new a(t9);
    }

    @r7.c
    public static <T> c<T> b(Class<T> cls, String str) {
        Objects.requireNonNull(cls, "baseType == null");
        Objects.requireNonNull(str, "labelKey == null");
        return new c<>(cls, str, Collections.emptyList(), Collections.emptyList(), null);
    }

    public c<T> c(@r7.h T t9) {
        return d(a(t9));
    }

    @Override // com.squareup.moshi.h.e
    public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
        if (z.j(type) == this.f55563a && set.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.f55566d.size());
            int size = this.f55566d.size();
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.add(uVar.d(this.f55566d.get(i4)));
            }
            return new b(this.f55564b, this.f55565c, this.f55566d, arrayList, this.f55567e).nullSafe();
        }
        return null;
    }

    public c<T> d(@r7.h h<Object> hVar) {
        return new c<>(this.f55563a, this.f55564b, this.f55565c, this.f55566d, hVar);
    }

    public c<T> e(Class<? extends T> cls, String str) {
        Objects.requireNonNull(cls, "subtype == null");
        Objects.requireNonNull(str, "label == null");
        if (!this.f55565c.contains(str)) {
            ArrayList arrayList = new ArrayList(this.f55565c);
            arrayList.add(str);
            ArrayList arrayList2 = new ArrayList(this.f55566d);
            arrayList2.add(cls);
            return new c<>(this.f55563a, this.f55564b, arrayList, arrayList2, this.f55567e);
        }
        throw new IllegalArgumentException("Labels must be unique.");
    }
}
