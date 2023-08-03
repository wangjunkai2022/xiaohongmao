package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* compiled from: RoundedDrawable.java */
/* loaded from: classes.dex */
public abstract class p extends Drawable implements m, t {
    @Nullable
    private u C;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f11515a;
    @Nullable
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    float[] f11525k;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    RectF f11530p;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    Matrix f11536v;
    @Nullable
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    Matrix f11537w;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f11516b = false;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f11517c = false;

    /* renamed from: d  reason: collision with root package name */
    protected float f11518d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    protected final Path f11519e = new Path();

    /* renamed from: f  reason: collision with root package name */
    protected boolean f11520f = true;

    /* renamed from: g  reason: collision with root package name */
    protected int f11521g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected final Path f11522h = new Path();

    /* renamed from: i  reason: collision with root package name */
    private final float[] f11523i = new float[8];
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f11524j = new float[8];
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final RectF f11526l = new RectF();
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final RectF f11527m = new RectF();
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    final RectF f11528n = new RectF();
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    final RectF f11529o = new RectF();
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    final Matrix f11531q = new Matrix();
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    final Matrix f11532r = new Matrix();
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    final Matrix f11533s = new Matrix();
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    final Matrix f11534t = new Matrix();
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    final Matrix f11535u = new Matrix();
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    final Matrix f11538x = new Matrix();

    /* renamed from: y  reason: collision with root package name */
    private float f11539y = 0.0f;

    /* renamed from: z  reason: collision with root package name */
    private boolean f11540z = false;
    private boolean A = false;
    private boolean B = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Drawable drawable) {
        this.f11515a = drawable;
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        if (this.f11521g == color && this.f11518d == width) {
            return;
        }
        this.f11521g = color;
        this.f11518d = width;
        this.B = true;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean b() {
        return this.f11516b || this.f11517c || this.f11518d > 0.0f;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean c() {
        return this.f11540z;
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f11515a.clearColorFilter();
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(boolean isCircle) {
        this.f11516b = isCircle;
        this.B = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedDrawable#draw");
        }
        this.f11515a.draw(canvas);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        float[] fArr;
        if (this.B) {
            this.f11522h.reset();
            RectF rectF = this.f11526l;
            float f10 = this.f11518d;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            if (this.f11516b) {
                this.f11522h.addCircle(this.f11526l.centerX(), this.f11526l.centerY(), Math.min(this.f11526l.width(), this.f11526l.height()) / 2.0f, Path.Direction.CW);
            } else {
                int i4 = 0;
                while (true) {
                    fArr = this.f11524j;
                    if (i4 >= fArr.length) {
                        break;
                    }
                    fArr[i4] = (this.f11523i[i4] + this.f11539y) - (this.f11518d / 2.0f);
                    i4++;
                }
                this.f11522h.addRoundRect(this.f11526l, fArr, Path.Direction.CW);
            }
            RectF rectF2 = this.f11526l;
            float f11 = this.f11518d;
            rectF2.inset((-f11) / 2.0f, (-f11) / 2.0f);
            this.f11519e.reset();
            float f12 = this.f11539y + (this.f11540z ? this.f11518d : 0.0f);
            this.f11526l.inset(f12, f12);
            if (this.f11516b) {
                this.f11519e.addCircle(this.f11526l.centerX(), this.f11526l.centerY(), Math.min(this.f11526l.width(), this.f11526l.height()) / 2.0f, Path.Direction.CW);
            } else if (this.f11540z) {
                if (this.f11525k == null) {
                    this.f11525k = new float[8];
                }
                for (int i10 = 0; i10 < this.f11524j.length; i10++) {
                    this.f11525k[i10] = this.f11523i[i10] - this.f11518d;
                }
                this.f11519e.addRoundRect(this.f11526l, this.f11525k, Path.Direction.CW);
            } else {
                this.f11519e.addRoundRect(this.f11526l, this.f11523i, Path.Direction.CW);
            }
            float f13 = -f12;
            this.f11526l.inset(f13, f13);
            this.f11519e.setFillType(Path.FillType.WINDING);
            this.B = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        Matrix matrix;
        u uVar = this.C;
        if (uVar != null) {
            uVar.f(this.f11533s);
            this.C.q(this.f11526l);
        } else {
            this.f11533s.reset();
            this.f11526l.set(getBounds());
        }
        this.f11528n.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        this.f11529o.set(this.f11515a.getBounds());
        this.f11531q.setRectToRect(this.f11528n, this.f11529o, Matrix.ScaleToFit.FILL);
        if (this.f11540z) {
            RectF rectF = this.f11530p;
            if (rectF == null) {
                this.f11530p = new RectF(this.f11526l);
            } else {
                rectF.set(this.f11526l);
            }
            RectF rectF2 = this.f11530p;
            float f10 = this.f11518d;
            rectF2.inset(f10, f10);
            if (this.f11536v == null) {
                this.f11536v = new Matrix();
            }
            this.f11536v.setRectToRect(this.f11526l, this.f11530p, Matrix.ScaleToFit.FILL);
        } else {
            Matrix matrix2 = this.f11536v;
            if (matrix2 != null) {
                matrix2.reset();
            }
        }
        if (!this.f11533s.equals(this.f11534t) || !this.f11531q.equals(this.f11532r) || ((matrix = this.f11536v) != null && !matrix.equals(this.f11537w))) {
            this.f11520f = true;
            this.f11533s.invert(this.f11535u);
            this.f11538x.set(this.f11533s);
            if (this.f11540z) {
                this.f11538x.postConcat(this.f11536v);
            }
            this.f11538x.preConcat(this.f11531q);
            this.f11534t.set(this.f11533s);
            this.f11532r.set(this.f11531q);
            if (this.f11540z) {
                Matrix matrix3 = this.f11537w;
                if (matrix3 == null) {
                    this.f11537w = new Matrix(this.f11536v);
                } else {
                    matrix3.set(this.f11536v);
                }
            } else {
                Matrix matrix4 = this.f11537w;
                if (matrix4 != null) {
                    matrix4.reset();
                }
            }
        }
        if (this.f11526l.equals(this.f11527m)) {
            return;
        }
        this.B = true;
        this.f11527m.set(this.f11526l);
    }

    @Override // com.facebook.drawee.drawable.m
    public void g(float padding) {
        if (this.f11539y != padding) {
            this.f11539y = padding;
            this.B = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(api = 19)
    public int getAlpha() {
        return this.f11515a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    @RequiresApi(api = 21)
    public ColorFilter getColorFilter() {
        return this.f11515a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f11515a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f11515a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f11515a.getOpacity();
    }

    @Override // com.facebook.drawee.drawable.m
    public void h(float radius) {
        int i4 = (radius > 0.0f ? 1 : (radius == 0.0f ? 0 : -1));
        com.facebook.common.internal.j.o(i4 >= 0);
        Arrays.fill(this.f11523i, radius);
        this.f11517c = i4 != 0;
        this.B = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.t
    public void i(@Nullable u transformCallback) {
        this.C = transformCallback;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean j() {
        return this.A;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean k() {
        return this.f11516b;
    }

    @Override // com.facebook.drawee.drawable.m
    public int l() {
        return this.f11521g;
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] m() {
        return this.f11523i;
    }

    @Override // com.facebook.drawee.drawable.m
    public void n(boolean paintFilterBitmap) {
        if (this.A != paintFilterBitmap) {
            this.A = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public void o(boolean scaleDownInsideBorders) {
        if (this.f11540z != scaleDownInsideBorders) {
            this.f11540z = scaleDownInsideBorders;
            this.B = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        this.f11515a.setBounds(bounds);
    }

    @Override // com.facebook.drawee.drawable.m
    public float p() {
        return this.f11518d;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f11515a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int color, @NonNull PorterDuff.Mode mode) {
        this.f11515a.setColorFilter(color, mode);
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f11539y;
    }

    @Override // com.facebook.drawee.drawable.m
    public void u(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f11523i, 0.0f);
            this.f11517c = false;
        } else {
            com.facebook.common.internal.j.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f11523i, 0, 8);
            this.f11517c = false;
            for (int i4 = 0; i4 < 8; i4++) {
                this.f11517c |= radii[i4] > 0.0f;
            }
        }
        this.B = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f11515a.setColorFilter(colorFilter);
    }
}
