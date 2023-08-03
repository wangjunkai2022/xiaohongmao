package com.ksyun.media.streamer.filter.imgbuf;

import com.ksyun.media.streamer.framework.ImgBufFormat;

/* loaded from: classes3.dex */
public class ImgBufBeautyFilter extends ImgBufFilterBase {
    public static final int BEAUTY_LEVEL_0 = 0;
    public static final int BEAUTY_LEVEL_1 = 1;

    /* renamed from: a  reason: collision with root package name */
    private ImgBufFormat f46296a;

    public ImgBufBeautyFilter(ImgPreProcessWrap imgPreProcessWrap) {
        super(imgPreProcessWrap);
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void doFilter() {
        this.mOutPutFrame = this.mImagePreProcess.c(this.mInputFrames[this.mMainSinkPinIndex]);
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected ImgBufFormat getSrcPinFormat() {
        return this.f46296a;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void onFormatChanged(int i4, ImgBufFormat imgBufFormat) {
        this.f46296a = imgBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public void release() {
        super.release();
    }

    public void setBeautyLevel(int i4) {
        this.mImagePreProcess.a(i4);
    }
}
