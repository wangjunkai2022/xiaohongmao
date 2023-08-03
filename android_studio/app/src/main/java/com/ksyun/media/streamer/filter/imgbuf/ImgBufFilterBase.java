package com.ksyun.media.streamer.filter.imgbuf;

import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ImgBufFilterBase {
    protected static final int DEFAULT_SINKPIN_NUM = 1;
    protected static final int DEFAULT_SRCPIN_NUM = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46297a = "ImgBufFilterBase";

    /* renamed from: e  reason: collision with root package name */
    private ImgBufFormat f46301e;
    protected ImgPreProcessWrap mImagePreProcess;
    protected ImgBufFrame[] mInputFrames;
    protected ImgBufFrame mOutPutFrame;
    protected int mMainSinkPinIndex = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46300d = false;

    /* renamed from: b  reason: collision with root package name */
    private final List<SinkPin<ImgBufFrame>> f46298b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    private final SrcPin<ImgBufFrame> f46299c = new SrcPin<>();

    /* loaded from: classes3.dex */
    private class a extends SinkPin<ImgBufFrame> {

        /* renamed from: b  reason: collision with root package name */
        private int f46303b;

        public a(int i4) {
            this.f46303b = i4;
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(ImgBufFrame imgBufFrame) {
            ImgBufFilterBase imgBufFilterBase = ImgBufFilterBase.this;
            ImgBufFrame[] imgBufFrameArr = imgBufFilterBase.mInputFrames;
            int i4 = this.f46303b;
            imgBufFrameArr[i4] = imgBufFrame;
            if (i4 == imgBufFilterBase.mMainSinkPinIndex) {
                imgBufFilterBase.doFilter();
                ImgBufFilterBase imgBufFilterBase2 = ImgBufFilterBase.this;
                ImgBufFormat imgBufFormat = imgBufFilterBase2.mOutPutFrame.format;
                if (imgBufFilterBase2.f46301e == null || !imgBufFormat.equals(ImgBufFilterBase.this.f46301e)) {
                    ImgBufFilterBase.this.f46301e = imgBufFormat;
                    ImgBufFilterBase.this.f46299c.onFormatChanged(imgBufFormat);
                }
                ImgBufFilterBase.this.f46299c.onFrameAvailable(ImgBufFilterBase.this.mOutPutFrame);
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            int i4 = this.f46303b;
            ImgBufFilterBase imgBufFilterBase = ImgBufFilterBase.this;
            if (i4 == imgBufFilterBase.mMainSinkPinIndex && z9) {
                imgBufFilterBase.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            ImgBufFilterBase.this.onFormatChanged(this.f46303b, (ImgBufFormat) obj);
            int i4 = this.f46303b;
            ImgBufFilterBase imgBufFilterBase = ImgBufFilterBase.this;
            if (i4 == imgBufFilterBase.mMainSinkPinIndex) {
                ImgBufFilterBase.this.f46299c.onFormatChanged(imgBufFilterBase.getSrcPinFormat());
            }
        }
    }

    public ImgBufFilterBase(ImgPreProcessWrap imgPreProcessWrap) {
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            this.f46298b.add(new a(i4));
        }
        this.mInputFrames = new ImgBufFrame[getSinkPinNum()];
        this.mImagePreProcess = imgPreProcessWrap;
    }

    protected abstract void doFilter();

    public final int getMainSinkPinIndex() {
        return this.mMainSinkPinIndex;
    }

    public SinkPin<ImgBufFrame> getSinkPin() {
        return getSinkPin(this.mMainSinkPinIndex);
    }

    public abstract int getSinkPinNum();

    public SrcPin<ImgBufFrame> getSrcPin() {
        return this.f46299c;
    }

    protected abstract ImgBufFormat getSrcPinFormat();

    protected void onFormatChanged(int i4, ImgBufFormat imgBufFormat) {
    }

    public synchronized void release() {
        if (!this.f46300d) {
            this.f46298b.clear();
            this.f46299c.disconnect(true);
            this.f46300d = true;
        }
    }

    public final void setMainSinkPinIndex(int i4) {
        this.mMainSinkPinIndex = i4;
    }

    public SinkPin<ImgBufFrame> getSinkPin(int i4) {
        if (this.f46298b.size() > i4) {
            return this.f46298b.get(i4);
        }
        return null;
    }

    public ImgBufFilterBase() {
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            this.f46298b.add(new a(i4));
        }
        this.mInputFrames = new ImgBufFrame[getSinkPinNum()];
        this.mImagePreProcess = new ImgPreProcessWrap();
    }
}
