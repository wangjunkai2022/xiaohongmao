package com.airbnb.lottie;

import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;

/* compiled from: L.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f4246a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final String f4247b = "LOTTIE";

    /* renamed from: c  reason: collision with root package name */
    private static final int f4248c = 20;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f4249d = false;

    /* renamed from: e  reason: collision with root package name */
    private static String[] f4250e;

    /* renamed from: f  reason: collision with root package name */
    private static long[] f4251f;

    /* renamed from: g  reason: collision with root package name */
    private static int f4252g;

    /* renamed from: h  reason: collision with root package name */
    private static int f4253h;

    public static void a(String str) {
        if (f4249d) {
            int i4 = f4252g;
            if (i4 == 20) {
                f4253h++;
                return;
            }
            f4250e[i4] = str;
            f4251f[i4] = System.nanoTime();
            TraceCompat.beginSection(str);
            f4252g++;
        }
    }

    public static float b(String str) {
        int i4 = f4253h;
        if (i4 > 0) {
            f4253h = i4 - 1;
            return 0.0f;
        } else if (f4249d) {
            int i10 = f4252g - 1;
            f4252g = i10;
            if (i10 != -1) {
                if (str.equals(f4250e[i10])) {
                    TraceCompat.endSection();
                    return ((float) (System.nanoTime() - f4251f[f4252g])) / 1000000.0f;
                }
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f4250e[f4252g] + ".");
            }
            throw new IllegalStateException("Can't end trace section. There are none.");
        } else {
            return 0.0f;
        }
    }

    public static void c(boolean z9) {
        if (f4249d == z9) {
            return;
        }
        f4249d = z9;
        if (z9) {
            f4250e = new String[20];
            f4251f = new long[20];
        }
    }
}
