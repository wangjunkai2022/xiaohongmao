package com.squareup.moshi;

import java.io.IOException;
import java.util.Objects;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonUtf8Writer.java */
/* loaded from: classes3.dex */
public final class m extends q {

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f55650n = new String[128];

    /* renamed from: k  reason: collision with root package name */
    private final BufferedSink f55651k;

    /* renamed from: l  reason: collision with root package name */
    private String f55652l = ":";

    /* renamed from: m  reason: collision with root package name */
    private String f55653m;

    /* compiled from: JsonUtf8Writer.java */
    /* loaded from: classes3.dex */
    class a implements Sink {
        a() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (m.this.G() == 9) {
                m mVar = m.this;
                int i4 = mVar.f55677a - 1;
                mVar.f55677a = i4;
                int[] iArr = mVar.f55680d;
                int i10 = i4 - 1;
                iArr[i10] = iArr[i10] + 1;
                return;
            }
            throw new AssertionError();
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            m.this.f55651k.flush();
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j4) throws IOException {
            m.this.f55651k.write(buffer, j4);
        }
    }

    static {
        for (int i4 = 0; i4 <= 31; i4++) {
            f55650n[i4] = String.format("\\u%04x", Integer.valueOf(i4));
        }
        String[] strArr = f55650n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(BufferedSink bufferedSink) {
        Objects.requireNonNull(bufferedSink, "sink == null");
        this.f55651k = bufferedSink;
        I(6);
    }

    private void r0() throws IOException {
        int G = G();
        if (G == 5) {
            this.f55651k.writeByte(44);
        } else if (G != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        u0();
        J(4);
    }

    private void s0() throws IOException {
        int G = G();
        int i4 = 7;
        if (G != 1) {
            if (G == 2) {
                this.f55651k.writeByte(44);
            } else {
                if (G == 4) {
                    i4 = 5;
                    this.f55651k.writeUtf8(this.f55652l);
                } else if (G == 9) {
                    throw new IllegalStateException("Sink from valueSink() was not closed");
                } else {
                    if (G != 6) {
                        if (G == 7) {
                            if (!this.f55682f) {
                                throw new IllegalStateException("JSON must have only one top-level value.");
                            }
                        } else {
                            throw new IllegalStateException("Nesting problem.");
                        }
                    }
                }
                J(i4);
            }
        }
        u0();
        i4 = 2;
        J(i4);
    }

    private q t0(int i4, int i10, char c10) throws IOException {
        int G = G();
        if (G != i10 && G != i4) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f55653m == null) {
            int i11 = this.f55677a;
            int i12 = this.f55685i;
            if (i11 == (~i12)) {
                this.f55685i = ~i12;
                return this;
            }
            int i13 = i11 - 1;
            this.f55677a = i13;
            this.f55679c[i13] = null;
            int[] iArr = this.f55680d;
            int i14 = i13 - 1;
            iArr[i14] = iArr[i14] + 1;
            if (G == i10) {
                u0();
            }
            this.f55651k.writeByte(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f55653m);
    }

    private void u0() throws IOException {
        if (this.f55681e == null) {
            return;
        }
        this.f55651k.writeByte(10);
        int i4 = this.f55677a;
        for (int i10 = 1; i10 < i4; i10++) {
            this.f55651k.writeUtf8(this.f55681e);
        }
    }

    private q v0(int i4, int i10, char c10) throws IOException {
        int i11 = this.f55677a;
        int i12 = this.f55685i;
        if (i11 == i12) {
            int[] iArr = this.f55678b;
            if (iArr[i11 - 1] == i4 || iArr[i11 - 1] == i10) {
                this.f55685i = ~i12;
                return this;
            }
        }
        s0();
        h();
        I(i4);
        this.f55680d[this.f55677a - 1] = 0;
        this.f55651k.writeByte(c10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void w0(okio.BufferedSink r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.squareup.moshi.m.f55650n
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = 0
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.writeUtf8(r8, r4, r3)
        L2e:
            r7.writeUtf8(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.writeUtf8(r8, r4, r2)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.m.w0(okio.BufferedSink, java.lang.String):void");
    }

    private void x0() throws IOException {
        if (this.f55653m != null) {
            r0();
            w0(this.f55651k, this.f55653m);
            this.f55653m = null;
        }
    }

    @Override // com.squareup.moshi.q
    public q A(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f55677a != 0) {
            int G = G();
            if ((G == 3 || G == 5) && this.f55653m == null && !this.f55684h) {
                this.f55653m = str;
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
            if (this.f55653m != null) {
                if (this.f55683g) {
                    x0();
                } else {
                    this.f55653m = null;
                    return this;
                }
            }
            s0();
            this.f55651k.writeUtf8("null");
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public void K(String str) {
        super.K(str);
        this.f55652l = !str.isEmpty() ? ": " : ":";
    }

    @Override // com.squareup.moshi.q
    public q a() throws IOException {
        if (!this.f55684h) {
            x0();
            return v0(1, 2, '[');
        }
        throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q b0(double d4) throws IOException {
        if (!this.f55682f && (Double.isNaN(d4) || Double.isInfinite(d4))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d4);
        } else if (this.f55684h) {
            this.f55684h = false;
            return A(Double.toString(d4));
        } else {
            x0();
            s0();
            this.f55651k.writeUtf8(Double.toString(d4));
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55651k.close();
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
            x0();
            return v0(3, 5, '{');
        }
        throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q d0(long j4) throws IOException {
        if (this.f55684h) {
            this.f55684h = false;
            return A(Long.toString(j4));
        }
        x0();
        s0();
        this.f55651k.writeUtf8(Long.toString(j4));
        int[] iArr = this.f55680d;
        int i4 = this.f55677a - 1;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f55677a != 0) {
            this.f55651k.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    @Override // com.squareup.moshi.q
    public q g0(Boolean bool) throws IOException {
        if (bool == null) {
            return D();
        }
        return o0(bool.booleanValue());
    }

    @Override // com.squareup.moshi.q
    public q h0(@r7.h Number number) throws IOException {
        if (number == null) {
            return D();
        }
        String obj = number.toString();
        if (!this.f55682f && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        } else if (this.f55684h) {
            this.f55684h = false;
            return A(obj);
        } else {
            x0();
            s0();
            this.f55651k.writeUtf8(obj);
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
    }

    @Override // com.squareup.moshi.q
    public q i() throws IOException {
        return t0(1, 2, ']');
    }

    @Override // com.squareup.moshi.q
    public q l0(String str) throws IOException {
        if (str == null) {
            return D();
        }
        if (this.f55684h) {
            this.f55684h = false;
            return A(str);
        }
        x0();
        s0();
        w0(this.f55651k, str);
        int[] iArr = this.f55680d;
        int i4 = this.f55677a - 1;
        iArr[i4] = iArr[i4] + 1;
        return this;
    }

    @Override // com.squareup.moshi.q
    public q o0(boolean z9) throws IOException {
        if (!this.f55684h) {
            x0();
            s0();
            this.f55651k.writeUtf8(z9 ? "true" : "false");
            int[] iArr = this.f55680d;
            int i4 = this.f55677a - 1;
            iArr[i4] = iArr[i4] + 1;
            return this;
        }
        throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
    }

    @Override // com.squareup.moshi.q
    public q p() throws IOException {
        this.f55684h = false;
        return t0(3, 5, '}');
    }

    @Override // com.squareup.moshi.q
    public BufferedSink p0() throws IOException {
        if (!this.f55684h) {
            x0();
            s0();
            I(9);
            return Okio.buffer(new a());
        }
        throw new IllegalStateException("BufferedSink cannot be used as a map key in JSON at path " + getPath());
    }
}
