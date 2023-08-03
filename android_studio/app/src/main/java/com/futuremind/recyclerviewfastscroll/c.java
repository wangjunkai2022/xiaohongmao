package com.futuremind.recyclerviewfastscroll;

import android.graphics.drawable.Drawable;
import android.view.View;

/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public class c {
    public static float a(float min, float max, float value) {
        return Math.min(Math.max(min, value), max);
    }

    public static float b(View view) {
        int[] iArr = {(int) view.getX(), 0};
        ((View) view.getParent()).getLocationInWindow(iArr);
        return iArr[0];
    }

    public static float c(View view) {
        int[] iArr = {0, (int) view.getY()};
        ((View) view.getParent()).getLocationInWindow(iArr);
        return iArr[1];
    }

    public static void d(View view, Drawable drawable) {
        view.setBackground(drawable);
    }
}
