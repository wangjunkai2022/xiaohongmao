package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgBeautyProFilter extends ImgFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46372a = "ImgBeautyProFilter";

    /* renamed from: b  reason: collision with root package name */
    private ImgFilterBase f46373b;

    public ImgBeautyProFilter(GLRender gLRender, Context context) {
        this(gLRender, context, 1);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f46373b.getSinkPin();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f46373b.getSrcPin();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public String getVersion() {
        return "2.4";
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return this.f46373b.isGrindRatioSupported();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isRuddyRatioSupported() {
        return this.f46373b.isRuddyRatioSupported();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isWhitenRatioSupported() {
        return this.f46373b.isWhitenRatioSupported();
    }

    public void setGLRender(GLRender gLRender) {
        ImgFilterBase imgFilterBase = this.f46373b;
        if (imgFilterBase instanceof ImgBeautySimpleFilter) {
            ((ImgBeautySimpleFilter) imgFilterBase).setGLRender(gLRender);
        } else if (imgFilterBase instanceof ImgBeautyAdvanceFilter) {
            ((ImgBeautyAdvanceFilter) imgFilterBase).setGLRender(gLRender);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10);
        this.f46373b.setGrindRatio(f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setOnErrorListener(ImgFilterBase.OnErrorListener onErrorListener) {
        super.setOnErrorListener(onErrorListener);
        this.f46373b.setOnErrorListener(onErrorListener);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setRuddyRatio(float f10) {
        super.setRuddyRatio(f10);
        this.f46373b.setRuddyRatio(f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setWhitenRatio(float f10) {
        super.setWhitenRatio(f10);
        this.f46373b.setWhitenRatio(f10);
    }

    public ImgBeautyProFilter(GLRender gLRender, Context context, int i4) {
        if (i4 == 1) {
            this.f46373b = new ImgBeautySimpleFilter(gLRender, context);
            setGrindRatio(0.5f);
            ((ImgBeautySimpleFilter) this.f46373b).setScaleLumance(1.0f);
        } else if (i4 == 2) {
            this.f46373b = new ImgBeautyAdvanceFilter(gLRender, context);
            setGrindRatio(0.5f);
        } else if (i4 == 3) {
            this.f46373b = new ImgBeautySimpleFilter(gLRender, context);
            setGrindRatio(0.2f);
            ((ImgBeautySimpleFilter) this.f46373b).setScaleLumance(0.7f);
        } else if (i4 == 4) {
            this.f46373b = new ImgBeautyAdvanceFilter(gLRender, context);
            setGrindRatio(0.3f);
        } else {
            throw new IllegalArgumentException("only type 1-4 supported!");
        }
        setWhitenRatio(0.3f);
        setRuddyRatio(-0.3f);
    }
}
