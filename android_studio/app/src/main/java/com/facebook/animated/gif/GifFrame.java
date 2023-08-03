package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.infer.annotation.Nullsafe;
import s7.d;

@d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class GifFrame implements e {
    @com.facebook.common.internal.e
    private long mNativeContext;

    @com.facebook.common.internal.e
    GifFrame(long nativeContext) {
        this.mNativeContext = nativeContext;
    }

    @com.facebook.common.internal.e
    private native void nativeDispose();

    @com.facebook.common.internal.e
    private native void nativeFinalize();

    @com.facebook.common.internal.e
    private native int nativeGetDisposalMode();

    @com.facebook.common.internal.e
    private native int nativeGetDurationMs();

    @com.facebook.common.internal.e
    private native int nativeGetHeight();

    @com.facebook.common.internal.e
    private native int nativeGetTransparentPixelColor();

    @com.facebook.common.internal.e
    private native int nativeGetWidth();

    @com.facebook.common.internal.e
    private native int nativeGetXOffset();

    @com.facebook.common.internal.e
    private native int nativeGetYOffset();

    @com.facebook.common.internal.e
    private native boolean nativeHasTransparency();

    @com.facebook.common.internal.e
    private native void nativeRenderFrame(int width, int height, Bitmap bitmap);

    @Override // com.facebook.imagepipeline.animated.base.e
    public void a(int width, int height, Bitmap bitmap) {
        nativeRenderFrame(width, height, bitmap);
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int b() {
        return nativeGetDurationMs();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int c() {
        return nativeGetXOffset();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int d() {
        return nativeGetYOffset();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public void dispose() {
        nativeDispose();
    }

    public int e() {
        return nativeGetDisposalMode();
    }

    public int f() {
        return nativeGetTransparentPixelColor();
    }

    protected void finalize() {
        nativeFinalize();
    }

    public boolean g() {
        return nativeHasTransparency();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.e
    public int getWidth() {
        return nativeGetWidth();
    }
}
