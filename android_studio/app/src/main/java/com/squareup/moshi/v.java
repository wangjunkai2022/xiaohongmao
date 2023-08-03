package com.squareup.moshi;

import com.squareup.moshi.h;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;

/* compiled from: RecordJsonAdapter.java */
/* loaded from: classes3.dex */
final class v<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    static final h.e f55743a = new a();

    /* compiled from: RecordJsonAdapter.java */
    /* loaded from: classes3.dex */
    class a implements h.e {
        a() {
        }

        @Override // com.squareup.moshi.h.e
        @r7.h
        public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
            return null;
        }
    }

    v() {
    }

    @Override // com.squareup.moshi.h
    @r7.h
    public T fromJson(JsonReader jsonReader) throws IOException {
        throw new AssertionError();
    }

    @Override // com.squareup.moshi.h
    public void toJson(q qVar, @r7.h T t9) throws IOException {
        throw new AssertionError();
    }
}
