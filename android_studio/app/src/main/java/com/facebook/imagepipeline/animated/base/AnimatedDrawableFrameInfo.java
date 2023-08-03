package com.facebook.imagepipeline.animated.base;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class AnimatedDrawableFrameInfo {

    /* renamed from: a  reason: collision with root package name */
    public final int f11817a;

    /* renamed from: b  reason: collision with root package name */
    public final int f11818b;

    /* renamed from: c  reason: collision with root package name */
    public final int f11819c;

    /* renamed from: d  reason: collision with root package name */
    public final int f11820d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11821e;

    /* renamed from: f  reason: collision with root package name */
    public final BlendOperation f11822f;

    /* renamed from: g  reason: collision with root package name */
    public final DisposalMethod f11823g;

    /* loaded from: classes.dex */
    public enum BlendOperation {
        BLEND_WITH_PREVIOUS,
        NO_BLEND
    }

    /* loaded from: classes.dex */
    public enum DisposalMethod {
        DISPOSE_DO_NOT,
        DISPOSE_TO_BACKGROUND,
        DISPOSE_TO_PREVIOUS
    }

    public AnimatedDrawableFrameInfo(int frameNumber, int xOffset, int yOffset, int width, int height, BlendOperation blendOperation, DisposalMethod disposalMethod) {
        this.f11817a = frameNumber;
        this.f11818b = xOffset;
        this.f11819c = yOffset;
        this.f11820d = width;
        this.f11821e = height;
        this.f11822f = blendOperation;
        this.f11823g = disposalMethod;
    }
}
