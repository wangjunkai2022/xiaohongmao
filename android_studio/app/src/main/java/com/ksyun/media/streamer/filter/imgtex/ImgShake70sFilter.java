package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgShake70sFilter extends ImgEffectFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46447a = "fstep";

    /* renamed from: b  reason: collision with root package name */
    private static final String f46448b = "aspectRatio";

    /* renamed from: c  reason: collision with root package name */
    private int f46449c;

    /* renamed from: d  reason: collision with root package name */
    private float[] f46450d;

    /* renamed from: e  reason: collision with root package name */
    private float f46451e;

    public ImgShake70sFilter(GLRender gLRender) {
        super(gLRender);
        this.f46449c = -1;
        this.f46450d = new float[1];
        setGradientName(f46447a);
        setFragment(34);
        setMAXGradientFactorValue(7.0f);
        setGradientFactorFrameCount(700);
        setEffectAuto(true);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected float[] getGradientValue() {
        this.f46450d[0] = getGradientFactorValue();
        return this.f46450d;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase
    protected int getVSinkPinNum() {
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onDrawArraysPre() {
        int i4 = this.f46449c;
        if (i4 >= 0) {
            GLES20.glUniform1f(i4, this.f46451e);
        }
        super.onDrawArraysPre();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        if (getSrcPinFormat().width > getSrcPinFormat().height) {
            this.f46451e = getSrcPinFormat().width / getSrcPinFormat().height;
        } else {
            this.f46451e = getSrcPinFormat().height / getSrcPinFormat().width;
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase, com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        super.onInitialized();
        try {
            this.f46449c = getUniformLocation(f46448b);
        } catch (RuntimeException unused) {
        }
    }
}
