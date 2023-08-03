package com.ksyun.media.streamer.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;

/* compiled from: TextGraphicUtils.java */
/* loaded from: classes3.dex */
public class e {
    public static float a(String str, float f10) {
        Paint paint = new Paint();
        paint.setTextSize(f10);
        return paint.measureText(str);
    }

    public static int b(String str, float f10) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(f10);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.width();
    }

    public static int c(String str, float f10) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(f10);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.height();
    }

    public static float a(Paint paint, String str) {
        return paint.measureText(str);
    }

    public static float a(float f10) {
        Paint paint = new Paint();
        paint.setTextSize(f10);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static float b(Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.leading - fontMetrics.ascent;
    }

    public static float a(Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static Bitmap a(String str, int i4, float f10, Bitmap bitmap) {
        Paint paint = new Paint();
        paint.setTypeface(Typeface.create(Typeface.DEFAULT_BOLD, 1));
        paint.setColor(i4);
        paint.setTextSize(f10);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        float a10 = a(paint, str);
        float a11 = a(paint);
        int i10 = ((a10 % 1.0f) > 0.0f ? 1 : ((a10 % 1.0f) == 0.0f ? 0 : -1));
        int i11 = (int) a10;
        if (i10 != 0) {
            i11++;
        }
        int i12 = a11 % 1.0f == 0.0f ? (int) a11 : ((int) a11) + 1;
        if (bitmap != null) {
            i11 += bitmap.getWidth();
            if (bitmap.getHeight() > i12) {
                i12 = bitmap.getHeight();
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, (i12 - bitmap.getHeight()) / 2, paint);
            canvas.drawText(str, bitmap.getWidth(), ((i12 - a11) / 2.0f) + b(paint), paint);
        } else {
            canvas.drawText(str, 0.0f, ((i12 - a11) / 2.0f) + b(paint), paint);
        }
        canvas.save();
        return createBitmap;
    }

    public static Bitmap a(String str, int i4, float f10) {
        return a(str, i4, f10, null);
    }
}
