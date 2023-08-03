package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* compiled from: ProgressBarDrawable.java */
/* loaded from: classes.dex */
public class l extends Drawable implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f11489a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private final Path f11490b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final RectF f11491c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    private int f11492d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f11493e = -2147450625;

    /* renamed from: f  reason: collision with root package name */
    private int f11494f = 10;

    /* renamed from: g  reason: collision with root package name */
    private int f11495g = 20;

    /* renamed from: h  reason: collision with root package name */
    private int f11496h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f11497i = 0;

    /* renamed from: j  reason: collision with root package name */
    private boolean f11498j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f11499k = false;

    private void a(Canvas canvas, int color) {
        this.f11489a.setColor(color);
        this.f11489a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f11490b.reset();
        this.f11490b.setFillType(Path.FillType.EVEN_ODD);
        this.f11490b.addRoundRect(this.f11491c, Math.min(this.f11497i, this.f11495g / 2), Math.min(this.f11497i, this.f11495g / 2), Path.Direction.CW);
        canvas.drawPath(this.f11490b, this.f11489a);
    }

    private void b(Canvas canvas, int level, int color) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int i4 = this.f11494f;
        int i10 = bounds.left + i4;
        int i11 = bounds.bottom - i4;
        int i12 = this.f11495g;
        int i13 = i11 - i12;
        this.f11491c.set(i10, i13, i10 + (((width - (i4 * 2)) * level) / 10000), i13 + i12);
        a(canvas, color);
    }

    private void c(Canvas canvas, int level, int color) {
        Rect bounds = getBounds();
        int height = bounds.height();
        int i4 = this.f11494f;
        int i10 = bounds.left + i4;
        int i11 = bounds.top + i4;
        this.f11491c.set(i10, i11, i10 + this.f11495g, i11 + (((height - (i4 * 2)) * level) / 10000));
        a(canvas, color);
    }

    public int d() {
        return this.f11492d;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f11498j && this.f11496h == 0) {
            return;
        }
        if (this.f11499k) {
            c(canvas, 10000, this.f11492d);
            c(canvas, this.f11496h, this.f11493e);
            return;
        }
        b(canvas, 10000, this.f11492d);
        b(canvas, this.f11496h, this.f11493e);
    }

    @Override // com.facebook.drawee.drawable.c
    public Drawable e() {
        l lVar = new l();
        lVar.f11492d = this.f11492d;
        lVar.f11493e = this.f11493e;
        lVar.f11494f = this.f11494f;
        lVar.f11495g = this.f11495g;
        lVar.f11496h = this.f11496h;
        lVar.f11497i = this.f11497i;
        lVar.f11498j = this.f11498j;
        lVar.f11499k = this.f11499k;
        return lVar;
    }

    public int f() {
        return this.f11495g;
    }

    public int g() {
        return this.f11493e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(this.f11489a.getColor());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        int i4 = this.f11494f;
        padding.set(i4, i4, i4, i4);
        return this.f11494f != 0;
    }

    public boolean h() {
        return this.f11498j;
    }

    public boolean i() {
        return this.f11499k;
    }

    public int j() {
        return this.f11497i;
    }

    public void k(int backgroundColor) {
        if (this.f11492d != backgroundColor) {
            this.f11492d = backgroundColor;
            invalidateSelf();
        }
    }

    public void l(int barWidth) {
        if (this.f11495g != barWidth) {
            this.f11495g = barWidth;
            invalidateSelf();
        }
    }

    public void m(int color) {
        if (this.f11493e != color) {
            this.f11493e = color;
            invalidateSelf();
        }
    }

    public void n(boolean hideWhenZero) {
        this.f11498j = hideWhenZero;
    }

    public void o(boolean isVertical) {
        if (this.f11499k != isVertical) {
            this.f11499k = isVertical;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        this.f11496h = level;
        invalidateSelf();
        return true;
    }

    public void p(int padding) {
        if (this.f11494f != padding) {
            this.f11494f = padding;
            invalidateSelf();
        }
    }

    public void q(int radius) {
        if (this.f11497i != radius) {
            this.f11497i = radius;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f11489a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.f11489a.setColorFilter(cf);
    }
}
