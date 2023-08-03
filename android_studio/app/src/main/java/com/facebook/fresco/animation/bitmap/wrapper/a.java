package com.facebook.fresco.animation.bitmap.wrapper;

import com.facebook.fresco.animation.backend.d;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AnimatedDrawableBackendAnimationInformation.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements d {

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f11707c;

    public a(com.facebook.imagepipeline.animated.base.a animatedDrawableBackend) {
        this.f11707c = animatedDrawableBackend;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int a() {
        return this.f11707c.a();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        return this.f11707c.c();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int frameNumber) {
        return this.f11707c.m(frameNumber);
    }
}
