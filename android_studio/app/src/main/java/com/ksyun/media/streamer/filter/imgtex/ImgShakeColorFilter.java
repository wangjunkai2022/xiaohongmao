package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShakeColorFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46452a = "fstep";

    /* renamed from: b  reason: collision with root package name */
    private float[] f46453b;

    public ImgShakeColorFilter(GLRender gLRender) {
        super(gLRender);
        this.f46453b = new float[1];
        setGradientName(f46452a);
        setFragment(31);
        setMAXGradientFactorValue(0.1f);
        setGradientFactorFrameCount(10);
        setEffectAuto(true);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        this.f46453b[0] = getGradientFactorValue();
        return this.f46453b;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 0;
    }
}
