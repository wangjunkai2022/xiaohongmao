package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;

/* loaded from: classes3.dex */
public class ImgBeautyAdjustSkinColorFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private Context f46318a;

    /* renamed from: b  reason: collision with root package name */
    private String f46319b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f46320c;

    /* renamed from: d  reason: collision with root package name */
    private String f46321d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f46322e;

    /* renamed from: f  reason: collision with root package name */
    private int[] f46323f;

    /* renamed from: g  reason: collision with root package name */
    private int[] f46324g;

    /* renamed from: h  reason: collision with root package name */
    private int f46325h;

    /* renamed from: i  reason: collision with root package name */
    private int f46326i;

    public ImgBeautyAdjustSkinColorFilter(GLRender gLRender, Context context, String str, String str2) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 12);
        this.f46323f = new int[]{-1};
        this.f46324g = new int[]{-1};
        Bitmap loadBitmap = BitmapLoader.loadBitmap(context, str, 0, 0);
        this.f46320c = loadBitmap;
        if (loadBitmap != null && !loadBitmap.isRecycled()) {
            this.f46319b = str;
            this.f46318a = context;
            return;
        }
        throw new IllegalStateException("Resource bitmap not valid!");
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isRuddyRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysAfter() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.f46323f[0]);
        GLES20.glUniform1i(this.f46325h, 2);
        GLES20.glUniform1f(this.f46326i, this.mRuddyRatio);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46325h = getUniformLocation("whitenTexture");
        this.f46326i = getUniformLocation("skinColorRatio");
        Bitmap bitmap = this.f46320c;
        if (bitmap == null || bitmap.isRecycled()) {
            Bitmap loadBitmap = BitmapLoader.loadBitmap(this.f46318a, this.f46319b, 0, 0);
            this.f46320c = loadBitmap;
            if (loadBitmap == null || loadBitmap.isRecycled()) {
                throw new IllegalStateException("Resource bitmap not valid!");
            }
        }
        this.f46323f[0] = GlUtil.loadTexture(this.f46320c, -1);
        this.f46320c.recycle();
        this.f46320c = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        GLES20.glDeleteTextures(1, this.f46323f, 0);
        this.f46323f[0] = -1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setRuddyRatio(float f10) {
        super.setRuddyRatio(f10);
    }
}
