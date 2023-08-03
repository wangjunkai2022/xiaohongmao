package com.shizhefei.view.indicator.slidebar;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* compiled from: DrawableBar.java */
/* loaded from: classes3.dex */
public class b implements ScrollBar {

    /* renamed from: a  reason: collision with root package name */
    protected ScrollBar.Gravity f55478a;

    /* renamed from: b  reason: collision with root package name */
    protected View f55479b;

    /* renamed from: c  reason: collision with root package name */
    protected int f55480c;

    /* renamed from: d  reason: collision with root package name */
    protected Drawable f55481d;

    public b(Context context, int i4) {
        this(context, i4, ScrollBar.Gravity.BOTTOM);
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int a(int i4) {
        return this.f55481d.getIntrinsicHeight();
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int b(int i4) {
        return this.f55481d.getIntrinsicWidth();
    }

    public int c() {
        return this.f55480c;
    }

    public void d(int i4) {
        this.f55480c = i4;
        this.f55479b.setBackgroundColor(i4);
    }

    public b e(ScrollBar.Gravity gravity) {
        this.f55478a = gravity;
        return this;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public ScrollBar.Gravity getGravity() {
        return this.f55478a;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public View getSlideView() {
        return this.f55479b;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public void onPageScrolled(int i4, float f10, int i10) {
    }

    public b(Context context, int i4, ScrollBar.Gravity gravity) {
        this(context, context.getResources().getDrawable(i4), gravity);
    }

    public b(Context context, Drawable drawable) {
        this(context, drawable, ScrollBar.Gravity.BOTTOM);
    }

    @TargetApi(16)
    public b(Context context, Drawable drawable, ScrollBar.Gravity gravity) {
        View view = new View(context);
        this.f55479b = view;
        this.f55481d = drawable;
        view.setBackground(drawable);
        this.f55478a = gravity;
    }
}
