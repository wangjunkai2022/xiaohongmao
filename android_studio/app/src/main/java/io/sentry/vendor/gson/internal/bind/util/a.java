package io.sentry.vendor.gson.internal.bind.util;

import com.im.freechat.utils.e;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import m8.a;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: ISO8601Utils.java */
@a.c
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f84129a = "UTC";

    /* renamed from: b  reason: collision with root package name */
    public static final TimeZone f84130b = TimeZone.getTimeZone(f84129a);

    private static boolean a(String str, int i4, char c10) {
        return i4 < str.length() && str.charAt(i4) == c10;
    }

    public static String b(Date date) {
        return d(date, false, f84130b);
    }

    public static String c(Date date, boolean z9) {
        return d(date, z9, f84130b);
    }

    public static String d(Date date, boolean z9, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z9 ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        f(sb, gregorianCalendar.get(1), 4);
        char c10 = l.f93713d;
        sb.append(l.f93713d);
        f(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append(l.f93713d);
        f(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        f(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        f(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        f(sb, gregorianCalendar.get(13), 2);
        if (z9) {
            sb.append('.');
            f(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i4 = offset / e.f43748a;
            int abs = Math.abs(i4 / 60);
            int abs2 = Math.abs(i4 % 60);
            if (offset >= 0) {
                c10 = '+';
            }
            sb.append(c10);
            f(sb, abs, 2);
            sb.append(':');
            f(sb, abs2, 2);
        } else {
            sb.append(Matrix.MATRIX_TYPE_ZERO);
        }
        return sb.toString();
    }

    private static int e(String str, int i4) {
        while (i4 < str.length()) {
            char charAt = str.charAt(i4);
            if (charAt < '0' || charAt > '9') {
                return i4;
            }
            i4++;
        }
        return str.length();
    }

    private static void f(StringBuilder sb, int i4, int i10) {
        String num = Integer.toString(i4);
        for (int length = i10 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00cf A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d6, B:75:0x0183, B:55:0x00e0, B:56:0x00fb, B:57:0x00fc, B:61:0x0118, B:63:0x0125, B:66:0x012e, B:68:0x014d, B:71:0x015c, B:72:0x017e, B:74:0x0181, B:60:0x0107, B:77:0x01b4, B:78:0x01bb, B:40:0x00b0, B:41:0x00b3), top: B:94:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b4 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d6, B:75:0x0183, B:55:0x00e0, B:56:0x00fb, B:57:0x00fc, B:61:0x0118, B:63:0x0125, B:66:0x012e, B:68:0x014d, B:71:0x015c, B:72:0x017e, B:74:0x0181, B:60:0x0107, B:77:0x01b4, B:78:0x01bb, B:40:0x00b0, B:41:0x00b3), top: B:94:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date g(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 553
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.internal.bind.util.a.g(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int h(String str, int i4, int i10) throws NumberFormatException {
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
