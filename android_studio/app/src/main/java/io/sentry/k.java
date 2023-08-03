package io.sentry;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import m8.a;

/* compiled from: DateUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class k {
    private k() {
    }

    public static long a(@m8.g Date date) {
        return h(date.getTime());
    }

    public static double b(@m8.g Date date) {
        return i(date.getTime());
    }

    @m8.g
    public static Date c() {
        return Calendar.getInstance(io.sentry.vendor.gson.internal.bind.util.a.f84130b).getTime();
    }

    @m8.g
    public static Date d(long j4) {
        Calendar calendar = Calendar.getInstance(io.sentry.vendor.gson.internal.bind.util.a.f84130b);
        calendar.setTimeInMillis(j4);
        return calendar.getTime();
    }

    @m8.g
    public static Date e(@m8.g String str) throws IllegalArgumentException {
        try {
            return io.sentry.vendor.gson.internal.bind.util.a.g(str, new ParsePosition(0));
        } catch (ParseException unused) {
            throw new IllegalArgumentException("timestamp is not ISO format " + str);
        }
    }

    @m8.g
    public static Date f(@m8.g String str) throws IllegalArgumentException {
        try {
            return d(new BigDecimal(str).setScale(3, RoundingMode.DOWN).movePointRight(3).longValue());
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("timestamp is not millis format " + str);
        }
    }

    @m8.g
    public static String g(@m8.g Date date) {
        return io.sentry.vendor.gson.internal.bind.util.a.c(date, true);
    }

    public static long h(long j4) {
        return j4 * 1000000;
    }

    public static double i(double d4) {
        return d4 / 1000.0d;
    }

    public static Date j(long j4) {
        return d(Double.valueOf(k(Double.valueOf(j4).doubleValue())).longValue());
    }

    public static double k(double d4) {
        return d4 / 1000000.0d;
    }

    public static double l(long j4) {
        return Double.valueOf(j4).doubleValue() / 1.0E9d;
    }

    public static long m(@m8.g long j4) {
        return j4 * com.google.android.exoplayer2.i.f23681j;
    }

    @m8.h
    public static Date n(@m8.h j3 j3Var) {
        if (j3Var == null) {
            return null;
        }
        return o(j3Var);
    }

    @m8.g
    public static Date o(@m8.g j3 j3Var) {
        return j(j3Var.d());
    }
}
