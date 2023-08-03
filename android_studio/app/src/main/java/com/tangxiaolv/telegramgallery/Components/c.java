package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;

/* compiled from: ClippingImageView.java */
/* loaded from: classes3.dex */
public class c extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f56148a;

    /* renamed from: b  reason: collision with root package name */
    private int f56149b;

    /* renamed from: c  reason: collision with root package name */
    private int f56150c;

    /* renamed from: d  reason: collision with root package name */
    private int f56151d;

    /* renamed from: e  reason: collision with root package name */
    private int f56152e;

    /* renamed from: f  reason: collision with root package name */
    private RectF f56153f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f56154g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap f56155h;

    /* renamed from: i  reason: collision with root package name */
    private Matrix f56156i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f56157j;

    /* renamed from: k  reason: collision with root package name */
    private int f56158k;

    /* renamed from: l  reason: collision with root package name */
    private BitmapShader f56159l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f56160m;

    /* renamed from: n  reason: collision with root package name */
    private RectF f56161n;

    /* renamed from: o  reason: collision with root package name */
    private RectF f56162o;

    /* renamed from: p  reason: collision with root package name */
    private Matrix f56163p;

    /* renamed from: q  reason: collision with root package name */
    private float f56164q;

    /* renamed from: r  reason: collision with root package name */
    private float[][] f56165r;

    public c(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f56154g = paint;
        paint.setFilterBitmap(true);
        this.f56156i = new Matrix();
        this.f56153f = new RectF();
        this.f56162o = new RectF();
        this.f56160m = new Paint(1);
        this.f56161n = new RectF();
        this.f56163p = new Matrix();
    }

    public float getAnimationProgress() {
        return this.f56164q;
    }

    public int getClipBottom() {
        return this.f56148a;
    }

    public int getClipHorizontal() {
        return this.f56150c;
    }

    public int getClipLeft() {
        return this.f56149b;
    }

    public int getClipRight() {
        return this.f56150c;
    }

    public int getClipTop() {
        return this.f56151d;
    }

    public int getRadius() {
        return this.f56158k;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int height;
        int width;
        if (getVisibility() == 0 && this.f56155h != null) {
            float scaleY = getScaleY();
            canvas.save();
            if (this.f56157j) {
                this.f56163p.reset();
                this.f56161n.set(0.0f, 0.0f, getWidth(), getHeight());
                int i4 = this.f56152e;
                if (i4 % 360 != 90 && i4 % 360 != 270) {
                    height = this.f56155h.getWidth();
                    width = this.f56155h.getHeight();
                } else {
                    height = this.f56155h.getHeight();
                    width = this.f56155h.getWidth();
                }
                float width2 = getWidth() != 0 ? height / getWidth() : 1.0f;
                float height2 = getHeight() != 0 ? width / getHeight() : 1.0f;
                float min = Math.min(width2, height2);
                if (Math.abs(width2 - height2) > 1.0E-5f) {
                    int floor = (int) Math.floor(getWidth() * min);
                    int floor2 = (int) Math.floor(getHeight() * min);
                    this.f56162o.set((height - floor) / 2, (width - floor2) / 2, floor, floor2);
                    this.f56163p.setRectToRect(this.f56162o, this.f56161n, Matrix.ScaleToFit.START);
                } else {
                    this.f56162o.set(0.0f, 0.0f, this.f56155h.getWidth(), this.f56155h.getHeight());
                    this.f56163p.setRectToRect(this.f56162o, this.f56161n, Matrix.ScaleToFit.FILL);
                }
                this.f56159l.setLocalMatrix(this.f56163p);
                canvas.clipRect(this.f56149b / scaleY, this.f56151d / scaleY, getWidth() - (this.f56150c / scaleY), getHeight() - (this.f56148a / scaleY));
                RectF rectF = this.f56161n;
                int i10 = this.f56158k;
                canvas.drawRoundRect(rectF, i10, i10, this.f56160m);
            } else {
                int i11 = this.f56152e;
                if (i11 == 90 || i11 == 270) {
                    this.f56153f.set((-getHeight()) / 2, (-getWidth()) / 2, getHeight() / 2, getWidth() / 2);
                    this.f56156i.setRectToRect(this.f56162o, this.f56153f, Matrix.ScaleToFit.FILL);
                    this.f56156i.postRotate(this.f56152e, 0.0f, 0.0f);
                    this.f56156i.postTranslate(getWidth() / 2, getHeight() / 2);
                } else if (i11 == 180) {
                    this.f56153f.set((-getWidth()) / 2, (-getHeight()) / 2, getWidth() / 2, getHeight() / 2);
                    this.f56156i.setRectToRect(this.f56162o, this.f56153f, Matrix.ScaleToFit.FILL);
                    this.f56156i.postRotate(this.f56152e, 0.0f, 0.0f);
                    this.f56156i.postTranslate(getWidth() / 2, getHeight() / 2);
                } else {
                    this.f56153f.set(0.0f, 0.0f, getWidth(), getHeight());
                    this.f56156i.setRectToRect(this.f56162o, this.f56153f, Matrix.ScaleToFit.FILL);
                }
                canvas.clipRect(this.f56149b / scaleY, this.f56151d / scaleY, getWidth() - (this.f56150c / scaleY), getHeight() - (this.f56148a / scaleY));
                try {
                    canvas.drawBitmap(this.f56155h, this.f56156i, this.f56154g);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            canvas.restore();
        }
    }

    public void setAnimationProgress(float f10) {
        this.f56164q = f10;
        float[][] fArr = this.f56165r;
        setScaleX(fArr[0][0] + ((fArr[1][0] - fArr[0][0]) * f10));
        float[][] fArr2 = this.f56165r;
        setScaleY(fArr2[0][1] + ((fArr2[1][1] - fArr2[0][1]) * this.f56164q));
        float[][] fArr3 = this.f56165r;
        setTranslationX(fArr3[0][2] + ((fArr3[1][2] - fArr3[0][2]) * this.f56164q));
        float[][] fArr4 = this.f56165r;
        setTranslationY(fArr4[0][3] + ((fArr4[1][3] - fArr4[0][3]) * this.f56164q));
        float[][] fArr5 = this.f56165r;
        setClipHorizontal((int) (fArr5[0][4] + ((fArr5[1][4] - fArr5[0][4]) * this.f56164q)));
        float[][] fArr6 = this.f56165r;
        setClipTop((int) (fArr6[0][5] + ((fArr6[1][5] - fArr6[0][5]) * this.f56164q)));
        float[][] fArr7 = this.f56165r;
        setClipBottom((int) (fArr7[0][6] + ((fArr7[1][6] - fArr7[0][6]) * this.f56164q)));
        float[][] fArr8 = this.f56165r;
        setRadius((int) (fArr8[0][7] + ((fArr8[1][7] - fArr8[0][7]) * this.f56164q)));
        invalidate();
    }

    public void setAnimationValues(float[][] fArr) {
        this.f56165r = fArr;
    }

    public void setClipBottom(int i4) {
        this.f56148a = i4;
        invalidate();
    }

    public void setClipHorizontal(int i4) {
        this.f56150c = i4;
        this.f56149b = i4;
        invalidate();
    }

    public void setClipLeft(int i4) {
        this.f56149b = i4;
        invalidate();
    }

    public void setClipRight(int i4) {
        this.f56150c = i4;
        invalidate();
    }

    public void setClipTop(int i4) {
        this.f56151d = i4;
        invalidate();
    }

    public void setClipVertical(int i4) {
        this.f56148a = i4;
        this.f56151d = i4;
        invalidate();
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.f56155h = bitmap;
        if (bitmap != null) {
            this.f56162o.set(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            if (this.f56157j) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                this.f56159l = bitmapShader;
                this.f56160m.setShader(bitmapShader);
            }
        }
        invalidate();
    }

    public void setNeedRadius(boolean z9) {
        this.f56157j = z9;
    }

    public void setOrientation(int i4) {
        this.f56152e = i4;
    }

    public void setRadius(int i4) {
        this.f56158k = i4;
    }
}
