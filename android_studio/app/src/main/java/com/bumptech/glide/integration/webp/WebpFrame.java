package com.bumptech.glide.integration.webp;

import android.graphics.Bitmap;
import androidx.annotation.Keep;

@Keep
/* loaded from: classes.dex */
public class WebpFrame {
    static final int FRAME_DURATION_MS_FOR_MIN = 100;
    static final int MIN_FRAME_DURATION_MS = 20;
    boolean blendPreviousFrame;
    int delay;
    boolean disposeBackgroundColor;
    int ih;
    int iw;
    int ix;
    int iy;
    @Keep
    private long mNativePtr;

    WebpFrame(long j4, int i4, int i10, int i11, int i12, int i13, boolean z9, boolean z10) {
        this.mNativePtr = j4;
        this.ix = i4;
        this.iy = i10;
        this.iw = i11;
        this.ih = i12;
        this.delay = i13;
        this.blendPreviousFrame = z9;
        this.disposeBackgroundColor = z10;
        fixFrameDuration();
    }

    private void fixFrameDuration() {
        if (this.delay < 20) {
            this.delay = 100;
        }
    }

    private native void nativeDispose();

    private native void nativeFinalize();

    private native void nativeRenderFrame(int i4, int i10, Bitmap bitmap);

    public void dispose() {
        nativeDispose();
    }

    protected void finalize() throws Throwable {
        nativeFinalize();
    }

    public int getDurationMs() {
        return this.delay;
    }

    public int getHeight() {
        return this.ih;
    }

    public int getWidth() {
        return this.iw;
    }

    public int getXOffest() {
        return this.ix;
    }

    public int getYOffest() {
        return this.iy;
    }

    public boolean isBlendWithPreviousFrame() {
        return this.blendPreviousFrame;
    }

    public void renderFrame(int i4, int i10, Bitmap bitmap) {
        nativeRenderFrame(i4, i10, bitmap);
    }

    public boolean shouldDisposeToBackgroundColor() {
        return this.disposeBackgroundColor;
    }
}
