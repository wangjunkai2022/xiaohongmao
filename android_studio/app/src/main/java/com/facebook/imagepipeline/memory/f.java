package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapPoolBackend.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f extends u<Bitmap> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f12608c = "BitmapPoolBackend";

    @Override // com.facebook.imagepipeline.memory.u, com.facebook.imagepipeline.memory.c0
    @r7.h
    /* renamed from: d */
    public Bitmap get(int size) {
        Bitmap bitmap = (Bitmap) super.get(size);
        if (bitmap == null || !f(bitmap)) {
            return null;
        }
        bitmap.eraseColor(0);
        return bitmap;
    }

    @Override // com.facebook.imagepipeline.memory.c0
    /* renamed from: e */
    public int a(Bitmap bitmap) {
        return com.facebook.imageutils.a.g(bitmap);
    }

    protected boolean f(@r7.h Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        if (bitmap.isRecycled()) {
            p0.a.y0(f12608c, "Cannot reuse a recycled bitmap: %s", bitmap);
            return false;
        } else if (bitmap.isMutable()) {
            return true;
        } else {
            p0.a.y0(f12608c, "Cannot reuse an immutable bitmap: %s", bitmap);
            return false;
        }
    }

    @Override // com.facebook.imagepipeline.memory.u, com.facebook.imagepipeline.memory.c0
    /* renamed from: g */
    public void put(Bitmap bitmap) {
        if (f(bitmap)) {
            super.put(bitmap);
        }
    }
}
