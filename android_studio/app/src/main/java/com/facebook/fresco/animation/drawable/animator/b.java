package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawableValueAnimatorHelper.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {
    private b() {
    }

    @h
    public static ValueAnimator.AnimatorUpdateListener a(final Drawable drawable) {
        if (drawable instanceof com.facebook.fresco.animation.drawable.a) {
            return a.a((com.facebook.fresco.animation.drawable.a) drawable);
        }
        return null;
    }

    @h
    public static ValueAnimator b(Drawable drawable) {
        if (drawable instanceof com.facebook.fresco.animation.drawable.a) {
            return a.b((com.facebook.fresco.animation.drawable.a) drawable);
        }
        return null;
    }

    @h
    public static ValueAnimator c(Drawable drawable, int maxDurationMs) {
        if (drawable instanceof com.facebook.fresco.animation.drawable.a) {
            return a.c((com.facebook.fresco.animation.drawable.a) drawable, maxDurationMs);
        }
        return null;
    }
}
