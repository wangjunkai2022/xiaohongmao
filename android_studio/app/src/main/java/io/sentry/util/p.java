package io.sentry.util;

import m8.a;

/* compiled from: SampleRateUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class p {
    public static boolean a(@m8.h Double d4) {
        return b(d4, true);
    }

    private static boolean b(@m8.h Double d4, boolean z9) {
        return d4 == null ? z9 : !d4.isNaN() && d4.doubleValue() >= 0.0d && d4.doubleValue() <= 1.0d;
    }

    public static boolean c(@m8.h Double d4) {
        return d(d4, true);
    }

    public static boolean d(@m8.h Double d4, boolean z9) {
        return d4 == null ? z9 : !d4.isNaN() && d4.doubleValue() <= 1.0d && d4.doubleValue() > 0.0d;
    }

    public static boolean e(@m8.h Double d4) {
        return f(d4, true);
    }

    public static boolean f(@m8.h Double d4, boolean z9) {
        return b(d4, z9);
    }
}
