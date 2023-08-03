package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: GingerbreadBitmapFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c extends f {
    @Override // com.facebook.imagepipeline.bitmaps.f
    public com.facebook.common.references.a<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) {
        return com.facebook.common.references.a.G(Bitmap.createBitmap(width, height, bitmapConfig), h.a());
    }
}
