package com.airbnb.lottie.model.content;

/* loaded from: classes.dex */
public class Mask {

    /* renamed from: a  reason: collision with root package name */
    private final MaskMode f4438a;

    /* renamed from: b  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.h f4439b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f4440c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4441d;

    /* loaded from: classes.dex */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT
    }

    public Mask(MaskMode maskMode, com.airbnb.lottie.model.animatable.h hVar, com.airbnb.lottie.model.animatable.d dVar, boolean z9) {
        this.f4438a = maskMode;
        this.f4439b = hVar;
        this.f4440c = dVar;
        this.f4441d = z9;
    }

    public MaskMode a() {
        return this.f4438a;
    }

    public com.airbnb.lottie.model.animatable.h b() {
        return this.f4439b;
    }

    public com.airbnb.lottie.model.animatable.d c() {
        return this.f4440c;
    }

    public boolean d() {
        return this.f4441d;
    }
}
