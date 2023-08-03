package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShakeShockWaveFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46458a = "fstep";

    /* renamed from: b  reason: collision with root package name */
    private float[] f46459b;

    public ImgShakeShockWaveFilter(GLRender gLRender) {
        super(gLRender);
        this.f46459b = new float[1];
        setGradientName(f46458a);
        setFragment(33);
        setMAXGradientFactorValue(0.2f);
        setGradientFactorFrameCount(20);
        setEffectAuto(true);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        this.f46459b[0] = getGradientFactorValue();
        return this.f46459b;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 0;
    }
}
