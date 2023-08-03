package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.c;

/* loaded from: classes3.dex */
public class HorizontalProgressWheelView extends View {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f61233a;

    /* renamed from: b  reason: collision with root package name */
    private a f61234b;

    /* renamed from: c  reason: collision with root package name */
    private float f61235c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f61236d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f61237e;

    /* renamed from: f  reason: collision with root package name */
    private int f61238f;

    /* renamed from: g  reason: collision with root package name */
    private int f61239g;

    /* renamed from: h  reason: collision with root package name */
    private int f61240h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f61241i;

    /* renamed from: j  reason: collision with root package name */
    private float f61242j;

    /* renamed from: k  reason: collision with root package name */
    private int f61243k;

    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();

        void c(float f10, float f11);
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    private void a() {
        this.f61243k = ContextCompat.getColor(getContext(), c.e.f60193f1);
        this.f61238f = getContext().getResources().getDimensionPixelSize(c.f.K1);
        this.f61239g = getContext().getResources().getDimensionPixelSize(c.f.f60310y1);
        this.f61240h = getContext().getResources().getDimensionPixelSize(c.f.B1);
        Paint paint = new Paint(1);
        this.f61236d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f61236d.setStrokeWidth(this.f61238f);
        this.f61236d.setColor(getResources().getColor(c.e.W0));
        Paint paint2 = new Paint(this.f61236d);
        this.f61237e = paint2;
        paint2.setColor(this.f61243k);
        this.f61237e.setStrokeCap(Paint.Cap.ROUND);
        this.f61237e.setStrokeWidth(getContext().getResources().getDimensionPixelSize(c.f.L1));
    }

    private void b(MotionEvent motionEvent, float f10) {
        this.f61242j -= f10;
        postInvalidate();
        this.f61235c = motionEvent.getX();
        a aVar = this.f61234b;
        if (aVar != null) {
            aVar.c(-f10, this.f61242j);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.f61233a);
        int width = this.f61233a.width();
        int i4 = this.f61238f;
        int i10 = this.f61240h;
        int i11 = width / (i4 + i10);
        float f10 = this.f61242j % (i10 + i4);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i11 / 4;
            if (i12 < i13) {
                this.f61236d.setAlpha((int) ((i12 / i13) * 255.0f));
            } else if (i12 > (i11 * 3) / 4) {
                this.f61236d.setAlpha((int) (((i11 - i12) / i13) * 255.0f));
            } else {
                this.f61236d.setAlpha(255);
            }
            float f11 = -f10;
            Rect rect = this.f61233a;
            float f12 = rect.left + f11 + ((this.f61238f + this.f61240h) * i12);
            float centerY = rect.centerY() - (this.f61239g / 4.0f);
            Rect rect2 = this.f61233a;
            canvas.drawLine(f12, centerY, f11 + rect2.left + ((this.f61238f + this.f61240h) * i12), rect2.centerY() + (this.f61239g / 4.0f), this.f61236d);
        }
        canvas.drawLine(this.f61233a.centerX(), this.f61233a.centerY() - (this.f61239g / 2.0f), this.f61233a.centerX(), (this.f61239g / 2.0f) + this.f61233a.centerY(), this.f61237e);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f61235c = motionEvent.getX();
        } else if (action == 1) {
            a aVar = this.f61234b;
            if (aVar != null) {
                this.f61241i = false;
                aVar.a();
            }
        } else if (action == 2) {
            float x9 = motionEvent.getX() - this.f61235c;
            if (x9 != 0.0f) {
                if (!this.f61241i) {
                    this.f61241i = true;
                    a aVar2 = this.f61234b;
                    if (aVar2 != null) {
                        aVar2.b();
                    }
                }
                b(motionEvent, x9);
            }
        }
        return true;
    }

    public void setMiddleLineColor(@ColorInt int i4) {
        this.f61243k = i4;
        this.f61237e.setColor(i4);
        invalidate();
    }

    public void setScrollingListener(a aVar) {
        this.f61234b = aVar;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61233a = new Rect();
        a();
    }

    @TargetApi(21)
    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f61233a = new Rect();
    }
}
