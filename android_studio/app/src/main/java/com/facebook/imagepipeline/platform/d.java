package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: PlatformDecoder.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface d {
    com.facebook.common.references.a<Bitmap> a(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode);

    com.facebook.common.references.a<Bitmap> b(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, int length, @h final ColorSpace colorSpace);

    com.facebook.common.references.a<Bitmap> c(final com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, @h final ColorSpace colorSpace);

    com.facebook.common.references.a<Bitmap> d(com.facebook.imagepipeline.image.e encodedImage, Bitmap.Config bitmapConfig, @h Rect regionToDecode, int length);
}
