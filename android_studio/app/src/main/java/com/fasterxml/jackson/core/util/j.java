package com.fasterxml.jackson.core.util;

import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: TextBuffer.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: l  reason: collision with root package name */
    static final char[] f14291l = new char[0];

    /* renamed from: m  reason: collision with root package name */
    static final int f14292m = 500;

    /* renamed from: n  reason: collision with root package name */
    static final int f14293n = 65536;

    /* renamed from: a  reason: collision with root package name */
    private final a f14294a;

    /* renamed from: b  reason: collision with root package name */
    private char[] f14295b;

    /* renamed from: c  reason: collision with root package name */
    private int f14296c;

    /* renamed from: d  reason: collision with root package name */
    private int f14297d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<char[]> f14298e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14299f;

    /* renamed from: g  reason: collision with root package name */
    private int f14300g;

    /* renamed from: h  reason: collision with root package name */
    private char[] f14301h;

    /* renamed from: i  reason: collision with root package name */
    private int f14302i;

    /* renamed from: j  reason: collision with root package name */
    private String f14303j;

    /* renamed from: k  reason: collision with root package name */
    private char[] f14304k;

    public j(a aVar) {
        this.f14294a = aVar;
    }

    private char[] H() {
        int i4;
        String str = this.f14303j;
        if (str != null) {
            return str.toCharArray();
        }
        int i10 = this.f14296c;
        if (i10 >= 0) {
            int i11 = this.f14297d;
            if (i11 < 1) {
                return f14291l;
            }
            if (i10 == 0) {
                return Arrays.copyOf(this.f14295b, i11);
            }
            return Arrays.copyOfRange(this.f14295b, i10, i11 + i10);
        }
        int K = K();
        if (K < 1) {
            return f14291l;
        }
        char[] e4 = e(K);
        ArrayList<char[]> arrayList = this.f14298e;
        if (arrayList != null) {
            int size = arrayList.size();
            i4 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                char[] cArr = this.f14298e.get(i12);
                int length = cArr.length;
                System.arraycopy(cArr, 0, e4, i4, length);
                i4 += length;
            }
        } else {
            i4 = 0;
        }
        System.arraycopy(this.f14301h, 0, e4, i4, this.f14302i);
        return e4;
    }

    private void L(int i4) {
        int i10 = this.f14297d;
        this.f14297d = 0;
        char[] cArr = this.f14295b;
        this.f14295b = null;
        int i11 = this.f14296c;
        this.f14296c = -1;
        int i12 = i4 + i10;
        char[] cArr2 = this.f14301h;
        if (cArr2 == null || i12 > cArr2.length) {
            this.f14301h = d(i12);
        }
        if (i10 > 0) {
            System.arraycopy(cArr, i11, this.f14301h, 0, i10);
        }
        this.f14300g = 0;
        this.f14302i = i10;
    }

    private char[] d(int i4) {
        a aVar = this.f14294a;
        if (aVar != null) {
            return aVar.d(2, i4);
        }
        return new char[Math.max(i4, 500)];
    }

    private char[] e(int i4) {
        return new char[i4];
    }

    private void f() {
        this.f14299f = false;
        this.f14298e.clear();
        this.f14300g = 0;
        this.f14302i = 0;
    }

    private void p(int i4) {
        if (this.f14298e == null) {
            this.f14298e = new ArrayList<>();
        }
        char[] cArr = this.f14301h;
        this.f14299f = true;
        this.f14298e.add(cArr);
        this.f14300g += cArr.length;
        this.f14302i = 0;
        int length = cArr.length;
        int i10 = length + (length >> 1);
        if (i10 < 500) {
            i10 = 500;
        } else if (i10 > 65536) {
            i10 = 65536;
        }
        this.f14301h = e(i10);
    }

    public static j t(char[] cArr) {
        return new j(null, cArr);
    }

    public void A() {
        char[] cArr;
        this.f14296c = -1;
        this.f14302i = 0;
        this.f14297d = 0;
        this.f14295b = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        }
        a aVar = this.f14294a;
        if (aVar == null || (cArr = this.f14301h) == null) {
            return;
        }
        this.f14301h = null;
        aVar.j(2, cArr);
    }

    public void B(char c10) {
        this.f14296c = -1;
        this.f14297d = 0;
        this.f14303j = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        } else if (this.f14301h == null) {
            this.f14301h = d(1);
        }
        this.f14301h[0] = c10;
        this.f14300g = 1;
        this.f14302i = 1;
    }

    public void C(String str, int i4, int i10) {
        this.f14295b = null;
        this.f14296c = -1;
        this.f14297d = 0;
        this.f14303j = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        } else if (this.f14301h == null) {
            this.f14301h = d(i10);
        }
        this.f14300g = 0;
        this.f14302i = 0;
        b(str, i4, i10);
    }

    public void D(char[] cArr, int i4, int i10) {
        this.f14295b = null;
        this.f14296c = -1;
        this.f14297d = 0;
        this.f14303j = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        } else if (this.f14301h == null) {
            this.f14301h = d(i10);
        }
        this.f14300g = 0;
        this.f14302i = 0;
        c(cArr, i4, i10);
    }

    public void E() {
        this.f14296c = -1;
        this.f14302i = 0;
        this.f14297d = 0;
        this.f14295b = null;
        this.f14303j = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        }
    }

    public void F(char[] cArr, int i4, int i10) {
        this.f14303j = null;
        this.f14304k = null;
        this.f14295b = cArr;
        this.f14296c = i4;
        this.f14297d = i10;
        if (this.f14299f) {
            f();
        }
    }

    public void G(String str) {
        this.f14295b = null;
        this.f14296c = -1;
        this.f14297d = 0;
        this.f14303j = str;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        }
        this.f14302i = 0;
    }

    public String I(int i4) {
        this.f14302i = i4;
        if (this.f14300g > 0) {
            return l();
        }
        String str = i4 == 0 ? "" : new String(this.f14301h, 0, i4);
        this.f14303j = str;
        return str;
    }

    public void J(int i4) {
        this.f14302i = i4;
    }

    public int K() {
        if (this.f14296c >= 0) {
            return this.f14297d;
        }
        char[] cArr = this.f14304k;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this.f14303j;
        if (str != null) {
            return str.length();
        }
        return this.f14300g + this.f14302i;
    }

    public void a(char c10) {
        if (this.f14296c >= 0) {
            L(16);
        }
        this.f14303j = null;
        this.f14304k = null;
        char[] cArr = this.f14301h;
        if (this.f14302i >= cArr.length) {
            p(1);
            cArr = this.f14301h;
        }
        int i4 = this.f14302i;
        this.f14302i = i4 + 1;
        cArr[i4] = c10;
    }

    public void b(String str, int i4, int i10) {
        if (this.f14296c >= 0) {
            L(i10);
        }
        this.f14303j = null;
        this.f14304k = null;
        char[] cArr = this.f14301h;
        int length = cArr.length;
        int i11 = this.f14302i;
        int i12 = length - i11;
        if (i12 >= i10) {
            str.getChars(i4, i4 + i10, cArr, i11);
            this.f14302i += i10;
            return;
        }
        if (i12 > 0) {
            int i13 = i4 + i12;
            str.getChars(i4, i13, cArr, i11);
            i10 -= i12;
            i4 = i13;
        }
        while (true) {
            p(i10);
            int min = Math.min(this.f14301h.length, i10);
            int i14 = i4 + min;
            str.getChars(i4, i14, this.f14301h, 0);
            this.f14302i += min;
            i10 -= min;
            if (i10 <= 0) {
                return;
            }
            i4 = i14;
        }
    }

    public void c(char[] cArr, int i4, int i10) {
        if (this.f14296c >= 0) {
            L(i10);
        }
        this.f14303j = null;
        this.f14304k = null;
        char[] cArr2 = this.f14301h;
        int length = cArr2.length;
        int i11 = this.f14302i;
        int i12 = length - i11;
        if (i12 >= i10) {
            System.arraycopy(cArr, i4, cArr2, i11, i10);
            this.f14302i += i10;
            return;
        }
        if (i12 > 0) {
            System.arraycopy(cArr, i4, cArr2, i11, i12);
            i4 += i12;
            i10 -= i12;
        }
        do {
            p(i10);
            int min = Math.min(this.f14301h.length, i10);
            System.arraycopy(cArr, i4, this.f14301h, 0, min);
            this.f14302i += min;
            i4 += min;
            i10 -= min;
        } while (i10 > 0);
    }

    public char[] g() {
        char[] cArr = this.f14304k;
        if (cArr == null) {
            char[] H = H();
            this.f14304k = H;
            return H;
        }
        return cArr;
    }

    public BigDecimal h() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this.f14304k;
        if (cArr3 != null) {
            return com.fasterxml.jackson.core.io.g.g(cArr3);
        }
        int i4 = this.f14296c;
        if (i4 >= 0 && (cArr2 = this.f14295b) != null) {
            return com.fasterxml.jackson.core.io.g.h(cArr2, i4, this.f14297d);
        }
        if (this.f14300g == 0 && (cArr = this.f14301h) != null) {
            return com.fasterxml.jackson.core.io.g.h(cArr, 0, this.f14302i);
        }
        return com.fasterxml.jackson.core.io.g.g(g());
    }

    public double i() throws NumberFormatException {
        return com.fasterxml.jackson.core.io.g.i(l());
    }

    public int j(boolean z9) {
        char[] cArr;
        int i4 = this.f14296c;
        if (i4 < 0 || (cArr = this.f14295b) == null) {
            if (z9) {
                return -com.fasterxml.jackson.core.io.g.k(this.f14301h, 1, this.f14302i - 1);
            }
            return com.fasterxml.jackson.core.io.g.k(this.f14301h, 0, this.f14302i);
        } else if (z9) {
            return -com.fasterxml.jackson.core.io.g.k(cArr, i4 + 1, this.f14297d - 1);
        } else {
            return com.fasterxml.jackson.core.io.g.k(cArr, i4, this.f14297d);
        }
    }

    public long k(boolean z9) {
        char[] cArr;
        int i4 = this.f14296c;
        if (i4 < 0 || (cArr = this.f14295b) == null) {
            if (z9) {
                return -com.fasterxml.jackson.core.io.g.m(this.f14301h, 1, this.f14302i - 1);
            }
            return com.fasterxml.jackson.core.io.g.m(this.f14301h, 0, this.f14302i);
        } else if (z9) {
            return -com.fasterxml.jackson.core.io.g.m(cArr, i4 + 1, this.f14297d - 1);
        } else {
            return com.fasterxml.jackson.core.io.g.m(cArr, i4, this.f14297d);
        }
    }

    public String l() {
        if (this.f14303j == null) {
            char[] cArr = this.f14304k;
            if (cArr != null) {
                this.f14303j = new String(cArr);
            } else {
                int i4 = this.f14296c;
                if (i4 >= 0) {
                    int i10 = this.f14297d;
                    if (i10 < 1) {
                        this.f14303j = "";
                        return "";
                    }
                    this.f14303j = new String(this.f14295b, i4, i10);
                } else {
                    int i11 = this.f14300g;
                    int i12 = this.f14302i;
                    if (i11 == 0) {
                        this.f14303j = i12 != 0 ? new String(this.f14301h, 0, i12) : "";
                    } else {
                        StringBuilder sb = new StringBuilder(i11 + i12);
                        ArrayList<char[]> arrayList = this.f14298e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i13 = 0; i13 < size; i13++) {
                                char[] cArr2 = this.f14298e.get(i13);
                                sb.append(cArr2, 0, cArr2.length);
                            }
                        }
                        sb.append(this.f14301h, 0, this.f14302i);
                        this.f14303j = sb.toString();
                    }
                }
            }
        }
        return this.f14303j;
    }

    public int m(Writer writer) throws IOException {
        int i4;
        char[] cArr = this.f14304k;
        if (cArr != null) {
            writer.write(cArr);
            return this.f14304k.length;
        }
        String str = this.f14303j;
        if (str != null) {
            writer.write(str);
            return this.f14303j.length();
        }
        int i10 = this.f14296c;
        if (i10 >= 0) {
            int i11 = this.f14297d;
            if (i11 > 0) {
                writer.write(this.f14295b, i10, i11);
            }
            return i11;
        }
        ArrayList<char[]> arrayList = this.f14298e;
        if (arrayList != null) {
            int size = arrayList.size();
            i4 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                char[] cArr2 = this.f14298e.get(i12);
                int length = cArr2.length;
                writer.write(cArr2, 0, length);
                i4 += length;
            }
        } else {
            i4 = 0;
        }
        int i13 = this.f14302i;
        if (i13 > 0) {
            writer.write(this.f14301h, 0, i13);
            return i4 + i13;
        }
        return i4;
    }

    public char[] n() {
        this.f14296c = -1;
        this.f14302i = 0;
        this.f14297d = 0;
        this.f14295b = null;
        this.f14303j = null;
        this.f14304k = null;
        if (this.f14299f) {
            f();
        }
        char[] cArr = this.f14301h;
        if (cArr == null) {
            char[] d4 = d(0);
            this.f14301h = d4;
            return d4;
        }
        return cArr;
    }

    public void o() {
        if (this.f14296c >= 0) {
            L(16);
        }
    }

    public char[] q() {
        char[] cArr = this.f14301h;
        int length = cArr.length;
        int i4 = (length >> 1) + length;
        if (i4 > 65536) {
            i4 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i4);
        this.f14301h = copyOf;
        return copyOf;
    }

    public char[] r(int i4) {
        char[] cArr = this.f14301h;
        if (cArr.length >= i4) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, i4);
        this.f14301h = copyOf;
        return copyOf;
    }

    public char[] s() {
        if (this.f14298e == null) {
            this.f14298e = new ArrayList<>();
        }
        this.f14299f = true;
        this.f14298e.add(this.f14301h);
        int length = this.f14301h.length;
        this.f14300g += length;
        this.f14302i = 0;
        int i4 = length + (length >> 1);
        if (i4 < 500) {
            i4 = 500;
        } else if (i4 > 65536) {
            i4 = 65536;
        }
        char[] e4 = e(i4);
        this.f14301h = e4;
        return e4;
    }

    public String toString() {
        return l();
    }

    public char[] u() {
        return this.f14301h;
    }

    public char[] v() {
        if (this.f14296c >= 0) {
            L(1);
        } else {
            char[] cArr = this.f14301h;
            if (cArr == null) {
                this.f14301h = d(0);
            } else if (this.f14302i >= cArr.length) {
                p(1);
            }
        }
        return this.f14301h;
    }

    public int w() {
        return this.f14302i;
    }

    public char[] x() {
        if (this.f14296c >= 0) {
            return this.f14295b;
        }
        char[] cArr = this.f14304k;
        if (cArr != null) {
            return cArr;
        }
        String str = this.f14303j;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this.f14304k = charArray;
            return charArray;
        } else if (!this.f14299f) {
            char[] cArr2 = this.f14301h;
            return cArr2 == null ? f14291l : cArr2;
        } else {
            return g();
        }
    }

    public int y() {
        int i4 = this.f14296c;
        if (i4 >= 0) {
            return i4;
        }
        return 0;
    }

    public boolean z() {
        return this.f14296c >= 0 || this.f14304k != null || this.f14303j == null;
    }

    protected j(a aVar, char[] cArr) {
        this.f14294a = aVar;
        this.f14301h = cArr;
        this.f14302i = cArr.length;
        this.f14296c = -1;
    }
}
