package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.content.res.Resources;

/* compiled from: PixelUtil.java */
/* loaded from: classes3.dex */
public final class a1 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f54532a = 160;

    /* renamed from: b  reason: collision with root package name */
    public static final float f54533b = 0.5f;

    private a1() {
    }

    public static int a(Context context, float f10) {
        return (int) ((f10 * (context.getResources().getDisplayMetrics().densityDpi / 160.0f)) + 0.5f);
    }

    public static int b(Context context, float f10) {
        return (int) (((f10 * 160.0f) / context.getResources().getDisplayMetrics().densityDpi) + 0.5f);
    }

    public static int c(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int d(Context context, float f10) {
        Resources resources;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        return (int) ((f10 * resources.getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
