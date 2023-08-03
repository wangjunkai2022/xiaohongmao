package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import b1.b;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: NoOpCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d implements b1.b {
    @Override // b1.b
    public int b() {
        return 0;
    }

    @Override // b1.b
    public void c(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
    }

    @Override // b1.b
    public void clear() {
    }

    @Override // b1.b
    public void d(b.a frameCacheListener) {
    }

    @Override // b1.b
    public void e(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
    }

    @Override // b1.b
    @h
    public com.facebook.common.references.a<Bitmap> f(int frameNumber) {
        return null;
    }

    @Override // b1.b
    @h
    public com.facebook.common.references.a<Bitmap> g(int frameNumber, int width, int height) {
        return null;
    }

    @Override // b1.b
    public boolean h(int frameNumber) {
        return false;
    }

    @Override // b1.b
    @h
    public com.facebook.common.references.a<Bitmap> i(int frameNumber) {
        return null;
    }
}
