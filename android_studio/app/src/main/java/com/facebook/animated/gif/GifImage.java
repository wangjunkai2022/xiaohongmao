package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.common.internal.e;
import com.facebook.common.internal.j;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.factory.c;
import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;
import r7.h;
import s7.d;

@d
@e
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class GifImage implements com.facebook.imagepipeline.animated.base.d, c {

    /* renamed from: c  reason: collision with root package name */
    private static final int f10504c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f10505d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f10506e;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Bitmap.Config f10507b = null;
    @e
    private long mNativeContext;

    @e
    public GifImage() {
    }

    public static GifImage k(byte[] source) {
        j.i(source);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(source.length);
        allocateDirect.put(source);
        allocateDirect.rewind();
        return m(allocateDirect, com.facebook.imagepipeline.common.b.a());
    }

    public static GifImage l(ByteBuffer byteBuffer) {
        return m(byteBuffer, com.facebook.imagepipeline.common.b.a());
    }

    public static GifImage m(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.b options) {
        p();
        byteBuffer.rewind();
        GifImage nativeCreateFromDirectByteBuffer = nativeCreateFromDirectByteBuffer(byteBuffer, options.f12175b, options.f12179f);
        nativeCreateFromDirectByteBuffer.f10507b = options.f12181h;
        return nativeCreateFromDirectByteBuffer;
    }

    public static GifImage n(int fileDescriptor, com.facebook.imagepipeline.common.b options) {
        p();
        return nativeCreateFromFileDescriptor(fileDescriptor, options.f12175b, options.f12179f);
    }

    @e
    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer buffer, int maxDimension, boolean forceStatic);

    @e
    private static native GifImage nativeCreateFromFileDescriptor(int fileDescriptor, int maxDimension, boolean forceStatic);

    @e
    private static native GifImage nativeCreateFromNativeMemory(long nativePtr, int sizeInBytes, int maxDimension, boolean forceStatic);

    @e
    private native void nativeDispose();

    @e
    private native void nativeFinalize();

    @e
    private native int nativeGetDuration();

    @e
    private native GifFrame nativeGetFrame(int frameNumber);

    @e
    private native int nativeGetFrameCount();

    @e
    private native int[] nativeGetFrameDurations();

    @e
    private native int nativeGetHeight();

    @e
    private native int nativeGetLoopCount();

    @e
    private native int nativeGetSizeInBytes();

    @e
    private native int nativeGetWidth();

    @e
    private native boolean nativeIsAnimated();

    public static GifImage o(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.b options) {
        p();
        j.d(Boolean.valueOf(nativePtr != 0));
        GifImage nativeCreateFromNativeMemory = nativeCreateFromNativeMemory(nativePtr, sizeInBytes, options.f12175b, options.f12179f);
        nativeCreateFromNativeMemory.f10507b = options.f12181h;
        return nativeCreateFromNativeMemory;
    }

    private static synchronized void p() {
        synchronized (GifImage.class) {
            if (!f10506e) {
                f10506e = true;
                y1.a.f("gifimage");
            }
        }
    }

    private static AnimatedDrawableFrameInfo.DisposalMethod q(int disposalMode) {
        if (disposalMode == 0) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (disposalMode == 1) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (disposalMode == 2) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND;
        }
        if (disposalMode == 3) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS;
        }
        return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
    }

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
        int nativeGetLoopCount = nativeGetLoopCount();
        if (nativeGetLoopCount != -1) {
            if (nativeGetLoopCount != 0) {
                return nativeGetLoopCount + 1;
            }
            return 0;
        }
        return 1;
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public com.facebook.imagepipeline.animated.base.d d(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.b options) {
        return m(byteBuffer, options);
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public void dispose() {
        nativeDispose();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public AnimatedDrawableFrameInfo e(int frameNumber) {
        GifFrame i4 = i(frameNumber);
        try {
            return new AnimatedDrawableFrameInfo(frameNumber, i4.c(), i4.d(), i4.getWidth(), i4.getHeight(), AnimatedDrawableFrameInfo.BlendOperation.BLEND_WITH_PREVIOUS, q(i4.e()));
        } finally {
            i4.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public boolean f() {
        return false;
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // com.facebook.imagepipeline.animated.factory.c
    public com.facebook.imagepipeline.animated.base.d g(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.b options) {
        return o(nativePtr, sizeInBytes, options);
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
        return this.f10507b;
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    public int[] j() {
        return nativeGetFrameDurations();
    }

    @Override // com.facebook.imagepipeline.animated.base.d
    /* renamed from: r */
    public GifFrame i(int frameNumber) {
        return nativeGetFrame(frameNumber);
    }

    public boolean s() {
        return nativeIsAnimated();
    }

    @e
    GifImage(long nativeContext) {
        this.mNativeContext = nativeContext;
    }
}
