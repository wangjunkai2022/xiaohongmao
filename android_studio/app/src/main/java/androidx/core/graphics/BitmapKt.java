package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Bitmap.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\b\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0087\b\u001a)\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\bø\u0001\u0000\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0086\b\u001a'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, d2 = {"createBitmap", "Landroid/graphics/Bitmap;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "contains", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "get", y.b.f83919g, y.b.f83920h, "scale", "filter", "set", "color", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class BitmapKt {
    @g
    public static final Bitmap applyCanvas(@g Bitmap bitmap, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(@g Bitmap bitmap, @g Point p9) {
        int i4;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        int i10 = p9.x;
        return i10 >= 0 && i10 < bitmap.getWidth() && (i4 = p9.y) >= 0 && i4 < bitmap.getHeight();
    }

    @g
    public static final Bitmap createBitmap(int i4, int i10, @g Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, height, config)");
        return createBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i4, int i10, Bitmap.Config config, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        Intrinsics.checkNotNullParameter(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, height, config)");
        return createBitmap;
    }

    public static final int get(@g Bitmap bitmap, int i4, int i10) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return bitmap.getPixel(i4, i10);
    }

    @g
    public static final Bitmap scale(@g Bitmap bitmap, int i4, int i10, boolean z9) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i4, i10, z9);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return createScaledBitmap;
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i4, int i10, boolean z9, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z9 = true;
        }
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i4, i10, z9);
        Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return createScaledBitmap;
    }

    public static final void set(@g Bitmap bitmap, int i4, int i10, @ColorInt int i11) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        bitmap.setPixel(i4, i10, i11);
    }

    public static final boolean contains(@g Bitmap bitmap, @g PointF p9) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        float f10 = p9.x;
        if (f10 >= 0.0f && f10 < bitmap.getWidth()) {
            float f11 = p9.y;
            if (f11 >= 0.0f && f11 < bitmap.getHeight()) {
                return true;
            }
        }
        return false;
    }

    @RequiresApi(26)
    @g
    public static final Bitmap createBitmap(int i4, int i10, @g Bitmap.Config config, boolean z9, @g ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, config, z9, colorSpace);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i4, int i10, Bitmap.Config config, boolean z9, ColorSpace colorSpace, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i11 & 8) != 0) {
            z9 = true;
        }
        if ((i11 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            Intrinsics.checkNotNullExpressionValue(colorSpace, "get(ColorSpace.Named.SRGB)");
        }
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, config, z9, colorSpace);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }
}
