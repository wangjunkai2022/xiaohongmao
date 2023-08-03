package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import android.util.Log;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgBeautySimpleFilter extends ImgFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46374a = "ImgBeautySimpleFilter";

    /* renamed from: b  reason: collision with root package name */
    private ImgBeautyGrindSimpleFilter f46375b;

    /* renamed from: c  reason: collision with root package name */
    private ImgBeautySpecialEffectsFilter f46376c;

    /* renamed from: d  reason: collision with root package name */
    private ImgBeautyAdjustSkinColorFilter f46377d;

    public ImgBeautySimpleFilter(GLRender gLRender, Context context) {
        this.f46375b = new ImgBeautyGrindSimpleFilter(gLRender);
        try {
            this.f46376c = new ImgBeautySpecialEffectsFilter(gLRender, context, "13_nature.png");
        } catch (Exception unused) {
            Log.e(f46374a, "KSYResource missing!");
        }
        if (this.f46376c != null) {
            this.f46375b.getSrcPin().connect(this.f46376c.getSinkPin());
        }
        try {
            this.f46377d = new ImgBeautyAdjustSkinColorFilter(gLRender, context, "assets://KSYResource/0_pink.png", "assets://KSYResource/0_ruddy2.png");
        } catch (Exception unused2) {
            Log.e(f46374a, "KSYResource missing!");
        }
        if (this.f46377d != null) {
            ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46376c;
            if (imgBeautySpecialEffectsFilter != null) {
                imgBeautySpecialEffectsFilter.getSrcPin().connect(this.f46377d.getSinkPin());
            } else {
                this.f46375b.getSrcPin().connect(this.f46377d.getSinkPin());
            }
        }
        setWhitenRatio(0.3f);
        setGrindRatio(0.5f);
        setRuddyRatio(-0.3f);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f46375b.getSinkPin();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        ImgBeautyAdjustSkinColorFilter imgBeautyAdjustSkinColorFilter = this.f46377d;
        if (imgBeautyAdjustSkinColorFilter != null) {
            return imgBeautyAdjustSkinColorFilter.getSrcPin();
        }
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46376c;
        if (imgBeautySpecialEffectsFilter != null) {
            return imgBeautySpecialEffectsFilter.getSrcPin();
        }
        return this.f46375b.getSrcPin();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isRuddyRatioSupported() {
        return this.f46377d != null;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isWhitenRatioSupported() {
        return this.f46376c != null;
    }

    public void setGLRender(GLRender gLRender) {
        this.f46375b.setGLRender(gLRender);
        ImgBeautyAdjustSkinColorFilter imgBeautyAdjustSkinColorFilter = this.f46377d;
        if (imgBeautyAdjustSkinColorFilter != null) {
            imgBeautyAdjustSkinColorFilter.setGLRender(gLRender);
        }
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46376c;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setGLRender(gLRender);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10);
        this.f46375b.setGrindRatio(f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setOnErrorListener(ImgFilterBase.OnErrorListener onErrorListener) {
        super.setOnErrorListener(onErrorListener);
        this.f46375b.setOnErrorListener(this.mErrorListener);
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46376c;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setOnErrorListener(this.mErrorListener);
        }
        ImgBeautyAdjustSkinColorFilter imgBeautyAdjustSkinColorFilter = this.f46377d;
        if (imgBeautyAdjustSkinColorFilter != null) {
            imgBeautyAdjustSkinColorFilter.setOnErrorListener(this.mErrorListener);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setRuddyRatio(float f10) {
        super.setRuddyRatio(f10);
        ImgBeautyAdjustSkinColorFilter imgBeautyAdjustSkinColorFilter = this.f46377d;
        if (imgBeautyAdjustSkinColorFilter != null) {
            imgBeautyAdjustSkinColorFilter.setRuddyRatio(f10);
        }
    }

    public void setScaleLumance(float f10) {
        this.f46375b.setScaleLumance(f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setWhitenRatio(float f10) {
        super.setWhitenRatio(f10);
        ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = this.f46376c;
        if (imgBeautySpecialEffectsFilter != null) {
            imgBeautySpecialEffectsFilter.setIntensity(f10);
        }
    }
}
