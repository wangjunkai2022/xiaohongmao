package org.jsoup.parser;

import androidx.core.app.FrameMetricsAggregator;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Locale;
import org.jsoup.UncheckedIOException;

/* compiled from: CharacterReader.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: n  reason: collision with root package name */
    static final char f91921n = 65535;

    /* renamed from: o  reason: collision with root package name */
    private static final int f91922o = 12;

    /* renamed from: p  reason: collision with root package name */
    static final int f91923p = 32768;

    /* renamed from: q  reason: collision with root package name */
    static final int f91924q = 24576;

    /* renamed from: r  reason: collision with root package name */
    private static final int f91925r = 1024;

    /* renamed from: s  reason: collision with root package name */
    private static final int f91926s = 512;

    /* renamed from: a  reason: collision with root package name */
    private char[] f91927a;

    /* renamed from: b  reason: collision with root package name */
    private Reader f91928b;

    /* renamed from: c  reason: collision with root package name */
    private int f91929c;

    /* renamed from: d  reason: collision with root package name */
    private int f91930d;

    /* renamed from: e  reason: collision with root package name */
    private int f91931e;

    /* renamed from: f  reason: collision with root package name */
    private int f91932f;

    /* renamed from: g  reason: collision with root package name */
    private int f91933g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f91934h;
    @r7.h

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<Integer> f91935i;

    /* renamed from: j  reason: collision with root package name */
    private int f91936j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f91937k;
    @r7.h

    /* renamed from: l  reason: collision with root package name */
    private String f91938l;

    /* renamed from: m  reason: collision with root package name */
    private int f91939m;

    public a(Reader reader, int i4) {
        this.f91933g = -1;
        this.f91934h = new String[512];
        this.f91935i = null;
        this.f91936j = 1;
        org.jsoup.helper.d.j(reader);
        org.jsoup.helper.d.d(reader.markSupported());
        this.f91928b = reader;
        this.f91927a = new char[Math.min(i4, 32768)];
        b();
    }

    static boolean Q(char[] cArr, int i4, int i10, String str) {
        if (i10 != str.length()) {
            return false;
        }
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 == 0) {
                return true;
            }
            int i13 = i4 + 1;
            int i14 = i11 + 1;
            if (cArr[i4] != str.charAt(i11)) {
                return false;
            }
            i4 = i13;
            i10 = i12;
            i11 = i14;
        }
    }

    private void S() {
        ArrayList<Integer> arrayList;
        if (y()) {
            this.f91936j += this.f91935i.size();
            int intValue = this.f91935i.size() > 0 ? this.f91935i.get(arrayList.size() - 1).intValue() : -1;
            this.f91935i.clear();
            if (intValue != -1) {
                this.f91935i.add(Integer.valueOf(intValue));
                this.f91936j--;
            }
            for (int i4 = this.f91931e; i4 < this.f91929c; i4++) {
                if (this.f91927a[i4] == '\n') {
                    this.f91935i.add(Integer.valueOf(this.f91932f + 1 + i4));
                }
            }
        }
    }

    private void b() {
        int i4;
        int i10;
        boolean z9;
        if (this.f91937k || (i4 = this.f91931e) < this.f91930d) {
            return;
        }
        int i11 = this.f91933g;
        if (i11 != -1) {
            i10 = i4 - i11;
            i4 = i11;
        } else {
            i10 = 0;
        }
        try {
            long j4 = i4;
            long skip = this.f91928b.skip(j4);
            this.f91928b.mark(32768);
            int i12 = 0;
            while (true) {
                z9 = true;
                if (i12 > 1024) {
                    break;
                }
                Reader reader = this.f91928b;
                char[] cArr = this.f91927a;
                int read = reader.read(cArr, i12, cArr.length - i12);
                if (read == -1) {
                    this.f91937k = true;
                }
                if (read <= 0) {
                    break;
                }
                i12 += read;
            }
            this.f91928b.reset();
            if (i12 > 0) {
                if (skip != j4) {
                    z9 = false;
                }
                org.jsoup.helper.d.d(z9);
                this.f91929c = i12;
                this.f91932f += i4;
                this.f91931e = i10;
                if (this.f91933g != -1) {
                    this.f91933g = 0;
                }
                this.f91930d = Math.min(i12, (int) f91924q);
            }
            S();
            this.f91938l = null;
        } catch (IOException e4) {
            throw new UncheckedIOException(e4);
        }
    }

    private static String c(char[] cArr, String[] strArr, int i4, int i10) {
        if (i10 > 12) {
            return new String(cArr, i4, i10);
        }
        if (i10 < 1) {
            return "";
        }
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + cArr[i4 + i12];
        }
        int i13 = i11 & FrameMetricsAggregator.EVERY_DURATION;
        String str = strArr[i13];
        if (str == null || !Q(cArr, i4, i10, str)) {
            String str2 = new String(cArr, i4, i10);
            strArr[i13] = str2;
            return str2;
        }
        return str;
    }

    private boolean x() {
        return this.f91931e >= this.f91929c;
    }

    private int z() {
        if (y()) {
            return Collections.binarySearch(this.f91935i, Integer.valueOf(O()));
        }
        return 0;
    }

    public int A() {
        if (y()) {
            int z9 = z();
            if (z9 == -1) {
                return this.f91936j;
            }
            if (z9 < 0) {
                return (Math.abs(z9) + this.f91936j) - 1;
            }
            return z9 + this.f91936j + 1;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B() {
        if (this.f91929c - this.f91931e < 1024) {
            this.f91930d = 0;
        }
        b();
        this.f91933g = this.f91931e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C(String str) {
        b();
        if (F(str)) {
            this.f91931e += str.length();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean D(String str) {
        if (K(str)) {
            this.f91931e += str.length();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean E(char c10) {
        return !w() && this.f91927a[this.f91931e] == c10;
    }

    boolean F(String str) {
        b();
        int length = str.length();
        if (length > this.f91929c - this.f91931e) {
            return false;
        }
        for (int i4 = 0; i4 < length; i4++) {
            if (str.charAt(i4) != this.f91927a[this.f91931e + i4]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean G(char... cArr) {
        if (w()) {
            return false;
        }
        b();
        char c10 = this.f91927a[this.f91931e];
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean H(char[] cArr) {
        b();
        return !w() && Arrays.binarySearch(cArr, this.f91927a[this.f91931e]) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean I() {
        if (w()) {
            return false;
        }
        char c10 = this.f91927a[this.f91931e];
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J() {
        char c10;
        return !w() && (c10 = this.f91927a[this.f91931e]) >= '0' && c10 <= '9';
    }

    boolean K(String str) {
        b();
        int length = str.length();
        if (length > this.f91929c - this.f91931e) {
            return false;
        }
        for (int i4 = 0; i4 < length; i4++) {
            if (Character.toUpperCase(str.charAt(i4)) != Character.toUpperCase(this.f91927a[this.f91931e + i4])) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean L() {
        if (w()) {
            return false;
        }
        char c10 = this.f91927a[this.f91931e];
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z') || Character.isLetter(c10);
    }

    int M(char c10) {
        b();
        for (int i4 = this.f91931e; i4 < this.f91929c; i4++) {
            if (c10 == this.f91927a[i4]) {
                return i4 - this.f91931e;
            }
        }
        return -1;
    }

    int N(CharSequence charSequence) {
        b();
        char charAt = charSequence.charAt(0);
        int i4 = this.f91931e;
        while (i4 < this.f91929c) {
            if (charAt != this.f91927a[i4]) {
                do {
                    i4++;
                    if (i4 >= this.f91929c) {
                        break;
                    }
                } while (charAt != this.f91927a[i4]);
            }
            int i10 = i4 + 1;
            int length = (charSequence.length() + i10) - 1;
            int i11 = this.f91929c;
            if (i4 < i11 && length <= i11) {
                int i12 = i10;
                for (int i13 = 1; i12 < length && charSequence.charAt(i13) == this.f91927a[i12]; i13++) {
                    i12++;
                }
                if (i12 == length) {
                    return i4 - this.f91931e;
                }
            }
            i4 = i10;
        }
        return -1;
    }

    public int O() {
        return this.f91932f + this.f91931e;
    }

    boolean P(int i4, int i10, String str) {
        return Q(this.f91927a, i4, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R() {
        int i4 = this.f91933g;
        if (i4 != -1) {
            this.f91931e = i4;
            V();
            return;
        }
        throw new UncheckedIOException(new IOException("Mark invalid"));
    }

    public void T(boolean z9) {
        if (z9 && this.f91935i == null) {
            this.f91935i = new ArrayList<>(409);
            S();
        } else if (z9) {
        } else {
            this.f91935i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U() {
        int i4 = this.f91931e;
        if (i4 >= 1) {
            this.f91931e = i4 - 1;
            return;
        }
        throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        this.f91933g = -1;
    }

    public void a() {
        this.f91931e++;
    }

    public void d() {
        Reader reader = this.f91928b;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.f91928b = null;
            this.f91927a = null;
            this.f91934h = null;
            throw th;
        }
        this.f91928b = null;
        this.f91927a = null;
        this.f91934h = null;
    }

    int e() {
        int O;
        if (!y()) {
            O = O();
        } else {
            int z9 = z();
            if (z9 == -1) {
                O = O();
            } else {
                if (z9 < 0) {
                    z9 = Math.abs(z9) - 2;
                }
                return (O() - this.f91935i.get(z9).intValue()) + 1;
            }
        }
        return O + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char f() {
        b();
        char c10 = x() ? (char) 65535 : this.f91927a[this.f91931e];
        this.f91931e++;
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g(boolean z9) {
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr = this.f91927a;
        int i11 = i4;
        while (i11 < i10) {
            char c10 = cArr[i11];
            if (c10 == 0) {
                break;
            }
            if (c10 != '\"') {
                if (c10 == '&') {
                    break;
                } else if (c10 != '\'') {
                    continue;
                    i11++;
                } else if (z9) {
                    break;
                }
            }
            if (!z9) {
                break;
            }
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr = this.f91927a;
        int i11 = i4;
        while (i11 < i10) {
            char c10 = cArr[i11];
            if (c10 == 0 || c10 == '&' || c10 == '<') {
                break;
            }
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String i() {
        int i4;
        char c10;
        b();
        int i10 = this.f91931e;
        while (true) {
            i4 = this.f91931e;
            if (i4 >= this.f91929c || (c10 = this.f91927a[i4]) < '0' || c10 > '9') {
                break;
            }
            this.f91931e = i4 + 1;
        }
        return c(this.f91927a, this.f91934h, i10, i4 - i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String j() {
        int i4;
        char c10;
        b();
        int i10 = this.f91931e;
        while (true) {
            i4 = this.f91931e;
            if (i4 >= this.f91929c || (((c10 = this.f91927a[i4]) < '0' || c10 > '9') && ((c10 < 'A' || c10 > 'F') && (c10 < 'a' || c10 > 'f')))) {
                break;
            }
            this.f91931e = i4 + 1;
        }
        return c(this.f91927a, this.f91934h, i10, i4 - i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String k() {
        char c10;
        b();
        int i4 = this.f91931e;
        while (true) {
            int i10 = this.f91931e;
            if (i10 >= this.f91929c || (((c10 = this.f91927a[i10]) < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !Character.isLetter(c10)))) {
                break;
            }
            this.f91931e++;
        }
        return c(this.f91927a, this.f91934h, i4, this.f91931e - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String l() {
        char c10;
        b();
        int i4 = this.f91931e;
        while (true) {
            int i10 = this.f91931e;
            if (i10 >= this.f91929c || (((c10 = this.f91927a[i10]) < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !Character.isLetter(c10)))) {
                break;
            }
            this.f91931e++;
        }
        while (!x()) {
            char[] cArr = this.f91927a;
            int i11 = this.f91931e;
            char c11 = cArr[i11];
            if (c11 < '0' || c11 > '9') {
                break;
            }
            this.f91931e = i11 + 1;
        }
        return c(this.f91927a, this.f91934h, i4, this.f91931e - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String m() {
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr = this.f91927a;
        int i11 = i4;
        while (i11 < i10) {
            char c10 = cArr[i11];
            if (c10 == 0 || c10 == '<') {
                break;
            }
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String n() {
        b();
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr = this.f91927a;
        int i11 = i4;
        while (i11 < i10) {
            char c10 = cArr[i11];
            if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ' || c10 == '/' || c10 == '<' || c10 == '>') {
                break;
            }
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    public String o(char c10) {
        int M = M(c10);
        if (M != -1) {
            String c11 = c(this.f91927a, this.f91934h, this.f91931e, M);
            this.f91931e += M;
            return c11;
        }
        return s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String p(String str) {
        int N = N(str);
        if (N != -1) {
            String c10 = c(this.f91927a, this.f91934h, this.f91931e, N);
            this.f91931e += N;
            return c10;
        } else if (this.f91929c - this.f91931e < str.length()) {
            return s();
        } else {
            int length = (this.f91929c - str.length()) + 1;
            char[] cArr = this.f91927a;
            String[] strArr = this.f91934h;
            int i4 = this.f91931e;
            String c11 = c(cArr, strArr, i4, length - i4);
            this.f91931e = length;
            return c11;
        }
    }

    public String q(char... cArr) {
        b();
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr2 = this.f91927a;
        int i11 = i4;
        loop0: while (i11 < i10) {
            for (char c10 : cArr) {
                if (cArr2[i11] == c10) {
                    break loop0;
                }
            }
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String r(char... cArr) {
        b();
        int i4 = this.f91931e;
        int i10 = this.f91929c;
        char[] cArr2 = this.f91927a;
        int i11 = i4;
        while (i11 < i10 && Arrays.binarySearch(cArr, cArr2[i11]) < 0) {
            i11++;
        }
        this.f91931e = i11;
        return i11 > i4 ? c(this.f91927a, this.f91934h, i4, i11 - i4) : "";
    }

    String s() {
        b();
        char[] cArr = this.f91927a;
        String[] strArr = this.f91934h;
        int i4 = this.f91931e;
        String c10 = c(cArr, strArr, i4, this.f91929c - i4);
        this.f91931e = this.f91929c;
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t(String str) {
        if (str.equals(this.f91938l)) {
            int i4 = this.f91939m;
            if (i4 == -1) {
                return false;
            }
            if (i4 >= this.f91931e) {
                return true;
            }
        }
        this.f91938l = str;
        Locale locale = Locale.ENGLISH;
        int N = N(str.toLowerCase(locale));
        if (N > -1) {
            this.f91939m = this.f91931e + N;
            return true;
        }
        int N2 = N(str.toUpperCase(locale));
        boolean z9 = N2 > -1;
        this.f91939m = z9 ? this.f91931e + N2 : -1;
        return z9;
    }

    public String toString() {
        int i4 = this.f91929c;
        int i10 = this.f91931e;
        return i4 - i10 < 0 ? "" : new String(this.f91927a, i10, i4 - i10);
    }

    public char u() {
        b();
        if (x()) {
            return (char) 65535;
        }
        return this.f91927a[this.f91931e];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String v() {
        return A() + ":" + e();
    }

    public boolean w() {
        b();
        return this.f91931e >= this.f91929c;
    }

    public boolean y() {
        return this.f91935i != null;
    }

    public a(Reader reader) {
        this(reader, 32768);
    }

    public a(String str) {
        this(new StringReader(str), str.length());
    }
}
