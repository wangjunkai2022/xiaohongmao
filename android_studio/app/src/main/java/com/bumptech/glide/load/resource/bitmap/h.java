package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: BitmapTransformation.java */
/* loaded from: classes.dex */
public abstract class h implements com.bumptech.glide.load.i<Bitmap> {
    @Override // com.bumptech.glide.load.i
    @NonNull
    public final com.bumptech.glide.load.engine.u<Bitmap> a(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.u<Bitmap> uVar, int i4, int i10) {
        if (com.bumptech.glide.util.o.w(i4, i10)) {
            com.bumptech.glide.load.engine.bitmap_recycle.e h4 = com.bumptech.glide.c.e(context).h();
            Bitmap bitmap = uVar.get();
            if (i4 == Integer.MIN_VALUE) {
                i4 = bitmap.getWidth();
            }
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getHeight();
            }
            Bitmap c10 = c(h4, bitmap, i4, i10);
            return bitmap.equals(c10) ? uVar : g.c(c10, h4);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i4 + " or height: " + i10 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    protected abstract Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10);
}
