package com.google.android.exoplayer2.util;

import android.os.Trace;
import androidx.annotation.RequiresApi;

/* compiled from: TraceUtil.java */
/* loaded from: classes2.dex */
public final class v0 {
    private v0() {
    }

    public static void a(String str) {
        if (z0.f27743a >= 18) {
            b(str);
        }
    }

    @RequiresApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }

    public static void c() {
        if (z0.f27743a >= 18) {
            d();
        }
    }

    @RequiresApi(18)
    private static void d() {
        Trace.endSection();
    }
}
