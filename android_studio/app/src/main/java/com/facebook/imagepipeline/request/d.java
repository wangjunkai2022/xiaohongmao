package com.facebook.imagepipeline.request;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: Postprocessor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface d {
    @h
    com.facebook.cache.common.c a();

    com.facebook.common.references.a<Bitmap> c(Bitmap sourceBitmap, com.facebook.imagepipeline.bitmaps.f bitmapFactory);

    String getName();
}
