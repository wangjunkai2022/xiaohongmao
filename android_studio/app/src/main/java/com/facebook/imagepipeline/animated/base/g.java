package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import r7.h;

/* compiled from: AnimatedImageResultBuilder.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f11841a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f11842b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private List<com.facebook.common.references.a<Bitmap>> f11843c;

    /* renamed from: d  reason: collision with root package name */
    private int f11844d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private t1.a f11845e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d image) {
        this.f11841a = image;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<com.facebook.common.references.a<android.graphics.Bitmap>>, com.facebook.common.references.a<android.graphics.Bitmap>] */
    public f a() {
        try {
            return new f(this);
        } finally {
            com.facebook.common.references.a.k(this.f11842b);
            this.f11842b = null;
            com.facebook.common.references.a.p(this.f11843c);
            this.f11843c = null;
        }
    }

    @h
    public t1.a b() {
        return this.f11845e;
    }

    @h
    public List<com.facebook.common.references.a<Bitmap>> c() {
        return com.facebook.common.references.a.i(this.f11843c);
    }

    public int d() {
        return this.f11844d;
    }

    public d e() {
        return this.f11841a;
    }

    @h
    public com.facebook.common.references.a<Bitmap> f() {
        return com.facebook.common.references.a.h(this.f11842b);
    }

    public g g(@h t1.a bitmapTransformation) {
        this.f11845e = bitmapTransformation;
        return this;
    }

    public g h(@h List<com.facebook.common.references.a<Bitmap>> decodedFrames) {
        this.f11843c = com.facebook.common.references.a.i(decodedFrames);
        return this;
    }

    public g i(int frameForPreview) {
        this.f11844d = frameForPreview;
        return this;
    }

    public g j(@h com.facebook.common.references.a<Bitmap> previewBitmap) {
        this.f11842b = com.facebook.common.references.a.h(previewBitmap);
        return this;
    }
}
