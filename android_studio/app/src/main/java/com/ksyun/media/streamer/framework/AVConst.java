package com.ksyun.media.streamer.framework;

/* loaded from: classes3.dex */
public class AVConst {
    public static final int AV_SAMPLE_FMT_DBL = 4;
    public static final int AV_SAMPLE_FMT_DBLP = 9;
    public static final int AV_SAMPLE_FMT_FLT = 3;
    public static final int AV_SAMPLE_FMT_FLTP = 8;
    public static final int AV_SAMPLE_FMT_S16 = 1;
    public static final int AV_SAMPLE_FMT_S16P = 6;
    public static final int AV_SAMPLE_FMT_S32 = 2;
    public static final int AV_SAMPLE_FMT_S32P = 7;
    public static final int AV_SAMPLE_FMT_U8 = 0;
    public static final int AV_SAMPLE_FMT_U8P = 5;
    public static final int CODEC_ID_AAC = 256;
    public static final int CODEC_ID_AVC = 1;
    public static final int CODEC_ID_GIF = 3;
    public static final int CODEC_ID_HEVC = 2;
    public static final int CODEC_ID_MPEG4 = 4;
    public static final int CODEC_ID_NONE = 0;
    public static final int FLAG_B_FRAME = 16;
    public static final int FLAG_CODEC_CONFIG = 2;
    public static final int FLAG_DETACH_NATIVE_MODULE = 65536;
    public static final int FLAG_END_OF_STREAM = 4;
    public static final int FLAG_KEY_FRAME = 1;
    public static final int FLAG_P_FRAME = 8;
    public static final int MEDIA_TYPE_AUDIO = 2;
    public static final int MEDIA_TYPE_NONE = 0;
    public static final int MEDIA_TYPE_VIDEO = 1;
    public static final int PIX_FMT_ARGB = 4;
    public static final int PIX_FMT_BGR8 = 6;
    public static final int PIX_FMT_I420 = 3;
    public static final int PIX_FMT_NONE = 0;
    public static final int PIX_FMT_NV21 = 1;
    public static final int PIX_FMT_RGBA = 5;
    public static final int PIX_FMT_YV12 = 2;
    public static final int PROFILE_AAC_HE = 4;
    public static final int PROFILE_AAC_HE_V2 = 28;
    public static final int PROFILE_AAC_LOW = 1;

    public static int getBytesPerSample(int i4) {
        if (i4 != 0) {
            if (i4 != 2 && i4 != 3) {
                if (i4 != 4) {
                    if (i4 == 5) {
                        return 1;
                    }
                    if (i4 != 7 && i4 != 8) {
                        if (i4 != 9) {
                            return 2;
                        }
                    }
                }
                return 8;
            }
            return 4;
        }
        return 1;
    }
}
