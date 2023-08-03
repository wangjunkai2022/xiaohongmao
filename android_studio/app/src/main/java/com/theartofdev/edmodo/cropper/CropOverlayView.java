package com.theartofdev.edmodo.cropper;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class CropOverlayView extends View {
    private final Rect A;
    private boolean B;
    private Integer C;

    /* renamed from: a  reason: collision with root package name */
    private ScaleGestureDetector f58864a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f58865b;

    /* renamed from: c  reason: collision with root package name */
    private final f f58866c;

    /* renamed from: d  reason: collision with root package name */
    private b f58867d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f58868e;

    /* renamed from: f  reason: collision with root package name */
    private Paint f58869f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f58870g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f58871h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f58872i;

    /* renamed from: j  reason: collision with root package name */
    private Path f58873j;

    /* renamed from: k  reason: collision with root package name */
    private final float[] f58874k;

    /* renamed from: l  reason: collision with root package name */
    private final RectF f58875l;

    /* renamed from: m  reason: collision with root package name */
    private int f58876m;

    /* renamed from: n  reason: collision with root package name */
    private int f58877n;

    /* renamed from: o  reason: collision with root package name */
    private float f58878o;

    /* renamed from: p  reason: collision with root package name */
    private float f58879p;

    /* renamed from: q  reason: collision with root package name */
    private float f58880q;

    /* renamed from: r  reason: collision with root package name */
    private float f58881r;

    /* renamed from: s  reason: collision with root package name */
    private float f58882s;

    /* renamed from: t  reason: collision with root package name */
    private CropWindowMoveHandler f58883t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f58884u;

    /* renamed from: v  reason: collision with root package name */
    private int f58885v;

    /* renamed from: w  reason: collision with root package name */
    private int f58886w;

    /* renamed from: x  reason: collision with root package name */
    private float f58887x;

    /* renamed from: y  reason: collision with root package name */
    private CropImageView.Guidelines f58888y;

    /* renamed from: z  reason: collision with root package name */
    private CropImageView.CropShape f58889z;

    /* loaded from: classes3.dex */
    public interface b {
        void a(boolean z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private c() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        @TargetApi(11)
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            RectF h4 = CropOverlayView.this.f58866c.h();
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            float currentSpanY = scaleGestureDetector.getCurrentSpanY() / 2.0f;
            float currentSpanX = scaleGestureDetector.getCurrentSpanX() / 2.0f;
            float f10 = focusY - currentSpanY;
            float f11 = focusX - currentSpanX;
            float f12 = focusX + currentSpanX;
            float f13 = focusY + currentSpanY;
            if (f11 >= f12 || f10 > f13 || f11 < 0.0f || f12 > CropOverlayView.this.f58866c.c() || f10 < 0.0f || f13 > CropOverlayView.this.f58866c.b()) {
                return true;
            }
            h4.set(f11, f10, f12, f13);
            CropOverlayView.this.f58866c.t(h4);
            CropOverlayView.this.invalidate();
            return true;
        }
    }

    public CropOverlayView(Context context) {
        this(context, null);
    }

    private boolean b(RectF rectF) {
        float u9 = com.theartofdev.edmodo.cropper.c.u(this.f58874k);
        float w9 = com.theartofdev.edmodo.cropper.c.w(this.f58874k);
        float v9 = com.theartofdev.edmodo.cropper.c.v(this.f58874k);
        float p9 = com.theartofdev.edmodo.cropper.c.p(this.f58874k);
        if (!n()) {
            this.f58875l.set(u9, w9, v9, p9);
            return false;
        }
        float[] fArr = this.f58874k;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[4];
        float f13 = fArr[5];
        float f14 = fArr[6];
        float f15 = fArr[7];
        if (fArr[7] < fArr[1]) {
            if (fArr[1] < fArr[3]) {
                f10 = fArr[6];
                f11 = fArr[7];
                f12 = fArr[2];
                f13 = fArr[3];
                f14 = fArr[4];
                f15 = fArr[5];
            } else {
                f10 = fArr[4];
                f11 = fArr[5];
                f12 = fArr[0];
                f13 = fArr[1];
                f14 = fArr[2];
                f15 = fArr[3];
            }
        } else if (fArr[1] > fArr[3]) {
            f10 = fArr[2];
            f11 = fArr[3];
            f12 = fArr[6];
            f13 = fArr[7];
            f14 = fArr[0];
            f15 = fArr[1];
        }
        float f16 = (f15 - f11) / (f14 - f10);
        float f17 = (-1.0f) / f16;
        float f18 = f11 - (f16 * f10);
        float f19 = f11 - (f10 * f17);
        float f20 = f13 - (f16 * f12);
        float f21 = f13 - (f12 * f17);
        float centerY = rectF.centerY() - rectF.top;
        float centerX = rectF.centerX();
        float f22 = rectF.left;
        float f23 = centerY / (centerX - f22);
        float f24 = -f23;
        float f25 = rectF.top;
        float f26 = f25 - (f22 * f23);
        float f27 = rectF.right;
        float f28 = f25 - (f24 * f27);
        float f29 = f16 - f23;
        float f30 = (f26 - f18) / f29;
        float max = Math.max(u9, f30 < f27 ? f30 : u9);
        float f31 = (f26 - f19) / (f17 - f23);
        if (f31 >= rectF.right) {
            f31 = max;
        }
        float max2 = Math.max(max, f31);
        float f32 = f17 - f24;
        float f33 = (f28 - f21) / f32;
        if (f33 >= rectF.right) {
            f33 = max2;
        }
        float max3 = Math.max(max2, f33);
        float f34 = (f28 - f19) / f32;
        if (f34 <= rectF.left) {
            f34 = v9;
        }
        float min = Math.min(v9, f34);
        float f35 = (f28 - f20) / (f16 - f24);
        if (f35 <= rectF.left) {
            f35 = min;
        }
        float min2 = Math.min(min, f35);
        float f36 = (f26 - f20) / f29;
        if (f36 <= rectF.left) {
            f36 = min2;
        }
        float min3 = Math.min(min2, f36);
        float max4 = Math.max(w9, Math.max((f16 * max3) + f18, (f17 * min3) + f19));
        float min4 = Math.min(p9, Math.min((f17 * max3) + f21, (f16 * min3) + f20));
        RectF rectF2 = this.f58875l;
        rectF2.left = max3;
        rectF2.top = max4;
        rectF2.right = min3;
        rectF2.bottom = min4;
        return true;
    }

    private void c(boolean z9) {
        try {
            b bVar = this.f58867d;
            if (bVar != null) {
                bVar.a(z9);
            }
        } catch (Exception e4) {
            Log.e("AIC", "Exception in crop window changed", e4);
        }
    }

    private void d(Canvas canvas) {
        RectF h4 = this.f58866c.h();
        float max = Math.max(com.theartofdev.edmodo.cropper.c.u(this.f58874k), 0.0f);
        float max2 = Math.max(com.theartofdev.edmodo.cropper.c.w(this.f58874k), 0.0f);
        float min = Math.min(com.theartofdev.edmodo.cropper.c.v(this.f58874k), getWidth());
        float min2 = Math.min(com.theartofdev.edmodo.cropper.c.p(this.f58874k), getHeight());
        if (this.f58889z == CropImageView.CropShape.RECTANGLE) {
            if (n()) {
                int i4 = Build.VERSION.SDK_INT;
                this.f58873j.reset();
                Path path = this.f58873j;
                float[] fArr = this.f58874k;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f58873j;
                float[] fArr2 = this.f58874k;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f58873j;
                float[] fArr3 = this.f58874k;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f58873j;
                float[] fArr4 = this.f58874k;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f58873j.close();
                canvas.save();
                if (i4 >= 26) {
                    canvas.clipOutPath(this.f58873j);
                } else {
                    canvas.clipPath(this.f58873j, Region.Op.INTERSECT);
                }
                canvas.clipRect(h4, Region.Op.XOR);
                canvas.drawRect(max, max2, min, min2, this.f58872i);
                canvas.restore();
                return;
            }
            canvas.drawRect(max, max2, min, h4.top, this.f58872i);
            canvas.drawRect(max, h4.bottom, min, min2, this.f58872i);
            canvas.drawRect(max, h4.top, h4.left, h4.bottom, this.f58872i);
            canvas.drawRect(h4.right, h4.top, min, h4.bottom, this.f58872i);
            return;
        }
        this.f58873j.reset();
        int i10 = Build.VERSION.SDK_INT;
        this.f58868e.set(h4.left, h4.top, h4.right, h4.bottom);
        this.f58873j.addOval(this.f58868e, Path.Direction.CW);
        canvas.save();
        if (i10 >= 26) {
            canvas.clipOutPath(this.f58873j);
        } else {
            canvas.clipPath(this.f58873j, Region.Op.XOR);
        }
        canvas.drawRect(max, max2, min, min2, this.f58872i);
        canvas.restore();
    }

    private void e(Canvas canvas) {
        Paint paint = this.f58869f;
        if (paint != null) {
            float strokeWidth = paint.getStrokeWidth();
            RectF h4 = this.f58866c.h();
            float f10 = strokeWidth / 2.0f;
            h4.inset(f10, f10);
            if (this.f58889z == CropImageView.CropShape.RECTANGLE) {
                canvas.drawRect(h4, this.f58869f);
            } else {
                canvas.drawOval(h4, this.f58869f);
            }
        }
    }

    private void f(Canvas canvas) {
        if (this.f58870g != null) {
            Paint paint = this.f58869f;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            float strokeWidth2 = this.f58870g.getStrokeWidth();
            float f10 = strokeWidth2 / 2.0f;
            float f11 = (this.f58889z == CropImageView.CropShape.RECTANGLE ? this.f58878o : 0.0f) + f10;
            RectF h4 = this.f58866c.h();
            h4.inset(f11, f11);
            float f12 = (strokeWidth2 - strokeWidth) / 2.0f;
            float f13 = f10 + f12;
            float f14 = h4.left;
            float f15 = h4.top;
            canvas.drawLine(f14 - f12, f15 - f13, f14 - f12, f15 + this.f58879p, this.f58870g);
            float f16 = h4.left;
            float f17 = h4.top;
            canvas.drawLine(f16 - f13, f17 - f12, f16 + this.f58879p, f17 - f12, this.f58870g);
            float f18 = h4.right;
            float f19 = h4.top;
            canvas.drawLine(f18 + f12, f19 - f13, f18 + f12, f19 + this.f58879p, this.f58870g);
            float f20 = h4.right;
            float f21 = h4.top;
            canvas.drawLine(f20 + f13, f21 - f12, f20 - this.f58879p, f21 - f12, this.f58870g);
            float f22 = h4.left;
            float f23 = h4.bottom;
            canvas.drawLine(f22 - f12, f23 + f13, f22 - f12, f23 - this.f58879p, this.f58870g);
            float f24 = h4.left;
            float f25 = h4.bottom;
            canvas.drawLine(f24 - f13, f25 + f12, f24 + this.f58879p, f25 + f12, this.f58870g);
            float f26 = h4.right;
            float f27 = h4.bottom;
            canvas.drawLine(f26 + f12, f27 + f13, f26 + f12, f27 - this.f58879p, this.f58870g);
            float f28 = h4.right;
            float f29 = h4.bottom;
            canvas.drawLine(f28 + f13, f29 + f12, f28 - this.f58879p, f29 + f12, this.f58870g);
        }
    }

    private void g(Canvas canvas) {
        if (this.f58871h != null) {
            Paint paint = this.f58869f;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            RectF h4 = this.f58866c.h();
            h4.inset(strokeWidth, strokeWidth);
            float width = h4.width() / 3.0f;
            float height = h4.height() / 3.0f;
            if (this.f58889z == CropImageView.CropShape.OVAL) {
                float width2 = (h4.width() / 2.0f) - strokeWidth;
                float height2 = (h4.height() / 2.0f) - strokeWidth;
                float f10 = h4.left + width;
                float f11 = h4.right - width;
                float sin = (float) (height2 * Math.sin(Math.acos((width2 - width) / width2)));
                canvas.drawLine(f10, (h4.top + height2) - sin, f10, (h4.bottom - height2) + sin, this.f58871h);
                canvas.drawLine(f11, (h4.top + height2) - sin, f11, (h4.bottom - height2) + sin, this.f58871h);
                float f12 = h4.top + height;
                float f13 = h4.bottom - height;
                float cos = (float) (width2 * Math.cos(Math.asin((height2 - height) / height2)));
                canvas.drawLine((h4.left + width2) - cos, f12, (h4.right - width2) + cos, f12, this.f58871h);
                canvas.drawLine((h4.left + width2) - cos, f13, (h4.right - width2) + cos, f13, this.f58871h);
                return;
            }
            float f14 = h4.left + width;
            float f15 = h4.right - width;
            canvas.drawLine(f14, h4.top, f14, h4.bottom, this.f58871h);
            canvas.drawLine(f15, h4.top, f15, h4.bottom, this.f58871h);
            float f16 = h4.top + height;
            float f17 = h4.bottom - height;
            canvas.drawLine(h4.left, f16, h4.right, f16, this.f58871h);
            canvas.drawLine(h4.left, f17, h4.right, f17, this.f58871h);
        }
    }

    private void h(RectF rectF) {
        if (rectF.width() < this.f58866c.e()) {
            float e4 = (this.f58866c.e() - rectF.width()) / 2.0f;
            rectF.left -= e4;
            rectF.right += e4;
        }
        if (rectF.height() < this.f58866c.d()) {
            float d4 = (this.f58866c.d() - rectF.height()) / 2.0f;
            rectF.top -= d4;
            rectF.bottom += d4;
        }
        if (rectF.width() > this.f58866c.c()) {
            float width = (rectF.width() - this.f58866c.c()) / 2.0f;
            rectF.left += width;
            rectF.right -= width;
        }
        if (rectF.height() > this.f58866c.b()) {
            float height = (rectF.height() - this.f58866c.b()) / 2.0f;
            rectF.top += height;
            rectF.bottom -= height;
        }
        b(rectF);
        if (this.f58875l.width() > 0.0f && this.f58875l.height() > 0.0f) {
            float max = Math.max(this.f58875l.left, 0.0f);
            float max2 = Math.max(this.f58875l.top, 0.0f);
            float min = Math.min(this.f58875l.right, getWidth());
            float min2 = Math.min(this.f58875l.bottom, getHeight());
            if (rectF.left < max) {
                rectF.left = max;
            }
            if (rectF.top < max2) {
                rectF.top = max2;
            }
            if (rectF.right > min) {
                rectF.right = min;
            }
            if (rectF.bottom > min2) {
                rectF.bottom = min2;
            }
        }
        if (!this.f58884u || Math.abs(rectF.width() - (rectF.height() * this.f58887x)) <= 0.1d) {
            return;
        }
        if (rectF.width() > rectF.height() * this.f58887x) {
            float abs = Math.abs((rectF.height() * this.f58887x) - rectF.width()) / 2.0f;
            rectF.left += abs;
            rectF.right -= abs;
            return;
        }
        float abs2 = Math.abs((rectF.width() / this.f58887x) - rectF.height()) / 2.0f;
        rectF.top += abs2;
        rectF.bottom -= abs2;
    }

    private static Paint j(int i4) {
        Paint paint = new Paint();
        paint.setColor(i4);
        return paint;
    }

    private static Paint k(float f10, int i4) {
        if (f10 > 0.0f) {
            Paint paint = new Paint();
            paint.setColor(i4);
            paint.setStrokeWidth(f10);
            paint.setStyle(Paint.Style.STROKE);
            paint.setAntiAlias(true);
            return paint;
        }
        return null;
    }

    private void l() {
        float max = Math.max(com.theartofdev.edmodo.cropper.c.u(this.f58874k), 0.0f);
        float max2 = Math.max(com.theartofdev.edmodo.cropper.c.w(this.f58874k), 0.0f);
        float min = Math.min(com.theartofdev.edmodo.cropper.c.v(this.f58874k), getWidth());
        float min2 = Math.min(com.theartofdev.edmodo.cropper.c.p(this.f58874k), getHeight());
        if (min <= max || min2 <= max2) {
            return;
        }
        RectF rectF = new RectF();
        this.B = true;
        float f10 = this.f58880q;
        float f11 = min - max;
        float f12 = f10 * f11;
        float f13 = min2 - max2;
        float f14 = f10 * f13;
        if (this.A.width() > 0 && this.A.height() > 0) {
            rectF.left = (this.A.left / this.f58866c.k()) + max;
            rectF.top = (this.A.top / this.f58866c.j()) + max2;
            rectF.right = rectF.left + (this.A.width() / this.f58866c.k());
            rectF.bottom = rectF.top + (this.A.height() / this.f58866c.j());
            rectF.left = Math.max(max, rectF.left);
            rectF.top = Math.max(max2, rectF.top);
            rectF.right = Math.min(min, rectF.right);
            rectF.bottom = Math.min(min2, rectF.bottom);
        } else if (this.f58884u && min > max && min2 > max2) {
            if (f11 / f13 > this.f58887x) {
                rectF.top = max2 + f14;
                rectF.bottom = min2 - f14;
                float width = getWidth() / 2.0f;
                this.f58887x = this.f58885v / this.f58886w;
                float max3 = Math.max(this.f58866c.e(), rectF.height() * this.f58887x) / 2.0f;
                rectF.left = width - max3;
                rectF.right = width + max3;
            } else {
                rectF.left = max + f12;
                rectF.right = min - f12;
                float height = getHeight() / 2.0f;
                float max4 = Math.max(this.f58866c.d(), rectF.width() / this.f58887x) / 2.0f;
                rectF.top = height - max4;
                rectF.bottom = height + max4;
            }
        } else {
            rectF.left = max + f12;
            rectF.top = max2 + f14;
            rectF.right = min - f12;
            rectF.bottom = min2 - f14;
        }
        h(rectF);
        this.f58866c.t(rectF);
    }

    private boolean n() {
        float[] fArr = this.f58874k;
        return (fArr[0] == fArr[6] || fArr[1] == fArr[7]) ? false : true;
    }

    private void o(float f10, float f11) {
        CropWindowMoveHandler f12 = this.f58866c.f(f10, f11, this.f58881r, this.f58889z);
        this.f58883t = f12;
        if (f12 != null) {
            invalidate();
        }
    }

    private void p(float f10, float f11) {
        if (this.f58883t != null) {
            float f12 = this.f58882s;
            RectF h4 = this.f58866c.h();
            this.f58883t.m(h4, f10, f11, this.f58875l, this.f58876m, this.f58877n, b(h4) ? 0.0f : f12, this.f58884u, this.f58887x);
            this.f58866c.t(h4);
            c(true);
            invalidate();
        }
    }

    private void q() {
        if (this.f58883t != null) {
            this.f58883t = null;
            c(false);
            invalidate();
        }
    }

    public int getAspectRatioX() {
        return this.f58885v;
    }

    public int getAspectRatioY() {
        return this.f58886w;
    }

    public CropImageView.CropShape getCropShape() {
        return this.f58889z;
    }

    public RectF getCropWindowRect() {
        return this.f58866c.h();
    }

    public CropImageView.Guidelines getGuidelines() {
        return this.f58888y;
    }

    public Rect getInitialCropWindowRect() {
        return this.A;
    }

    public void i() {
        RectF cropWindowRect = getCropWindowRect();
        h(cropWindowRect);
        this.f58866c.t(cropWindowRect);
    }

    public boolean m() {
        return this.f58884u;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
        if (this.f58866c.u()) {
            CropImageView.Guidelines guidelines = this.f58888y;
            if (guidelines == CropImageView.Guidelines.ON) {
                g(canvas);
            } else if (guidelines == CropImageView.Guidelines.ON_TOUCH && this.f58883t != null) {
                g(canvas);
            }
        }
        e(canvas);
        f(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            if (this.f58865b) {
                this.f58864a.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        p(motionEvent.getX(), motionEvent.getY());
                        getParent().requestDisallowInterceptTouchEvent(true);
                        return true;
                    } else if (action != 3) {
                        return false;
                    }
                }
                getParent().requestDisallowInterceptTouchEvent(false);
                q();
                return true;
            }
            o(motionEvent.getX(), motionEvent.getY());
            return true;
        }
        return false;
    }

    public void r() {
        if (this.B) {
            setCropWindowRect(com.theartofdev.edmodo.cropper.c.f58935b);
            l();
            invalidate();
        }
    }

    public void s() {
        if (this.B) {
            l();
            invalidate();
            c(false);
        }
    }

    public void setAspectRatioX(int i4) {
        if (i4 > 0) {
            if (this.f58885v != i4) {
                this.f58885v = i4;
                this.f58887x = i4 / this.f58886w;
                if (this.B) {
                    l();
                    invalidate();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }

    public void setAspectRatioY(int i4) {
        if (i4 > 0) {
            if (this.f58886w != i4) {
                this.f58886w = i4;
                this.f58887x = this.f58885v / i4;
                if (this.B) {
                    l();
                    invalidate();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }

    public void setCropShape(CropImageView.CropShape cropShape) {
        if (this.f58889z != cropShape) {
            this.f58889z = cropShape;
            invalidate();
        }
    }

    public void setCropWindowChangeListener(b bVar) {
        this.f58867d = bVar;
    }

    public void setCropWindowRect(RectF rectF) {
        this.f58866c.t(rectF);
    }

    public void setFixedAspectRatio(boolean z9) {
        if (this.f58884u != z9) {
            this.f58884u = z9;
            if (this.B) {
                l();
                invalidate();
            }
        }
    }

    public void setGuidelines(CropImageView.Guidelines guidelines) {
        if (this.f58888y != guidelines) {
            this.f58888y = guidelines;
            if (this.B) {
                invalidate();
            }
        }
    }

    public void setInitialAttributeValues(CropImageOptions cropImageOptions) {
        this.f58866c.q(cropImageOptions);
        setCropShape(cropImageOptions.cropShape);
        setSnapRadius(cropImageOptions.snapRadius);
        setGuidelines(cropImageOptions.guidelines);
        setFixedAspectRatio(cropImageOptions.fixAspectRatio);
        setAspectRatioX(cropImageOptions.aspectRatioX);
        setAspectRatioY(cropImageOptions.aspectRatioY);
        x(cropImageOptions.multiTouchEnabled);
        this.f58881r = cropImageOptions.touchRadius;
        this.f58880q = cropImageOptions.initialCropWindowPaddingRatio;
        this.f58869f = k(cropImageOptions.borderLineThickness, cropImageOptions.borderLineColor);
        this.f58878o = cropImageOptions.borderCornerOffset;
        this.f58879p = cropImageOptions.borderCornerLength;
        this.f58870g = k(cropImageOptions.borderCornerThickness, cropImageOptions.borderCornerColor);
        this.f58871h = k(cropImageOptions.guidelinesThickness, cropImageOptions.guidelinesColor);
        this.f58872i = j(cropImageOptions.backgroundColor);
    }

    public void setInitialCropWindowRect(Rect rect) {
        Rect rect2 = this.A;
        if (rect == null) {
            rect = com.theartofdev.edmodo.cropper.c.f58934a;
        }
        rect2.set(rect);
        if (this.B) {
            l();
            invalidate();
            c(false);
        }
    }

    public void setSnapRadius(float f10) {
        this.f58882s = f10;
    }

    public void t(float[] fArr, int i4, int i10) {
        if (fArr == null || !Arrays.equals(this.f58874k, fArr)) {
            if (fArr == null) {
                Arrays.fill(this.f58874k, 0.0f);
            } else {
                System.arraycopy(fArr, 0, this.f58874k, 0, fArr.length);
            }
            this.f58876m = i4;
            this.f58877n = i10;
            RectF h4 = this.f58866c.h();
            if (h4.width() == 0.0f || h4.height() == 0.0f) {
                l();
            }
        }
    }

    public void u(float f10, float f11, float f12, float f13) {
        this.f58866c.p(f10, f11, f12, f13);
    }

    public void v(int i4, int i10) {
        this.f58866c.r(i4, i10);
    }

    public void w(int i4, int i10) {
        this.f58866c.s(i4, i10);
    }

    public boolean x(boolean z9) {
        if (this.f58865b != z9) {
            this.f58865b = z9;
            if (z9 && this.f58864a == null) {
                this.f58864a = new ScaleGestureDetector(getContext(), new c());
                return true;
            }
            return true;
        }
        return false;
    }

    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f58866c = new f();
        this.f58868e = new RectF();
        this.f58873j = new Path();
        this.f58874k = new float[8];
        this.f58875l = new RectF();
        this.f58887x = this.f58885v / this.f58886w;
        this.A = new Rect();
    }
}
