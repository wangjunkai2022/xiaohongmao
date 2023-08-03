package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.Px;
import com.google.android.exoplayer2.text.ttml.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Drawable.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00042\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "updateBounds", "", d.f25720l0, "top", d.f25723n0, "bottom", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DrawableKt {
    @g
    public static final Bitmap toBitmap(@g Drawable drawable, @Px int i4, @Px int i10, @h Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        if ((drawable instanceof BitmapDrawable) && (config == null || ((BitmapDrawable) drawable).getBitmap().getConfig() == config)) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (i4 == bitmapDrawable.getBitmap().getWidth() && i10 == bitmapDrawable.getBitmap().getHeight()) {
                Bitmap bitmap = bitmapDrawable.getBitmap();
                Intrinsics.checkNotNullExpressionValue(bitmap, "bitmap");
                return bitmap;
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i4, i10, true);
            Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(bitmap, width, height, true)");
            return createScaledBitmap;
        }
        Rect bounds = drawable.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "bounds");
        int i11 = bounds.left;
        int i12 = bounds.top;
        int i13 = bounds.right;
        int i14 = bounds.bottom;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(i4, i10, config);
        drawable.setBounds(0, 0, i4, i10);
        drawable.draw(new Canvas(bitmap2));
        drawable.setBounds(i11, i12, i13, i14);
        Intrinsics.checkNotNullExpressionValue(bitmap2, "bitmap");
        return bitmap2;
    }

    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i4, int i10, Bitmap.Config config, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = drawable.getIntrinsicWidth();
        }
        if ((i11 & 2) != 0) {
            i10 = drawable.getIntrinsicHeight();
        }
        if ((i11 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i4, i10, config);
    }

    public static final void updateBounds(@g Drawable drawable, @Px int i4, @Px int i10, @Px int i11, @Px int i12) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        drawable.setBounds(i4, i10, i11, i12);
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i4 = drawable.getBounds().left;
        }
        if ((i13 & 2) != 0) {
            i10 = drawable.getBounds().top;
        }
        if ((i13 & 4) != 0) {
            i11 = drawable.getBounds().right;
        }
        if ((i13 & 8) != 0) {
            i12 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i4, i10, i11, i12);
    }
}
