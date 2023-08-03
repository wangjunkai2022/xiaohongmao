package com.ksyun.media.streamer.framework;

/* loaded from: classes3.dex */
public class AVFrameBase {
    public static final int FLAG_CODEC_CONFIG = 2;
    public static final int FLAG_DETACH_NATIVE_MODULE = 65536;
    public static final int FLAG_END_OF_STREAM = 4;
    public static final int FLAG_KEY_FRAME = 1;
    public int flags;
    public long pts;

    public boolean isRefCounted() {
        return false;
    }

    public void ref() {
    }

    public void unref() {
    }
}
