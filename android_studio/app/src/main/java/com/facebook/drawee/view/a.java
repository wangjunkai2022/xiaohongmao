package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AspectRatioMeasure.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* compiled from: AspectRatioMeasure.java */
    /* renamed from: com.facebook.drawee.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0092a {

        /* renamed from: a  reason: collision with root package name */
        public int f11644a;

        /* renamed from: b  reason: collision with root package name */
        public int f11645b;
    }

    private static boolean a(int layoutDimension) {
        return layoutDimension == 0 || layoutDimension == -2;
    }

    public static void b(C0092a spec, float aspectRatio, @h ViewGroup.LayoutParams layoutParams, int widthPadding, int heightPadding) {
        if (aspectRatio <= 0.0f || layoutParams == null) {
            return;
        }
        if (a(layoutParams.height)) {
            spec.f11645b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(spec.f11644a) - widthPadding) / aspectRatio) + heightPadding), spec.f11645b), 1073741824);
        } else if (a(layoutParams.width)) {
            spec.f11644a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(spec.f11645b) - heightPadding) * aspectRatio) + widthPadding), spec.f11644a), 1073741824);
        }
    }
}
