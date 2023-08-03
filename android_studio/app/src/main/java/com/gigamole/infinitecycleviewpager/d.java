package com.gigamole.infinitecycleviewpager;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: InfiniteCycleScroller.java */
/* loaded from: classes2.dex */
class d extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    private int f16228a;

    public d(Context context) {
        super(context);
    }

    public void a(int i4) {
        this.f16228a = i4;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i4, int i10, int i11, int i12, int i13) {
        super.startScroll(i4, i10, i11, i12, this.f16228a);
    }

    public d(Context context, Interpolator interpolator) {
        super(context, interpolator);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i4, int i10, int i11, int i12) {
        super.startScroll(i4, i10, i11, i12, this.f16228a);
    }

    public d(Context context, Interpolator interpolator, boolean z9) {
        super(context, interpolator, z9);
    }
}
