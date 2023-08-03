package com.bumptech.glide.integration.webp;

import androidx.annotation.Keep;
import com.bumptech.glide.util.m;
import java.nio.ByteBuffer;

@Keep
/* loaded from: classes.dex */
public class WebpImage {
    private int mBackgroundColor;
    private int mDurationMs;
    private int mFrameCount;
    private int[] mFrameDurations;
    private int mHeigth;
    private int mLoopCount;
    @Keep
    private long mNativePtr;
    private int mWidth;

    static {
        System.loadLibrary("glide-webp");
    }

    @Keep
    WebpImage(long j4, int i4, int i10, int i11, int i12, int[] iArr, int i13, int i14) {
        if (j4 != 0) {
            this.mWidth = i4;
            this.mHeigth = i10;
            this.mFrameCount = i11;
            this.mDurationMs = i12;
            this.mFrameDurations = iArr;
            this.mLoopCount = i13;
            fixFrameDurations(iArr);
            this.mBackgroundColor = i14;
            this.mNativePtr = j4;
            return;
        }
        throw new RuntimeException("internal error: native WebpImage is 0");
    }

    public static WebpImage create(byte[] bArr) {
        m.d(bArr);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
        allocateDirect.put(bArr);
        allocateDirect.rewind();
        return nativeCreateFromDirectByteBuffer(allocateDirect);
    }

    private void fixFrameDurations(int[] iArr) {
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] < 20) {
                iArr[i4] = 100;
            }
        }
    }

    private static native WebpImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    private native void nativeDispose();

    private native void nativeFinalize();

    private native WebpFrame nativeGetFrame(int i4);

    private native int nativeGetSizeInBytes();

    public void dispose() {
        nativeDispose();
    }

    protected void finalize() throws Throwable {
        nativeFinalize();
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getDuration() {
        return this.mDurationMs;
    }

    public WebpFrame getFrame(int i4) {
        return nativeGetFrame(i4);
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int[] getFrameDurations() {
        return this.mFrameDurations;
    }

    public c getFrameInfo(int i4) {
        WebpFrame frame = getFrame(i4);
        try {
            return new c(i4, frame);
        } finally {
            frame.dispose();
        }
    }

    public int getHeight() {
        return this.mHeigth;
    }

    public int getLoopCount() {
        return this.mLoopCount;
    }

    public int getSizeInBytes() {
        return nativeGetSizeInBytes();
    }

    public int getWidth() {
        return this.mWidth;
    }
}
