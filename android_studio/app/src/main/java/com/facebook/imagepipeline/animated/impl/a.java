package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.facebook.common.internal.j;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.imagepipeline.animated.base.f;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawableBackendImpl.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements com.facebook.imagepipeline.animated.base.a {

    /* renamed from: a  reason: collision with root package name */
    private final l1.a f11855a;

    /* renamed from: b  reason: collision with root package name */
    private final f f11856b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.d f11857c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f11858d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f11859e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f11860f;

    /* renamed from: g  reason: collision with root package name */
    private final int f11861g;

    /* renamed from: h  reason: collision with root package name */
    private final AnimatedDrawableFrameInfo[] f11862h;

    /* renamed from: i  reason: collision with root package name */
    private final Rect f11863i = new Rect();

    /* renamed from: j  reason: collision with root package name */
    private final Rect f11864j = new Rect();

    /* renamed from: k  reason: collision with root package name */
    private final boolean f11865k;
    @h
    @s7.a("this")

    /* renamed from: l  reason: collision with root package name */
    private Bitmap f11866l;

    public a(l1.a animatedDrawableUtil, f animatedImageResult, @h Rect bounds, boolean downscaleFrameToDrawableDimensions) {
        this.f11855a = animatedDrawableUtil;
        this.f11856b = animatedImageResult;
        com.facebook.imagepipeline.animated.base.d f10 = animatedImageResult.f();
        this.f11857c = f10;
        int[] j4 = f10.j();
        this.f11859e = j4;
        animatedDrawableUtil.a(j4);
        this.f11861g = animatedDrawableUtil.e(j4);
        this.f11860f = animatedDrawableUtil.c(j4);
        this.f11858d = s(f10, bounds);
        this.f11865k = downscaleFrameToDrawableDimensions;
        this.f11862h = new AnimatedDrawableFrameInfo[f10.a()];
        for (int i4 = 0; i4 < this.f11857c.a(); i4++) {
            this.f11862h[i4] = this.f11857c.e(i4);
        }
    }

    private synchronized void r() {
        Bitmap bitmap = this.f11866l;
        if (bitmap != null) {
            bitmap.recycle();
            this.f11866l = null;
        }
    }

    private static Rect s(com.facebook.imagepipeline.animated.base.d image, @h Rect targetBounds) {
        if (targetBounds == null) {
            return new Rect(0, 0, image.getWidth(), image.getHeight());
        }
        return new Rect(0, 0, Math.min(targetBounds.width(), image.getWidth()), Math.min(targetBounds.height(), image.getHeight()));
    }

    private synchronized Bitmap t(int width, int height) {
        Bitmap bitmap = this.f11866l;
        if (bitmap != null && (bitmap.getWidth() < width || this.f11866l.getHeight() < height)) {
            r();
        }
        if (this.f11866l == null) {
            this.f11866l = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        this.f11866l.eraseColor(0);
        return this.f11866l;
    }

    private void u(Canvas canvas, e frame) {
        int width;
        int height;
        int c10;
        int d4;
        if (this.f11865k) {
            float max = Math.max(frame.getWidth() / Math.min(frame.getWidth(), canvas.getWidth()), frame.getHeight() / Math.min(frame.getHeight(), canvas.getHeight()));
            width = (int) (frame.getWidth() / max);
            height = (int) (frame.getHeight() / max);
            c10 = (int) (frame.c() / max);
            d4 = (int) (frame.d() / max);
        } else {
            width = frame.getWidth();
            height = frame.getHeight();
            c10 = frame.c();
            d4 = frame.d();
        }
        synchronized (this) {
            Bitmap t9 = t(width, height);
            this.f11866l = t9;
            frame.a(width, height, t9);
            canvas.save();
            canvas.translate(c10, d4);
            canvas.drawBitmap(this.f11866l, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }

    private void v(Canvas canvas, e frame) {
        double width = this.f11858d.width() / this.f11857c.getWidth();
        double height = this.f11858d.height() / this.f11857c.getHeight();
        int round = (int) Math.round(frame.getWidth() * width);
        int round2 = (int) Math.round(frame.getHeight() * height);
        int c10 = (int) (frame.c() * width);
        int d4 = (int) (frame.d() * height);
        synchronized (this) {
            int width2 = this.f11858d.width();
            int height2 = this.f11858d.height();
            t(width2, height2);
            Bitmap bitmap = this.f11866l;
            if (bitmap != null) {
                frame.a(round, round2, bitmap);
            }
            this.f11863i.set(0, 0, width2, height2);
            this.f11864j.set(c10, d4, width2 + c10, height2 + d4);
            Bitmap bitmap2 = this.f11866l;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.f11863i, this.f11864j, (Paint) null);
            }
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int a() {
        return this.f11857c.a();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int b() {
        return this.f11861g;
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int c() {
        return this.f11857c.c();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized void d() {
        r();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public AnimatedDrawableFrameInfo e(int frameNumber) {
        return this.f11862h[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public void f(int frameNumber, Canvas canvas) {
        e i4 = this.f11857c.i(frameNumber);
        try {
            if (this.f11857c.f()) {
                v(canvas, i4);
            } else {
                u(canvas, i4);
            }
        } finally {
            i4.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public com.facebook.imagepipeline.animated.base.a g(@h Rect bounds) {
        return s(this.f11857c, bounds).equals(this.f11858d) ? this : new a(this.f11855a, this.f11856b, bounds, this.f11865k);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getHeight() {
        return this.f11857c.getHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getWidth() {
        return this.f11857c.getWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public boolean h(int index) {
        return this.f11856b.h(index);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int i(int timestampMs) {
        return this.f11855a.b(this.f11860f, timestampMs);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    @h
    public com.facebook.common.references.a<Bitmap> j(int frameNumber) {
        return this.f11856b.d(frameNumber);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int k(int frameNumber) {
        j.g(frameNumber, this.f11860f.length);
        return this.f11860f[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized int l() {
        Bitmap bitmap;
        bitmap = this.f11866l;
        return (bitmap != null ? 0 + this.f11855a.d(bitmap) : 0) + this.f11857c.b();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int m(int frameNumber) {
        return this.f11859e[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int n() {
        return this.f11858d.height();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int o() {
        return this.f11858d.width();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int p() {
        return this.f11856b.e();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public f q() {
        return this.f11856b;
    }
}
