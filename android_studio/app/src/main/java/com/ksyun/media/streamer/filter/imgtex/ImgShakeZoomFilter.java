package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShakeZoomFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46460a = "fstep";

    /* renamed from: b  reason: collision with root package name */
    private float[] f46461b;

    public ImgShakeZoomFilter(GLRender gLRender) {
        super(gLRender);
        this.f46461b = new float[1];
        setGradientName(f46460a);
        setFragment(32);
        setMAXGradientFactorValue(0.1f);
        setGradientFactorFrameCount(10);
        setEffectAuto(true);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        this.f46461b[0] = getGradientFactorValue();
        return this.f46461b;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 0;
    }
}
