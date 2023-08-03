package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;

/* compiled from: PathKeyframe.java */
/* loaded from: classes.dex */
public class h extends com.airbnb.lottie.value.a<PointF> {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Path f4217q;

    /* renamed from: r  reason: collision with root package name */
    private final com.airbnb.lottie.value.a<PointF> f4218r;

    public h(com.airbnb.lottie.f fVar, com.airbnb.lottie.value.a<PointF> aVar) {
        super(fVar, aVar.f5650b, aVar.f5651c, aVar.f5652d, aVar.f5653e, aVar.f5654f);
        this.f4218r = aVar;
        i();
    }

    public void i() {
        T t9;
        T t10 = this.f5651c;
        boolean z9 = (t10 == 0 || (t9 = this.f5650b) == 0 || !((PointF) t9).equals(((PointF) t10).x, ((PointF) t10).y)) ? false : true;
        T t11 = this.f5651c;
        if (t11 == 0 || z9) {
            return;
        }
        com.airbnb.lottie.value.a<PointF> aVar = this.f4218r;
        this.f4217q = com.airbnb.lottie.utils.h.d((PointF) this.f5650b, (PointF) t11, aVar.f5661m, aVar.f5662n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Path j() {
        return this.f4217q;
    }
}
