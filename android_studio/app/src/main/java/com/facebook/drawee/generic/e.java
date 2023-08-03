package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import com.facebook.drawee.drawable.RoundedCornersDrawable;
import com.facebook.drawee.drawable.j;
import com.facebook.drawee.drawable.m;
import com.facebook.drawee.drawable.n;
import com.facebook.drawee.drawable.o;
import com.facebook.drawee.drawable.q;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.generic.RoundingParams;
import r7.h;

/* compiled from: WrappingUtils.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11627a = "WrappingUtils";

    /* renamed from: b  reason: collision with root package name */
    private static final Drawable f11628b = new ColorDrawable(0);

    private static Drawable a(Drawable drawable, RoundingParams roundingParams, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            n nVar = new n(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
            b(nVar, roundingParams);
            return nVar;
        } else if (drawable instanceof NinePatchDrawable) {
            q qVar = new q((NinePatchDrawable) drawable);
            b(qVar, roundingParams);
            return qVar;
        } else if (drawable instanceof ColorDrawable) {
            o b10 = o.b((ColorDrawable) drawable);
            b(b10, roundingParams);
            return b10;
        } else {
            p0.a.q0(f11627a, "Don't know how to round that drawable: %s", drawable);
            return drawable;
        }
    }

    static void b(m rounded, RoundingParams roundingParams) {
        rounded.d(roundingParams.l());
        rounded.u(roundingParams.g());
        rounded.a(roundingParams.e(), roundingParams.f());
        rounded.g(roundingParams.j());
        rounded.o(roundingParams.n());
        rounded.n(roundingParams.k());
    }

    static com.facebook.drawee.drawable.d c(com.facebook.drawee.drawable.d parent) {
        while (true) {
            Drawable s9 = parent.s();
            if (s9 == parent || !(s9 instanceof com.facebook.drawee.drawable.d)) {
                break;
            }
            parent = (com.facebook.drawee.drawable.d) s9;
        }
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable d(@h Drawable drawable, @h RoundingParams roundingParams, Resources resources) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeApplyLeafRounding");
            }
            if (drawable != null && roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
                if (drawable instanceof com.facebook.drawee.drawable.h) {
                    com.facebook.drawee.drawable.d c10 = c((com.facebook.drawee.drawable.h) drawable);
                    c10.b(a(c10.b(f11628b), roundingParams, resources));
                    return drawable;
                }
                Drawable a10 = a(drawable, roundingParams, resources);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return a10;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return drawable;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @h
    static Drawable e(@h Drawable drawable, @h Matrix matrix) {
        return (drawable == null || matrix == null) ? drawable : new j(drawable, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable f(@h Drawable drawable, @h RoundingParams roundingParams) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeWrapWithRoundedOverlayColor");
            }
            if (drawable != null && roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
                RoundedCornersDrawable roundedCornersDrawable = new RoundedCornersDrawable(drawable);
                b(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.A(roundingParams.i());
                return roundedCornersDrawable;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return drawable;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h
    public static Drawable g(@h Drawable drawable, @h s.c scaleType) {
        return h(drawable, scaleType, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h
    public static Drawable h(@h Drawable drawable, @h s.c scaleType, @h PointF focusPoint) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("WrappingUtils#maybeWrapWithScaleType");
        }
        if (drawable != null && scaleType != null) {
            r rVar = new r(drawable, scaleType);
            if (focusPoint != null) {
                rVar.D(focusPoint);
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return rVar;
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return drawable;
    }

    static void i(m rounded) {
        rounded.d(false);
        rounded.h(0.0f);
        rounded.a(0, 0.0f);
        rounded.g(0.0f);
        rounded.o(false);
        rounded.n(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(com.facebook.drawee.drawable.d parent, @h RoundingParams roundingParams, Resources resources) {
        com.facebook.drawee.drawable.d c10 = c(parent);
        Drawable s9 = c10.s();
        if (roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
            if (s9 instanceof m) {
                b((m) s9, roundingParams);
            } else if (s9 != null) {
                c10.b(f11628b);
                c10.b(a(s9, roundingParams, resources));
            }
        } else if (s9 instanceof m) {
            i((m) s9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(com.facebook.drawee.drawable.d parent, @h RoundingParams roundingParams) {
        Drawable s9 = parent.s();
        if (roundingParams != null && roundingParams.m() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
            if (s9 instanceof RoundedCornersDrawable) {
                RoundedCornersDrawable roundedCornersDrawable = (RoundedCornersDrawable) s9;
                b(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.A(roundingParams.i());
                return;
            }
            parent.b(f(parent.b(f11628b), roundingParams));
        } else if (s9 instanceof RoundedCornersDrawable) {
            Drawable drawable = f11628b;
            parent.b(((RoundedCornersDrawable) s9).x(drawable));
            drawable.setCallback(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r l(com.facebook.drawee.drawable.d parent, s.c scaleType) {
        Drawable g4 = g(parent.b(f11628b), scaleType);
        parent.b(g4);
        com.facebook.common.internal.j.j(g4, "Parent has no child drawable!");
        return (r) g4;
    }
}
