package com.ksyun.media.streamer.filter.imgbuf;

import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import java.nio.ByteBuffer;
import java.util.UnknownFormatFlagsException;

/* loaded from: classes3.dex */
public class ImgBufScaleFilter extends ImgBufFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private ImgBufFormat f46310a;

    public ImgBufScaleFilter(ImgPreProcessWrap imgPreProcessWrap) {
        super(imgPreProcessWrap);
        this.f46310a = new ImgBufFormat(3, 0, 0, 0);
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void doFilter() {
        ImgBufFrame imgBufFrame = this.mInputFrames[this.mMainSinkPinIndex];
        if (imgBufFrame.format.equals(this.f46310a)) {
            this.mOutPutFrame = imgBufFrame;
            return;
        }
        ByteBuffer byteBuffer = imgBufFrame.buf;
        if (byteBuffer != null && byteBuffer.limit() != 0) {
            int i4 = this.f46310a.pixFmt;
            if (i4 == 3) {
                this.mOutPutFrame = this.mImagePreProcess.a(imgBufFrame);
                return;
            } else if (i4 == 5) {
                this.mOutPutFrame = this.mImagePreProcess.b(this.mInputFrames[this.mMainSinkPinIndex]);
                return;
            } else {
                return;
            }
        }
        ImgBufFrame imgBufFrame2 = new ImgBufFrame(imgBufFrame);
        this.mOutPutFrame = imgBufFrame2;
        imgBufFrame2.format = this.f46310a;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected ImgBufFormat getSrcPinFormat() {
        return this.f46310a;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void onFormatChanged(int i4, ImgBufFormat imgBufFormat) {
        ImgBufFormat imgBufFormat2 = this.f46310a;
        if (imgBufFormat2.width == 0 || imgBufFormat2.height == 0) {
            imgBufFormat2.width = imgBufFormat.width;
            imgBufFormat2.height = imgBufFormat.height;
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public void release() {
        super.release();
    }

    public void setMirror(boolean z9) {
        this.mImagePreProcess.a(z9);
    }

    public void setOutputFormat(int i4) {
        if (i4 != 3 && i4 != 5) {
            throw new UnknownFormatFlagsException("format should be I420 or RGBA");
        }
        this.f46310a.pixFmt = i4;
    }

    public void setTargetSize(int i4, int i10) {
        this.mImagePreProcess.a(i4, i10);
        ImgBufFormat imgBufFormat = this.f46310a;
        imgBufFormat.width = i4;
        imgBufFormat.height = i10;
    }

    public ImgBufScaleFilter() {
        this.f46310a = new ImgBufFormat(3, 0, 0, 0);
    }
}
