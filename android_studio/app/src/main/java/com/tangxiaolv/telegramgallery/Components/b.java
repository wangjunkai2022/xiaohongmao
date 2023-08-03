package com.tangxiaolv.telegramgallery.Components;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;

/* compiled from: CheckBox.java */
/* loaded from: classes3.dex */
public class b extends View {

    /* renamed from: p  reason: collision with root package name */
    private static Paint f56127p = null;

    /* renamed from: q  reason: collision with root package name */
    private static Paint f56128q = null;

    /* renamed from: r  reason: collision with root package name */
    private static Paint f56129r = null;

    /* renamed from: s  reason: collision with root package name */
    private static Paint f56130s = null;

    /* renamed from: t  reason: collision with root package name */
    private static Paint f56131t = null;

    /* renamed from: u  reason: collision with root package name */
    private static final float f56132u = 0.2f;

    /* renamed from: a  reason: collision with root package name */
    private Paint f56133a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f56134b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f56135c;

    /* renamed from: d  reason: collision with root package name */
    private Canvas f56136d;

    /* renamed from: e  reason: collision with root package name */
    private Canvas f56137e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56138f;

    /* renamed from: g  reason: collision with root package name */
    private float f56139g;

    /* renamed from: h  reason: collision with root package name */
    private ObjectAnimator f56140h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56141i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f56142j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f56143k;

    /* renamed from: l  reason: collision with root package name */
    private int f56144l;

    /* renamed from: m  reason: collision with root package name */
    private int f56145m;

    /* renamed from: n  reason: collision with root package name */
    private int f56146n;

    /* renamed from: o  reason: collision with root package name */
    private int f56147o;

    public b(Context context, int i4, int i10) {
        this(context);
        if (f56127p == null) {
            f56127p = new Paint(1);
            Paint paint = new Paint(1);
            f56131t = paint;
            paint.setColor(-1);
            f56131t.setFakeBoldText(true);
            f56131t.setTextAlign(Paint.Align.CENTER);
            f56131t.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            Paint paint2 = new Paint(1);
            f56128q = paint2;
            paint2.setColor(0);
            f56128q.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            Paint paint3 = new Paint(1);
            f56129r = paint3;
            paint3.setColor(0);
            f56129r.setStyle(Paint.Style.STROKE);
            f56129r.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(28.0f));
            f56129r.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        this.f56133a.setColor(i10);
    }

    private void a(boolean z9) {
        this.f56141i = z9;
        float[] fArr = new float[1];
        fArr[0] = z9 ? 1.0f : 0.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "progress", fArr);
        this.f56140h = ofFloat;
        ofFloat.setDuration(300L);
        this.f56140h.start();
    }

    private void b() {
        ObjectAnimator objectAnimator = this.f56140h;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public boolean c() {
        return this.f56143k;
    }

    public void d(int i4, boolean z9, boolean z10) {
        this.f56147o = i4;
        if (z9 == this.f56143k && i4 == -1) {
            return;
        }
        this.f56143k = z9;
        if (this.f56142j && z10) {
            a(z9);
            return;
        }
        b();
        setProgress(z9 ? 1.0f : 0.0f);
    }

    public void e(boolean z9, boolean z10) {
        if (z9 == this.f56143k) {
            return;
        }
        this.f56143k = z9;
        if (this.f56142j && z10) {
            a(z9);
            return;
        }
        b();
        setProgress(z9 ? 1.0f : 0.0f);
    }

    public float getProgress() {
        return this.f56139g;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f56142j = true;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f56142j = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onDraw(android.graphics.Canvas r10) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Components.b.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
    }

    public void setCheckOffset(int i4) {
        this.f56145m = i4;
    }

    public void setColor(int i4) {
        this.f56146n = i4;
    }

    public void setDrawBackground(boolean z9) {
        this.f56138f = z9;
    }

    public void setProgress(float f10) {
        if (this.f56139g == f10 && this.f56147o == -1) {
            return;
        }
        this.f56139g = f10;
        invalidate();
    }

    public void setSize(int i4) {
        this.f56144l = i4;
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        if (i4 == 0 && this.f56134b == null) {
            this.f56134b = Bitmap.createBitmap(com.tangxiaolv.telegramgallery.Utils.a.g(this.f56144l), com.tangxiaolv.telegramgallery.Utils.a.g(this.f56144l), Bitmap.Config.ARGB_4444);
            this.f56136d = new Canvas(this.f56134b);
            this.f56135c = Bitmap.createBitmap(com.tangxiaolv.telegramgallery.Utils.a.g(this.f56144l), com.tangxiaolv.telegramgallery.Utils.a.g(this.f56144l), Bitmap.Config.ARGB_4444);
            this.f56137e = new Canvas(this.f56135c);
        }
    }

    public b(Context context) {
        super(context);
        this.f56141i = true;
        this.f56144l = 22;
        this.f56146n = -10567099;
        Paint paint = new Paint(1);
        this.f56133a = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f56133a.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(2.0f));
    }
}
