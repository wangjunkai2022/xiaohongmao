package com.google.common.base;

/* compiled from: Ascii.java */
@h3.b
/* loaded from: classes2.dex */
public final class c {
    public static final byte A = 23;
    public static final byte B = 24;
    public static final byte C = 25;
    public static final byte D = 26;
    public static final byte E = 27;
    public static final byte F = 28;
    public static final byte G = 29;
    public static final byte H = 30;
    public static final byte I = 31;
    public static final byte J = 32;
    public static final byte K = 32;
    public static final byte L = Byte.MAX_VALUE;
    public static final char M = 0;
    public static final char N = 127;
    private static final char O = ' ';

    /* renamed from: a  reason: collision with root package name */
    public static final byte f32094a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final byte f32095b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final byte f32096c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final byte f32097d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final byte f32098e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final byte f32099f = 5;

    /* renamed from: g  reason: collision with root package name */
    public static final byte f32100g = 6;

    /* renamed from: h  reason: collision with root package name */
    public static final byte f32101h = 7;

    /* renamed from: i  reason: collision with root package name */
    public static final byte f32102i = 8;

    /* renamed from: j  reason: collision with root package name */
    public static final byte f32103j = 9;

    /* renamed from: k  reason: collision with root package name */
    public static final byte f32104k = 10;

    /* renamed from: l  reason: collision with root package name */
    public static final byte f32105l = 10;

    /* renamed from: m  reason: collision with root package name */
    public static final byte f32106m = 11;

    /* renamed from: n  reason: collision with root package name */
    public static final byte f32107n = 12;

    /* renamed from: o  reason: collision with root package name */
    public static final byte f32108o = 13;

    /* renamed from: p  reason: collision with root package name */
    public static final byte f32109p = 14;

    /* renamed from: q  reason: collision with root package name */
    public static final byte f32110q = 15;

    /* renamed from: r  reason: collision with root package name */
    public static final byte f32111r = 16;

    /* renamed from: s  reason: collision with root package name */
    public static final byte f32112s = 17;

    /* renamed from: t  reason: collision with root package name */
    public static final byte f32113t = 17;

    /* renamed from: u  reason: collision with root package name */
    public static final byte f32114u = 18;

    /* renamed from: v  reason: collision with root package name */
    public static final byte f32115v = 19;

    /* renamed from: w  reason: collision with root package name */
    public static final byte f32116w = 19;

    /* renamed from: x  reason: collision with root package name */
    public static final byte f32117x = 20;

    /* renamed from: y  reason: collision with root package name */
    public static final byte f32118y = 21;

    /* renamed from: z  reason: collision with root package name */
    public static final byte f32119z = 22;

    private c() {
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int b10;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = charSequence.charAt(i4);
            char charAt2 = charSequence2.charAt(i4);
            if (charAt != charAt2 && ((b10 = b(charAt)) >= 26 || b10 != b(charAt2))) {
                return false;
            }
        }
        return true;
    }

    private static int b(char c10) {
        return (char) ((c10 | O) - 97);
    }

    public static boolean c(char c10) {
        return c10 >= 'a' && c10 <= 'z';
    }

    public static boolean d(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }

    public static char e(char c10) {
        return d(c10) ? (char) (c10 ^ O) : c10;
    }

    public static String f(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return g((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i4 = 0; i4 < length; i4++) {
            cArr[i4] = e(charSequence.charAt(i4));
        }
        return String.valueOf(cArr);
    }

    public static String g(String str) {
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            if (d(str.charAt(i4))) {
                char[] charArray = str.toCharArray();
                while (i4 < length) {
                    char c10 = charArray[i4];
                    if (d(c10)) {
                        charArray[i4] = (char) (c10 ^ O);
                    }
                    i4++;
                }
                return String.valueOf(charArray);
            }
            i4++;
        }
        return str;
    }

    public static char h(char c10) {
        return c(c10) ? (char) (c10 ^ O) : c10;
    }

    public static String i(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return j((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i4 = 0; i4 < length; i4++) {
            cArr[i4] = h(charSequence.charAt(i4));
        }
        return String.valueOf(cArr);
    }

    public static String j(String str) {
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            if (c(str.charAt(i4))) {
                char[] charArray = str.toCharArray();
                while (i4 < length) {
                    char c10 = charArray[i4];
                    if (c(c10)) {
                        charArray[i4] = (char) (c10 ^ O);
                    }
                    i4++;
                }
                return String.valueOf(charArray);
            }
            i4++;
        }
        return str;
    }

    public static String k(CharSequence charSequence, int i4, String str) {
        a0.E(charSequence);
        int length = i4 - str.length();
        a0.m(length >= 0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i4, str.length());
        int length2 = charSequence.length();
        String str2 = charSequence;
        if (length2 <= i4) {
            String charSequence2 = charSequence.toString();
            int length3 = charSequence2.length();
            str2 = charSequence2;
            if (length3 <= i4) {
                return charSequence2;
            }
        }
        StringBuilder sb = new StringBuilder(i4);
        sb.append((CharSequence) str2, 0, length);
        sb.append(str);
        return sb.toString();
    }
}
