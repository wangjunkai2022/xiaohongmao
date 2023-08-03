package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import iamutkarshtiwari.github.io.ananas.editimage.utils.g;

/* loaded from: classes3.dex */
public class RotateImageView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Rect f69730a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f69731b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f69732c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f69733d;

    /* renamed from: e  reason: collision with root package name */
    private Matrix f69734e;

    /* renamed from: f  reason: collision with root package name */
    private float f69735f;

    /* renamed from: g  reason: collision with root package name */
    private int f69736g;

    /* renamed from: h  reason: collision with root package name */
    private RectF f69737h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f69738i;

    /* renamed from: j  reason: collision with root package name */
    private RectF f69739j;

    public RotateImageView(Context context) {
        super(context);
        this.f69734e = new Matrix();
        this.f69737h = new RectF();
        c(context);
    }

    private void b() {
        this.f69737h.set(this.f69731b);
        this.f69734e.reset();
        this.f69734e.postRotate(this.f69736g, getWidth() >> 1, getHeight() >> 1);
        this.f69734e.mapRect(this.f69737h);
    }

    private void c(Context context) {
        this.f69730a = new Rect();
        this.f69731b = new RectF();
        this.f69732c = new Rect();
        this.f69738i = g.g();
        this.f69739j = new RectF();
    }

    public void a(Bitmap bitmap, RectF rectF) {
        this.f69733d = bitmap;
        this.f69730a.set(0, 0, bitmap.getWidth(), this.f69733d.getHeight());
        this.f69731b = rectF;
        this.f69739j.set(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        invalidate();
    }

    public void d() {
        this.f69736g = 0;
        this.f69735f = 1.0f;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f69733d == null) {
            return;
        }
        this.f69732c.set(0, 0, getWidth(), getHeight());
        b();
        this.f69735f = 1.0f;
        if (this.f69737h.width() > getWidth()) {
            this.f69735f = getWidth() / this.f69737h.width();
        }
        canvas.save();
        float f10 = this.f69735f;
        canvas.scale(f10, f10, canvas.getWidth() >> 1, canvas.getHeight() >> 1);
        canvas.drawRect(this.f69737h, this.f69738i);
        canvas.rotate(this.f69736g, canvas.getWidth() >> 1, canvas.getHeight() >> 1);
        canvas.drawBitmap(this.f69733d, this.f69730a, this.f69731b, (Paint) null);
        canvas.restore();
    }

    public void e(int i4) {
        this.f69736g = i4;
        invalidate();
    }

    public RectF getImageNewRect() {
        Matrix matrix = new Matrix();
        matrix.postRotate(this.f69736g, this.f69739j.centerX(), this.f69739j.centerY());
        matrix.mapRect(this.f69739j);
        return this.f69739j;
    }

    public synchronized int getRotateAngle() {
        return this.f69736g;
    }

    public synchronized float getScale() {
        return this.f69735f;
    }

    public RotateImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69734e = new Matrix();
        this.f69737h = new RectF();
        c(context);
    }

    public RotateImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f69734e = new Matrix();
        this.f69737h = new RectF();
        c(context);
    }
}
