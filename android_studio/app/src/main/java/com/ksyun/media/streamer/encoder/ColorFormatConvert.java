package com.ksyun.media.streamer.encoder;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ColorFormatConvert {
    static {
        LibraryLoader.load();
    }

    public static native int I420ToRGBA(ByteBuffer byteBuffer, int i4, int i10, int i11, ByteBuffer byteBuffer2);

    public static native int RGBAToBGR8(ByteBuffer byteBuffer, int i4, int i10, int i11, ByteBuffer byteBuffer2);

    public static native int RGBAToI420(ByteBuffer byteBuffer, int i4, int i10, int i11, ByteBuffer byteBuffer2);

    public static native int YUVAToI420(ByteBuffer byteBuffer, int i4, int i10, int i11, ByteBuffer byteBuffer2);
}
