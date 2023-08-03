package com.facebook.animated.webp;

import android.graphics.Bitmap;
import com.facebook.common.internal.e;
import com.facebook.common.internal.j;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.factory.c;
import com.facebook.imagepipeline.nativecode.g;
import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;
import r7.h;
import s7.d;

@d
@e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class WebPImage implements com.facebook.imagepipeline.animated.base.d, c {
    @h

    /* renamed from: b  reason: collision with root package name */
    private Bitmap.Config f10668b = null;
    @e
    private long mNativeContext;

    @e
    public WebPImage() {
    }

    public static WebPImage k(byte[] source, @h com.facebook.imagepipeline.common.b options) {
        g.a();
        j.i(source);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(source.length);
        allocateDirect.put(source);
        allocateDirect.rewind();
        WebPImage nativeCreateFromDirectByteBuffer = nativeCreateFromDirectByteBuffer(allocateDirect);
        if (options != null) {
            nativeCreateFromDirectByteBuffer.f10668b = options.f12181h;
        }
        return nativeCreateFromDirectByteBuffer;
    }

    public static WebPImage l(ByteBuffer byteBuffer, @h com.facebook.imagepipeline.common.b options) {
        g.a();
        byteBuffer.rewind();
        WebPImage nativeCreateFromDirectByteBuffer = nativeCreateFromDirectByteBuffer(byteBuffer);
        if (options != null) {
            nativeCreateFromDirectByteBuffer.f10668b = options.f12181h;
        }
        return nativeCreateFromDirectByteBuffer;
    }

    public static WebPImage m(long nativePtr, int sizeInBytes, @h com.facebook.imagepipeline.common.b options) {
        g.a();
        j.d(Boolean.valueOf(nativePtr != 0));
        WebPImage nativeCreateFromNativeMemory = nativeCreateFromNativeMemory(nativePtr, sizeInBytes);
        if (options != null) {
            nativeCreateFromNativeMemory.f10668b = options.f12181h;
        }
        return nativeCreateFromNativeMemory;
    }

    private static native WebPImage nativeCreateFromDirectByteBuffer(ByteBuffer buffer);

    private static native WebPImage nativeCreateFromNativeMemory(long nativePtr, int sizeInBytes);

    private native void nativeDispose();

    private native void nativeFinalize();

    private native int nativeGetDuration();

    private native WebPFrame nativeGetFrame(int frameNumber);

    private native int nativeGetFrameCount();

    private native int[] nativeGetFrameDurations();

    private native int nativeGetHeight();

    private native int nativeGetLoopCount();

    private native int nativeGetSizeInBytes();

    private native int nativeGetWidth();

    @Override // com.facebook.imagepipeline.animated.base.d
    public int a() {
        return nativeGetFrameCount();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int b() {
        return nativeGetSizeInBytes();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int c() {
        return nativeGetLoopCount();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public com.facebook.imagepipeline.animated.base.d d(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.b options) {
        return l(byteBuffer, options);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public void dispose() {
        nativeDispose();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public AnimatedDrawableFrameInfo e(int frameNumber) {
        WebPFrame i4 = i(frameNumber);
        try {
            return new AnimatedDrawableFrameInfo(frameNumber, i4.c(), i4.d(), i4.getWidth(), i4.getHeight(), i4.e() ? AnimatedDrawableFrameInfo.BlendOperation.BLEND_WITH_PREVIOUS : AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND, i4.f() ? AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND : AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT);
        } finally {
            i4.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public boolean f() {
        return true;
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public com.facebook.imagepipeline.animated.base.d g(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.b options) {
        return m(nativePtr, sizeInBytes, options);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getDuration() {
        return nativeGetDuration();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int getWidth() {
        return nativeGetWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    @h
    public Bitmap.Config h() {
        return this.f10668b;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int[] j() {
        return nativeGetFrameDurations();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    /* renamed from: n */
    public WebPFrame i(int frameNumber) {
        return nativeGetFrame(frameNumber);
    }

    @e
    WebPImage(long nativeContext) {
        this.mNativeContext = nativeContext;
    }
}
