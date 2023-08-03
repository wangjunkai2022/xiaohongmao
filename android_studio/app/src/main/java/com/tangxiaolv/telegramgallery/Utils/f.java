package com.tangxiaolv.telegramgallery.Utils;

import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* compiled from: LayoutHelper.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final int f56598a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f56599b = -2;

    public static FrameLayout.LayoutParams a(int i4, float f10) {
        return new FrameLayout.LayoutParams(u(i4), u(f10));
    }

    public static FrameLayout.LayoutParams b(int i4, float f10, int i10, float f11, float f12, float f13, float f14) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(u(i4), u(f10), i10);
        layoutParams.setMargins(a.g(f11), a.g(f12), a.g(f13), a.g(f14));
        return layoutParams;
    }

    public static FrameLayout.LayoutParams c(int i4, int i10, int i11) {
        return new FrameLayout.LayoutParams(u(i4), u(i10), i11);
    }

    public static LinearLayout.LayoutParams d(int i4, int i10) {
        return new LinearLayout.LayoutParams(u(i4), u(i10));
    }

    public static LinearLayout.LayoutParams e(int i4, int i10, float f10) {
        return new LinearLayout.LayoutParams(u(i4), u(i10), f10);
    }

    public static LinearLayout.LayoutParams f(int i4, int i10, float f10, float f11, float f12, float f13) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10));
        layoutParams.setMargins(a.g(f10), a.g(f11), a.g(f12), a.g(f13));
        return layoutParams;
    }

    public static LinearLayout.LayoutParams g(int i4, int i10, float f10, int i11) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10), f10);
        layoutParams.gravity = i11;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams h(int i4, int i10, float f10, int i11, int i12, int i13, int i14) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10), f10);
        layoutParams.setMargins(a.g(i11), a.g(i12), a.g(i13), a.g(i14));
        return layoutParams;
    }

    public static LinearLayout.LayoutParams i(int i4, int i10, float f10, int i11, int i12, int i13, int i14, int i15) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10), f10);
        layoutParams.setMargins(a.g(i12), a.g(i13), a.g(i14), a.g(i15));
        layoutParams.gravity = i11;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams j(int i4, int i10, int i11) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10));
        layoutParams.gravity = i11;
        return layoutParams;
    }

    public static LinearLayout.LayoutParams k(int i4, int i10, int i11, int i12, int i13, int i14, int i15) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(u(i4), u(i10));
        layoutParams.setMargins(a.g(i12), a.g(i13), a.g(i14), a.g(i15));
        layoutParams.gravity = i11;
        return layoutParams;
    }

    public static RelativeLayout.LayoutParams l(float f10, float f11, int i4, int i10, int i11, int i12, int i13, int i14) {
        return m(f10, f11, i4, i10, i11, i12, -1, i13, i14);
    }

    public static RelativeLayout.LayoutParams m(float f10, float f11, int i4, int i10, int i11, int i12, int i13, int i14, int i15) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u(f10), u(f11));
        if (i13 >= 0) {
            layoutParams.addRule(i13);
        }
        if (i14 >= 0 && i15 >= 0) {
            layoutParams.addRule(i14, i15);
        }
        layoutParams.leftMargin = a.g(i4);
        layoutParams.topMargin = a.g(i10);
        layoutParams.rightMargin = a.g(i11);
        layoutParams.bottomMargin = a.g(i12);
        return layoutParams;
    }

    public static RelativeLayout.LayoutParams n(int i4, int i10) {
        return m(i4, i10, 0, 0, 0, 0, -1, -1, -1);
    }

    public static RelativeLayout.LayoutParams o(int i4, int i10, int i11) {
        return m(i4, i10, 0, 0, 0, 0, i11, -1, -1);
    }

    public static RelativeLayout.LayoutParams p(int i4, int i10, int i11, int i12) {
        return m(i4, i10, 0, 0, 0, 0, -1, i11, i12);
    }

    public static RelativeLayout.LayoutParams q(int i4, int i10, int i11, int i12, int i13) {
        return m(i4, i10, 0, 0, 0, 0, i11, i12, i13);
    }

    public static RelativeLayout.LayoutParams r(int i4, int i10, int i11, int i12, int i13, int i14) {
        return m(i4, i10, i11, i12, i13, i14, -1, -1, -1);
    }

    public static RelativeLayout.LayoutParams s(int i4, int i10, int i11, int i12, int i13, int i14, int i15) {
        return m(i4, i10, i11, i12, i13, i14, i15, -1, -1);
    }

    public static FrameLayout.LayoutParams t(int i4, int i10, int i11) {
        return new FrameLayout.LayoutParams(u(i4), u(i10), i11);
    }

    private static int u(float f10) {
        if (f10 >= 0.0f) {
            f10 = a.g(f10);
        }
        return (int) f10;
    }
}
