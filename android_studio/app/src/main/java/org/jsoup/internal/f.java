package org.jsoup.internal;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import java.util.regex.Pattern;
import r7.h;

/* compiled from: StringUtil.java */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final int f91799b = 30;

    /* renamed from: f  reason: collision with root package name */
    private static final int f91803f = 8192;

    /* renamed from: g  reason: collision with root package name */
    private static final int f91804g = 8;

    /* renamed from: a  reason: collision with root package name */
    static final String[] f91798a = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f91800c = Pattern.compile("^/((\\.{1,2}/)+)");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f91801d = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");

    /* renamed from: e  reason: collision with root package name */
    private static final ThreadLocal<Stack<StringBuilder>> f91802e = new a();

    /* compiled from: StringUtil.java */
    /* loaded from: classes5.dex */
    class a extends ThreadLocal<Stack<StringBuilder>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Stack<StringBuilder> initialValue() {
            return new Stack<>();
        }
    }

    /* compiled from: StringUtil.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: b  reason: collision with root package name */
        final String f91806b;
        @h

        /* renamed from: a  reason: collision with root package name */
        StringBuilder f91805a = f.b();

        /* renamed from: c  reason: collision with root package name */
        boolean f91807c = true;

        public b(String str) {
            this.f91806b = str;
        }

        public b a(Object obj) {
            org.jsoup.helper.d.j(this.f91805a);
            if (!this.f91807c) {
                this.f91805a.append(this.f91806b);
            }
            this.f91805a.append(obj);
            this.f91807c = false;
            return this;
        }

        public b b(Object obj) {
            org.jsoup.helper.d.j(this.f91805a);
            this.f91805a.append(obj);
            return this;
        }

        public String c() {
            String p9 = f.p(this.f91805a);
            this.f91805a = null;
            return p9;
        }
    }

    public static void a(StringBuilder sb, String str, boolean z9) {
        int length = str.length();
        int i4 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (i4 < length) {
            int codePointAt = str.codePointAt(i4);
            if (e(codePointAt)) {
                if ((!z9 || z10) && !z11) {
                    sb.append(' ');
                    z11 = true;
                }
            } else if (!h(codePointAt)) {
                sb.appendCodePoint(codePointAt);
                z10 = true;
                z11 = false;
            }
            i4 += Character.charCount(codePointAt);
        }
    }

    public static StringBuilder b() {
        Stack<StringBuilder> stack = f91802e.get();
        if (stack.empty()) {
            return new StringBuilder(8192);
        }
        return stack.pop();
    }

    public static boolean c(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean e(int i4) {
        return i4 == 32 || i4 == 9 || i4 == 10 || i4 == 12 || i4 == 13 || i4 == 160;
    }

    public static boolean f(String str) {
        org.jsoup.helper.d.j(str);
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (str.charAt(i4) > 127) {
                return false;
            }
        }
        return true;
    }

    public static boolean g(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i4 = 0; i4 < length; i4++) {
                if (!j(str.codePointAt(i4))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean h(int i4) {
        return i4 == 8203 || i4 == 173;
    }

    public static boolean i(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            if (!Character.isDigit(str.codePointAt(i4))) {
                return false;
            }
        }
        return true;
    }

    public static boolean j(int i4) {
        return i4 == 32 || i4 == 9 || i4 == 10 || i4 == 12 || i4 == 13;
    }

    public static String k(Collection<?> collection, String str) {
        return l(collection.iterator(), str);
    }

    public static String l(Iterator<?> it, String str) {
        if (it.hasNext()) {
            String obj = it.next().toString();
            if (it.hasNext()) {
                b bVar = new b(str);
                bVar.a(obj);
                while (it.hasNext()) {
                    bVar.a(it.next());
                }
                return bVar.c();
            }
            return obj;
        }
        return "";
    }

    public static String m(String[] strArr, String str) {
        return k(Arrays.asList(strArr), str);
    }

    public static String n(String str) {
        StringBuilder b10 = b();
        a(b10, str, false);
        return p(b10);
    }

    public static String o(int i4) {
        if (i4 >= 0) {
            String[] strArr = f91798a;
            if (i4 < strArr.length) {
                return strArr[i4];
            }
            int min = Math.min(i4, 30);
            char[] cArr = new char[min];
            for (int i10 = 0; i10 < min; i10++) {
                cArr[i10] = ' ';
            }
            return String.valueOf(cArr);
        }
        throw new IllegalArgumentException("width must be > 0");
    }

    public static String p(StringBuilder sb) {
        org.jsoup.helper.d.j(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = f91802e.get();
        stack.push(sb);
        while (stack.size() > 8) {
            stack.pop();
        }
        return sb2;
    }

    public static String q(String str, String str2) {
        try {
            try {
                return r(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return f91801d.matcher(str2).find() ? str2 : "";
        }
    }

    public static URL r(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        URL url2 = new URL(url, str);
        String replaceFirst = f91800c.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            replaceFirst = replaceFirst + "#" + url2.getRef();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), replaceFirst);
    }
}
