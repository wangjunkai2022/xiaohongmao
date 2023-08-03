package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.utils.i;

/* compiled from: StickerItem.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: o  reason: collision with root package name */
    private static final float f69759o = 0.15f;

    /* renamed from: p  reason: collision with root package name */
    private static final int f69760p = 25;

    /* renamed from: q  reason: collision with root package name */
    private static final int f69761q = 8;

    /* renamed from: r  reason: collision with root package name */
    private static final int f69762r = 30;

    /* renamed from: s  reason: collision with root package name */
    private static Bitmap f69763s;

    /* renamed from: t  reason: collision with root package name */
    private static Bitmap f69764t;

    /* renamed from: a  reason: collision with root package name */
    public Bitmap f69765a;

    /* renamed from: b  reason: collision with root package name */
    RectF f69766b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f69767c;

    /* renamed from: d  reason: collision with root package name */
    private RectF f69768d;

    /* renamed from: e  reason: collision with root package name */
    private RectF f69769e;

    /* renamed from: f  reason: collision with root package name */
    private RectF f69770f;

    /* renamed from: g  reason: collision with root package name */
    public Matrix f69771g;

    /* renamed from: h  reason: collision with root package name */
    private float f69772h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    boolean f69773i = false;

    /* renamed from: j  reason: collision with root package name */
    private Paint f69774j = new Paint();

    /* renamed from: k  reason: collision with root package name */
    private Paint f69775k;

    /* renamed from: l  reason: collision with root package name */
    private float f69776l;

    /* renamed from: m  reason: collision with root package name */
    RectF f69777m;

    /* renamed from: n  reason: collision with root package name */
    RectF f69778n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        Paint paint = new Paint();
        this.f69775k = paint;
        paint.setColor(-1);
        this.f69775k.setStyle(Paint.Style.STROKE);
        this.f69775k.setAntiAlias(true);
        this.f69775k.setStrokeWidth(8.0f);
        Paint paint2 = new Paint();
        paint2.setColor(SupportMenu.CATEGORY_MASK);
        paint2.setAlpha(120);
        Paint paint3 = new Paint();
        paint3.setColor(-16711936);
        paint3.setAlpha(120);
        if (f69763s == null) {
            f69763s = BitmapFactory.decodeResource(context.getResources(), b.h.f66713v1);
        }
        if (f69764t == null) {
            f69764t = BitmapFactory.decodeResource(context.getResources(), b.h.G1);
        }
    }

    private void c() {
        RectF rectF = this.f69770f;
        rectF.left -= 25.0f;
        rectF.right += 25.0f;
        rectF.top -= 25.0f;
        rectF.bottom += 25.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        canvas.drawBitmap(this.f69765a, this.f69771g, null);
        if (this.f69773i) {
            canvas.save();
            canvas.rotate(this.f69772h, this.f69770f.centerX(), this.f69770f.centerY());
            canvas.drawRoundRect(this.f69770f, 10.0f, 10.0f, this.f69775k);
            canvas.drawBitmap(f69763s, this.f69767c, this.f69768d, (Paint) null);
            canvas.drawBitmap(f69764t, this.f69767c, this.f69769e, (Paint) null);
            canvas.restore();
        }
    }

    public void b(Bitmap bitmap, View view) {
        this.f69765a = bitmap;
        int min = Math.min(bitmap.getWidth(), view.getWidth() >> 1);
        int height = (bitmap.getHeight() * min) / bitmap.getWidth();
        int width = (view.getWidth() >> 1) - (min >> 1);
        int height2 = (view.getHeight() >> 1) - (height >> 1);
        this.f69766b = new RectF(width, height2, width + min, height2 + height);
        Matrix matrix = new Matrix();
        this.f69771g = matrix;
        RectF rectF = this.f69766b;
        matrix.postTranslate(rectF.left, rectF.top);
        float height3 = height / bitmap.getHeight();
        RectF rectF2 = this.f69766b;
        this.f69771g.postScale(min / bitmap.getWidth(), height3, rectF2.left, rectF2.top);
        this.f69776l = this.f69766b.width();
        this.f69773i = true;
        this.f69770f = new RectF(this.f69766b);
        c();
        this.f69767c = new Rect(0, 0, f69763s.getWidth(), f69763s.getHeight());
        RectF rectF3 = this.f69770f;
        float f10 = rectF3.left;
        float f11 = rectF3.top;
        this.f69768d = new RectF(f10 - 30.0f, f11 - 30.0f, f10 + 30.0f, f11 + 30.0f);
        RectF rectF4 = this.f69770f;
        float f12 = rectF4.right;
        float f13 = rectF4.bottom;
        this.f69769e = new RectF(f12 - 30.0f, f13 - 30.0f, f12 + 30.0f, f13 + 30.0f);
        this.f69777m = new RectF(this.f69769e);
        this.f69778n = new RectF(this.f69768d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(float f10, float f11) {
        this.f69771g.postTranslate(f10, f11);
        this.f69766b.offset(f10, f11);
        this.f69770f.offset(f10, f11);
        this.f69768d.offset(f10, f11);
        this.f69769e.offset(f10, f11);
        this.f69777m.offset(f10, f11);
        this.f69778n.offset(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(float f10, float f11, float f12, float f13) {
        float centerX = this.f69766b.centerX();
        float centerY = this.f69766b.centerY();
        float centerX2 = this.f69777m.centerX();
        float centerY2 = this.f69777m.centerY();
        float f14 = f12 + centerX2;
        float f15 = f13 + centerY2;
        float f16 = centerX2 - centerX;
        float f17 = centerY2 - centerY;
        float f18 = f14 - centerX;
        float f19 = f15 - centerY;
        float sqrt = (float) Math.sqrt((f16 * f16) + (f17 * f17));
        float sqrt2 = (float) Math.sqrt((f18 * f18) + (f19 * f19));
        float f20 = sqrt2 / sqrt;
        if ((this.f69766b.width() * f20) / this.f69776l < f69759o) {
            return;
        }
        this.f69771g.postScale(f20, f20, this.f69766b.centerX(), this.f69766b.centerY());
        i.d(this.f69766b, f20);
        this.f69770f.set(this.f69766b);
        c();
        RectF rectF = this.f69769e;
        RectF rectF2 = this.f69770f;
        rectF.offsetTo(rectF2.right - 30.0f, rectF2.bottom - 30.0f);
        RectF rectF3 = this.f69768d;
        RectF rectF4 = this.f69770f;
        rectF3.offsetTo(rectF4.left - 30.0f, rectF4.top - 30.0f);
        RectF rectF5 = this.f69777m;
        RectF rectF6 = this.f69770f;
        rectF5.offsetTo(rectF6.right - 30.0f, rectF6.bottom - 30.0f);
        RectF rectF7 = this.f69778n;
        RectF rectF8 = this.f69770f;
        rectF7.offsetTo(rectF8.left - 30.0f, rectF8.top - 30.0f);
        double d4 = ((f16 * f18) + (f17 * f19)) / (sqrt * sqrt2);
        if (d4 > 1.0d || d4 < -1.0d) {
            return;
        }
        float degrees = ((f16 * f19) - (f18 * f17) > 0.0f ? 1 : -1) * ((float) Math.toDegrees(Math.acos(d4)));
        this.f69772h += degrees;
        this.f69771g.postRotate(degrees, this.f69766b.centerX(), this.f69766b.centerY());
        i.c(this.f69777m, this.f69766b.centerX(), this.f69766b.centerY(), this.f69772h);
        i.c(this.f69778n, this.f69766b.centerX(), this.f69766b.centerY(), this.f69772h);
    }
}
