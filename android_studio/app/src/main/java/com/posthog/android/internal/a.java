package com.posthog.android.internal;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: Iso8601Utils.java */
/* loaded from: classes3.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    static final String f47504a = "GMT";

    /* renamed from: b  reason: collision with root package name */
    static final TimeZone f47505b = TimeZone.getTimeZone(f47504a);

    a() {
    }

    private static boolean a(String str, int i4, char c10) {
        return i4 < str.length() && str.charAt(i4) == c10;
    }

    public static String b(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f47505b, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(24);
        d(sb, gregorianCalendar.get(1), 4);
        sb.append(l.f93713d);
        d(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append(l.f93713d);
        d(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        d(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        d(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        d(sb, gregorianCalendar.get(13), 2);
        sb.append('.');
        d(sb, gregorianCalendar.get(14), 3);
        sb.append(Matrix.MATRIX_TYPE_ZERO);
        return sb.toString();
    }

    private static int c(String str, int i4) {
        while (i4 < str.length()) {
            char charAt = str.charAt(i4);
            if (charAt < '0' || charAt > '9') {
                return i4;
            }
            i4++;
        }
        return str.length();
    }

    private static void d(StringBuilder sb, int i4, int i10) {
        String num = Integer.toString(i4);
        for (int length = i10 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d2 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01a3, IndexOutOfBoundsException -> 0x01a5, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01a3, blocks: (B:3:0x0004, B:6:0x0011, B:8:0x001d, B:9:0x001f, B:11:0x002e, B:13:0x0034, B:17:0x0045, B:19:0x0055, B:20:0x0057, B:22:0x0063, B:23:0x0065, B:25:0x006b, B:29:0x0075, B:34:0x0085, B:36:0x008d, B:41:0x00cc, B:43:0x00d2, B:45:0x00d8, B:66:0x0169, B:50:0x00e3, B:51:0x00fe, B:52:0x00ff, B:54:0x010b, B:57:0x0114, B:59:0x0133, B:62:0x0142, B:63:0x0164, B:65:0x0167, B:68:0x019b, B:69:0x01a2), top: B:75:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019b A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01a3, IndexOutOfBoundsException -> 0x01a5, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01a3, blocks: (B:3:0x0004, B:6:0x0011, B:8:0x001d, B:9:0x001f, B:11:0x002e, B:13:0x0034, B:17:0x0045, B:19:0x0055, B:20:0x0057, B:22:0x0063, B:23:0x0065, B:25:0x006b, B:29:0x0075, B:34:0x0085, B:36:0x008d, B:41:0x00cc, B:43:0x00d2, B:45:0x00d8, B:66:0x0169, B:50:0x00e3, B:51:0x00fe, B:52:0x00ff, B:54:0x010b, B:57:0x0114, B:59:0x0133, B:62:0x0142, B:63:0x0164, B:65:0x0167, B:68:0x019b, B:69:0x01a2), top: B:75:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date e(java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.posthog.android.internal.a.e(java.lang.String):java.util.Date");
    }

    private static int f(String str, int i4, int i10) throws NumberFormatException {
        int i11;
        int i12;
        if (i4 < 0 || i10 > str.length() || i4 > i10) {
            throw new NumberFormatException(str);
        }
        if (i4 < i10) {
            i11 = i4 + 1;
            int digit = Character.digit(str.charAt(i4), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i4, i10));
            }
            i12 = -digit;
        } else {
            i11 = i4;
            i12 = 0;
        }
        while (i11 < i10) {
            int i13 = i11 + 1;
            int digit2 = Character.digit(str.charAt(i11), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i4, i10));
            }
            i12 = (i12 * 10) - digit2;
            i11 = i13;
        }
        return -i12;
    }
}
