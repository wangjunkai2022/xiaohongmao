package com.shizhefei.view.viewpager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes3.dex */
public class SViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f55509a;

    public SViewPager(Context context) {
        super(context);
        this.f55509a = false;
    }

    public boolean a() {
        return this.f55509a;
    }

    public void b() {
        this.f55509a = !this.f55509a;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f55509a) {
            try {
                return super.onInterceptTouchEvent(motionEvent);
            } catch (IllegalArgumentException e4) {
                e4.printStackTrace();
            }
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f55509a) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setCanScroll(boolean z9) {
        this.f55509a = z9;
    }

    public SViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f55509a = false;
    }
}
