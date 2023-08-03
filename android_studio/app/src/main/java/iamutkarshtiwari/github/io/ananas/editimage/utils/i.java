package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: RectUtil.java */
/* loaded from: classes3.dex */
public class i {
    public static void a(Rect rect, Rect rect2, int i4, int i10) {
        if (rect == null || rect2 == null) {
            return;
        }
        int i11 = rect.left;
        int i12 = rect.top;
        int i13 = rect.right;
        int i14 = rect.bottom;
        if (rect.width() <= rect2.width()) {
            i13 = rect2.width() + i11;
        }
        rect.set(i11, i12, i13, i14 + i4 + Math.max(rect2.height(), i10));
    }

    public static void b(RectF rectF, RectF rectF2, int i4) {
        if (rectF == null || rectF2 == null) {
            return;
        }
        float f10 = rectF.left;
        float f11 = rectF.top;
        float f12 = rectF.right;
        float f13 = rectF.bottom;
        if (rectF.width() <= rectF2.width()) {
            f12 = rectF2.width() + f10;
        }
        rectF.set(f10, f11, f12, f13 + i4 + rectF2.height());
    }

    public static void c(RectF rectF, float f10, float f11, float f12) {
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        double d4 = f12;
        float sin = (float) Math.sin(Math.toRadians(d4));
        float cos = (float) Math.cos(Math.toRadians(d4));
        float f13 = centerX - f10;
        float f14 = centerY - f11;
        rectF.offset(((f10 + (f13 * cos)) - (f14 * sin)) - centerX, ((f11 + (f14 * cos)) + (f13 * sin)) - centerY);
    }

    public static void d(RectF rectF, float f10) {
        float width = rectF.width();
        float height = rectF.height();
        float f11 = ((f10 * width) - width) / 2.0f;
        float f12 = ((f10 * height) - height) / 2.0f;
        rectF.left -= f11;
        rectF.top -= f12;
        rectF.right += f11;
        rectF.bottom += f12;
    }
}
