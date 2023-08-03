package com.iab.omid.library.giphy.d;

import android.view.View;
import android.view.ViewParent;

/* loaded from: classes2.dex */
public final class f {
    public static float a(View view) {
        return view.getZ();
    }

    public static View b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    public static boolean c(View view) {
        if (view.isAttachedToWindow() && view.isShown()) {
            while (view != null) {
                if (view.getAlpha() == 0.0f) {
                    return false;
                }
                view = b(view);
            }
            return true;
        }
        return false;
    }

    public static boolean d(View view) {
        return view.isAttachedToWindow() && view.getVisibility() == 0 && view.getAlpha() != 0.0f;
    }
}
