package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* loaded from: classes.dex */
public class RoundedCornersDrawable extends h implements m {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    Type f11414e;

    /* renamed from: f  reason: collision with root package name */
    private final RectF f11415f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private RectF f11416g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private Matrix f11417h;

    /* renamed from: i  reason: collision with root package name */
    private final float[] f11418i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final float[] f11419j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Paint f11420k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f11421l;

    /* renamed from: m  reason: collision with root package name */
    private float f11422m;

    /* renamed from: n  reason: collision with root package name */
    private int f11423n;

    /* renamed from: o  reason: collision with root package name */
    private int f11424o;

    /* renamed from: p  reason: collision with root package name */
    private float f11425p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f11426q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f11427r;

    /* renamed from: s  reason: collision with root package name */
    private final Path f11428s;

    /* renamed from: t  reason: collision with root package name */
    private final Path f11429t;

    /* renamed from: u  reason: collision with root package name */
    private final RectF f11430u;

    /* loaded from: classes.dex */
    public enum Type {
        OVERLAY_COLOR,
        CLIPPING
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11432a;

        static {
            int[] iArr = new int[Type.values().length];
            f11432a = iArr;
            try {
                iArr[Type.CLIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11432a[Type.OVERLAY_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public RoundedCornersDrawable(Drawable drawable) {
        super((Drawable) com.facebook.common.internal.j.i(drawable));
        this.f11414e = Type.OVERLAY_COLOR;
        this.f11415f = new RectF();
        this.f11418i = new float[8];
        this.f11419j = new float[8];
        this.f11420k = new Paint(1);
        this.f11421l = false;
        this.f11422m = 0.0f;
        this.f11423n = 0;
        this.f11424o = 0;
        this.f11425p = 0.0f;
        this.f11426q = false;
        this.f11427r = false;
        this.f11428s = new Path();
        this.f11429t = new Path();
        this.f11430u = new RectF();
    }

    private void C() {
        float[] fArr;
        this.f11428s.reset();
        this.f11429t.reset();
        this.f11430u.set(getBounds());
        RectF rectF = this.f11430u;
        float f10 = this.f11425p;
        rectF.inset(f10, f10);
        if (this.f11414e == Type.OVERLAY_COLOR) {
            this.f11428s.addRect(this.f11430u, Path.Direction.CW);
        }
        if (this.f11421l) {
            this.f11428s.addCircle(this.f11430u.centerX(), this.f11430u.centerY(), Math.min(this.f11430u.width(), this.f11430u.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.f11428s.addRoundRect(this.f11430u, this.f11418i, Path.Direction.CW);
        }
        RectF rectF2 = this.f11430u;
        float f11 = this.f11425p;
        rectF2.inset(-f11, -f11);
        RectF rectF3 = this.f11430u;
        float f12 = this.f11422m;
        rectF3.inset(f12 / 2.0f, f12 / 2.0f);
        if (this.f11421l) {
            this.f11429t.addCircle(this.f11430u.centerX(), this.f11430u.centerY(), Math.min(this.f11430u.width(), this.f11430u.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i4 = 0;
            while (true) {
                fArr = this.f11419j;
                if (i4 >= fArr.length) {
                    break;
                }
                fArr[i4] = (this.f11418i[i4] + this.f11425p) - (this.f11422m / 2.0f);
                i4++;
            }
            this.f11429t.addRoundRect(this.f11430u, fArr, Path.Direction.CW);
        }
        RectF rectF4 = this.f11430u;
        float f13 = this.f11422m;
        rectF4.inset((-f13) / 2.0f, (-f13) / 2.0f);
    }

    public void A(int overlayColor) {
        this.f11424o = overlayColor;
        invalidateSelf();
    }

    public void B(Type type) {
        this.f11414e = type;
        C();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        this.f11423n = color;
        this.f11422m = width;
        C();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean c() {
        return this.f11426q;
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(boolean isCircle) {
        this.f11421l = isCircle;
        C();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f11415f.set(getBounds());
        int i4 = a.f11432a[this.f11414e.ordinal()];
        if (i4 == 1) {
            int save = canvas.save();
            canvas.clipPath(this.f11428s);
            super.draw(canvas);
            canvas.restoreToCount(save);
        } else if (i4 == 2) {
            if (this.f11426q) {
                RectF rectF = this.f11416g;
                if (rectF == null) {
                    this.f11416g = new RectF(this.f11415f);
                    this.f11417h = new Matrix();
                } else {
                    rectF.set(this.f11415f);
                }
                RectF rectF2 = this.f11416g;
                float f10 = this.f11422m;
                rectF2.inset(f10, f10);
                this.f11417h.setRectToRect(this.f11415f, this.f11416g, Matrix.ScaleToFit.FILL);
                int save2 = canvas.save();
                canvas.clipRect(this.f11415f);
                canvas.concat(this.f11417h);
                super.draw(canvas);
                canvas.restoreToCount(save2);
            } else {
                super.draw(canvas);
            }
            this.f11420k.setStyle(Paint.Style.FILL);
            this.f11420k.setColor(this.f11424o);
            this.f11420k.setStrokeWidth(0.0f);
            this.f11420k.setFilterBitmap(j());
            this.f11428s.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f11428s, this.f11420k);
            if (this.f11421l) {
                float width = ((this.f11415f.width() - this.f11415f.height()) + this.f11422m) / 2.0f;
                float height = ((this.f11415f.height() - this.f11415f.width()) + this.f11422m) / 2.0f;
                if (width > 0.0f) {
                    RectF rectF3 = this.f11415f;
                    float f11 = rectF3.left;
                    canvas.drawRect(f11, rectF3.top, f11 + width, rectF3.bottom, this.f11420k);
                    RectF rectF4 = this.f11415f;
                    float f12 = rectF4.right;
                    canvas.drawRect(f12 - width, rectF4.top, f12, rectF4.bottom, this.f11420k);
                }
                if (height > 0.0f) {
                    RectF rectF5 = this.f11415f;
                    float f13 = rectF5.left;
                    float f14 = rectF5.top;
                    canvas.drawRect(f13, f14, rectF5.right, f14 + height, this.f11420k);
                    RectF rectF6 = this.f11415f;
                    float f15 = rectF6.left;
                    float f16 = rectF6.bottom;
                    canvas.drawRect(f15, f16 - height, rectF6.right, f16, this.f11420k);
                }
            }
        }
        if (this.f11423n != 0) {
            this.f11420k.setStyle(Paint.Style.STROKE);
            this.f11420k.setColor(this.f11423n);
            this.f11420k.setStrokeWidth(this.f11422m);
            this.f11428s.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f11429t, this.f11420k);
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public void g(float padding) {
        this.f11425p = padding;
        C();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void h(float radius) {
        Arrays.fill(this.f11418i, radius);
        C();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean j() {
        return this.f11427r;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean k() {
        return this.f11421l;
    }

    @Override // com.facebook.drawee.drawable.m
    public int l() {
        return this.f11423n;
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] m() {
        return this.f11418i;
    }

    @Override // com.facebook.drawee.drawable.m
    public void n(boolean paintFilterBitmap) {
        if (this.f11427r != paintFilterBitmap) {
            this.f11427r = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public void o(boolean scaleDownInsideBorders) {
        this.f11426q = scaleDownInsideBorders;
        C();
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        C();
    }

    @Override // com.facebook.drawee.drawable.m
    public float p() {
        return this.f11422m;
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f11425p;
    }

    @Override // com.facebook.drawee.drawable.m
    public void u(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f11418i, 0.0f);
        } else {
            com.facebook.common.internal.j.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f11418i, 0, 8);
        }
        C();
        invalidateSelf();
    }

    public int z() {
        return this.f11424o;
    }
}
