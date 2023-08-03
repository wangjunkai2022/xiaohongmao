package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.FrameLayout;

/* compiled from: PhotoCropView.java */
/* loaded from: classes3.dex */
public class d extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f56166a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f56167b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f56168c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f56169d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f56170e;

    /* renamed from: f  reason: collision with root package name */
    private float f56171f;

    /* renamed from: g  reason: collision with root package name */
    private float f56172g;

    /* renamed from: h  reason: collision with root package name */
    private int f56173h;

    /* renamed from: i  reason: collision with root package name */
    private int f56174i;

    /* renamed from: j  reason: collision with root package name */
    private float f56175j;

    /* renamed from: k  reason: collision with root package name */
    private float f56176k;

    /* renamed from: l  reason: collision with root package name */
    private int f56177l;

    /* renamed from: m  reason: collision with root package name */
    private int f56178m;

    /* renamed from: n  reason: collision with root package name */
    private int f56179n;

    /* renamed from: o  reason: collision with root package name */
    private int f56180o;

    /* renamed from: p  reason: collision with root package name */
    private float f56181p;

    /* renamed from: q  reason: collision with root package name */
    private float f56182q;

    /* renamed from: r  reason: collision with root package name */
    private float f56183r;

    /* renamed from: s  reason: collision with root package name */
    private float f56184s;

    /* renamed from: t  reason: collision with root package name */
    private float f56185t;

    /* renamed from: u  reason: collision with root package name */
    private b f56186u;

    /* renamed from: v  reason: collision with root package name */
    private Bitmap f56187v;

    /* renamed from: w  reason: collision with root package name */
    private RectF f56188w;

    /* renamed from: x  reason: collision with root package name */
    private RectF f56189x;

    /* renamed from: y  reason: collision with root package name */
    private Runnable f56190y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoCropView.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f56190y == this) {
                d.this.f56190y = null;
                d.this.e(true);
            }
        }
    }

    /* compiled from: PhotoCropView.java */
    /* loaded from: classes3.dex */
    public interface b {
        Bitmap a();

        void b(float f10, float f11, float f12, boolean z9);
    }

    public d(Context context) {
        super(context);
        this.f56166a = true;
        this.f56171f = 600.0f;
        this.f56172g = 600.0f;
        this.f56173h = 0;
        this.f56175j = 0.0f;
        this.f56176k = 0.0f;
        this.f56177l = 1;
        this.f56178m = 1;
        this.f56181p = -1.0f;
        this.f56182q = -1.0f;
        this.f56183r = 1.0f;
        this.f56184s = 0.0f;
        this.f56185t = 0.0f;
        Paint paint = new Paint();
        this.f56167b = paint;
        paint.setColor(-1291845633);
        this.f56167b.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(2.0f));
        this.f56167b.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint();
        this.f56168c = paint2;
        paint2.setColor(-1);
        Paint paint3 = new Paint();
        this.f56169d = paint3;
        paint3.setColor(2130706432);
        Paint paint4 = new Paint();
        this.f56170e = paint4;
        paint4.setColor(436207616);
        setWillNotDraw(false);
    }

    private Bitmap d(int i4, int i10, int i11, int i12) {
        Bitmap a10 = this.f56186u.a();
        if (a10 != null) {
            this.f56187v = a10;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(6);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-this.f56187v.getWidth()) / 2, (-this.f56187v.getHeight()) / 2);
        matrix.postRotate(this.f56174i);
        int i13 = this.f56174i;
        if (i13 % 360 != 90 && i13 % 360 != 270) {
            matrix.postTranslate((this.f56187v.getWidth() / 2) - i4, (this.f56187v.getHeight() / 2) - i10);
        } else {
            matrix.postTranslate((this.f56187v.getHeight() / 2) - i4, (this.f56187v.getWidth() / 2) - i10);
        }
        canvas.drawBitmap(this.f56187v, matrix, paint);
        try {
            canvas.setBitmap(null);
        } catch (Exception unused) {
        }
        return createBitmap;
    }

    public void c() {
        Runnable runnable = this.f56190y;
        if (runnable != null) {
            com.tangxiaolv.telegramgallery.Utils.a.c(runnable);
            this.f56190y = null;
            this.f56188w = null;
            this.f56189x = null;
        }
    }

    public void e(boolean z9) {
        float f10 = this.f56171f;
        float f11 = this.f56177l / f10;
        float f12 = this.f56172g;
        float f13 = this.f56178m / f12;
        if (f11 > f13) {
            f11 = f13;
        }
        if (f11 > 1.0f) {
            float f14 = this.f56183r;
            if (f11 * f14 > 3.0f) {
                f11 = 3.0f / f14;
                float f15 = f10 * f11;
                float f16 = f12 * f11;
                float width = (((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f15) / 2.0f) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
                float height = (((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f16) / 2.0f) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
                this.f56188w = new RectF(this.f56181p, this.f56182q, this.f56171f, this.f56172g);
                this.f56189x = new RectF(width, height, f15, f16);
                float f17 = f11 - 1.0f;
                this.f56186u.b(width + ((getWidth() / 2) * f17) + ((this.f56184s - this.f56181p) * f11), height + ((getHeight() / 2) * f17) + ((this.f56185t - this.f56182q) * f11), this.f56183r * f11, z9);
            }
        }
        if (f11 < 1.0f) {
            float f18 = this.f56183r;
            if (f11 * f18 < 1.0f) {
                f11 = 1.0f / f18;
            }
        }
        float f152 = f10 * f11;
        float f162 = f12 * f11;
        float width2 = (((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f152) / 2.0f) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        float height2 = (((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f162) / 2.0f) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        this.f56188w = new RectF(this.f56181p, this.f56182q, this.f56171f, this.f56172g);
        this.f56189x = new RectF(width2, height2, f152, f162);
        float f172 = f11 - 1.0f;
        this.f56186u.b(width2 + ((getWidth() / 2) * f172) + ((this.f56184s - this.f56181p) * f11), height2 + ((getHeight() / 2) * f172) + ((this.f56185t - this.f56182q) * f11), this.f56183r * f11, z9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c5, code lost:
        if (r8 == 8) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:246:0x04c1 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x04c3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean f(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 1221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Components.d.f(android.view.MotionEvent):boolean");
    }

    public void g(Bitmap bitmap, int i4, boolean z9) {
        this.f56187v = bitmap;
        this.f56171f = 600.0f;
        this.f56172g = 600.0f;
        this.f56173h = 0;
        this.f56175j = 0.0f;
        this.f56176k = 0.0f;
        this.f56177l = 1;
        this.f56178m = 1;
        this.f56181p = -1.0f;
        this.f56182q = -1.0f;
        this.f56166a = z9;
        this.f56174i = i4;
        requestLayout();
    }

    public Bitmap getBitmap() {
        int height;
        int width;
        Bitmap a10 = this.f56186u.a();
        if (a10 != null) {
            this.f56187v = a10;
        }
        float f10 = this.f56183r;
        float f11 = this.f56177l * f10;
        float f12 = this.f56178m * f10;
        float width2 = (((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f11) / 2.0f) + this.f56184s + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        float height2 = (((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - f12) / 2.0f) + this.f56185t + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        float f13 = (this.f56181p - width2) / f11;
        float f14 = (this.f56182q - height2) / f12;
        float f15 = this.f56171f / f11;
        float f16 = this.f56172g / f12;
        int i4 = this.f56174i;
        if (i4 % 360 != 90 && i4 % 360 != 270) {
            height = this.f56187v.getWidth();
            width = this.f56187v.getHeight();
        } else {
            height = this.f56187v.getHeight();
            width = this.f56187v.getWidth();
        }
        float f17 = height;
        int i10 = (int) (f13 * f17);
        float f18 = width;
        int i11 = (int) (f14 * f18);
        int i12 = (int) (f15 * f17);
        int i13 = (int) (f16 * f18);
        if (i10 < 0) {
            i10 = 0;
        }
        if (i11 < 0) {
            i11 = 0;
        }
        if (i10 + i12 > height) {
            i12 = height - i10;
        }
        if (i11 + i13 > width) {
            i13 = width - i11;
        }
        try {
            return d(i10, i11, i12, i13);
        } catch (Throwable th) {
            th.printStackTrace();
            System.gc();
            try {
                return d(i10, i11, i12, i13);
            } catch (Throwable unused) {
                th.printStackTrace();
                return null;
            }
        }
    }

    public float getBitmapX() {
        return this.f56179n - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
    }

    public float getBitmapY() {
        return this.f56180o - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
    }

    public float getLimitHeight() {
        return (((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f)) - this.f56182q) - ((int) Math.max(0.0d, Math.ceil(((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - (this.f56178m * this.f56183r)) / 2.0f)))) - this.f56172g;
    }

    public float getLimitWidth() {
        return (((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f)) - this.f56181p) - ((int) Math.max(0.0d, Math.ceil(((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - (this.f56177l * this.f56183r)) / 2.0f)))) - this.f56171f;
    }

    public float getLimitX() {
        return this.f56181p - (((int) Math.max(0.0d, Math.ceil(((getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - (this.f56177l * this.f56183r)) / 2.0f))) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f));
    }

    public float getLimitY() {
        return this.f56182q - (((int) Math.max(0.0d, Math.ceil(((getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f)) - (this.f56178m * this.f56183r)) / 2.0f))) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f));
    }

    public float getRectSizeX() {
        return this.f56171f;
    }

    public float getRectSizeY() {
        return this.f56172g;
    }

    public float getRectX() {
        return this.f56181p - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
    }

    public float getRectY() {
        return this.f56182q - com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
    }

    public void h(float f10, float f11, float f12) {
        this.f56183r = f10;
        this.f56184s = f11;
        this.f56185t = f12;
    }

    public void i() {
        if (this.f56190y != null) {
            return;
        }
        a aVar = new a();
        this.f56190y = aVar;
        com.tangxiaolv.telegramgallery.Utils.a.E(aVar, 1500L);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, getWidth(), this.f56182q, this.f56169d);
        float f10 = this.f56182q;
        canvas.drawRect(0.0f, f10, this.f56181p, f10 + this.f56172g, this.f56169d);
        canvas.drawRect(this.f56181p + this.f56171f, this.f56182q, getWidth(), this.f56182q + this.f56172g, this.f56169d);
        canvas.drawRect(0.0f, this.f56182q + this.f56172g, getWidth(), getHeight(), this.f56169d);
        int g4 = com.tangxiaolv.telegramgallery.Utils.a.g(1.0f);
        float f11 = this.f56181p;
        float f12 = g4 * 2;
        canvas.drawRect(f11 - f12, this.f56182q - f12, (f11 - f12) + com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56182q, this.f56168c);
        float f13 = this.f56181p;
        float f14 = this.f56182q;
        canvas.drawRect(f13 - f12, f14 - f12, f13, (f14 - f12) + com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56168c);
        float f15 = this.f56182q;
        canvas.drawRect(((this.f56181p + this.f56171f) + f12) - com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), f15 - f12, this.f56181p + this.f56171f + f12, f15, this.f56168c);
        float f16 = this.f56181p;
        float f17 = this.f56171f;
        float f18 = this.f56182q;
        canvas.drawRect(f16 + f17, f18 - f12, f16 + f17 + f12, (f18 - f12) + com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56168c);
        canvas.drawRect(this.f56181p - f12, ((this.f56182q + this.f56172g) + f12) - com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56181p, this.f56182q + this.f56172g + f12, this.f56168c);
        float f19 = this.f56181p;
        canvas.drawRect(f19 - f12, this.f56172g + this.f56182q, (f19 - f12) + com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56182q + this.f56172g + f12, this.f56168c);
        float g10 = ((this.f56181p + this.f56171f) + f12) - com.tangxiaolv.telegramgallery.Utils.a.g(20.0f);
        float f20 = this.f56182q;
        float f21 = this.f56172g;
        canvas.drawRect(g10, f20 + f21, this.f56181p + this.f56171f + f12, f20 + f21 + f12, this.f56168c);
        canvas.drawRect(this.f56181p + this.f56171f, ((this.f56182q + this.f56172g) + f12) - com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), this.f56181p + this.f56171f + f12, this.f56182q + this.f56172g + f12, this.f56168c);
        for (int i4 = 1; i4 < 3; i4++) {
            float f22 = this.f56181p;
            float f23 = this.f56171f;
            float f24 = i4;
            float f25 = g4;
            float f26 = this.f56182q;
            canvas.drawRect((((f23 / 3.0f) * f24) + f22) - f25, f26, f22 + f12 + ((f23 / 3.0f) * f24), f26 + this.f56172g, this.f56170e);
            float f27 = this.f56181p;
            float f28 = this.f56182q;
            float f29 = this.f56172g;
            canvas.drawRect(f27, (((f29 / 3.0f) * f24) + f28) - f25, f27 + this.f56171f, f28 + ((f29 / 3.0f) * f24) + f12, this.f56170e);
        }
        for (int i10 = 1; i10 < 3; i10++) {
            float f30 = this.f56181p;
            float f31 = this.f56171f;
            float f32 = i10;
            float f33 = this.f56182q;
            float f34 = g4;
            canvas.drawRect(f30 + ((f31 / 3.0f) * f32), f33, f30 + f34 + ((f31 / 3.0f) * f32), f33 + this.f56172g, this.f56168c);
            float f35 = this.f56181p;
            float f36 = this.f56182q;
            float f37 = this.f56172g;
            canvas.drawRect(f35, f36 + ((f37 / 3.0f) * f32), f35 + this.f56171f, f36 + ((f37 / 3.0f) * f32) + f34, this.f56168c);
        }
        float f38 = this.f56181p;
        float f39 = this.f56182q;
        canvas.drawRect(f38, f39, f38 + this.f56171f, f39 + this.f56172g, this.f56167b);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        float height;
        int width;
        float f10;
        float f11;
        float f12;
        int i13;
        int i14;
        int i15;
        super.onLayout(z9, i4, i10, i11, i12);
        Bitmap a10 = this.f56186u.a();
        if (a10 != null) {
            this.f56187v = a10;
        }
        if (this.f56187v == null) {
            return;
        }
        int width2 = getWidth() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f);
        int height2 = getHeight() - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f);
        int i16 = this.f56174i;
        if (i16 % 360 != 90 && i16 % 360 != 270) {
            height = this.f56187v.getWidth();
            width = this.f56187v.getHeight();
        } else {
            height = this.f56187v.getHeight();
            width = this.f56187v.getWidth();
        }
        float f13 = width2;
        float f14 = height2;
        if (f13 / height > f14 / width) {
            f13 = (int) Math.ceil(height * f12);
        } else {
            f14 = (int) Math.ceil(f10 * f11);
        }
        float f15 = this.f56181p - this.f56179n;
        int i17 = this.f56177l;
        float f16 = f15 / i17;
        float f17 = this.f56182q - this.f56180o;
        int i18 = this.f56178m;
        float f18 = f17 / i18;
        float f19 = this.f56171f / i17;
        float f20 = this.f56172g / i18;
        this.f56177l = (int) f13;
        this.f56178m = (int) f14;
        this.f56179n = (int) Math.ceil(((width2 - i13) / 2) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f));
        int ceil = (int) Math.ceil(((height2 - this.f56178m) / 2) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f));
        this.f56180o = ceil;
        if (this.f56181p == -1.0f && this.f56182q == -1.0f) {
            if (this.f56166a) {
                this.f56182q = ceil;
                this.f56181p = this.f56179n;
                this.f56171f = this.f56177l;
                this.f56172g = this.f56178m;
                return;
            }
            if (this.f56177l > this.f56178m) {
                this.f56182q = ceil;
                this.f56181p = ((width2 - i15) / 2) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
                int i19 = this.f56178m;
                this.f56171f = i19;
                this.f56172g = i19;
                return;
            }
            this.f56181p = this.f56179n;
            this.f56182q = ((height2 - i14) / 2) + com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
            int i20 = this.f56177l;
            this.f56171f = i20;
            this.f56172g = i20;
            return;
        }
        int i21 = this.f56177l;
        this.f56181p = (f16 * i21) + this.f56179n;
        int i22 = this.f56178m;
        this.f56182q = (f18 * i22) + ceil;
        this.f56171f = f19 * i21;
        this.f56172g = f20 * i22;
    }

    public void setAnimationProgress(float f10) {
        RectF rectF = this.f56188w;
        if (rectF != null) {
            if (f10 == 1.0f) {
                RectF rectF2 = this.f56189x;
                this.f56181p = rectF2.left;
                this.f56182q = rectF2.top;
                this.f56171f = rectF2.right;
                this.f56172g = rectF2.bottom;
                this.f56188w = null;
                this.f56189x = null;
            } else {
                float f11 = rectF.left;
                RectF rectF3 = this.f56189x;
                this.f56181p = f11 + ((rectF3.left - f11) * f10);
                float f12 = rectF.top;
                this.f56182q = f12 + ((rectF3.top - f12) * f10);
                float f13 = rectF.right;
                this.f56171f = f13 + ((rectF3.right - f13) * f10);
                float f14 = rectF.bottom;
                this.f56172g = f14 + ((rectF3.bottom - f14) * f10);
            }
            invalidate();
        }
    }

    public void setDelegate(b bVar) {
        this.f56186u = bVar;
    }

    public void setOrientation(int i4) {
        this.f56174i = i4;
        this.f56181p = -1.0f;
        this.f56182q = -1.0f;
        this.f56171f = 600.0f;
        this.f56172g = 600.0f;
        this.f56186u.b(0.0f, 0.0f, 1.0f, false);
        requestLayout();
    }
}
