package com.shizhefei.view.indicator.slidebar;

import android.view.View;

/* loaded from: classes3.dex */
public interface ScrollBar {

    /* loaded from: classes3.dex */
    public enum Gravity {
        TOP,
        TOP_FLOAT,
        BOTTOM,
        BOTTOM_FLOAT,
        CENTENT,
        CENTENT_BACKGROUND
    }

    int a(int i4);

    int b(int i4);

    Gravity getGravity();

    View getSlideView();

    void onPageScrolled(int i4, float f10, int i10);
}
