package com.gigamole.infinitecycleviewpager;

import android.view.View;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewPageable.java */
/* loaded from: classes2.dex */
public interface g {
    void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener);

    boolean beginFakeDrag();

    void endFakeDrag();

    void fakeDragBy(float f10);

    PagerAdapter getAdapter();

    View getChildAt(int i4);

    int getChildCount();

    int getCurrentItem();

    boolean hasWindowFocus();

    boolean isFakeDragging();

    boolean post(Runnable runnable);

    void setClipChildren(boolean z9);

    void setCurrentItem(int i4);

    void setDrawingCacheEnabled(boolean z9);

    void setOffscreenPageLimit(int i4);

    void setOverScrollMode(int i4);

    void setPageMargin(int i4);

    void setPageTransformer(boolean z9, ViewPager.PageTransformer pageTransformer);

    void setWillNotCacheDrawing(boolean z9);
}
