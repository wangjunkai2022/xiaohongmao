package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.Set;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;

/* compiled from: JsonAdapter.java */
/* loaded from: classes3.dex */
public abstract class h<T> {

    /* compiled from: JsonAdapter.java */
    /* loaded from: classes3.dex */
    class a extends h<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f55600a;

        a(h hVar) {
            this.f55600a = hVar;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public T fromJson(JsonReader jsonReader) throws IOException {
            return (T) this.f55600a.fromJson(jsonReader);
        }

        @Override // com.squareup.moshi.h
        boolean isLenient() {
            return this.f55600a.isLenient();
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, @r7.h T t9) throws IOException {
            boolean r9 = qVar.r();
            qVar.M(true);
            try {
                this.f55600a.toJson(qVar, (q) t9);
            } finally {
                qVar.M(r9);
            }
        }

        public String toString() {
            return this.f55600a + ".serializeNulls()";
        }
    }

    /* compiled from: JsonAdapter.java */
    /* loaded from: classes3.dex */
    class b extends h<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f55602a;

        b(h hVar) {
            this.f55602a = hVar;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public T fromJson(JsonReader jsonReader) throws IOException {
            boolean p9 = jsonReader.p();
            jsonReader.d0(true);
            try {
                return (T) this.f55602a.fromJson(jsonReader);
            } finally {
                jsonReader.d0(p9);
            }
        }

        @Override // com.squareup.moshi.h
        boolean isLenient() {
            return true;
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, @r7.h T t9) throws IOException {
            boolean s9 = qVar.s();
            qVar.L(true);
            try {
                this.f55602a.toJson(qVar, (q) t9);
            } finally {
                qVar.L(s9);
            }
        }

        public String toString() {
            return this.f55602a + ".lenient()";
        }
    }

    /* compiled from: JsonAdapter.java */
    /* loaded from: classes3.dex */
    class c extends h<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f55604a;

        c(h hVar) {
            this.f55604a = hVar;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public T fromJson(JsonReader jsonReader) throws IOException {
            boolean i4 = jsonReader.i();
            jsonReader.b0(true);
            try {
                return (T) this.f55604a.fromJson(jsonReader);
            } finally {
                jsonReader.b0(i4);
            }
        }

        @Override // com.squareup.moshi.h
        boolean isLenient() {
            return this.f55604a.isLenient();
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, @r7.h T t9) throws IOException {
            this.f55604a.toJson(qVar, (q) t9);
        }

        public String toString() {
            return this.f55604a + ".failOnUnknown()";
        }
    }

    /* compiled from: JsonAdapter.java */
    /* loaded from: classes3.dex */
    class d extends h<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f55606a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55607b;

        d(h hVar, String str) {
            this.f55606a = hVar;
            this.f55607b = str;
        }

        @Override // com.squareup.moshi.h
        @r7.h
        public T fromJson(JsonReader jsonReader) throws IOException {
            return (T) this.f55606a.fromJson(jsonReader);
        }

        @Override // com.squareup.moshi.h
        boolean isLenient() {
            return this.f55606a.isLenient();
        }

        @Override // com.squareup.moshi.h
        public void toJson(q qVar, @r7.h T t9) throws IOException {
            String q9 = qVar.q();
            qVar.K(this.f55607b);
            try {
                this.f55606a.toJson(qVar, (q) t9);
            } finally {
                qVar.K(q9);
            }
        }

        public String toString() {
            return this.f55606a + ".indent(\"" + this.f55607b + "\")";
        }
    }

    /* compiled from: JsonAdapter.java */
    /* loaded from: classes3.dex */
    public interface e {
        @r7.h
        @r7.c
        h<?> create(Type type, Set<? extends Annotation> set, u uVar);
    }

    @r7.c
    public final h<T> failOnUnknown() {
        return new c(this);
    }

    @r7.h
    @r7.c
    public abstract T fromJson(JsonReader jsonReader) throws IOException;

    @r7.h
    @r7.c
    public final T fromJson(BufferedSource bufferedSource) throws IOException {
        return fromJson(JsonReader.H(bufferedSource));
    }

    @r7.h
    @r7.c
    public final T fromJsonValue(@r7.h Object obj) {
        try {
            return fromJson(new n(obj));
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    @r7.c
    public h<T> indent(String str) {
        Objects.requireNonNull(str, "indent == null");
        return new d(this, str);
    }

    boolean isLenient() {
        return false;
    }

    @r7.c
    public final h<T> lenient() {
        return new b(this);
    }

    @r7.c
    public final h<T> nonNull() {
        return this instanceof com.squareup.moshi.internal.a ? this : new com.squareup.moshi.internal.a(this);
    }

    @r7.c
    public final h<T> nullSafe() {
        return this instanceof com.squareup.moshi.internal.b ? this : new com.squareup.moshi.internal.b(this);
    }

    @r7.c
    public final h<T> serializeNulls() {
        return new a(this);
    }

    public abstract void toJson(q qVar, @r7.h T t9) throws IOException;

    public final void toJson(BufferedSink bufferedSink, @r7.h T t9) throws IOException {
        toJson(q.E(bufferedSink), (q) t9);
    }

    @r7.h
    @r7.c
    public final Object toJsonValue(@r7.h T t9) {
        p pVar = new p();
        try {
            toJson((q) pVar, (p) t9);
            return pVar.s0();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    @r7.h
    @r7.c
    public final T fromJson(String str) throws IOException {
        JsonReader H = JsonReader.H(new Buffer().writeUtf8(str));
        T fromJson = fromJson(H);
        if (isLenient() || H.I() == JsonReader.Token.END_DOCUMENT) {
            return fromJson;
        }
        throw new JsonDataException("JSON document was not fully consumed.");
    }

    @r7.c
    public final String toJson(@r7.h T t9) {
        Buffer buffer = new Buffer();
        try {
            toJson((BufferedSink) buffer, (Buffer) t9);
            return buffer.readUtf8();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
