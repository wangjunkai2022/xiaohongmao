package com.shizhefei.view.viewpager;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: DurationScroller.java */
/* loaded from: classes3.dex */
public class a extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    private int f55510a;

    public a(Context context) {
        super(context);
        this.f55510a = 800;
    }

    public int a() {
        return this.f55510a;
    }

    public void b(int i4) {
        this.f55510a = i4;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i4, int i10, int i11, int i12, int i13) {
        super.startScroll(i4, i10, i11, i12, this.f55510a);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i4, int i10, int i11, int i12) {
        super.startScroll(i4, i10, i11, i12, this.f55510a);
    }

    public a(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.f55510a = 800;
    }

    @TargetApi(11)
    public a(Context context, Interpolator interpolator, boolean z9) {
        super(context, interpolator, z9);
        this.f55510a = 800;
    }
}
