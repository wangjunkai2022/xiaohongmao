package org.jsoup.parser;

/* compiled from: TokenQueue.java */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: c  reason: collision with root package name */
    private static final char f92035c = '\\';

    /* renamed from: a  reason: collision with root package name */
    private String f92036a;

    /* renamed from: b  reason: collision with root package name */
    private int f92037b = 0;

    public h(String str) {
        org.jsoup.helper.d.j(str);
        this.f92036a = str;
    }

    private int C() {
        return this.f92036a.length() - this.f92037b;
    }

    public static String D(String str) {
        StringBuilder b10 = org.jsoup.internal.f.b();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i4 = 0;
        char c10 = 0;
        while (i4 < length) {
            char c11 = charArray[i4];
            if (c11 != '\\') {
                b10.append(c11);
            } else if (c10 == '\\') {
                b10.append(c11);
            }
            i4++;
            c10 = c11;
        }
        return org.jsoup.internal.f.p(b10);
    }

    @Deprecated
    public char A() {
        if (r()) {
            return (char) 0;
        }
        return this.f92036a.charAt(this.f92037b);
    }

    public String B() {
        String substring = this.f92036a.substring(this.f92037b);
        this.f92037b = this.f92036a.length();
        return substring;
    }

    @Deprecated
    public void a(Character ch) {
        b(ch.toString());
    }

    public void b(String str) {
        this.f92036a = str + this.f92036a.substring(this.f92037b);
        this.f92037b = 0;
    }

    public void c() {
        if (r()) {
            return;
        }
        this.f92037b++;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x007c A[LOOP:0: B:3:0x0009->B:44:0x007c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0055 A[EDGE_INSN: B:46:0x0055->B:38:0x0055 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String d(char r12, char r13) {
        /*
            r11 = this;
            r0 = -1
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = -1
            r7 = 0
            r8 = 0
        L9:
            boolean r9 = r11.r()
            if (r9 == 0) goto L10
            goto L55
        L10:
            char r9 = r11.g()
            r10 = 92
            if (r2 == r10) goto L42
            r10 = 39
            if (r9 != r10) goto L23
            if (r9 == r12) goto L23
            if (r3 != 0) goto L23
            r4 = r4 ^ 1
            goto L2d
        L23:
            r10 = 34
            if (r9 != r10) goto L2d
            if (r9 == r12) goto L2d
            if (r4 != 0) goto L2d
            r3 = r3 ^ 1
        L2d:
            if (r4 != 0) goto L53
            if (r3 != 0) goto L53
            if (r8 == 0) goto L34
            goto L53
        L34:
            if (r9 != r12) goto L3d
            int r7 = r7 + 1
            if (r5 != r0) goto L4d
            int r5 = r11.f92037b
            goto L4d
        L3d:
            if (r9 != r13) goto L4d
            int r7 = r7 + (-1)
            goto L4d
        L42:
            r10 = 81
            if (r9 != r10) goto L48
            r8 = 1
            goto L4d
        L48:
            r10 = 69
            if (r9 != r10) goto L4d
            r8 = 0
        L4d:
            if (r7 <= 0) goto L53
            if (r2 == 0) goto L53
            int r6 = r11.f92037b
        L53:
            if (r7 > 0) goto L7c
        L55:
            if (r6 < 0) goto L5e
            java.lang.String r12 = r11.f92036a
            java.lang.String r12 = r12.substring(r5, r6)
            goto L60
        L5e:
            java.lang.String r12 = ""
        L60:
            if (r7 <= 0) goto L7b
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r0 = "Did not find balanced marker at '"
            r13.append(r0)
            r13.append(r12)
            java.lang.String r0 = "'"
            r13.append(r0)
            java.lang.String r13 = r13.toString()
            org.jsoup.helper.d.a(r13)
        L7b:
            return r12
        L7c:
            r2 = r9
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.h.d(char, char):java.lang.String");
    }

    public String e(String str) {
        String m9 = m(str);
        s(str);
        return m9;
    }

    public String f(String str) {
        String o9 = o(str);
        s(str);
        return o9;
    }

    public char g() {
        String str = this.f92036a;
        int i4 = this.f92037b;
        this.f92037b = i4 + 1;
        return str.charAt(i4);
    }

    public void h(String str) {
        if (t(str)) {
            int length = str.length();
            if (length <= C()) {
                this.f92037b += length;
                return;
            }
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        throw new IllegalStateException("Queue did not match expected sequence");
    }

    @Deprecated
    public String i() {
        int i4 = this.f92037b;
        while (!r() && (z() || u(shaded.org.apache.commons.codec.language.l.f93713d, '_', ':'))) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public String j() {
        int i4 = this.f92037b;
        while (!r() && (z() || u(shaded.org.apache.commons.codec.language.l.f93713d, '_'))) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public String k() {
        int i4 = this.f92037b;
        while (!r() && (z() || v("*|", "|", "_", "-"))) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    @Deprecated
    public String l() {
        int i4 = this.f92037b;
        while (!r() && (z() || u(':', '_', shaded.org.apache.commons.codec.language.l.f93713d))) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public String m(String str) {
        int indexOf = this.f92036a.indexOf(str, this.f92037b);
        if (indexOf != -1) {
            String substring = this.f92036a.substring(this.f92037b, indexOf);
            this.f92037b += substring.length();
            return substring;
        }
        return B();
    }

    public String n(String... strArr) {
        int i4 = this.f92037b;
        while (!r() && !v(strArr)) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public String o(String str) {
        int i4 = this.f92037b;
        String substring = str.substring(0, 1);
        boolean equals = substring.toLowerCase().equals(substring.toUpperCase());
        while (!r() && !t(str)) {
            if (equals) {
                int indexOf = this.f92036a.indexOf(substring, this.f92037b);
                int i10 = this.f92037b;
                int i11 = indexOf - i10;
                if (i11 == 0) {
                    this.f92037b = i10 + 1;
                } else if (i11 < 0) {
                    this.f92037b = this.f92036a.length();
                } else {
                    this.f92037b = i10 + i11;
                }
            } else {
                this.f92037b++;
            }
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public boolean p() {
        boolean z9 = false;
        while (y()) {
            this.f92037b++;
            z9 = true;
        }
        return z9;
    }

    public String q() {
        int i4 = this.f92037b;
        while (z()) {
            this.f92037b++;
        }
        return this.f92036a.substring(i4, this.f92037b);
    }

    public boolean r() {
        return C() == 0;
    }

    public boolean s(String str) {
        if (t(str)) {
            this.f92037b += str.length();
            return true;
        }
        return false;
    }

    public boolean t(String str) {
        return this.f92036a.regionMatches(true, this.f92037b, str, 0, str.length());
    }

    public String toString() {
        return this.f92036a.substring(this.f92037b);
    }

    public boolean u(char... cArr) {
        if (r()) {
            return false;
        }
        for (char c10 : cArr) {
            if (this.f92036a.charAt(this.f92037b) == c10) {
                return true;
            }
        }
        return false;
    }

    public boolean v(String... strArr) {
        for (String str : strArr) {
            if (t(str)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean w(String str) {
        return this.f92036a.startsWith(str, this.f92037b);
    }

    @Deprecated
    public boolean x() {
        return C() >= 2 && this.f92036a.charAt(this.f92037b) == '<' && Character.isLetter(this.f92036a.charAt(this.f92037b + 1));
    }

    public boolean y() {
        return !r() && org.jsoup.internal.f.j(this.f92036a.charAt(this.f92037b));
    }

    public boolean z() {
        return !r() && Character.isLetterOrDigit(this.f92036a.charAt(this.f92037b));
    }
}
