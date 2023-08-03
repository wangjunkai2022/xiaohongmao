package com.squareup.moshi;

import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Set;

/* compiled from: MapJsonAdapter.java */
/* loaded from: classes3.dex */
final class t<K, V> extends h<Map<K, V>> {

    /* renamed from: c  reason: collision with root package name */
    public static final h.e f55720c = new a();

    /* renamed from: a  reason: collision with root package name */
    private final h<K> f55721a;

    /* renamed from: b  reason: collision with root package name */
    private final h<V> f55722b;

    /* compiled from: MapJsonAdapter.java */
    /* loaded from: classes3.dex */
    class a implements h.e {
        a() {
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            Class<?> j4;
            if (set.isEmpty() && (j4 = z.j(type)) == Map.class) {
                Type[] l10 = z.l(type, j4);
                return new t(uVar, l10[0], l10[1]).nullSafe();
            }
            return null;
        }
    }

    t(u uVar, Type type, Type type2) {
        this.f55721a = uVar.d(type);
        this.f55722b = uVar.d(type2);
    }

    @Override // com.squareup.moshi.h
    /* renamed from: a */
    public Map<K, V> fromJson(JsonReader jsonReader) throws IOException {
        s sVar = new s();
        jsonReader.b();
        while (jsonReader.k()) {
            jsonReader.K();
            K fromJson = this.f55721a.fromJson(jsonReader);
            V fromJson2 = this.f55722b.fromJson(jsonReader);
            Object put = sVar.put(fromJson, fromJson2);
            if (put != null) {
                throw new JsonDataException("Map key '" + fromJson + "' has multiple values at path " + jsonReader.getPath() + ": " + put + " and " + fromJson2);
            }
        }
        jsonReader.h();
        return sVar;
    }

    @Override // com.squareup.moshi.h
    /* renamed from: b */
    public void toJson(q qVar, Map<K, V> map) throws IOException {
        qVar.d();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                qVar.H();
                this.f55721a.toJson(qVar, (q) entry.getKey());
                this.f55722b.toJson(qVar, (q) entry.getValue());
            } else {
                throw new JsonDataException("Map key is null at " + qVar.getPath());
            }
        }
        qVar.p();
    }

    public String toString() {
        return "JsonAdapter(" + this.f55721a + "=" + this.f55722b + ")";
    }
}
