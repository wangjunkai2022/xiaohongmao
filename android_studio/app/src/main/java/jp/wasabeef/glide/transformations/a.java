package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.util.o;
import java.security.MessageDigest;

/* compiled from: BitmapTransformation.java */
/* loaded from: classes4.dex */
public abstract class a implements com.bumptech.glide.load.i<Bitmap> {
    @Override // com.bumptech.glide.load.i
    @NonNull
    public final u<Bitmap> a(@NonNull Context context, @NonNull u<Bitmap> resource, int outWidth, int outHeight) {
        if (o.w(outWidth, outHeight)) {
            com.bumptech.glide.load.engine.bitmap_recycle.e h4 = com.bumptech.glide.c.e(context).h();
            Bitmap bitmap = resource.get();
            if (outWidth == Integer.MIN_VALUE) {
                outWidth = bitmap.getWidth();
            }
            int i4 = outWidth;
            if (outHeight == Integer.MIN_VALUE) {
                outHeight = bitmap.getHeight();
            }
            Bitmap d4 = d(context.getApplicationContext(), h4, bitmap, i4, outHeight);
            return bitmap.equals(d4) ? resource : com.bumptech.glide.load.resource.bitmap.g.c(d4, h4);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + outWidth + " or height: " + outHeight + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    @Override // com.bumptech.glide.load.c
    public abstract void b(@NonNull MessageDigest messageDigest);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@NonNull Bitmap toTransform, @NonNull Bitmap canvasBitmap) {
        canvasBitmap.setDensity(toTransform.getDensity());
    }

    protected abstract Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight);

    @Override // com.bumptech.glide.load.c
    public abstract boolean equals(Object o9);

    @Override // com.bumptech.glide.load.c
    public abstract int hashCode();
}
