package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ArtBitmapFactory.java */
@s7.d
@TargetApi(21)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.e f12019a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f12020b;

    public a(com.facebook.imagepipeline.memory.e bitmapPool, com.facebook.imagepipeline.core.a closeableReferenceFactory) {
        this.f12019a = bitmapPool;
        this.f12020b = closeableReferenceFactory;
    }

    @Override // com.facebook.imagepipeline.bitmaps.f
    public com.facebook.common.references.a<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig) {
        Bitmap bitmap = this.f12019a.get(com.facebook.imageutils.a.f(width, height, bitmapConfig));
        j.d(Boolean.valueOf(bitmap.getAllocationByteCount() >= (width * height) * com.facebook.imageutils.a.e(bitmapConfig)));
        bitmap.reconfigure(width, height, bitmapConfig);
        return this.f12020b.c(bitmap, this.f12019a);
    }
}
