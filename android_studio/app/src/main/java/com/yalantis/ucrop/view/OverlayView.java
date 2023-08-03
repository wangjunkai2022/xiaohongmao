package com.yalantis.ucrop.view;

import a6.d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.c;
import com.yalantis.ucrop.util.g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class OverlayView extends View {
    public static final int C = 0;
    public static final int D = 1;
    public static final int E = 2;
    public static final boolean F = true;
    public static final boolean G = true;
    public static final boolean H = false;
    public static final int I = 0;
    public static final int J = 2;
    public static final int K = 2;
    private d A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f61173a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f61174b;

    /* renamed from: c  reason: collision with root package name */
    protected int f61175c;

    /* renamed from: d  reason: collision with root package name */
    protected int f61176d;

    /* renamed from: e  reason: collision with root package name */
    protected float[] f61177e;

    /* renamed from: f  reason: collision with root package name */
    protected float[] f61178f;

    /* renamed from: g  reason: collision with root package name */
    private int f61179g;

    /* renamed from: h  reason: collision with root package name */
    private int f61180h;

    /* renamed from: i  reason: collision with root package name */
    private float f61181i;

    /* renamed from: j  reason: collision with root package name */
    private float[] f61182j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f61183k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f61184l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f61185m;

    /* renamed from: n  reason: collision with root package name */
    private int f61186n;

    /* renamed from: o  reason: collision with root package name */
    private Path f61187o;

    /* renamed from: p  reason: collision with root package name */
    private Paint f61188p;

    /* renamed from: q  reason: collision with root package name */
    private Paint f61189q;

    /* renamed from: r  reason: collision with root package name */
    private Paint f61190r;

    /* renamed from: s  reason: collision with root package name */
    private Paint f61191s;

    /* renamed from: t  reason: collision with root package name */
    private int f61192t;

    /* renamed from: u  reason: collision with root package name */
    private float f61193u;

    /* renamed from: v  reason: collision with root package name */
    private float f61194v;

    /* renamed from: w  reason: collision with root package name */
    private int f61195w;

    /* renamed from: x  reason: collision with root package name */
    private int f61196x;

    /* renamed from: y  reason: collision with root package name */
    private int f61197y;

    /* renamed from: z  reason: collision with root package name */
    private int f61198z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface a {
    }

    public OverlayView(Context context) {
        this(context, null);
    }

    private int c(float f10, float f11) {
        double d4 = this.f61196x;
        int i4 = -1;
        for (int i10 = 0; i10 < 8; i10 += 2) {
            double sqrt = Math.sqrt(Math.pow(f10 - this.f61177e[i10], 2.0d) + Math.pow(f11 - this.f61177e[i10 + 1], 2.0d));
            if (sqrt < d4) {
                i4 = i10 / 2;
                d4 = sqrt;
            }
        }
        if (this.f61192t == 1 && i4 < 0 && this.f61173a.contains(f10, f11)) {
            return 4;
        }
        return i4;
    }

    private void e(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(c.o.H8, getResources().getDimensionPixelSize(c.f.f60286q1));
        int color = typedArray.getColor(c.o.G8, getResources().getColor(c.e.O0));
        this.f61190r.setStrokeWidth(dimensionPixelSize);
        this.f61190r.setColor(color);
        this.f61190r.setStyle(Paint.Style.STROKE);
        this.f61191s.setStrokeWidth(dimensionPixelSize * 3);
        this.f61191s.setColor(color);
        this.f61191s.setStyle(Paint.Style.STROKE);
    }

    private void f(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(c.o.L8, getResources().getDimensionPixelSize(c.f.f60289r1));
        int color = typedArray.getColor(c.o.I8, getResources().getColor(c.e.P0));
        this.f61189q.setStrokeWidth(dimensionPixelSize);
        this.f61189q.setColor(color);
        this.f61179g = typedArray.getInt(c.o.K8, 2);
        this.f61180h = typedArray.getInt(c.o.J8, 2);
    }

    private void j(float f10, float f11) {
        this.f61174b.set(this.f61173a);
        int i4 = this.f61195w;
        if (i4 == 0) {
            RectF rectF = this.f61174b;
            RectF rectF2 = this.f61173a;
            rectF.set(f10, f11, rectF2.right, rectF2.bottom);
        } else if (i4 == 1) {
            RectF rectF3 = this.f61174b;
            RectF rectF4 = this.f61173a;
            rectF3.set(rectF4.left, f11, f10, rectF4.bottom);
        } else if (i4 == 2) {
            RectF rectF5 = this.f61174b;
            RectF rectF6 = this.f61173a;
            rectF5.set(rectF6.left, rectF6.top, f10, f11);
        } else if (i4 == 3) {
            RectF rectF7 = this.f61174b;
            RectF rectF8 = this.f61173a;
            rectF7.set(f10, rectF8.top, rectF8.right, f11);
        } else if (i4 == 4) {
            this.f61174b.offset(f10 - this.f61193u, f11 - this.f61194v);
            if (this.f61174b.left <= getLeft() || this.f61174b.top <= getTop() || this.f61174b.right >= getRight() || this.f61174b.bottom >= getBottom()) {
                return;
            }
            this.f61173a.set(this.f61174b);
            k();
            postInvalidate();
            return;
        }
        boolean z9 = this.f61174b.height() >= ((float) this.f61197y);
        boolean z10 = this.f61174b.width() >= ((float) this.f61197y);
        RectF rectF9 = this.f61173a;
        rectF9.set(z10 ? this.f61174b.left : rectF9.left, z9 ? this.f61174b.top : rectF9.top, z10 ? this.f61174b.right : rectF9.right, z9 ? this.f61174b.bottom : rectF9.bottom);
        if (z9 || z10) {
            k();
            postInvalidate();
        }
    }

    private void k() {
        this.f61177e = g.b(this.f61173a);
        this.f61178f = g.a(this.f61173a);
        this.f61182j = null;
        this.f61187o.reset();
        this.f61187o.addCircle(this.f61173a.centerX(), this.f61173a.centerY(), Math.min(this.f61173a.width(), this.f61173a.height()) / 2.0f, Path.Direction.CW);
    }

    protected void a(@NonNull Canvas canvas) {
        if (this.f61184l) {
            if (this.f61182j == null && !this.f61173a.isEmpty()) {
                this.f61182j = new float[(this.f61179g * 4) + (this.f61180h * 4)];
                int i4 = 0;
                for (int i10 = 0; i10 < this.f61179g; i10++) {
                    float[] fArr = this.f61182j;
                    int i11 = i4 + 1;
                    RectF rectF = this.f61173a;
                    fArr[i4] = rectF.left;
                    int i12 = i11 + 1;
                    float f10 = i10 + 1.0f;
                    float height = rectF.height() * (f10 / (this.f61179g + 1));
                    RectF rectF2 = this.f61173a;
                    fArr[i11] = height + rectF2.top;
                    float[] fArr2 = this.f61182j;
                    int i13 = i12 + 1;
                    fArr2[i12] = rectF2.right;
                    i4 = i13 + 1;
                    fArr2[i13] = (rectF2.height() * (f10 / (this.f61179g + 1))) + this.f61173a.top;
                }
                for (int i14 = 0; i14 < this.f61180h; i14++) {
                    float[] fArr3 = this.f61182j;
                    int i15 = i4 + 1;
                    float f11 = i14 + 1.0f;
                    float width = this.f61173a.width() * (f11 / (this.f61180h + 1));
                    RectF rectF3 = this.f61173a;
                    fArr3[i4] = width + rectF3.left;
                    float[] fArr4 = this.f61182j;
                    int i16 = i15 + 1;
                    fArr4[i15] = rectF3.top;
                    int i17 = i16 + 1;
                    float width2 = rectF3.width() * (f11 / (this.f61180h + 1));
                    RectF rectF4 = this.f61173a;
                    fArr4[i16] = width2 + rectF4.left;
                    i4 = i17 + 1;
                    this.f61182j[i17] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.f61182j;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.f61189q);
            }
        }
        if (this.f61183k) {
            canvas.drawRect(this.f61173a, this.f61190r);
        }
        if (this.f61192t != 0) {
            canvas.save();
            this.f61174b.set(this.f61173a);
            RectF rectF5 = this.f61174b;
            int i18 = this.f61198z;
            rectF5.inset(i18, -i18);
            canvas.clipRect(this.f61174b, Region.Op.DIFFERENCE);
            this.f61174b.set(this.f61173a);
            RectF rectF6 = this.f61174b;
            int i19 = this.f61198z;
            rectF6.inset(-i19, i19);
            canvas.clipRect(this.f61174b, Region.Op.DIFFERENCE);
            canvas.drawRect(this.f61173a, this.f61191s);
            canvas.restore();
        }
    }

    protected void b(@NonNull Canvas canvas) {
        canvas.save();
        if (this.f61185m) {
            canvas.clipPath(this.f61187o, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.f61173a, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.f61186n);
        canvas.restore();
        if (this.f61185m) {
            canvas.drawCircle(this.f61173a.centerX(), this.f61173a.centerY(), Math.min(this.f61173a.width(), this.f61173a.height()) / 2.0f, this.f61188p);
        }
    }

    protected void d() {
    }

    @Deprecated
    public boolean g() {
        return this.f61192t == 1;
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.f61173a;
    }

    public int getFreestyleCropMode() {
        return this.f61192t;
    }

    public d getOverlayViewChangeListener() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(@NonNull TypedArray typedArray) {
        this.f61185m = typedArray.getBoolean(c.o.E8, false);
        int color = typedArray.getColor(c.o.F8, getResources().getColor(c.e.Q0));
        this.f61186n = color;
        this.f61188p.setColor(color);
        this.f61188p.setStyle(Paint.Style.STROKE);
        this.f61188p.setStrokeWidth(1.0f);
        e(typedArray);
        this.f61183k = typedArray.getBoolean(c.o.M8, true);
        f(typedArray);
        this.f61184l = typedArray.getBoolean(c.o.N8, true);
    }

    public void i() {
        int i4 = this.f61175c;
        float f10 = this.f61181i;
        int i10 = (int) (i4 / f10);
        int i11 = this.f61176d;
        if (i10 > i11) {
            int i12 = (int) (i11 * f10);
            int i13 = (i4 - i12) / 2;
            this.f61173a.set(getPaddingLeft() + i13, getPaddingTop(), getPaddingLeft() + i12 + i13, getPaddingTop() + this.f61176d);
        } else {
            int i14 = (i11 - i10) / 2;
            this.f61173a.set(getPaddingLeft(), getPaddingTop() + i14, getPaddingLeft() + this.f61175c, getPaddingTop() + i10 + i14);
        }
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(this.f61173a);
        }
        k();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (z9) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f61175c = (getWidth() - getPaddingRight()) - paddingLeft;
            this.f61176d = (getHeight() - getPaddingBottom()) - paddingTop;
            if (this.B) {
                this.B = false;
                setTargetAspectRatio(this.f61181i);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f61173a.isEmpty() && this.f61192t != 0) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            if ((motionEvent.getAction() & 255) == 0) {
                int c10 = c(x9, y9);
                this.f61195w = c10;
                boolean z9 = c10 != -1;
                if (!z9) {
                    this.f61193u = -1.0f;
                    this.f61194v = -1.0f;
                } else if (this.f61193u < 0.0f) {
                    this.f61193u = x9;
                    this.f61194v = y9;
                }
                return z9;
            } else if ((motionEvent.getAction() & 255) == 2 && motionEvent.getPointerCount() == 1 && this.f61195w != -1) {
                float min = Math.min(Math.max(x9, getPaddingLeft()), getWidth() - getPaddingRight());
                float min2 = Math.min(Math.max(y9, getPaddingTop()), getHeight() - getPaddingBottom());
                j(min, min2);
                this.f61193u = min;
                this.f61194v = min2;
                return true;
            } else if ((motionEvent.getAction() & 255) == 1) {
                this.f61193u = -1.0f;
                this.f61194v = -1.0f;
                this.f61195w = -1;
                d dVar = this.A;
                if (dVar != null) {
                    dVar.a(this.f61173a);
                }
            }
        }
        return false;
    }

    public void setCircleDimmedLayer(boolean z9) {
        this.f61185m = z9;
    }

    public void setCropFrameColor(@ColorInt int i4) {
        this.f61190r.setColor(i4);
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int i4) {
        this.f61190r.setStrokeWidth(i4);
    }

    public void setCropGridColor(@ColorInt int i4) {
        this.f61189q.setColor(i4);
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int i4) {
        this.f61180h = i4;
        this.f61182j = null;
    }

    public void setCropGridRowCount(@IntRange(from = 0) int i4) {
        this.f61179g = i4;
        this.f61182j = null;
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int i4) {
        this.f61189q.setStrokeWidth(i4);
    }

    public void setDimmedColor(@ColorInt int i4) {
        this.f61186n = i4;
    }

    @Deprecated
    public void setFreestyleCropEnabled(boolean z9) {
        this.f61192t = z9 ? 1 : 0;
    }

    public void setFreestyleCropMode(int i4) {
        this.f61192t = i4;
        postInvalidate();
    }

    public void setOverlayViewChangeListener(d dVar) {
        this.A = dVar;
    }

    public void setShowCropFrame(boolean z9) {
        this.f61183k = z9;
    }

    public void setShowCropGrid(boolean z9) {
        this.f61184l = z9;
    }

    public void setTargetAspectRatio(float f10) {
        this.f61181i = f10;
        if (this.f61175c > 0) {
            i();
            postInvalidate();
            return;
        }
        this.B = true;
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61173a = new RectF();
        this.f61174b = new RectF();
        this.f61182j = null;
        this.f61187o = new Path();
        this.f61188p = new Paint(1);
        this.f61189q = new Paint(1);
        this.f61190r = new Paint(1);
        this.f61191s = new Paint(1);
        this.f61192t = 0;
        this.f61193u = -1.0f;
        this.f61194v = -1.0f;
        this.f61195w = -1;
        this.f61196x = getResources().getDimensionPixelSize(c.f.f60298u1);
        this.f61197y = getResources().getDimensionPixelSize(c.f.f60301v1);
        this.f61198z = getResources().getDimensionPixelSize(c.f.f60295t1);
        d();
    }
}
