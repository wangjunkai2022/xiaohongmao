package com.ksyun.media.streamer.filter.imgtex;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.util.Log;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;

/* loaded from: classes3.dex */
public class ImgBeautyStylizeFilter extends ImgTexFilter {
    public static final int KSY_FILTER_STYLE_1977 = 0;
    public static final int KSY_FILTER_STYLE_AMARO = 1;
    public static final int KSY_FILTER_STYLE_BRANNAN = 2;
    public static final int KSY_FILTER_STYLE_EARLY_BIRD = 3;
    public static final int KSY_FILTER_STYLE_HEFE = 4;
    public static final int KSY_FILTER_STYLE_HUDSON = 5;
    public static final int KSY_FILTER_STYLE_INK = 6;
    public static final int KSY_FILTER_STYLE_LOMO = 7;
    public static final int KSY_FILTER_STYLE_LORD_KELVIN = 8;
    public static final int KSY_FILTER_STYLE_NASHVILLE = 9;
    public static final int KSY_FILTER_STYLE_RISE = 10;
    public static final int KSY_FILTER_STYLE_SIERRA = 11;
    public static final int KSY_FILTER_STYLE_SUTRO = 12;
    public static final int KSY_FILTER_STYLE_TOASTER = 13;
    public static final int KSY_FILTER_STYLE_VALENCIA = 14;
    public static final int KSY_FILTER_STYLE_WALDEN = 15;
    public static final int KSY_FILTER_STYLE_XPROLL = 16;
    public static final String KSY_RES_PATH = "assets://KSYResource/";

    /* renamed from: a  reason: collision with root package name */
    private static final String f46400a = "ImgBeautyStylizeFilter";

    /* renamed from: b  reason: collision with root package name */
    private static String[][] f46401b = {new String[]{"map_1977"}, new String[]{"blackboard_1024", "overlay_map", "amaro_map"}, new String[]{"brannan_process", "brannan_blowout", "brannan_contrast", "brannan_luma", "brannan_screen"}, new String[]{"early_bird_curves", "earlybird_overlay_map", "vignette_map", "earlybird_blowout", "earlybird_map"}, new String[]{"edge_burn", "hefe_map", "hefe_soft_light", "hefe_metal"}, new String[]{"hudson_background", "overlay_map", "hudson_map"}, new String[]{"inkwell_map"}, new String[]{"lomo_map", "vignette_map"}, new String[]{"kelvin_map"}, new String[]{"nashwi"}, new String[]{"blackboard_1024", "overlay_map", "rise_map"}, new String[]{"sierra_vignette", "overlay_map", "sierra_map"}, new String[]{"vignette_map", "sutro_metal", "soft_light", "sutro_edge_burn", "sutro_curves"}, new String[]{"toaster_metal", "toaster_soft_light", "toaster_curves", "toaster_overlay_map_warm", "toaster_color_shift"}, new String[]{"valencia_map", "valencia_gradient_map"}, new String[]{"walden_map", "vignette_map"}, new String[]{"xpro_map", "vignette_map"}};

    /* renamed from: c  reason: collision with root package name */
    private static int[] f46402c = {14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};
    protected int[] GL_TEXTURES;

    /* renamed from: d  reason: collision with root package name */
    private int f46403d;
    protected Bitmap[] mBitmaps;
    protected int[] mInputTex;
    protected int[] mInputTexLoc;
    protected int mTexNum;

    public ImgBeautyStylizeFilter(GLRender gLRender, Context context, int i4) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", f46402c[i4]);
        this.GL_TEXTURES = new int[]{33987, 33988, 33989, 33990, 33991, 33992};
        this.f46403d = i4;
        String[] strArr = f46401b[i4];
        int length = strArr.length;
        this.mTexNum = length;
        this.mInputTexLoc = new int[length];
        this.mInputTex = new int[length];
        this.mBitmaps = new Bitmap[length];
        for (int i10 = 0; i10 < this.mTexNum; i10++) {
            this.mInputTex[i10] = -1;
            Bitmap[] bitmapArr = this.mBitmaps;
            bitmapArr[i10] = BitmapLoader.loadBitmap(context, KSY_RES_PATH + strArr[i10] + ".png");
            StringBuilder sb = new StringBuilder();
            sb.append("ImgStyleBaseFilter: bitmap ");
            sb.append(strArr[i10]);
            Log.d(f46400a, sb.toString());
        }
    }

    public int getStyleFilterId() {
        return this.f46403d;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        for (int i4 = 0; i4 < this.mTexNum; i4++) {
            GLES20.glActiveTexture(this.GL_TEXTURES[i4]);
            GLES20.glBindTexture(3553, this.mInputTex[i4]);
            GLES20.glUniform1i(this.mInputTexLoc[i4], i4 + 3);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        super.onInitialized();
        for (int i4 = 0; i4 < this.mTexNum; i4++) {
            int i10 = i4 + 2;
            this.mInputTexLoc[i4] = getUniformLocation(String.format("inputImageTexture%d", Integer.valueOf(i10)));
            GlUtil.checkGlError(String.format("inputImageTexture%d", Integer.valueOf(i10)));
            Bitmap[] bitmapArr = this.mBitmaps;
            if (bitmapArr[i4] != null && !bitmapArr[i4].isRecycled()) {
                GLES20.glActiveTexture(this.GL_TEXTURES[i4]);
                this.mInputTex[i4] = GlUtil.loadTexture(this.mBitmaps[i4], -1);
                this.mBitmaps[i4].recycle();
                this.mBitmaps[i4] = null;
            }
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        int i4 = this.mTexNum;
        if (i4 > 0) {
            GLES20.glDeleteTextures(i4, this.mInputTex, 0);
        }
    }
}
