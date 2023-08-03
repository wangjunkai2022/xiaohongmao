package io.sentry.vendor.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;
import m8.a;

/* compiled from: JsonWriter.java */
@a.c
/* loaded from: classes4.dex */
public class c implements Closeable, Flushable {

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f84166j = new String[128];

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f84167k;

    /* renamed from: a  reason: collision with root package name */
    private final Writer f84168a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f84169b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    private int f84170c = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f84171d;

    /* renamed from: e  reason: collision with root package name */
    private String f84172e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f84173f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f84174g;

    /* renamed from: h  reason: collision with root package name */
    private String f84175h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f84176i;

    static {
        for (int i4 = 0; i4 <= 31; i4++) {
            f84166j[i4] = String.format("\\u%04x", Integer.valueOf(i4));
        }
        String[] strArr = f84166j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f84167k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        I(6);
        this.f84172e = ":";
        this.f84176i = true;
        Objects.requireNonNull(writer, "out == null");
        this.f84168a = writer;
    }

    private void D() throws IOException {
        if (this.f84171d == null) {
            return;
        }
        this.f84168a.write(10);
        int i4 = this.f84170c;
        for (int i10 = 1; i10 < i4; i10++) {
            this.f84168a.write(this.f84171d);
        }
    }

    private c G(int i4, char c10) throws IOException {
        b();
        I(i4);
        this.f84168a.write(c10);
        return this;
    }

    private int H() {
        int i4 = this.f84170c;
        if (i4 != 0) {
            return this.f84169b[i4 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void I(int i4) {
        int i10 = this.f84170c;
        int[] iArr = this.f84169b;
        if (i10 == iArr.length) {
            this.f84169b = Arrays.copyOf(iArr, i10 * 2);
        }
        int[] iArr2 = this.f84169b;
        int i11 = this.f84170c;
        this.f84170c = i11 + 1;
        iArr2[i11] = i4;
    }

    private void J(int i4) {
        this.f84169b[this.f84170c - 1] = i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void X(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f84174g
            if (r0 == 0) goto L7
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.c.f84167k
            goto L9
        L7:
            java.lang.String[] r0 = io.sentry.vendor.gson.stream.c.f84166j
        L9:
            java.io.Writer r1 = r8.f84168a
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f84168a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f84168a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f84168a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f84168a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.c.X(java.lang.String):void");
    }

    private void a() throws IOException {
        int H = H();
        if (H == 5) {
            this.f84168a.write(44);
        } else if (H != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        D();
        J(4);
    }

    private void b() throws IOException {
        int H = H();
        if (H == 1) {
            J(2);
            D();
        } else if (H == 2) {
            this.f84168a.append(',');
            D();
        } else if (H != 4) {
            if (H != 6) {
                if (H == 7) {
                    if (!this.f84173f) {
                        throw new IllegalStateException("JSON must have only one top-level value.");
                    }
                } else {
                    throw new IllegalStateException("Nesting problem.");
                }
            }
            J(7);
        } else {
            this.f84168a.append((CharSequence) this.f84172e);
            J(5);
        }
    }

    private c i(int i4, int i10, char c10) throws IOException {
        int H = H();
        if (H != i10 && H != i4) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f84175h == null) {
            this.f84170c--;
            if (H == i10) {
                D();
            }
            this.f84168a.write(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f84175h);
    }

    private void o0() throws IOException {
        if (this.f84175h != null) {
            a();
            X(this.f84175h);
            this.f84175h = null;
        }
    }

    public c A(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f84175h == null) {
            if (this.f84170c != 0) {
                this.f84175h = str;
                return this;
            }
            throw new IllegalStateException("JsonWriter is closed.");
        }
        throw new IllegalStateException();
    }

    public c E() throws IOException {
        if (this.f84175h != null) {
            if (this.f84176i) {
                o0();
            } else {
                this.f84175h = null;
                return this;
            }
        }
        b();
        this.f84168a.write("null");
        return this;
    }

    public final void K(boolean z9) {
        this.f84174g = z9;
    }

    public final void L(String str) {
        if (str.length() == 0) {
            this.f84171d = null;
            this.f84172e = ":";
            return;
        }
        this.f84171d = str;
        this.f84172e = ": ";
    }

    public final void M(boolean z9) {
        this.f84173f = z9;
    }

    public final void W(boolean z9) {
        this.f84176i = z9;
    }

    public c b0(double d4) throws IOException {
        o0();
        if (!this.f84173f && (Double.isNaN(d4) || Double.isInfinite(d4))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d4);
        }
        b();
        this.f84168a.append((CharSequence) Double.toString(d4));
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f84168a.close();
        int i4 = this.f84170c;
        if (i4 <= 1 && (i4 != 1 || this.f84169b[i4 - 1] == 7)) {
            this.f84170c = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public c d() throws IOException {
        o0();
        return G(1, '[');
    }

    public c d0(long j4) throws IOException {
        o0();
        b();
        this.f84168a.write(Long.toString(j4));
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f84170c != 0) {
            this.f84168a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c g0(Boolean bool) throws IOException {
        if (bool == null) {
            return E();
        }
        o0();
        b();
        this.f84168a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c h() throws IOException {
        o0();
        return G(3, '{');
    }

    public c h0(Number number) throws IOException {
        if (number == null) {
            return E();
        }
        o0();
        String obj = number.toString();
        if (!this.f84173f && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        b();
        this.f84168a.append((CharSequence) obj);
        return this;
    }

    public c k() throws IOException {
        return i(1, 2, ']');
    }

    public c l0(String str) throws IOException {
        if (str == null) {
            return E();
        }
        o0();
        b();
        X(str);
        return this;
    }

    public c n0(boolean z9) throws IOException {
        o0();
        b();
        this.f84168a.write(z9 ? "true" : "false");
        return this;
    }

    public c p() throws IOException {
        return i(3, 5, '}');
    }

    public final boolean q() {
        return this.f84176i;
    }

    public final boolean r() {
        return this.f84174g;
    }

    public boolean s() {
        return this.f84173f;
    }

    public c y(String str) throws IOException {
        if (str == null) {
            return E();
        }
        o0();
        b();
        this.f84168a.append((CharSequence) str);
        return this;
    }
}
