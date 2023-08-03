package com.squareup.moshi;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonValueWriter.java */
/* loaded from: classes3.dex */
public final class p extends q {

    /* renamed from: k  reason: collision with root package name */
    Object[] f55673k = new Object[32];
    @r7.h

    /* renamed from: l  reason: collision with root package name */
    private String f55674l;

    /* compiled from: JsonValueWriter.java */
    /* loaded from: classes3.dex */
    class a extends ForwardingSink {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Buffer f55675a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Sink sink, Buffer buffer) {
            super(sink);
            this.f55675a = buffer;
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (p.this.G() == 9) {
                p pVar = p.this;
                Object[] objArr = pVar.f55673k;
                int i4 = pVar.f55677a;
                if (objArr[i4] == null) {
                    pVar.f55677a = i4 - 1;
                    Object M = JsonReader.H(this.f55675a).M();
                    p pVar2 = p.this;
                    boolean z9 = pVar2.f55683g;
                    pVar2.f55683g = true;
                    try {
                        pVar2.r0(M);
                        p pVar3 = p.this;
                        pVar3.f55683g = z9;
                        int[] iArr = pVar3.f55680d;
                        int i10 = pVar3.f55677a - 1;
                        iArr[i10] = iArr[i10] + 1;
                        return;
                    } catch (Throwable th) {
                        p.this.f55683g = z9;
                        throw th;
                    }
                }
            }
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p() {
        I(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public p r0(@r7.h Object obj) {
        String str;
        Object put;
        int G = G();
        int i4 = this.f55677a;
        if (i4 == 1) {
            if (G == 6) {
                this.f55678b[i4 - 1] = 7;
                this.f55673k[i4 - 1] = obj;
            } else {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
        } else if (G != 3 || (str = this.f55674l) == null) {
            if (G != 1) {
                if (G == 9) {
                    throw new IllegalStateException("Sink from valueSink() was not closed");
                }
                throw new IllegalStateException("Nesting problem.");
            }
            ((List) this.f55673k[i4 - 1]).add(obj);
        } else if ((obj == null && !this.f55683g) || (put = ((Map) this.f55673k[i4 - 1]).put(str, obj)) == null) {
            this.f55674l = null;
        } else {
            throw new IllegalArgumentException("Map key '" + this.f55674l + "' has multiple values at path " + getPath() + ": " + put + " and " + obj);
        }
        return this;
    }

    @Override // com.squareup.moshi.q
    public q A(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f55677a != 0) {
            if (G() == 3 && this.f55674l == null && !this.f55684h) {
                this.f55674l = str;
                this.f55679c[this.f55677a - 1] = str;
                return this;
            }
            throw new IllegalStateException("Nesting problem.");
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    @Override // com.squareup.moshi.q
    public q D() throws IOException {
        if (!this.f55684h) {
            r0(null);
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q a() throws IOException {
        if (!this.f55684h) {
            int i4 = this.f55677a;
            int i10 = this.f55685i;
            if (i4 == i10 && this.f55678b[i4 - 1] == 1) {
                this.f55685i = ~i10;
                return this;
            }
            h();
            ArrayList arrayList = new ArrayList();
            r0(arrayList);
            Object[] objArr = this.f55673k;
            int i11 = this.f55677a;
            objArr[i11] = arrayList;
            this.f55680d[i11] = 0;
            I(1);
            return this;
        }
        throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q b0(double d4) throws IOException {
        if (!this.f55682f && (Double.isNaN(d4) || d4 == Double.NEGATIVE_INFINITY || d4 == Double.POSITIVE_INFINITY)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d4);
        } else if (this.f55684h) {
            this.f55684h = false;
            return A(Double.toString(d4));
        } else {
            r0(Double.valueOf(d4));
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i4 = this.f55677a;
        if (i4 <= 1 && (i4 != 1 || this.f55678b[i4 - 1] == 7)) {
            this.f55677a = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.squareup.moshi.q
    public q d() throws IOException {
        if (!this.f55684h) {
            int i4 = this.f55677a;
            int i10 = this.f55685i;
            if (i4 == i10 && this.f55678b[i4 - 1] == 3) {
                this.f55685i = ~i10;
                return this;
            }
            h();
            s sVar = new s();
            r0(sVar);
            this.f55673k[this.f55677a] = sVar;
            I(3);
            return this;
        }
        throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q d0(long j4) throws IOException {
        if (this.f55684h) {
            this.f55684h = false;
            return A(Long.toString(j4));
        }
        r0(Long.valueOf(j4));
        int[] iArr = this.f55680d;
        int i4 = this.f55677a - 1;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f55677a == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    @Override // com.squareup.moshi.q
    public q g0(@r7.h Boolean bool) throws IOException {
        if (!this.f55684h) {
            r0(bool);
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q h0(@r7.h Number number) throws IOException {
        if (!(number instanceof Byte) && !(number instanceof Short) && !(number instanceof Integer) && !(number instanceof Long)) {
            if ((number instanceof Float) || (number instanceof Double)) {
                return b0(number.doubleValue());
            }
            if (number == null) {
                return D();
            }
            BigDecimal bigDecimal = number instanceof BigDecimal ? (BigDecimal) number : new BigDecimal(number.toString());
            if (this.f55684h) {
                this.f55684h = false;
                return A(bigDecimal.toString());
            }
            r0(bigDecimal);
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        return d0(number.longValue());
    }

    @Override // com.squareup.moshi.q
    public q i() throws IOException {
        if (G() == 1) {
            int i4 = this.f55677a;
            int i10 = this.f55685i;
            if (i4 == (~i10)) {
                this.f55685i = ~i10;
                return this;
            }
            int i11 = i4 - 1;
            this.f55677a = i11;
            this.f55673k[i11] = null;
            int[] iArr = this.f55680d;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    @Override // com.squareup.moshi.q
    public q l0(@r7.h String str) throws IOException {
        if (this.f55684h) {
            this.f55684h = false;
            return A(str);
        }
        r0(str);
        int[] iArr = this.f55680d;
        int i4 = this.f55677a - 1;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }

    @Override // com.squareup.moshi.q
    public q o0(boolean z9) throws IOException {
        if (!this.f55684h) {
            r0(Boolean.valueOf(z9));
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q p() throws IOException {
        if (G() == 3) {
            if (this.f55674l == null) {
                int i4 = this.f55677a;
                int i10 = this.f55685i;
                if (i4 == (~i10)) {
                    this.f55685i = ~i10;
                    return this;
                }
                this.f55684h = false;
                int i11 = i4 - 1;
                this.f55677a = i11;
                this.f55673k[i11] = null;
                this.f55679c[i11] = null;
                int[] iArr = this.f55680d;
                int i12 = i11 - 1;
                iArr[i12] = iArr[i12] + 1;
                return this;
            }
            throw new IllegalStateException("Dangling name: " + this.f55674l);
        }
        throw new IllegalStateException("Nesting problem.");
    }

    @Override // com.squareup.moshi.q
    public BufferedSink p0() {
        if (!this.f55684h) {
            if (G() != 9) {
                I(9);
                Buffer buffer = new Buffer();
                return Okio.buffer(new a(buffer, buffer));
            }
            throw new IllegalStateException("Sink from valueSink() was not closed");
        }
        throw new IllegalStateException("BufferedSink cannot be used as a map key in JSON at path " + getPath());
    }

    public Object s0() {
        int i4 = this.f55677a;
        if (i4 <= 1 && (i4 != 1 || this.f55678b[i4 - 1] == 7)) {
            return this.f55673k[0];
        }
        throw new IllegalStateException("Incomplete document");
    }
}
