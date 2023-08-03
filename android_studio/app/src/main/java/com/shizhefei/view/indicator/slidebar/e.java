package com.shizhefei.view.indicator.slidebar;

import android.content.Context;
import android.graphics.Rect;
import android.widget.TextView;

/* compiled from: TextWidthColorBar.java */
/* loaded from: classes3.dex */
public class e extends a {

    /* renamed from: f  reason: collision with root package name */
    private com.shizhefei.view.indicator.c f55507f;

    /* renamed from: g  reason: collision with root package name */
    private int f55508g;

    public e(Context context, com.shizhefei.view.indicator.c cVar, int i4, int i10) {
        super(context, i4, i10);
        this.f55508g = 0;
        this.f55507f = cVar;
    }

    private int i(TextView textView) {
        if (textView == null) {
            return 0;
        }
        Rect rect = new Rect();
        String charSequence = textView.getText().toString();
        textView.getPaint().getTextBounds(charSequence, 0, charSequence.length(), rect);
        return rect.left + rect.width();
    }

    @Override // com.shizhefei.view.indicator.slidebar.a, com.shizhefei.view.indicator.slidebar.ScrollBar
    public int b(int i4) {
        TextView h4;
        if (this.f55508g == 0 && this.f55507f.getIndicatorAdapter() != null && (h4 = h(this.f55507f.getCurrentItem())) != null) {
            this.f55508g = i(h4);
        }
        return this.f55508g;
    }

    protected TextView h(int i4) {
        return (TextView) this.f55507f.a(i4);
    }

    @Override // com.shizhefei.view.indicator.slidebar.a, com.shizhefei.view.indicator.slidebar.ScrollBar
    public void onPageScrolled(int i4, float f10, int i10) {
        this.f55508g = (int) ((i(h(i4)) * (1.0f - f10)) + (i(h(i4 + 1)) * f10));
    }
}
