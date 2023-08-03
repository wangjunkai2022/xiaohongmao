package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;

/* loaded from: classes3.dex */
public class CustomPaintView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f69712a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f69713b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f69714c;

    /* renamed from: d  reason: collision with root package name */
    private Canvas f69715d;

    /* renamed from: e  reason: collision with root package name */
    private float f69716e;

    /* renamed from: f  reason: collision with root package name */
    private float f69717f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f69718g;

    /* renamed from: h  reason: collision with root package name */
    private int f69719h;

    public CustomPaintView(Context context) {
        super(context);
        this.f69715d = null;
        b(context);
    }

    private void a() {
        this.f69713b = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        this.f69715d = new Canvas(this.f69713b);
    }

    private void b(Context context) {
        Paint paint = new Paint();
        this.f69712a = paint;
        paint.setAntiAlias(true);
        this.f69712a.setColor(SupportMenu.CATEGORY_MASK);
        this.f69712a.setStrokeJoin(Paint.Join.ROUND);
        this.f69712a.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f69714c = paint2;
        paint2.setAlpha(0);
        this.f69714c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        this.f69714c.setAntiAlias(true);
        this.f69714c.setDither(true);
        this.f69714c.setStyle(Paint.Style.STROKE);
        this.f69714c.setStrokeJoin(Paint.Join.ROUND);
        this.f69714c.setStrokeCap(Paint.Cap.ROUND);
        this.f69714c.setStrokeWidth(40.0f);
    }

    public void c() {
        Bitmap bitmap = this.f69713b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f69713b.recycle();
        }
        a();
    }

    public Bitmap getPaintBit() {
        return this.f69713b;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.f69713b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f69713b.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.f69713b;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        if (this.f69713b == null) {
            a();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        float x9 = motionEvent.getX();
        float y9 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    this.f69715d.drawLine(this.f69716e, this.f69717f, x9, y9, this.f69718g ? this.f69714c : this.f69712a);
                    this.f69716e = x9;
                    this.f69717f = y9;
                    postInvalidate();
                } else if (action != 3) {
                    return onTouchEvent;
                }
            }
            return false;
        }
        this.f69716e = x9;
        this.f69717f = y9;
        return true;
    }

    public void setColor(int i4) {
        this.f69719h = i4;
        this.f69712a.setColor(i4);
    }

    public void setEraser(boolean z9) {
        this.f69718g = z9;
        this.f69712a.setColor(z9 ? 0 : this.f69719h);
    }

    public void setEraserStrokeWidth(float f10) {
        this.f69714c.setStrokeWidth(f10);
    }

    public void setStrokeAlpha(float f10) {
        this.f69712a.setAlpha((int) f10);
    }

    public void setWidth(float f10) {
        this.f69712a.setStrokeWidth(f10);
    }

    public CustomPaintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69715d = null;
        b(context);
    }

    public CustomPaintView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f69715d = null;
        b(context);
    }

    @RequiresApi(api = 21)
    public CustomPaintView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f69715d = null;
        b(context);
    }
}
