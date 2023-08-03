package com.squareup.moshi.internal;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.io.IOException;

/* compiled from: NonNullJsonAdapter.java */
/* loaded from: classes3.dex */
public final class a<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f55609a;

    public a(h<T> hVar) {
        this.f55609a = hVar;
    }

    public h<T> a() {
        return this.f55609a;
    }

    @Override // com.squareup.moshi.h
    @r7.h
    public T fromJson(JsonReader jsonReader) throws IOException {
        if (jsonReader.I() != JsonReader.Token.NULL) {
            return this.f55609a.fromJson(jsonReader);
        }
        throw new JsonDataException("Unexpected null at " + jsonReader.getPath());
    }

    @Override // com.squareup.moshi.h
    public void toJson(q qVar, @r7.h T t9) throws IOException {
        if (t9 != null) {
            this.f55609a.toJson(qVar, (q) t9);
            return;
        }
        throw new JsonDataException("Unexpected null at " + qVar.getPath());
    }

    public String toString() {
        return this.f55609a + ".nonNull()";
    }
}
