package com.squareup.moshi;

import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;

/* compiled from: ArrayJsonAdapter.java */
/* loaded from: classes3.dex */
final class b extends h<Object> {

    /* renamed from: c  reason: collision with root package name */
    public static final h.e f55577c = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f55578a;

    /* renamed from: b  reason: collision with root package name */
    private final h<Object> f55579b;

    /* compiled from: ArrayJsonAdapter.java */
    /* loaded from: classes3.dex */
    class a implements h.e {
        a() {
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            Type a10 = z.a(type);
            if (a10 != null && set.isEmpty()) {
                return new b(z.j(a10), uVar.d(a10)).nullSafe();
            }
            return null;
        }
    }

    b(Class<?> cls, h<Object> hVar) {
        this.f55578a = cls;
        this.f55579b = hVar;
    }

    @Override // com.squareup.moshi.h
    public Object fromJson(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.a();
        while (jsonReader.k()) {
            arrayList.add(this.f55579b.fromJson(jsonReader));
        }
        jsonReader.d();
        Object newInstance = Array.newInstance(this.f55578a, arrayList.size());
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Array.set(newInstance, i4, arrayList.get(i4));
        }
        return newInstance;
    }

    @Override // com.squareup.moshi.h
    public void toJson(q qVar, Object obj) throws IOException {
        qVar.a();
        int length = Array.getLength(obj);
        for (int i4 = 0; i4 < length; i4++) {
            this.f55579b.toJson(qVar, (q) Array.get(obj, i4));
        }
        qVar.i();
    }

    public String toString() {
        return this.f55579b + ".array()";
    }
}
