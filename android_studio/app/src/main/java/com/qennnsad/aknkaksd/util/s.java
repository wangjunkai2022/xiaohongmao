package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.util.TypedValue;

/* compiled from: DpOrSp2PxUtil.java */
/* loaded from: classes3.dex */
public class s {
    public static float a(Context context, float f10) {
        return TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static int b(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static int c(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int d(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static float e(Context context, float f10) {
        return TypedValue.applyDimension(2, f10, context.getResources().getDisplayMetrics());
    }

    public static int f(Context context, float f10) {
        return (int) TypedValue.applyDimension(2, f10, context.getResources().getDisplayMetrics());
    }
}
