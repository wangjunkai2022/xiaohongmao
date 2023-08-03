package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.imagepipeline.common.e;
import com.facebook.imageutils.c;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.qennnsad.aknkaksd.util.a1;
import java.nio.ByteBuffer;
import org.bouncycastle.math.Primes;

/* loaded from: classes3.dex */
public class ImgBeautySkinWhitenFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    byte[] f46378a;

    /* renamed from: b  reason: collision with root package name */
    int[] f46379b;

    /* renamed from: c  reason: collision with root package name */
    int[] f46380c;

    /* renamed from: d  reason: collision with root package name */
    private int f46381d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f46382e;

    /* renamed from: f  reason: collision with root package name */
    private ImgTexFormat f46383f;

    public ImgBeautySkinWhitenFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 4);
        this.f46382e = new int[]{-1};
        this.f46378a = new byte[1024];
        this.f46379b = new int[]{95, 95, 96, 97, 97, 98, 99, 99, 100, 101, 101, 102, 103, 104, 104, 105, 106, 106, 107, 108, 108, 109, 110, 111, 111, 112, 113, 113, 114, 115, 115, 116, 117, 117, 118, 119, 120, 120, 121, 122, 122, 123, 124, 124, 125, 126, 127, 127, 128, h0.G, h0.G, h0.I, 131, 131, 132, 133, 133, h0.Q, h0.J, 136, 136, 137, h0.H, h0.H, 139, 140, 140, 141, 142, 143, 143, 144, 145, 145, 146, 147, 147, 148, 149, 149, 150, 151, 152, 152, 153, 154, 154, 155, 156, 156, 157, 158, 159, 159, a1.f54532a, 161, 161, 162, 163, 163, 164, 165, 165, 166, 167, 168, 168, 169, 170, 170, 171, h0.K, h0.K, 173, 174, 175, 175, 176, 177, 177, 178, 179, 179, e.f12205e, 181, 181, 182, 183, 184, 184, 185, 186, 186, 187, 188, 188, a0.f22979w, 190, 191, 191, 192, 193, 193, 194, 195, 195, 196, 197, 197, 198, 199, 200, 200, 201, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 203, 204, 204, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, c.f13394i, 209, 209, 210, Primes.SMALL_FACTOR_LIMIT, Primes.SMALL_FACTOR_LIMIT, 212, 213, 213, 214, c.f13395j, c.f13388c, c.f13388c, c.f13390e, c.f13391f, c.f13391f, 219, 220, 220, 221, 222, 223, 223, 224, c.f13392g, c.f13392g, 226, 227, 227, 228, 229, 229, 230, 231, 232, 232, 233, 234, 234, 235, 236, 236, 237, 238, 239, 239, a0.A, 241, 241, 242, 243, 243, 244, 245, 245, 246, 247, 248, 248, 249, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 251, 252, 252, 253, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255};
        this.f46380c = new int[]{0, 0, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 8, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 16, 16, 16, 17, 17, 17, 18, 18, 18, 19, 19, 20, 20, 20, 21, 21, 21, 22, 22, 23, 23, 23, 24, 24, 24, 25, 25, 25, 25, 26, 26, 27, 27, 28, 28, 28, 28, 29, 29, 30, 29, 31, 31, 31, 31, 32, 32, 33, 33, 34, 34, 34, 34, 35, 35, 36, 36, 37, 37, 37, 38, 38, 39, 39, 39, 40, 40, 40, 41, 42, 42, 43, 43, 44, 44, 45, 45, 45, 46, 47, 47, 48, 48, 49, 50, 51, 51, 52, 52, 53, 53, 54, 55, 55, 56, 57, 57, 58, 59, 60, 60, 61, 62, 63, 63, 64, 65, 66, 67, 68, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 88, 89, 90, 91, 93, 94, 95, 96, 97, 98, 100, 101, 103, 104, 105, 107, 108, 110, 111, 113, 115, 116, 118, 119, 120, 122, 123, 125, 127, 128, h0.I, 132, h0.Q, h0.J, 137, 139, 141, 143, 144, 146, 148, 150, 152, 154, 156, 158, a1.f54532a, 163, 165, 167, 169, 171, 173, 175, 178, e.f12205e, 182, 185, 187, a0.f22979w, 192, 194, 197, 199, 201, 204, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, 209, Primes.SMALL_FACTOR_LIMIT, 214, c.f13388c, 219, 221, 224, 226, 229, 232, 234, 236, 239, 241, 245, 247, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 252, 255};
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysAfter() {
        if (this.f46382e[0] != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, 0);
            GLES20.glActiveTexture(33984);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        if (this.f46382e[0] != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.f46382e[0]);
            GLES20.glUniform1i(this.f46381d, 3);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46383f = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46381d = getUniformLocation("curve");
        int uniformLocation = getUniformLocation("texelWidthOffset");
        int uniformLocation2 = getUniformLocation("texelHeightOffset");
        if (this.f46381d >= 0) {
            GLES20.glUniform1f(uniformLocation, 1.0f / this.f46383f.width);
            GLES20.glUniform1f(uniformLocation2, 1.0f / this.f46383f.height);
            GLES20.glActiveTexture(33987);
            GLES20.glGenTextures(1, this.f46382e, 0);
            GLES20.glBindTexture(3553, this.f46382e[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            for (int i4 = 0; i4 < 256; i4++) {
                byte[] bArr = this.f46378a;
                int i10 = i4 * 4;
                int[] iArr = this.f46379b;
                bArr[i10] = (byte) iArr[i4];
                bArr[i10 + 1] = (byte) iArr[i4];
                bArr[i10 + 2] = (byte) this.f46380c[i4];
                bArr[i10 + 3] = -1;
            }
            GLES20.glTexImage2D(3553, 0, 6408, 256, 1, 0, 6408, 5121, ByteBuffer.wrap(this.f46378a));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        GLES20.glDeleteTextures(1, this.f46382e, 0);
        this.f46382e[0] = -1;
    }
}
