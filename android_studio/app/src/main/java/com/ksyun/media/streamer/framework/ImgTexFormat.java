package com.ksyun.media.streamer.framework;

/* loaded from: classes3.dex */
public class ImgTexFormat {
    public static final int COLOR_EXTERNAL_OES = 3;
    public static final int COLOR_RGBA = 1;
    public static final int COLOR_YUVA = 2;
    public final int colorFormat;
    public final int height;
    public final int width;

    public ImgTexFormat(int i4, int i10, int i11) {
        this.colorFormat = i4;
        this.width = i10;
        this.height = i11;
    }
}
