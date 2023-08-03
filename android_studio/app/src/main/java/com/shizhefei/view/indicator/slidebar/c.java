package com.shizhefei.view.indicator.slidebar;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* compiled from: LayoutBar.java */
/* loaded from: classes3.dex */
public class c implements ScrollBar {

    /* renamed from: a  reason: collision with root package name */
    protected Context f55482a;

    /* renamed from: b  reason: collision with root package name */
    protected int f55483b;

    /* renamed from: c  reason: collision with root package name */
    protected View f55484c;

    /* renamed from: d  reason: collision with root package name */
    protected int f55485d;

    /* renamed from: e  reason: collision with root package name */
    protected int f55486e;

    /* renamed from: f  reason: collision with root package name */
    protected ScrollBar.Gravity f55487f;

    /* renamed from: g  reason: collision with root package name */
    private ViewGroup.LayoutParams f55488g;

    public c(Context context, int i4) {
        this(context, i4, ScrollBar.Gravity.BOTTOM);
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int a(int i4) {
        int i10 = this.f55485d;
        if (i10 <= 0) {
            this.f55488g.height = i4;
            return i4;
        }
        return i10;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int b(int i4) {
        int i10 = this.f55486e;
        if (i10 <= 0) {
            this.f55488g.width = i4;
            return i4;
        }
        return i10;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public ScrollBar.Gravity getGravity() {
        return this.f55487f;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public View getSlideView() {
        return this.f55484c;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public void onPageScrolled(int i4, float f10, int i10) {
    }

    public c(Context context, int i4, ScrollBar.Gravity gravity) {
        this.f55482a = context;
        this.f55483b = i4;
        View inflate = LayoutInflater.from(context).inflate(i4, (ViewGroup) new LinearLayout(context), false);
        this.f55484c = inflate;
        this.f55488g = inflate.getLayoutParams();
        this.f55485d = this.f55484c.getLayoutParams().height;
        this.f55486e = this.f55484c.getLayoutParams().width;
        this.f55487f = gravity;
    }
}
