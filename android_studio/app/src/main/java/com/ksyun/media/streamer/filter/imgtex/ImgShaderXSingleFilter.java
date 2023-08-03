package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShaderXSingleFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46442a = "fstep";

    /* renamed from: b  reason: collision with root package name */
    private static final String f46443b = "aspectRatio";

    /* renamed from: c  reason: collision with root package name */
    private int f46444c;

    /* renamed from: d  reason: collision with root package name */
    private float[] f46445d;

    /* renamed from: e  reason: collision with root package name */
    private float f46446e;

    public ImgShaderXSingleFilter(GLRender gLRender) {
        super(gLRender);
        this.f46444c = -1;
        this.f46445d = new float[1];
        setGradientName(f46442a);
        setFragment(35);
        setMAXGradientFactorValue(10.0f);
        setGradientFactorFrameCount(1000);
        setEffectAuto(true);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        this.f46445d[0] = getGradientFactorValue();
        return this.f46445d;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onDrawArraysPre() {
        int i4 = this.f46444c;
        if (i4 >= 0) {
            GLES20.glUniform1f(i4, this.f46446e);
        }
        super.onDrawArraysPre();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        if (getSrcPinFormat().width > getSrcPinFormat().height) {
            this.f46446e = getSrcPinFormat().width / getSrcPinFormat().height;
        } else {
            this.f46446e = getSrcPinFormat().height / getSrcPinFormat().width;
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        super.onInitialized();
        try {
            this.f46444c = getUniformLocation(f46443b);
        } catch (RuntimeException unused) {
        }
    }
}
