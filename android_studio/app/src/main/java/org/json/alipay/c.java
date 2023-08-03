package org.json.alipay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private int f91711a;

    /* renamed from: b  reason: collision with root package name */
    private Reader f91712b;

    /* renamed from: c  reason: collision with root package name */
    private char f91713c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f91714d;

    private c(Reader reader) {
        this.f91712b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f91714d = false;
        this.f91711a = 0;
    }

    public c(String str) {
        this(new StringReader(str));
    }

    private String a(int i4) {
        if (i4 == 0) {
            return "";
        }
        char[] cArr = new char[i4];
        int i10 = 0;
        if (this.f91714d) {
            this.f91714d = false;
            cArr[0] = this.f91713c;
            i10 = 1;
        }
        while (i10 < i4) {
            try {
                int read = this.f91712b.read(cArr, i10, i4 - i10);
                if (read == -1) {
                    break;
                }
                i10 += read;
            } catch (IOException e4) {
                throw new JSONException(e4);
            }
        }
        this.f91711a += i10;
        if (i10 >= i4) {
            this.f91713c = cArr[i4 - 1];
            return new String(cArr);
        }
        throw b("Substring bounds error");
    }

    public final JSONException b(String str) {
        return new JSONException(str + toString());
    }

    public final void c() {
        int i4;
        if (this.f91714d || (i4 = this.f91711a) <= 0) {
            throw new JSONException("Stepping back two steps is not supported");
        }
        this.f91711a = i4 - 1;
        this.f91714d = true;
    }

    public final char d() {
        if (this.f91714d) {
            this.f91714d = false;
            char c10 = this.f91713c;
            if (c10 != 0) {
                this.f91711a++;
            }
            return c10;
        }
        try {
            int read = this.f91712b.read();
            if (read <= 0) {
                this.f91713c = (char) 0;
                return (char) 0;
            }
            this.f91711a++;
            char c11 = (char) read;
            this.f91713c = c11;
            return c11;
        } catch (IOException e4) {
            throw new JSONException(e4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0053, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final char e() {
        /*
            r5 = this;
        L0:
            char r0 = r5.d()
            r1 = 13
            r2 = 10
            r3 = 47
            if (r0 != r3) goto L3e
            char r0 = r5.d()
            r4 = 42
            if (r0 == r4) goto L25
            if (r0 == r3) goto L1a
            r5.c()
            return r3
        L1a:
            char r0 = r5.d()
            if (r0 == r2) goto L0
            if (r0 == r1) goto L0
            if (r0 != 0) goto L1a
            goto L0
        L25:
            char r0 = r5.d()
            if (r0 == 0) goto L37
            if (r0 != r4) goto L25
            char r0 = r5.d()
            if (r0 == r3) goto L0
            r5.c()
            goto L25
        L37:
            java.lang.String r0 = "Unclosed comment"
            org.json.alipay.JSONException r0 = r5.b(r0)
            throw r0
        L3e:
            r3 = 35
            if (r0 != r3) goto L4d
        L42:
            char r0 = r5.d()
            if (r0 == r2) goto L0
            if (r0 == r1) goto L0
            if (r0 != 0) goto L42
            goto L0
        L4d:
            if (r0 == 0) goto L53
            r1 = 32
            if (r0 <= r1) goto L0
        L53:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.c.e():char");
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0146, code lost:
        throw b("Unterminated string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.c.f():java.lang.Object");
    }

    public final String toString() {
        return " at character " + this.f91711a;
    }
}
