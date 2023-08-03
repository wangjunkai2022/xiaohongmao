package com.giphy.sdk.ui.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BitmapExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0012\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0007"}, d2 = {"Landroid/graphics/Bitmap;", "", "colors", "b", "", "color", "a", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {
    @m8.g
    public static final Bitmap a(@m8.g Bitmap tintedWithColor, int i4) {
        Intrinsics.checkNotNullParameter(tintedWithColor, "$this$tintedWithColor");
        Bitmap updatedBitmap = Bitmap.createBitmap(tintedWithColor.getWidth(), tintedWithColor.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(updatedBitmap, "updatedBitmap");
        updatedBitmap.setDensity(tintedWithColor.getDensity());
        Canvas canvas = new Canvas(updatedBitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(i4, PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(tintedWithColor, 0.0f, 0.0f, paint);
        return updatedBitmap;
    }

    @m8.g
    public static final Bitmap b(@m8.g Bitmap tintedWithLinearGradientColors, @m8.g int[] colors) {
        Intrinsics.checkNotNullParameter(tintedWithLinearGradientColors, "$this$tintedWithLinearGradientColors");
        Intrinsics.checkNotNullParameter(colors, "colors");
        int width = tintedWithLinearGradientColors.getWidth();
        int height = tintedWithLinearGradientColors.getHeight();
        Bitmap updatedBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(updatedBitmap, "updatedBitmap");
        updatedBitmap.setDensity(tintedWithLinearGradientColors.getDensity());
        Canvas canvas = new Canvas(updatedBitmap);
        canvas.drawBitmap(tintedWithLinearGradientColors, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setShader(new LinearGradient(0.0f, 100.0f, 100.0f, 0.0f, colors[0], colors[1], Shader.TileMode.CLAMP));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawRect(0.0f, 0.0f, width, height, paint);
        return updatedBitmap;
    }
}
