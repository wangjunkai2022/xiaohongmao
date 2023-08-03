package com.shizhefei.view.indicator.slidebar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import com.shizhefei.view.indicator.slidebar.ScrollBar;

/* compiled from: SpringBar.java */
/* loaded from: classes3.dex */
public class d extends View implements ScrollBar {

    /* renamed from: a  reason: collision with root package name */
    private int f55489a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f55490b;

    /* renamed from: c  reason: collision with root package name */
    private Path f55491c;

    /* renamed from: d  reason: collision with root package name */
    private b f55492d;

    /* renamed from: e  reason: collision with root package name */
    private b f55493e;

    /* renamed from: f  reason: collision with root package name */
    private float f55494f;

    /* renamed from: g  reason: collision with root package name */
    private float f55495g;

    /* renamed from: h  reason: collision with root package name */
    private float f55496h;

    /* renamed from: i  reason: collision with root package name */
    private float f55497i;

    /* renamed from: j  reason: collision with root package name */
    private float f55498j;

    /* renamed from: k  reason: collision with root package name */
    private float f55499k;

    /* renamed from: l  reason: collision with root package name */
    private float f55500l;

    /* renamed from: m  reason: collision with root package name */
    private float f55501m;

    /* renamed from: n  reason: collision with root package name */
    private float f55502n;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpringBar.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private float f55503a;

        /* renamed from: b  reason: collision with root package name */
        private float f55504b;

        /* renamed from: c  reason: collision with root package name */
        private float f55505c;

        private b() {
        }

        public float a() {
            return this.f55505c;
        }

        public float b() {
            return this.f55503a;
        }

        public float c() {
            return this.f55504b;
        }

        public void d(float f10) {
            this.f55505c = f10;
        }

        public void e(float f10) {
            this.f55503a = f10;
        }

        public void f(float f10) {
            this.f55504b = f10;
        }
    }

    public d(Context context, int i4) {
        this(context, i4, 0.9f, 0.35f);
    }

    private float c(float f10) {
        int i4 = this.f55489a;
        return (((i4 * 2) - (i4 / 4)) - (i4 * (1.0f - f10))) + (i4 / 4.0f);
    }

    private float d(int i4) {
        return this.f55489a;
    }

    private void e() {
        float a10 = (float) (this.f55492d.a() * Math.sin(Math.atan((this.f55493e.c() - this.f55492d.c()) / (this.f55493e.b() - this.f55492d.b()))));
        float a11 = (float) (this.f55492d.a() * Math.cos(Math.atan((this.f55493e.c() - this.f55492d.c()) / (this.f55493e.b() - this.f55492d.b()))));
        float a12 = (float) (this.f55493e.a() * Math.sin(Math.atan((this.f55493e.c() - this.f55492d.c()) / (this.f55493e.b() - this.f55492d.b()))));
        float a13 = (float) (this.f55493e.a() * Math.cos(Math.atan((this.f55493e.c() - this.f55492d.c()) / (this.f55493e.b() - this.f55492d.b()))));
        float b10 = this.f55492d.b() - a10;
        float c10 = this.f55492d.c() + a11;
        float b11 = this.f55492d.b() + a10;
        float c11 = this.f55492d.c() - a11;
        float b12 = this.f55493e.b() - a12;
        float c12 = this.f55493e.c() + a13;
        float b13 = this.f55493e.b() + a12;
        float c13 = this.f55493e.c() - a13;
        float b14 = (this.f55493e.b() + this.f55492d.b()) / 2.0f;
        float c14 = (this.f55493e.c() + this.f55492d.c()) / 2.0f;
        this.f55491c.reset();
        this.f55491c.moveTo(b10, c10);
        this.f55491c.quadTo(b14, c14, b12, c12);
        this.f55491c.lineTo(b13, c13);
        this.f55491c.quadTo(b14, c14, b11, c11);
        this.f55491c.lineTo(b10, c10);
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int a(int i4) {
        float f10 = i4 / 2;
        this.f55492d.f(f10);
        this.f55493e.f(f10);
        float f11 = this.f55500l * f10;
        this.f55494f = f11;
        float f12 = f10 * this.f55501m;
        this.f55495g = f12;
        this.f55496h = f11 - f12;
        return i4;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public int b(int i4) {
        this.f55489a = i4;
        float f10 = this.f55502n;
        if (f10 < 0.02f || f10 > 0.98f) {
            onPageScrolled(0, 0.0f, 0);
        }
        return i4 * 2;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public ScrollBar.Gravity getGravity() {
        return ScrollBar.Gravity.CENTENT_BACKGROUND;
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public View getSlideView() {
        return this;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        e();
        canvas.drawColor(0);
        canvas.drawPath(this.f55491c, this.f55490b);
        canvas.drawCircle(this.f55493e.b(), this.f55493e.c(), this.f55493e.a(), this.f55490b);
        canvas.drawCircle(this.f55492d.b(), this.f55492d.c(), this.f55492d.a(), this.f55490b);
        super.onDraw(canvas);
    }

    @Override // com.shizhefei.view.indicator.slidebar.ScrollBar
    public void onPageScrolled(int i4, float f10, int i10) {
        this.f55502n = f10;
        float f11 = 0.0f;
        if (f10 >= 0.02f && f10 <= 0.98f) {
            int i11 = (f10 > 0.5f ? 1 : (f10 == 0.5f ? 0 : -1));
            if (i11 < 0) {
                this.f55493e.d(this.f55495g);
            } else {
                this.f55493e.d((((f10 - 0.5f) / 0.5f) * this.f55496h) + this.f55495g);
            }
            float f12 = 1.0f;
            if (i11 < 0) {
                this.f55492d.d(((1.0f - (f10 / 0.5f)) * this.f55496h) + this.f55495g);
            } else {
                this.f55492d.d(this.f55495g);
            }
            float f13 = this.f55498j;
            if (f10 > f13) {
                float f14 = (f10 - f13) / (1.0f - f13);
                float f15 = this.f55497i;
                f11 = (float) ((Math.atan(((f14 * f15) * 2.0f) - f15) + Math.atan(this.f55497i)) / (Math.atan(this.f55497i) * 2.0d));
            }
            this.f55493e.e(c(f10) - (f11 * d(i4)));
            float f16 = this.f55499k;
            if (f10 < f16) {
                float f17 = this.f55497i;
                f12 = (float) ((Math.atan((((f10 / f16) * f17) * 2.0f) - f17) + Math.atan(this.f55497i)) / (Math.atan(this.f55497i) * 2.0d));
            }
            this.f55492d.e(c(f10) - (f12 * d(i4)));
            return;
        }
        this.f55493e.e(c(0.0f));
        this.f55492d.e(c(0.0f));
        this.f55493e.d(this.f55494f);
        this.f55492d.d(this.f55494f);
    }

    public d(Context context, int i4, float f10, float f11) {
        super(context);
        this.f55497i = 0.5f;
        this.f55498j = 0.6f;
        this.f55499k = 1.0f - 0.6f;
        this.f55500l = f10;
        this.f55501m = f11;
        this.f55492d = new b();
        this.f55493e = new b();
        this.f55491c = new Path();
        Paint paint = new Paint();
        this.f55490b = paint;
        paint.setAntiAlias(true);
        this.f55490b.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f55490b.setStrokeWidth(1.0f);
        this.f55490b.setColor(i4);
    }
}
