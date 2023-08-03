package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: b  reason: collision with root package name */
    private static final float f56103b = 0.01f;

    /* renamed from: a  reason: collision with root package name */
    private float f56104a;

    public AspectRatioFrameLayout(Context context) {
        super(context);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        if (this.f56104a == 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f10 = measuredWidth;
        float f11 = measuredHeight;
        float f12 = (this.f56104a / (f10 / f11)) - 1.0f;
        if (Math.abs(f12) <= 0.01f) {
            return;
        }
        if (f12 > 0.0f) {
            measuredHeight = (int) (f10 / this.f56104a);
        } else {
            measuredWidth = (int) (f11 * this.f56104a);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f56104a != f10) {
            this.f56104a = f10;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
