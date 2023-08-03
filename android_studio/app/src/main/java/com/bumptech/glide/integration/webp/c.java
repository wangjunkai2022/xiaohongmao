package com.bumptech.glide.integration.webp;

/* compiled from: WebpFrameInfo.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final int f8370a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8371b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8372c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8373d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8374e;

    /* renamed from: f  reason: collision with root package name */
    public final int f8375f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f8376g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f8377h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(int i4, WebpFrame webpFrame) {
        this.f8370a = i4;
        this.f8371b = webpFrame.getXOffest();
        this.f8372c = webpFrame.getYOffest();
        this.f8373d = webpFrame.getWidth();
        this.f8374e = webpFrame.getHeight();
        this.f8375f = webpFrame.getDurationMs();
        this.f8376g = webpFrame.isBlendWithPreviousFrame();
        this.f8377h = webpFrame.shouldDisposeToBackgroundColor();
    }

    public String toString() {
        return "frameNumber=" + this.f8370a + ", xOffset=" + this.f8371b + ", yOffset=" + this.f8372c + ", width=" + this.f8373d + ", height=" + this.f8374e + ", duration=" + this.f8375f + ", blendPreviousFrame=" + this.f8376g + ", disposeBackgroundColor=" + this.f8377h;
    }
}
