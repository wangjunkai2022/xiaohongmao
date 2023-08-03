package com.airbnb.lottie.value;

import android.graphics.PointF;
import androidx.annotation.NonNull;

/* compiled from: LottieRelativePointValueCallback.java */
/* loaded from: classes.dex */
public class i extends j<PointF> {

    /* renamed from: d  reason: collision with root package name */
    private final PointF f5674d;

    public i() {
        this.f5674d = new PointF();
    }

    public PointF e(b<PointF> bVar) {
        T t9 = this.f5677c;
        if (t9 != 0) {
            return (PointF) t9;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    @Override // com.airbnb.lottie.value.j
    /* renamed from: f */
    public final PointF a(b<PointF> bVar) {
        this.f5674d.set(com.airbnb.lottie.utils.g.j(bVar.g().x, bVar.b().x, bVar.c()), com.airbnb.lottie.utils.g.j(bVar.g().y, bVar.b().y, bVar.c()));
        PointF e4 = e(bVar);
        this.f5674d.offset(e4.x, e4.y);
        return this.f5674d;
    }

    public i(@NonNull PointF pointF) {
        super(pointF);
        this.f5674d = new PointF();
    }
}
