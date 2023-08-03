package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShakeIllusionFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46454a = "temperature";

    /* renamed from: b  reason: collision with root package name */
    private float[] f46455b;

    /* renamed from: c  reason: collision with root package name */
    private float f46456c;

    /* renamed from: d  reason: collision with root package name */
    private float f46457d;

    public ImgShakeIllusionFilter(GLRender gLRender) {
        super(gLRender);
        this.f46455b = new float[1];
        setGradientName(f46454a);
        setFragment(36);
        setEffectAuto(false);
        this.f46456c = 3500.0f;
        this.f46457d = 5.0f;
        getSrcPin().connect(getVSinkPin(0));
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        float f10 = this.f46456c + this.f46457d;
        this.f46456c = f10;
        if (f10 > 7500.0f) {
            this.f46456c = 3500.0f;
        }
        float f11 = this.f46456c;
        float f12 = f11 < 5000.0f ? 4.0E-4f : 6.0E-5f;
        float[] fArr = this.f46455b;
        fArr[0] = (f11 - 5000.0f) * f12;
        return fArr;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onDisconnect(boolean z9) {
        super.onDisconnect(z9);
        getSrcPin().disconnect(getVSinkPin(0), false);
    }
}
