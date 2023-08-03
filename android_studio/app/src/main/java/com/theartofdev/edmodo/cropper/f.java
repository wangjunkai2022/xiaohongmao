package com.theartofdev.edmodo.cropper;

import android.graphics.RectF;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.CropWindowMoveHandler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CropWindowHandler.java */
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private float f58964c;

    /* renamed from: d  reason: collision with root package name */
    private float f58965d;

    /* renamed from: e  reason: collision with root package name */
    private float f58966e;

    /* renamed from: f  reason: collision with root package name */
    private float f58967f;

    /* renamed from: g  reason: collision with root package name */
    private float f58968g;

    /* renamed from: h  reason: collision with root package name */
    private float f58969h;

    /* renamed from: i  reason: collision with root package name */
    private float f58970i;

    /* renamed from: j  reason: collision with root package name */
    private float f58971j;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f58962a = new RectF();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f58963b = new RectF();

    /* renamed from: k  reason: collision with root package name */
    private float f58972k = 1.0f;

    /* renamed from: l  reason: collision with root package name */
    private float f58973l = 1.0f;

    private boolean a() {
        return !u();
    }

    private CropWindowMoveHandler.Type g(float f10, float f11) {
        float width = this.f58962a.width() / 6.0f;
        RectF rectF = this.f58962a;
        float f12 = rectF.left;
        float f13 = f12 + width;
        float f14 = f12 + (width * 5.0f);
        float height = rectF.height() / 6.0f;
        float f15 = this.f58962a.top;
        float f16 = f15 + height;
        float f17 = f15 + (height * 5.0f);
        if (f10 < f13) {
            if (f11 < f16) {
                return CropWindowMoveHandler.Type.TOP_LEFT;
            }
            if (f11 < f17) {
                return CropWindowMoveHandler.Type.LEFT;
            }
            return CropWindowMoveHandler.Type.BOTTOM_LEFT;
        } else if (f10 < f14) {
            if (f11 < f16) {
                return CropWindowMoveHandler.Type.TOP;
            }
            if (f11 < f17) {
                return CropWindowMoveHandler.Type.CENTER;
            }
            return CropWindowMoveHandler.Type.BOTTOM;
        } else if (f11 < f16) {
            return CropWindowMoveHandler.Type.TOP_RIGHT;
        } else {
            if (f11 < f17) {
                return CropWindowMoveHandler.Type.RIGHT;
            }
            return CropWindowMoveHandler.Type.BOTTOM_RIGHT;
        }
    }

    private CropWindowMoveHandler.Type i(float f10, float f11, float f12) {
        RectF rectF = this.f58962a;
        if (m(f10, f11, rectF.left, rectF.top, f12)) {
            return CropWindowMoveHandler.Type.TOP_LEFT;
        }
        RectF rectF2 = this.f58962a;
        if (m(f10, f11, rectF2.right, rectF2.top, f12)) {
            return CropWindowMoveHandler.Type.TOP_RIGHT;
        }
        RectF rectF3 = this.f58962a;
        if (m(f10, f11, rectF3.left, rectF3.bottom, f12)) {
            return CropWindowMoveHandler.Type.BOTTOM_LEFT;
        }
        RectF rectF4 = this.f58962a;
        if (m(f10, f11, rectF4.right, rectF4.bottom, f12)) {
            return CropWindowMoveHandler.Type.BOTTOM_RIGHT;
        }
        RectF rectF5 = this.f58962a;
        if (l(f10, f11, rectF5.left, rectF5.top, rectF5.right, rectF5.bottom) && a()) {
            return CropWindowMoveHandler.Type.CENTER;
        }
        RectF rectF6 = this.f58962a;
        if (n(f10, f11, rectF6.left, rectF6.right, rectF6.top, f12)) {
            return CropWindowMoveHandler.Type.TOP;
        }
        RectF rectF7 = this.f58962a;
        if (n(f10, f11, rectF7.left, rectF7.right, rectF7.bottom, f12)) {
            return CropWindowMoveHandler.Type.BOTTOM;
        }
        RectF rectF8 = this.f58962a;
        if (o(f10, f11, rectF8.left, rectF8.top, rectF8.bottom, f12)) {
            return CropWindowMoveHandler.Type.LEFT;
        }
        RectF rectF9 = this.f58962a;
        if (o(f10, f11, rectF9.right, rectF9.top, rectF9.bottom, f12)) {
            return CropWindowMoveHandler.Type.RIGHT;
        }
        RectF rectF10 = this.f58962a;
        if (!l(f10, f11, rectF10.left, rectF10.top, rectF10.right, rectF10.bottom) || a()) {
            return null;
        }
        return CropWindowMoveHandler.Type.CENTER;
    }

    private static boolean l(float f10, float f11, float f12, float f13, float f14, float f15) {
        return f10 > f12 && f10 < f14 && f11 > f13 && f11 < f15;
    }

    private static boolean m(float f10, float f11, float f12, float f13, float f14) {
        return Math.abs(f10 - f12) <= f14 && Math.abs(f11 - f13) <= f14;
    }

    private static boolean n(float f10, float f11, float f12, float f13, float f14, float f15) {
        return f10 > f12 && f10 < f13 && Math.abs(f11 - f14) <= f15;
    }

    private static boolean o(float f10, float f11, float f12, float f13, float f14, float f15) {
        return Math.abs(f10 - f12) <= f15 && f11 > f13 && f11 < f14;
    }

    public float b() {
        return Math.min(this.f58967f, this.f58971j / this.f58973l);
    }

    public float c() {
        return Math.min(this.f58966e, this.f58970i / this.f58972k);
    }

    public float d() {
        return Math.max(this.f58965d, this.f58969h / this.f58973l);
    }

    public float e() {
        return Math.max(this.f58964c, this.f58968g / this.f58972k);
    }

    public CropWindowMoveHandler f(float f10, float f11, float f12, CropImageView.CropShape cropShape) {
        CropWindowMoveHandler.Type i4;
        if (cropShape == CropImageView.CropShape.OVAL) {
            i4 = g(f10, f11);
        } else {
            i4 = i(f10, f11, f12);
        }
        if (i4 != null) {
            return new CropWindowMoveHandler(i4, this, f10, f11);
        }
        return null;
    }

    public RectF h() {
        this.f58963b.set(this.f58962a);
        return this.f58963b;
    }

    public float j() {
        return this.f58973l;
    }

    public float k() {
        return this.f58972k;
    }

    public void p(float f10, float f11, float f12, float f13) {
        this.f58966e = f10;
        this.f58967f = f11;
        this.f58972k = f12;
        this.f58973l = f13;
    }

    public void q(CropImageOptions cropImageOptions) {
        this.f58964c = cropImageOptions.minCropWindowWidth;
        this.f58965d = cropImageOptions.minCropWindowHeight;
        this.f58968g = cropImageOptions.minCropResultWidth;
        this.f58969h = cropImageOptions.minCropResultHeight;
        this.f58970i = cropImageOptions.maxCropResultWidth;
        this.f58971j = cropImageOptions.maxCropResultHeight;
    }

    public void r(int i4, int i10) {
        this.f58970i = i4;
        this.f58971j = i10;
    }

    public void s(int i4, int i10) {
        this.f58968g = i4;
        this.f58969h = i10;
    }

    public void t(RectF rectF) {
        this.f58962a.set(rectF);
    }

    public boolean u() {
        return this.f58962a.width() >= 100.0f && this.f58962a.height() >= 100.0f;
    }
}
