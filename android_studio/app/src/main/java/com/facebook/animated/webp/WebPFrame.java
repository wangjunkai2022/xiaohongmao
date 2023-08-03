package com.facebook.animated.webp;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.infer.annotation.Nullsafe;
import s7.d;

@d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class WebPFrame implements e {
    @com.facebook.common.internal.e
    private long mNativeContext;

    @com.facebook.common.internal.e
    WebPFrame(long nativeContext) {
        this.mNativeContext = nativeContext;
    }

    private native void nativeDispose();

    private native void nativeFinalize();

    private native int nativeGetDurationMs();

    private native int nativeGetHeight();

    private native int nativeGetWidth();

    private native int nativeGetXOffset();

    private native int nativeGetYOffset();

    private native boolean nativeIsBlendWithPreviousFrame();

    private native void nativeRenderFrame(int width, int height, Bitmap bitmap);

    private native boolean nativeShouldDisposeToBackgroundColor();

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

    public boolean e() {
        return nativeIsBlendWithPreviousFrame();
    }

    public boolean f() {
        return nativeShouldDisposeToBackgroundColor();
    }

    protected void finalize() {
        nativeFinalize();
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
