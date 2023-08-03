package com.fasterxml.jackson.databind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: ISO8601Utils.java */
@Deprecated
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    protected static final int f16022a = 29;

    /* renamed from: b  reason: collision with root package name */
    private static final TimeZone f16023b = TimeZone.getTimeZone("UTC");

    private static boolean a(String str, int i4, char c10) {
        return i4 < str.length() && str.charAt(i4) == c10;
    }

    public static String b(Date date) {
        return d(date, false, f16023b);
    }

    public static String c(Date date, boolean z9) {
        return d(date, z9, f16023b);
    }

    @Deprecated
    public static String d(Date date, boolean z9, TimeZone timeZone) {
        return e(date, z9, timeZone, Locale.US);
    }

    public static String e(Date date, boolean z9, TimeZone timeZone, Locale locale) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(30);
        sb.append(String.format("%04d-%02d-%02dT%02d:%02d:%02d", Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(2) + 1), Integer.valueOf(gregorianCalendar.get(5)), Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12)), Integer.valueOf(gregorianCalendar.get(13))));
        if (z9) {
            sb.append(String.format(".%03d", Integer.valueOf(gregorianCalendar.get(14))));
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i4 = offset / com.im.freechat.utils.e.f43748a;
            int abs = Math.abs(i4 / 60);
            int abs2 = Math.abs(i4 % 60);
            Object[] objArr = new Object[3];
            objArr[0] = Character.valueOf(offset < 0 ? shaded.org.apache.commons.codec.language.l.f93713d : '+');
            objArr[1] = Integer.valueOf(abs);
            objArr[2] = Integer.valueOf(abs2);
            sb.append(String.format("%c%02d:%02d", objArr));
        } else {
            sb.append(Matrix.MATRIX_TYPE_ZERO);
        }
        return sb.toString();
    }

    private static int f(String str, int i4) {
        while (i4 < str.length()) {
            char charAt = str.charAt(i4);
            if (charAt < '0' || charAt > '9') {
                return i4;
            }
            i4++;
        }
        return str.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2 A[Catch: Exception -> 0x01a6, TryCatch #0 {Exception -> 0x01a6, blocks: (B:3:0x0007, B:5:0x0019, B:6:0x001b, B:8:0x0027, B:9:0x0029, B:11:0x0038, B:13:0x003e, B:17:0x0053, B:19:0x0063, B:20:0x0065, B:22:0x0071, B:23:0x0073, B:25:0x0079, B:29:0x0083, B:34:0x0093, B:36:0x009b, B:47:0x00cc, B:49:0x00d2, B:51:0x00d8, B:71:0x016d, B:55:0x00e2, B:56:0x00fd, B:57:0x00fe, B:59:0x010f, B:62:0x0118, B:64:0x0137, B:67:0x0146, B:68:0x0168, B:70:0x016b, B:73:0x019e, B:74:0x01a5, B:40:0x00b3, B:41:0x00b6), top: B:83:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019e A[Catch: Exception -> 0x01a6, TryCatch #0 {Exception -> 0x01a6, blocks: (B:3:0x0007, B:5:0x0019, B:6:0x001b, B:8:0x0027, B:9:0x0029, B:11:0x0038, B:13:0x003e, B:17:0x0053, B:19:0x0063, B:20:0x0065, B:22:0x0071, B:23:0x0073, B:25:0x0079, B:29:0x0083, B:34:0x0093, B:36:0x009b, B:47:0x00cc, B:49:0x00d2, B:51:0x00d8, B:71:0x016d, B:55:0x00e2, B:56:0x00fd, B:57:0x00fe, B:59:0x010f, B:62:0x0118, B:64:0x0137, B:67:0x0146, B:68:0x0168, B:70:0x016b, B:73:0x019e, B:74:0x01a5, B:40:0x00b3, B:41:0x00b6), top: B:83:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date g(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.i.g(java.lang.String, java.text.ParsePosition):java.util.Date");
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
