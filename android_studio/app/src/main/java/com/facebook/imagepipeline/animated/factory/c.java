package com.facebook.imagepipeline.animated.factory;

import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;

/* compiled from: AnimatedImageDecoder.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface c {
    com.facebook.imagepipeline.animated.base.d d(ByteBuffer byteBuffer, com.facebook.imagepipeline.common.b options);

    com.facebook.imagepipeline.animated.base.d g(long nativePtr, int sizeInBytes, com.facebook.imagepipeline.common.b options);
}
