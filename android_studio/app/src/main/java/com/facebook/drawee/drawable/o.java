package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* compiled from: RoundedColorDrawable.java */
/* loaded from: classes.dex */
public class o extends Drawable implements m {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f11500a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float[] f11501b;
    @r7.h
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    float[] f11502c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Paint f11503d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f11504e;

    /* renamed from: f  reason: collision with root package name */
    private float f11505f;

    /* renamed from: g  reason: collision with root package name */
    private float f11506g;

    /* renamed from: h  reason: collision with root package name */
    private int f11507h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f11508i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f11509j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Path f11510k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final Path f11511l;

    /* renamed from: m  reason: collision with root package name */
    private int f11512m;

    /* renamed from: n  reason: collision with root package name */
    private final RectF f11513n;

    /* renamed from: o  reason: collision with root package name */
    private int f11514o;

    public o(int color) {
        this.f11500a = new float[8];
        this.f11501b = new float[8];
        this.f11503d = new Paint(1);
        this.f11504e = false;
        this.f11505f = 0.0f;
        this.f11506g = 0.0f;
        this.f11507h = 0;
        this.f11508i = false;
        this.f11509j = false;
        this.f11510k = new Path();
        this.f11511l = new Path();
        this.f11512m = 0;
        this.f11513n = new RectF();
        this.f11514o = 255;
        f(color);
    }

    @TargetApi(11)
    public static o b(ColorDrawable colorDrawable) {
        return new o(colorDrawable.getColor());
    }

    private void i() {
        float[] fArr;
        float[] fArr2;
        this.f11510k.reset();
        this.f11511l.reset();
        this.f11513n.set(getBounds());
        RectF rectF = this.f11513n;
        float f10 = this.f11505f;
        rectF.inset(f10 / 2.0f, f10 / 2.0f);
        int i4 = 0;
        if (this.f11504e) {
            this.f11511l.addCircle(this.f11513n.centerX(), this.f11513n.centerY(), Math.min(this.f11513n.width(), this.f11513n.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i10 = 0;
            while (true) {
                fArr = this.f11501b;
                if (i10 >= fArr.length) {
                    break;
                }
                fArr[i10] = (this.f11500a[i10] + this.f11506g) - (this.f11505f / 2.0f);
                i10++;
            }
            this.f11511l.addRoundRect(this.f11513n, fArr, Path.Direction.CW);
        }
        RectF rectF2 = this.f11513n;
        float f11 = this.f11505f;
        rectF2.inset((-f11) / 2.0f, (-f11) / 2.0f);
        float f12 = this.f11506g + (this.f11508i ? this.f11505f : 0.0f);
        this.f11513n.inset(f12, f12);
        if (this.f11504e) {
            this.f11510k.addCircle(this.f11513n.centerX(), this.f11513n.centerY(), Math.min(this.f11513n.width(), this.f11513n.height()) / 2.0f, Path.Direction.CW);
        } else if (this.f11508i) {
            if (this.f11502c == null) {
                this.f11502c = new float[8];
            }
            while (true) {
                fArr2 = this.f11502c;
                if (i4 >= fArr2.length) {
                    break;
                }
                fArr2[i4] = this.f11500a[i4] - this.f11505f;
                i4++;
            }
            this.f11510k.addRoundRect(this.f11513n, fArr2, Path.Direction.CW);
        } else {
            this.f11510k.addRoundRect(this.f11513n, this.f11500a, Path.Direction.CW);
        }
        float f13 = -f12;
        this.f11513n.inset(f13, f13);
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        if (this.f11507h != color) {
            this.f11507h = color;
            invalidateSelf();
        }
        if (this.f11505f != width) {
            this.f11505f = width;
            i();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean c() {
        return this.f11508i;
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(boolean isCircle) {
        this.f11504e = isCircle;
        i();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f11503d.setColor(f.d(this.f11512m, this.f11514o));
        this.f11503d.setStyle(Paint.Style.FILL);
        this.f11503d.setFilterBitmap(j());
        canvas.drawPath(this.f11510k, this.f11503d);
        if (this.f11505f != 0.0f) {
            this.f11503d.setColor(f.d(this.f11507h, this.f11514o));
            this.f11503d.setStyle(Paint.Style.STROKE);
            this.f11503d.setStrokeWidth(this.f11505f);
            canvas.drawPath(this.f11511l, this.f11503d);
        }
    }

    public int e() {
        return this.f11512m;
    }

    public void f(int color) {
        if (this.f11512m != color) {
            this.f11512m = color;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public void g(float padding) {
        if (this.f11506g != padding) {
            this.f11506g = padding;
            i();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11514o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(f.d(this.f11512m, this.f11514o));
    }

    @Override // com.facebook.drawee.drawable.m
    public void h(float radius) {
        com.facebook.common.internal.j.e(radius >= 0.0f, "radius should be non negative");
        Arrays.fill(this.f11500a, radius);
        i();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean j() {
        return this.f11509j;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean k() {
        return this.f11504e;
    }

    @Override // com.facebook.drawee.drawable.m
    public int l() {
        return this.f11507h;
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] m() {
        return this.f11500a;
    }

    @Override // com.facebook.drawee.drawable.m
    public void n(boolean paintFilterBitmap) {
        if (this.f11509j != paintFilterBitmap) {
            this.f11509j = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public void o(boolean scaleDownInsideBorders) {
        if (this.f11508i != scaleDownInsideBorders) {
            this.f11508i = scaleDownInsideBorders;
            i();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        i();
    }

    @Override // com.facebook.drawee.drawable.m
    public float p() {
        return this.f11505f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (alpha != this.f11514o) {
            this.f11514o = alpha;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f11506g;
    }

    @Override // com.facebook.drawee.drawable.m
    public void u(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f11500a, 0.0f);
        } else {
            com.facebook.common.internal.j.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f11500a, 0, 8);
        }
        i();
        invalidateSelf();
    }

    public o(float[] radii, int color) {
        this(color);
        u(radii);
    }

    public o(float radius, int color) {
        this(color);
        h(radius);
    }
}
