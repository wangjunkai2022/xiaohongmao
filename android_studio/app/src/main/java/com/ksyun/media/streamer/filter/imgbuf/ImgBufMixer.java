package com.ksyun.media.streamer.filter.imgbuf;

import android.graphics.RectF;
import com.ksyun.media.streamer.filter.imgbuf.ImgPreProcessWrap;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;

/* loaded from: classes3.dex */
public class ImgBufMixer extends ImgBufFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final int f46304a = 8;

    /* renamed from: b  reason: collision with root package name */
    private RectF[] f46305b;

    /* renamed from: c  reason: collision with root package name */
    private ImgPreProcessWrap.ImgBufMixerConfig[] f46306c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46307d;

    /* renamed from: e  reason: collision with root package name */
    private int f46308e;

    /* renamed from: f  reason: collision with root package name */
    private int f46309f;

    public ImgBufMixer(ImgPreProcessWrap imgPreProcessWrap) {
        super(imgPreProcessWrap);
        this.f46305b = new RectF[getSinkPinNum()];
        this.f46306c = new ImgPreProcessWrap.ImgBufMixerConfig[getSinkPinNum()];
    }

    private boolean a() {
        int i4 = 1;
        while (true) {
            ImgBufFrame[] imgBufFrameArr = this.mInputFrames;
            if (i4 >= imgBufFrameArr.length) {
                return false;
            }
            if (imgBufFrameArr[i4] != null) {
                return true;
            }
            i4++;
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void doFilter() {
        if (this.f46307d && a()) {
            this.mOutPutFrame = this.mImagePreProcess.a(this.mInputFrames, this.f46306c);
        } else {
            this.mOutPutFrame = this.mInputFrames[this.mMainSinkPinIndex];
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public int getSinkPinNum() {
        return 8;
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected ImgBufFormat getSrcPinFormat() {
        return new ImgBufFormat(3, this.f46308e, this.f46309f, 0);
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    protected void onFormatChanged(int i4, ImgBufFormat imgBufFormat) {
        ImgPreProcessWrap.ImgBufMixerConfig[] imgBufMixerConfigArr = this.f46306c;
        if (imgBufMixerConfigArr[i4] != null) {
            imgBufMixerConfigArr[i4].f46315w = imgBufFormat.width;
            imgBufMixerConfigArr[i4].f46314h = imgBufFormat.height;
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgbuf.ImgBufFilterBase
    public void release() {
        super.release();
    }

    public void setRenderRect(int i4, RectF rectF, float f10) {
        if (i4 < getSinkPinNum()) {
            this.f46305b[i4] = rectF;
            this.f46306c[i4] = new ImgPreProcessWrap.ImgBufMixerConfig((int) (rectF.left * this.f46308e), (int) (rectF.top * this.f46309f), (((int) (rectF.width() * this.f46308e)) / 2) * 2, (((int) (rectF.height() * this.f46309f)) / 2) * 2, (int) (f10 * 255.0f));
        }
        if (i4 > 0) {
            this.f46307d = true;
        }
    }

    public void setTargetSize(int i4, int i10) {
        this.f46308e = i4;
        this.f46309f = i10;
        int i11 = 0;
        while (true) {
            RectF[] rectFArr = this.f46305b;
            if (i11 >= rectFArr.length) {
                return;
            }
            RectF rectF = rectFArr[i11];
            ImgPreProcessWrap.ImgBufMixerConfig imgBufMixerConfig = this.f46306c[i11];
            if (rectF != null && imgBufMixerConfig != null) {
                if (imgBufMixerConfig.f46316x == 0) {
                    imgBufMixerConfig.f46316x = (int) (rectF.left * this.f46308e);
                }
                if (imgBufMixerConfig.f46317y == 0) {
                    imgBufMixerConfig.f46317y = (int) (rectF.top * this.f46309f);
                }
                if (imgBufMixerConfig.f46315w == 0) {
                    imgBufMixerConfig.f46315w = (((int) (rectF.width() * this.f46308e)) / 2) * 2;
                }
                if (imgBufMixerConfig.f46314h == 0) {
                    imgBufMixerConfig.f46314h = (((int) (rectF.height() * this.f46309f)) / 2) * 2;
                }
            }
            i11++;
        }
    }

    public void setRenderRect(int i4, float f10, float f11, float f12, float f13, float f14) {
        setRenderRect(i4, new RectF(f10, f11, f12 + f10, f13 + f11), f14);
    }
}
