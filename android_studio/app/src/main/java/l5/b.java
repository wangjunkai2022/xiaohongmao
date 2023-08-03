package l5;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

/* compiled from: HeartUtil.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Path f86888a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private static Path f86889b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private static Paint f86890c;

    /* renamed from: d  reason: collision with root package name */
    private static Paint f86891d;

    static {
        Paint paint = new Paint();
        f86890c = paint;
        paint.setAntiAlias(true);
        f86890c.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        f86891d = paint2;
        paint2.setAntiAlias(true);
        f86891d.setColor(-1);
        f86891d.setStyle(Paint.Style.STROKE);
        f86891d.setStrokeWidth(1.0f);
    }

    public static void a(Canvas canvas, float f10, int i4) {
        canvas.drawColor(0);
        f86890c.setColor(i4);
        f86888a.reset();
        f86889b.reset();
        float width = canvas.getWidth() / 2;
        float height = canvas.getHeight() / 2;
        f86889b.moveTo(width, height - (5.0f * f10));
        for (double d4 = 0.0d; d4 <= 6.283185307179586d; d4 += 0.01d) {
            f86889b.lineTo(width - (((float) (((Math.sin(d4) * 16.0d) * Math.sin(d4)) * Math.sin(d4))) * f10), height - (((float) ((((Math.cos(d4) * 13.0d) - (Math.cos(d4 * 2.0d) * 5.0d)) - (Math.cos(3.0d * d4) * 2.0d)) - Math.cos(4.0d * d4))) * f10));
        }
        canvas.drawPath(f86889b, f86890c);
        canvas.drawPath(f86889b, f86891d);
    }
}
