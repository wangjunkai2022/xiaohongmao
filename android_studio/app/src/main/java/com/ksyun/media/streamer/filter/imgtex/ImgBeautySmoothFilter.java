package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import android.util.Log;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgBeautySmoothFilter extends ImgFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46384a = "ImgBeautyFaceFilter";

    /* renamed from: b  reason: collision with root package name */
    private PinAdapter<ImgTexFrame> f46385b;

    /* renamed from: c  reason: collision with root package name */
    private PinAdapter<ImgTexFrame> f46386c;

    /* renamed from: d  reason: collision with root package name */
    private ImgBeautySkinDetectFilter f46387d;

    /* renamed from: e  reason: collision with root package name */
    private ImgBeautyGrindFaceFilter f46388e;

    /* renamed from: f  reason: collision with root package name */
    private ImgBeautySpecialEffectsFilter f46389f;

    public ImgBeautySmoothFilter(GLRender gLRender) {
        a(gLRender, null);
    }

    private void a(GLRender gLRender, Context context) {
        this.f46385b = new PinAdapter<>();
        this.f46386c = new PinAdapter<>();
        this.f46387d = new ImgBeautySkinDetectFilter(gLRender);
        this.f46388e = new ImgBeautyGrindFaceFilter(gLRender);
        try {
            this.f46389f = new ImgBeautySpecialEffectsFilter(gLRender, context, 3);
        } catch (Exception unused) {
            Log.e(f46384a, "KSYResource missing, ruddy is unusable!");
        }
        this.f46385b.mSrcPin.connect(this.f46387d.getSinkPin());
        this.f46385b.mSrcPin.connect(this.f46388e.getSinkPin(0));
        this.f46387d.getSrcPin().connect(this.f46388e.getSinkPin(1));
        if (this.f46389f != null) {
            this.f46388e.getSrcPin().connect(this.f46389f.getSinkPin());
            this.f46389f.getSrcPin().connect(this.f46386c.mSinkPin);
        } else {
            this.f46388e.getSrcPin().connect(this.f46386c.mSinkPin);
        }
        setGrindRatio(0.4f);
        setWhitenRatio(0.2f);
        setRuddyRatio(0.8f);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f46385b.mSinkPin;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f46386c.mSrcPin;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public String getVersion() {
        return "1.2";
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isRuddyRatioSupported() {
        return this.f46389f != null;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isWhitenRatioSupported() {
        return true;
    }

    public void setGLRender(GLRender gLRender) {
        this.f46387d.setGLRender(gLRender);
        this.f46388e.setGLRender(gLRender);
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46389f;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setGLRender(gLRender);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10);
        this.f46388e.setGrindRatio(f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setOnErrorListener(ImgFilterBase.OnErrorListener onErrorListener) {
        super.setOnErrorListener(onErrorListener);
        this.f46387d.setOnErrorListener(this.mErrorListener);
        this.f46388e.setOnErrorListener(this.mErrorListener);
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46389f;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setOnErrorListener(this.mErrorListener);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setRuddyRatio(float f10) {
        super.setRuddyRatio(f10);
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46389f;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setIntensity(f10);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setWhitenRatio(float f10) {
        super.setWhitenRatio(f10);
        this.f46388e.setWhitenRatio(f10);
    }

    public ImgBeautySmoothFilter(GLRender gLRender, Context context) {
        a(gLRender, context);
    }
}
