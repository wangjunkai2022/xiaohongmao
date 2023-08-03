package com.facebook.drawee.drawable;

import android.graphics.drawable.Drawable;

/* compiled from: DrawableUtils.java */
/* loaded from: classes.dex */
public class f {
    @r7.h
    public static Drawable a(Drawable drawable) {
        if (drawable instanceof c) {
            return ((c) drawable).e();
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            return constantState.newDrawable();
        }
        return null;
    }

    public static void b(@r7.h Drawable to, @r7.h Drawable from) {
        if (from == null || to == null || to == from) {
            return;
        }
        to.setBounds(from.getBounds());
        to.setChangingConfigurations(from.getChangingConfigurations());
        to.setLevel(from.getLevel());
        to.setVisible(from.isVisible(), false);
        to.setState(from.getState());
    }

    public static int c(int color) {
        int i4 = color >>> 24;
        if (i4 == 255) {
            return -1;
        }
        return i4 == 0 ? -2 : -3;
    }

    public static int d(int color, int alpha) {
        if (alpha == 255) {
            return color;
        }
        if (alpha == 0) {
            return color & 16777215;
        }
        return (color & 16777215) | ((((color >>> 24) * (alpha + (alpha >> 7))) >> 8) << 24);
    }

    public static void e(@r7.h Drawable drawable, @r7.h Drawable.Callback callback, @r7.h u transformCallback) {
        if (drawable != null) {
            drawable.setCallback(callback);
            if (drawable instanceof t) {
                ((t) drawable).i(transformCallback);
            }
        }
    }

    public static void f(@r7.h Drawable drawable, @r7.h e properties) {
        if (drawable == null || properties == null) {
            return;
        }
        properties.a(drawable);
    }
}
