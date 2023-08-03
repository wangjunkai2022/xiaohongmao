package com.google.common.base;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Strings.java */
@h3.b
/* loaded from: classes2.dex */
public final class h0 {
    private h0() {
    }

    public static String a(CharSequence charSequence, CharSequence charSequence2) {
        a0.E(charSequence);
        a0.E(charSequence2);
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i4 = 0;
        while (i4 < min && charSequence.charAt(i4) == charSequence2.charAt(i4)) {
            i4++;
        }
        int i10 = i4 - 1;
        if (k(charSequence, i10) || k(charSequence2, i10)) {
            i4--;
        }
        return charSequence.subSequence(0, i4).toString();
    }

    public static String b(CharSequence charSequence, CharSequence charSequence2) {
        a0.E(charSequence);
        a0.E(charSequence2);
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i4 = 0;
        while (i4 < min && charSequence.charAt((charSequence.length() - i4) - 1) == charSequence2.charAt((charSequence2.length() - i4) - 1)) {
            i4++;
        }
        if (k(charSequence, (charSequence.length() - i4) - 1) || k(charSequence2, (charSequence2.length() - i4) - 1)) {
            i4--;
        }
        return charSequence.subSequence(charSequence.length() - i4, charSequence.length()).toString();
    }

    @NullableDecl
    public static String c(@NullableDecl String str) {
        return z.b(str);
    }

    public static boolean d(@NullableDecl String str) {
        return z.j(str);
    }

    public static String e(@NullableDecl String str, @NullableDecl Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        int i4 = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                objArr[i10] = f(objArr[i10]);
            }
        }
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr.length * 16));
        int i11 = 0;
        while (i4 < objArr.length && (indexOf = valueOf.indexOf("%s", i11)) != -1) {
            sb.append((CharSequence) valueOf, i11, indexOf);
            sb.append(objArr[i4]);
            i11 = indexOf + 2;
            i4++;
        }
        sb.append((CharSequence) valueOf, i11, valueOf.length());
        if (i4 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i4]);
            for (int i12 = i4 + 1; i12 < objArr.length; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    private static String f(@NullableDecl Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception e4) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e4);
            return "<" + str + " threw " + e4.getClass().getName() + ">";
        }
    }

    public static String g(@NullableDecl String str) {
        return z.g(str);
    }

    public static String h(String str, int i4, char c10) {
        a0.E(str);
        if (str.length() >= i4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i4);
        sb.append(str);
        for (int length = str.length(); length < i4; length++) {
            sb.append(c10);
        }
        return sb.toString();
    }

    public static String i(String str, int i4, char c10) {
        a0.E(str);
        if (str.length() >= i4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i4);
        for (int length = str.length(); length < i4; length++) {
            sb.append(c10);
        }
        sb.append(str);
        return sb.toString();
    }

    public static String j(String str, int i4) {
        a0.E(str);
        if (i4 <= 1) {
            a0.k(i4 >= 0, "invalid count: %s", i4);
            return i4 == 0 ? "" : str;
        }
        int length = str.length();
        long j4 = length * i4;
        int i10 = (int) j4;
        if (i10 == j4) {
            char[] cArr = new char[i10];
            str.getChars(0, length, cArr, 0);
            while (true) {
                int i11 = i10 - length;
                if (length < i11) {
                    System.arraycopy(cArr, 0, cArr, length, length);
                    length <<= 1;
                } else {
                    System.arraycopy(cArr, 0, cArr, length, i11);
                    return new String(cArr);
                }
            }
        } else {
            throw new ArrayIndexOutOfBoundsException("Required array size too large: " + j4);
        }
    }

    @h3.d
    static boolean k(CharSequence charSequence, int i4) {
        return i4 >= 0 && i4 <= charSequence.length() + (-2) && Character.isHighSurrogate(charSequence.charAt(i4)) && Character.isLowSurrogate(charSequence.charAt(i4 + 1));
    }
}
