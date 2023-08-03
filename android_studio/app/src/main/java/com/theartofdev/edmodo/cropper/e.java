package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CropImageAnimation.java */
/* loaded from: classes3.dex */
public final class e extends Animation implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f58951a;

    /* renamed from: b  reason: collision with root package name */
    private final CropOverlayView f58952b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f58953c = new float[8];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f58954d = new float[8];

    /* renamed from: e  reason: collision with root package name */
    private final RectF f58955e = new RectF();

    /* renamed from: f  reason: collision with root package name */
    private final RectF f58956f = new RectF();

    /* renamed from: g  reason: collision with root package name */
    private final float[] f58957g = new float[9];

    /* renamed from: h  reason: collision with root package name */
    private final float[] f58958h = new float[9];

    /* renamed from: i  reason: collision with root package name */
    private final RectF f58959i = new RectF();

    /* renamed from: j  reason: collision with root package name */
    private final float[] f58960j = new float[8];

    /* renamed from: k  reason: collision with root package name */
    private final float[] f58961k = new float[9];

    public e(ImageView imageView, CropOverlayView cropOverlayView) {
        this.f58951a = imageView;
        this.f58952b = cropOverlayView;
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    public void a(float[] fArr, Matrix matrix) {
        System.arraycopy(fArr, 0, this.f58954d, 0, 8);
        this.f58956f.set(this.f58952b.getCropWindowRect());
        matrix.getValues(this.f58958h);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f10, Transformation transformation) {
        float[] fArr;
        RectF rectF = this.f58959i;
        RectF rectF2 = this.f58955e;
        float f11 = rectF2.left;
        RectF rectF3 = this.f58956f;
        rectF.left = f11 + ((rectF3.left - f11) * f10);
        float f12 = rectF2.top;
        rectF.top = f12 + ((rectF3.top - f12) * f10);
        float f13 = rectF2.right;
        rectF.right = f13 + ((rectF3.right - f13) * f10);
        float f14 = rectF2.bottom;
        rectF.bottom = f14 + ((rectF3.bottom - f14) * f10);
        this.f58952b.setCropWindowRect(rectF);
        int i4 = 0;
        int i10 = 0;
        while (true) {
            fArr = this.f58960j;
            if (i10 >= fArr.length) {
                break;
            }
            float[] fArr2 = this.f58953c;
            fArr[i10] = fArr2[i10] + ((this.f58954d[i10] - fArr2[i10]) * f10);
            i10++;
        }
        this.f58952b.t(fArr, this.f58951a.getWidth(), this.f58951a.getHeight());
        while (true) {
            float[] fArr3 = this.f58961k;
            if (i4 < fArr3.length) {
                float[] fArr4 = this.f58957g;
                fArr3[i4] = fArr4[i4] + ((this.f58958h[i4] - fArr4[i4]) * f10);
                i4++;
            } else {
                Matrix imageMatrix = this.f58951a.getImageMatrix();
                imageMatrix.setValues(this.f58961k);
                this.f58951a.setImageMatrix(imageMatrix);
                this.f58951a.invalidate();
                this.f58952b.invalidate();
                return;
            }
        }
    }

    public void b(float[] fArr, Matrix matrix) {
        reset();
        System.arraycopy(fArr, 0, this.f58953c, 0, 8);
        this.f58955e.set(this.f58952b.getCropWindowRect());
        matrix.getValues(this.f58957g);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f58951a.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
