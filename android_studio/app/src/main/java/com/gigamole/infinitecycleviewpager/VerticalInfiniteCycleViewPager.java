package com.gigamole.infinitecycleviewpager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes2.dex */
public class VerticalInfiniteCycleViewPager extends VerticalViewPager implements g {
    private b U2;

    public VerticalInfiniteCycleViewPager(Context context) {
        super(context);
        V(context, null);
    }

    private void V(Context context, AttributeSet attributeSet) {
        this.U2 = new b(context, this, attributeSet);
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager
    public void O(int i4, boolean z9) {
        b bVar = this.U2;
        if (bVar != null) {
            super.O(bVar.v0(i4), true);
        }
    }

    public void W() {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.g0();
        }
    }

    public boolean X() {
        b bVar = this.U2;
        return bVar != null && bVar.h0();
    }

    public boolean Y() {
        b bVar = this.U2;
        return bVar != null && bVar.j0();
    }

    public void Z() {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.k0();
        }
    }

    public void a0() {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.o0();
        }
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, android.view.ViewGroup
    public void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, 0, layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        return super.addViewInLayout(view, 0, layoutParams);
    }

    public void b0(boolean z9) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.D0(z9);
        }
    }

    public void c0() {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.E0();
        }
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, com.gigamole.infinitecycleviewpager.g
    public PagerAdapter getAdapter() {
        b bVar = this.U2;
        if (bVar != null && bVar.W() != null) {
            return this.U2.W().a();
        }
        return super.getAdapter();
    }

    public float getCenterPageScaleOffset() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0.0f;
        }
        return bVar.V();
    }

    public Interpolator getInterpolator() {
        b bVar = this.U2;
        if (bVar == null) {
            return null;
        }
        return bVar.Y();
    }

    public float getMaxPageScale() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0.0f;
        }
        return bVar.Z();
    }

    public float getMinPageScale() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0.0f;
        }
        return bVar.a0();
    }

    public float getMinPageScaleOffset() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0.0f;
        }
        return bVar.b0();
    }

    public e getOnInfiniteCyclePageTransformListener() {
        b bVar = this.U2;
        if (bVar == null) {
            return null;
        }
        return bVar.c0();
    }

    public int getRealItem() {
        b bVar = this.U2;
        return bVar == null ? getCurrentItem() : bVar.d0();
    }

    public int getScrollDuration() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0;
        }
        return bVar.e0();
    }

    public int getState() {
        b bVar = this.U2;
        if (bVar == null) {
            return 0;
        }
        return bVar.f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.E0();
        }
        super.onDetachedFromWindow();
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z9 = true;
        try {
            b bVar = this.U2;
            if (bVar == null) {
                z9 = super.onInterceptTouchEvent(motionEvent);
            } else if (!bVar.l0(motionEvent) || !super.onInterceptTouchEvent(motionEvent)) {
                z9 = false;
            }
        } catch (IllegalArgumentException unused) {
        }
        return z9;
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z9 = true;
        try {
            b bVar = this.U2;
            if (bVar == null) {
                z9 = super.onTouchEvent(motionEvent);
            } else if (!bVar.m0(motionEvent) || !super.onTouchEvent(motionEvent)) {
                z9 = false;
            }
        } catch (IllegalArgumentException unused) {
        }
        return z9;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z9) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.n0(z9);
        }
        super.onWindowFocusChanged(z9);
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        b bVar = this.U2;
        if (bVar == null) {
            super.setAdapter(pagerAdapter);
            return;
        }
        super.setAdapter(bVar.t0(pagerAdapter));
        this.U2.q0();
    }

    public void setCenterPageScaleOffset(float f10) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.u0(f10);
        }
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingCacheEnabled(boolean z9) {
        super.setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingOrderEnabled(boolean z9) {
        super.setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup, com.gigamole.infinitecycleviewpager.g
    public void setClipChildren(boolean z9) {
        super.setClipChildren(false);
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, com.gigamole.infinitecycleviewpager.g
    public void setCurrentItem(int i4) {
        O(i4, true);
    }

    @Override // android.view.View, com.gigamole.infinitecycleviewpager.g
    public void setDrawingCacheEnabled(boolean z9) {
        super.setDrawingCacheEnabled(false);
    }

    public void setInterpolator(Interpolator interpolator) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.w0(interpolator);
        }
    }

    public void setMaxPageScale(float f10) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.x0(f10);
        }
    }

    public void setMediumScaled(boolean z9) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.y0(z9);
        }
    }

    public void setMinPageScale(float f10) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.z0(f10);
        }
    }

    public void setMinPageScaleOffset(float f10) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.A0(f10);
        }
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, com.gigamole.infinitecycleviewpager.g
    public void setOffscreenPageLimit(int i4) {
        super.setOffscreenPageLimit(2);
    }

    public void setOnInfiniteCyclePageTransformListener(e eVar) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.B0(eVar);
        }
    }

    @Override // android.view.View, com.gigamole.infinitecycleviewpager.g
    public void setOverScrollMode(int i4) {
        super.setOverScrollMode(2);
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, com.gigamole.infinitecycleviewpager.g
    public void setPageMargin(int i4) {
        super.setPageMargin(0);
    }

    @Override // com.gigamole.infinitecycleviewpager.VerticalViewPager, com.gigamole.infinitecycleviewpager.g
    public void setPageTransformer(boolean z9, ViewPager.PageTransformer pageTransformer) {
        b bVar = this.U2;
        if (bVar != null) {
            pageTransformer = bVar.X();
        }
        super.setPageTransformer(false, pageTransformer);
    }

    public void setScrollDuration(int i4) {
        b bVar = this.U2;
        if (bVar != null) {
            bVar.C0(i4);
        }
    }

    @Override // android.view.View, com.gigamole.infinitecycleviewpager.g
    public void setWillNotCacheDrawing(boolean z9) {
        super.setWillNotCacheDrawing(true);
    }

    public VerticalInfiniteCycleViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        V(context, attributeSet);
    }
}
