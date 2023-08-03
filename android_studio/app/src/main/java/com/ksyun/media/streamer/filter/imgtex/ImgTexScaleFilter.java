package com.ksyun.media.streamer.filter.imgtex;

import android.graphics.RectF;
import android.util.Log;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class ImgTexScaleFilter extends ImgTexFilter {
    public static final int SCALING_MODE_BEST_FIT = 1;
    public static final int SCALING_MODE_CENTER_CROP = 2;
    public static final int SCALING_MODE_FULL_FILL = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46541a = "ImgTexScaleFilter";

    /* renamed from: b  reason: collision with root package name */
    private int f46542b;

    /* renamed from: c  reason: collision with root package name */
    private FloatBuffer f46543c;

    /* renamed from: d  reason: collision with root package name */
    private FloatBuffer f46544d;

    /* renamed from: e  reason: collision with root package name */
    private ImgTexFormat f46545e;

    /* renamed from: f  reason: collision with root package name */
    private ImgTexFormat f46546f;

    public ImgTexScaleFilter(GLRender gLRender) {
        super(gLRender);
        this.f46543c = TexTransformUtil.getVertexCoordsBuf();
        this.f46544d = TexTransformUtil.getTexCoordsBuf();
        this.f46542b = 2;
    }

    private void a(ImgTexFormat imgTexFormat) {
        int i4;
        int i10;
        int i11;
        int i12;
        float f10;
        float f11;
        float f12;
        ImgTexFormat imgTexFormat2 = this.f46545e;
        if (imgTexFormat2 == null || (i4 = imgTexFormat2.width) == 0 || (i10 = imgTexFormat2.height) == 0 || (i11 = imgTexFormat.width) == 0 || (i12 = imgTexFormat.height) == 0) {
            return;
        }
        float f13 = i11 / i12;
        float f14 = i4 / i10;
        float f15 = 0.0f;
        RectF rectF = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
        if (this.f46542b == 1) {
            if (f13 > f14) {
                f12 = (1.0f - (f14 / f13)) / 2.0f;
                f11 = 0.0f;
            } else {
                f11 = (1.0f - (f13 / f14)) / 2.0f;
                f12 = 0.0f;
            }
            Log.d(f46541a, "sar=" + f13 + " dar=" + f14 + " cropX=" + f11 + " cropY=" + f12);
            RectF rectF2 = new RectF(rectF.left + f11, rectF.top + f12, rectF.right - f11, rectF.bottom - f12);
            StringBuilder sb = new StringBuilder();
            sb.append("rectF=");
            sb.append(rectF2);
            Log.d(f46541a, sb.toString());
            rectF = rectF2;
        }
        this.f46543c = a(rectF);
        if (this.f46542b == 2) {
            if (f13 <= f14) {
                f10 = (1.0f - (f13 / f14)) / 2.0f;
                this.f46544d = TexTransformUtil.getCropTexCoordsBuf(f15, f10);
            }
            f15 = (1.0f - (f14 / f13)) / 2.0f;
        }
        f10 = 0.0f;
        this.f46544d = TexTransformUtil.getCropTexCoordsBuf(f15, f10);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public ImgTexFormat getSrcPinFormat() {
        return this.f46545e;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected FloatBuffer getTexCoords() {
        return this.f46544d;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected FloatBuffer getVertexCoords() {
        return this.f46543c;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46546f = imgTexFormat;
        a(imgTexFormat);
    }

    public void setScalingMode(int i4) {
        this.f46542b = i4;
        ImgTexFormat imgTexFormat = this.f46546f;
        if (imgTexFormat != null) {
            a(imgTexFormat);
        }
    }

    public void setTargetSize(int i4, int i10) {
        this.f46545e = new ImgTexFormat(1, i4, i10);
        ImgTexFormat imgTexFormat = this.f46546f;
        if (imgTexFormat != null) {
            a(imgTexFormat);
        }
    }

    private FloatBuffer a(RectF rectF) {
        float f10 = rectF.left;
        float f11 = rectF.bottom;
        float f12 = rectF.right;
        float f13 = rectF.top;
        return GlUtil.createFloatBuffer(new float[]{(f10 * 2.0f) - 1.0f, 1.0f - (f11 * 2.0f), (f12 * 2.0f) - 1.0f, 1.0f - (f11 * 2.0f), (f10 * 2.0f) - 1.0f, 1.0f - (f13 * 2.0f), (f12 * 2.0f) - 1.0f, 1.0f - (f13 * 2.0f)});
    }
}
