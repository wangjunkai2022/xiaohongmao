package com.shizhefei.view.indicator.slidebar;

import android.content.Context;
import android.view.View;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* compiled from: ColorBar.java */
/* loaded from: classes3.dex */
public class a implements ScrollBar {

    /* renamed from: a  reason: collision with root package name */
    protected ScrollBar.Gravity f55473a;

    /* renamed from: b  reason: collision with root package name */
    protected View f55474b;

    /* renamed from: c  reason: collision with root package name */
    protected int f55475c;

    /* renamed from: d  reason: collision with root package name */
    protected int f55476d;

    /* renamed from: e  reason: collision with root package name */
    protected int f55477e;

    public a(Context context, int i4, int i10) {
        this(context, i4, i10, ScrollBar.Gravity.BOTTOM);
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int a(int i4) {
        int i10 = this.f55476d;
        return i10 == 0 ? i4 : i10;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int b(int i4) {
        int i10 = this.f55477e;
        return i10 == 0 ? i4 : i10;
    }

    public int c() {
        return this.f55475c;
    }

    public void d(int i4) {
        this.f55475c = i4;
        this.f55474b.setBackgroundColor(i4);
    }

    public void e(ScrollBar.Gravity gravity) {
        this.f55473a = gravity;
    }

    public void f(int i4) {
        this.f55476d = i4;
    }

    public void g(int i4) {
        this.f55477e = i4;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public ScrollBar.Gravity getGravity() {
        return this.f55473a;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public View getSlideView() {
        return this.f55474b;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public void onPageScrolled(int i4, float f10, int i10) {
    }

    public a(Context context, int i4, int i10, ScrollBar.Gravity gravity) {
        View view = new View(context);
        this.f55474b = view;
        this.f55475c = i4;
        view.setBackgroundColor(i4);
        this.f55476d = i10;
        this.f55473a = gravity;
    }
}
