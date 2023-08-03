package com.squareup.moshi.internal;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.io.IOException;

/* compiled from: NullSafeJsonAdapter.java */
/* loaded from: classes3.dex */
public final class b<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f55610a;

    public b(h<T> hVar) {
        this.f55610a = hVar;
    }

    public h<T> a() {
        return this.f55610a;
    }

    @Override // com.squareup.moshi.h
    @r7.h
    public T fromJson(JsonReader jsonReader) throws IOException {
        if (jsonReader.I() == JsonReader.Token.NULL) {
            return (T) jsonReader.D();
        }
        return this.f55610a.fromJson(jsonReader);
    }

    @Override // com.squareup.moshi.h
    public void toJson(q qVar, @r7.h T t9) throws IOException {
        if (t9 == null) {
            qVar.D();
        } else {
            this.f55610a.toJson(qVar, (q) t9);
        }
    }

    public String toString() {
        return this.f55610a + ".nullSafe()";
    }
}
