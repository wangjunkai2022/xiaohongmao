package master.flame.danmaku.controller;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.core.internal.view.SupportMenu;

/* compiled from: DrawHelper.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static Paint f87094a = null;

    /* renamed from: b  reason: collision with root package name */
    public static Paint f87095b = null;

    /* renamed from: c  reason: collision with root package name */
    public static RectF f87096c = null;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f87097d = true;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f87098e = true;

    static {
        Paint paint = new Paint();
        f87094a = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        f87094a.setColor(0);
        f87096c = new RectF();
    }

    public static void a(Canvas canvas) {
        if (f87097d) {
            if (f87098e) {
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                return;
            } else {
                canvas.drawColor(0);
                return;
            }
        }
        f87096c.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        c(canvas, f87096c);
    }

    public static void b(Canvas canvas, float f10, float f11, float f12, float f13) {
        f87096c.set(f10, f11, f12, f13);
        c(canvas, f87096c);
    }

    private static void c(Canvas canvas, RectF rectF) {
        if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
            return;
        }
        canvas.drawRect(rectF, f87094a);
    }

    public static void d(Canvas canvas, String str) {
        if (f87095b == null) {
            Paint paint = new Paint();
            f87095b = paint;
            paint.setColor(SupportMenu.CATEGORY_MASK);
            f87095b.setTextSize(30.0f);
        }
        int height = canvas.getHeight() - 50;
        b(canvas, 10.0f, height - 50, (int) (f87095b.measureText(str) + 20.0f), canvas.getHeight());
        canvas.drawText(str, 10.0f, height, f87095b);
    }

    public static void e(Canvas canvas) {
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
    }

    public static void f(boolean z9, boolean z10) {
        f87097d = z9;
        f87098e = z10;
    }
}
