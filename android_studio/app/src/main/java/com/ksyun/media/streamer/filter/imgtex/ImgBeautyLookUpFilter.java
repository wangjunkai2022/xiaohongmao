package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;

/* loaded from: classes3.dex */
public class ImgBeautyLookUpFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private final Object f46364a;

    /* renamed from: b  reason: collision with root package name */
    private Context f46365b;

    /* renamed from: c  reason: collision with root package name */
    private String f46366c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f46367d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f46368e;

    /* renamed from: f  reason: collision with root package name */
    private float f46369f;

    /* renamed from: g  reason: collision with root package name */
    private int f46370g;

    /* renamed from: h  reason: collision with root package name */
    private int f46371h;

    public ImgBeautyLookUpFilter(GLRender gLRender, Context context) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 10);
        this.f46364a = new Object();
        this.f46368e = new int[]{-1};
        this.f46369f = 0.5f;
        this.f46365b = context;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysAfter() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        synchronized (this.f46364a) {
            Bitmap bitmap = this.f46367d;
            if (bitmap != null && !bitmap.isRecycled()) {
                int[] iArr = this.f46368e;
                iArr[0] = GlUtil.loadTexture(this.f46367d, iArr[0]);
                this.f46367d.recycle();
                this.f46367d = null;
            }
        }
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.f46368e[0]);
        GLES20.glUniform1i(this.f46370g, 2);
        GLES20.glUniform1f(this.f46371h, this.f46369f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46370g = getUniformLocation("lookUpTexture");
        this.f46371h = getUniformLocation("intensity");
        synchronized (this.f46364a) {
            Bitmap bitmap = this.f46367d;
            if (bitmap == null || bitmap.isRecycled()) {
                Bitmap loadBitmap = BitmapLoader.loadBitmap(this.f46365b, this.f46366c, 0, 0);
                this.f46367d = loadBitmap;
                if (loadBitmap == null || loadBitmap.isRecycled()) {
                    throw new IllegalArgumentException("Resource bitmap not valid!");
                }
            }
            this.f46368e[0] = GlUtil.loadTexture(this.f46367d, -1);
            this.f46367d.recycle();
            this.f46367d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        GLES20.glDeleteTextures(1, this.f46368e, 0);
        this.f46368e[0] = -1;
    }

    public void setIntensity(float f10) {
        this.f46369f = f10;
    }

    public void setLookupBitmap(String str) {
        Bitmap loadBitmap = BitmapLoader.loadBitmap(this.f46365b, str, 0, 0);
        if (loadBitmap != null && !loadBitmap.isRecycled()) {
            synchronized (this.f46364a) {
                this.f46366c = str;
                this.f46367d = loadBitmap;
            }
            return;
        }
        throw new IllegalArgumentException("Resource bitmap not valid!");
    }
}
