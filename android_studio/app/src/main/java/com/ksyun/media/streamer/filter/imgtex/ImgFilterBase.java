package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;

/* loaded from: classes3.dex */
public abstract class ImgFilterBase {
    protected OnErrorListener mErrorListener;
    protected int mMainSinkPinIndex;
    protected float mGrindRatio = 0.5f;
    protected float mWhitenRatio = 0.5f;
    protected float mRuddyRatio = 0.5f;

    /* loaded from: classes3.dex */
    public interface OnErrorListener {
        void onError(ImgTexFilterBase imgTexFilterBase, int i4);
    }

    public float getGrindRatio() {
        return this.mGrindRatio;
    }

    public float getRuddyRatio() {
        return this.mRuddyRatio;
    }

    public SinkPin<ImgTexFrame> getSinkPin() {
        return getSinkPin(this.mMainSinkPinIndex);
    }

    public abstract SinkPin<ImgTexFrame> getSinkPin(int i4);

    public abstract int getSinkPinNum();

    public abstract SrcPin<ImgTexFrame> getSrcPin();

    public String getVersion() {
        return "1.0";
    }

    public float getWhitenRatio() {
        return this.mWhitenRatio;
    }

    public boolean isGrindRatioSupported() {
        return false;
    }

    public boolean isRuddyRatioSupported() {
        return false;
    }

    public boolean isWhitenRatioSupported() {
        return false;
    }

    public void release() {
    }

    public void setGrindRatio(float f10) {
        this.mGrindRatio = f10;
    }

    public final void setMainSinkPinIndex(int i4) {
        this.mMainSinkPinIndex = i4;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mErrorListener = onErrorListener;
    }

    public void setRuddyRatio(float f10) {
        this.mRuddyRatio = f10;
    }

    public void setWhitenRatio(float f10) {
        this.mWhitenRatio = f10;
    }
}
