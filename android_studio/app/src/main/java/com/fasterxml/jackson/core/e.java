package com.fasterxml.jackson.core;

/* compiled from: JsonPointer.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    public static final char f13819f = '/';

    /* renamed from: g  reason: collision with root package name */
    protected static final e f13820g = new e();

    /* renamed from: a  reason: collision with root package name */
    protected final e f13821a;

    /* renamed from: b  reason: collision with root package name */
    protected volatile e f13822b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f13823c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f13824d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f13825e;

    protected e() {
        this.f13821a = null;
        this.f13824d = "";
        this.f13825e = -1;
        this.f13823c = "";
    }

    private static void a(StringBuilder sb, char c10) {
        if (c10 == '0') {
            c10 = '~';
        } else if (c10 == '1') {
            c10 = f13819f;
        } else {
            sb.append('~');
        }
        sb.append(c10);
    }

    private static void b(StringBuilder sb, String str) {
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '/') {
                sb.append("~1");
            } else if (charAt == '~') {
                sb.append("~0");
            } else {
                sb.append(charAt);
            }
        }
    }

    private static String e(e eVar, String str) {
        if (eVar == null) {
            StringBuilder sb = new StringBuilder(str.length() + 1);
            sb.append(f13819f);
            b(sb, str);
            return sb.toString();
        }
        String str2 = eVar.f13823c;
        StringBuilder sb2 = new StringBuilder(str.length() + 1 + str2.length());
        sb2.append(f13819f);
        b(sb2, str);
        sb2.append(str2);
        return sb2.toString();
    }

    private static final int f(String str) {
        int length = str.length();
        if (length == 0 || length > 10) {
            return -1;
        }
        char charAt = str.charAt(0);
        if (charAt <= '0') {
            return (length == 1 && charAt == '0') ? 0 : -1;
        } else if (charAt > '9') {
            return -1;
        } else {
            for (int i4 = 1; i4 < length; i4++) {
                char charAt2 = str.charAt(i4);
                if (charAt2 > '9' || charAt2 < '0') {
                    return -1;
                }
            }
            if (length != 10 || com.fasterxml.jackson.core.io.g.l(str) <= 2147483647L) {
                return com.fasterxml.jackson.core.io.g.j(str);
            }
            return -1;
        }
    }

    protected static e g(String str, int i4) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(Math.max(16, length));
        if (i4 > 2) {
            sb.append((CharSequence) str, 1, i4 - 1);
        }
        int i10 = i4 + 1;
        a(sb, str.charAt(i4));
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt == '/') {
                return new e(str, sb.toString(), h(str.substring(i10)));
            }
            i10++;
            if (charAt == '~' && i10 < length) {
                a(sb, str.charAt(i10));
                i10++;
            } else {
                sb.append(charAt);
            }
        }
        return new e(str, sb.toString(), f13820g);
    }

    protected static e h(String str) {
        int length = str.length();
        int i4 = 1;
        while (i4 < length) {
            char charAt = str.charAt(i4);
            if (charAt == '/') {
                return new e(str, str.substring(1, i4), h(str.substring(i4)));
            }
            i4++;
            if (charAt == '~' && i4 < length) {
                return g(str, i4);
            }
        }
        return new e(str, str.substring(1), f13820g);
    }

    public static e j(String str) throws IllegalArgumentException {
        if (str != null && str.length() != 0) {
            if (str.charAt(0) == '/') {
                return h(str);
            }
            throw new IllegalArgumentException("Invalid input: JSON Pointer expression must start with '/': \"" + str + "\"");
        }
        return f13820g;
    }

    public static e k() {
        return f13820g;
    }

    public static e l(f fVar, boolean z9) {
        if (fVar == null) {
            return f13820g;
        }
        if (!fVar.j() && (!z9 || !fVar.m() || !fVar.h())) {
            fVar = fVar.e();
        }
        e eVar = null;
        while (fVar != null) {
            if (fVar.l()) {
                String b10 = fVar.b();
                if (b10 == null) {
                    b10 = "";
                }
                eVar = new e(e(eVar, b10), b10, eVar);
            } else if (fVar.k() || z9) {
                int a10 = fVar.a();
                String valueOf = String.valueOf(a10);
                eVar = new e(e(eVar, valueOf), valueOf, a10, eVar);
            }
            fVar = fVar.e();
        }
        return eVar == null ? f13820g : eVar;
    }

    public static e y(String str) {
        return j(str);
    }

    protected e c() {
        e p9 = p();
        if (p9 == this) {
            return f13820g;
        }
        int length = p9.f13823c.length();
        e eVar = this.f13821a;
        String str = this.f13823c;
        return new e(str.substring(0, str.length() - length), this.f13824d, this.f13825e, eVar.d(length, p9));
    }

    protected e d(int i4, e eVar) {
        if (this == eVar) {
            return f13820g;
        }
        e eVar2 = this.f13821a;
        String str = this.f13823c;
        return new e(str.substring(0, str.length() - i4), this.f13824d, this.f13825e, eVar2.d(i4, eVar));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof e)) {
            return this.f13823c.equals(((e) obj).f13823c);
        }
        return false;
    }

    public int hashCode() {
        return this.f13823c.hashCode();
    }

    public e i(e eVar) {
        e eVar2 = f13820g;
        if (this == eVar2) {
            return eVar;
        }
        if (eVar == eVar2) {
            return this;
        }
        String str = this.f13823c;
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        return j(str + eVar.f13823c);
    }

    public int m() {
        return this.f13825e;
    }

    public String n() {
        return this.f13824d;
    }

    public e o() {
        e eVar = this.f13822b;
        if (eVar == null) {
            if (this != f13820g) {
                eVar = c();
            }
            this.f13822b = eVar;
        }
        return eVar;
    }

    public e p() {
        if (this == f13820g) {
            return null;
        }
        e eVar = this;
        while (true) {
            e eVar2 = eVar.f13821a;
            if (eVar2 == f13820g) {
                return eVar;
            }
            eVar = eVar2;
        }
    }

    public e q(int i4) {
        if (i4 != this.f13825e || i4 < 0) {
            return null;
        }
        return this.f13821a;
    }

    public e r(String str) {
        if (this.f13821a == null || !this.f13824d.equals(str)) {
            return null;
        }
        return this.f13821a;
    }

    public boolean s() {
        return this.f13821a == null;
    }

    public boolean t(int i4) {
        return i4 == this.f13825e && i4 >= 0;
    }

    public String toString() {
        return this.f13823c;
    }

    public boolean u(String str) {
        return this.f13821a != null && this.f13824d.equals(str);
    }

    public boolean v() {
        return this.f13825e >= 0;
    }

    public boolean w() {
        return this.f13824d != null;
    }

    public e x() {
        return this.f13821a;
    }

    protected e(String str, String str2, e eVar) {
        this.f13823c = str;
        this.f13821a = eVar;
        this.f13824d = str2;
        this.f13825e = f(str2);
    }

    protected e(String str, String str2, int i4, e eVar) {
        this.f13823c = str;
        this.f13821a = eVar;
        this.f13824d = str2;
        this.f13825e = i4;
    }
}
