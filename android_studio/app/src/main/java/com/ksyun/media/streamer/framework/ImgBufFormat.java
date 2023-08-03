package com.ksyun.media.streamer.framework;

/* loaded from: classes3.dex */
public class ImgBufFormat {
    public static final int FMT_ARGB = 4;
    public static final int FMT_BGR8 = 6;
    public static final int FMT_I420 = 3;
    public static final int FMT_NV21 = 1;
    public static final int FMT_OPAQUE = 0;
    public static final int FMT_RGBA = 5;
    public static final int FMT_YV12 = 2;
    public int height;
    public int orientation;
    public int pixFmt;
    public int[] stride;
    public int strideNum;
    public int width;

    public ImgBufFormat(int i4, int i10, int i11, int i12) {
        this.pixFmt = i4;
        this.width = i10;
        this.height = i11;
        this.orientation = i12;
        this.stride = null;
        this.strideNum = 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ImgBufFormat)) {
            return false;
        }
        ImgBufFormat imgBufFormat = (ImgBufFormat) obj;
        return this.pixFmt == imgBufFormat.pixFmt && this.width == imgBufFormat.width && this.height == imgBufFormat.height && this.orientation == imgBufFormat.orientation;
    }

    public ImgBufFormat(int i4, int i10, int i11, int i12, int[] iArr) {
        this.pixFmt = i4;
        this.width = i10;
        this.height = i11;
        this.orientation = i12;
        this.stride = iArr;
        if (iArr != null) {
            this.strideNum = iArr.length;
        }
    }

    public ImgBufFormat() {
        this.pixFmt = 0;
        this.width = 0;
        this.height = 0;
        this.orientation = 0;
        this.stride = null;
        this.strideNum = 0;
    }
}
