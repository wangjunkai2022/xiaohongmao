package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import java.nio.ByteBuffer;
import org.minidns.record.f;

/* loaded from: classes3.dex */
public class ImgBeautyGrindAdvanceFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f46332a;

    /* renamed from: b  reason: collision with root package name */
    private int f46333b;

    /* renamed from: c  reason: collision with root package name */
    private int f46334c;

    /* renamed from: d  reason: collision with root package name */
    private int f46335d;

    /* renamed from: e  reason: collision with root package name */
    private ImgTexFormat f46336e;

    /* renamed from: f  reason: collision with root package name */
    private int[] f46337f;

    /* renamed from: g  reason: collision with root package name */
    private int[] f46338g;

    /* renamed from: h  reason: collision with root package name */
    private short[] f46339h;

    /* renamed from: i  reason: collision with root package name */
    private short[] f46340i;

    public ImgBeautyGrindAdvanceFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 13);
        this.f46337f = new int[]{-1};
        this.f46338g = new int[]{-1};
        this.f46339h = new short[]{0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 1, 1, 1, 255, 1, 1, 1, 255, 1, 1, 1, 255, 2, 2, 2, 255, 2, 2, 2, 255, 2, 2, 2, 255, 3, 3, 3, 255, 4, 4, 4, 255, 4, 4, 4, 255, 5, 5, 5, 255, 6, 6, 6, 255, 7, 7, 7, 255, 7, 7, 7, 255, 8, 8, 8, 255, 9, 9, 9, 255, 10, 10, 10, 255, 12, 12, 12, 255, 13, 13, 13, 255, 14, 14, 14, 255, 15, 15, 15, 255, 16, 16, 16, 255, 18, 18, 18, 255, 19, 19, 19, 255, 21, 21, 21, 255, 22, 22, 22, 255, 23, 23, 23, 255, 25, 25, 25, 255, 27, 27, 27, 255, 28, 28, 28, 255, 30, 30, 30, 255, 32, 32, 32, 255, 33, 33, 33, 255, 35, 35, 35, 255, 37, 37, 37, 255, 39, 39, 39, 255, 41, 41, 41, 255, 43, 43, 43, 255, 45, 45, 45, 255, 46, 46, 46, 255, 48, 48, 48, 255, 50, 50, 50, 255, 53, 53, 53, 255, 55, 55, 55, 255, 57, 57, 57, 255, 59, 59, 59, 255, 61, 61, 61, 255, 63, 63, 63, 255, 65, 65, 65, 255, 67, 67, 67, 255, 70, 70, 70, 255, 72, 72, 72, 255, 74, 74, 74, 255, 76, 76, 76, 255, 78, 78, 78, 255, 81, 81, 81, 255, 83, 83, 83, 255, 85, 85, 85, 255, 87, 87, 87, 255, 89, 89, 89, 255, 91, 91, 91, 255, 93, 93, 93, 255, 96, 96, 96, 255, 98, 98, 98, 255, 100, 100, 100, 255, 102, 102, 102, 255, 104, 104, 104, 255, 106, 106, 106, 255, 108, 108, 108, 255, 110, 110, 110, 255, 112, 112, 112, 255, 114, 114, 114, 255, 115, 115, 115, 255, 117, 117, 117, 255, 119, 119, 119, 255, 121, 121, 121, 255, 122, 122, 122, 255, 124, 124, 124, 255, 126, 126, 126, 255, 127, 127, 127, 255, 129, 129, 129, 255, 130, 130, 130, 255, 132, 132, 132, 255, 133, 133, 133, 255, 135, 135, 135, 255, 136, 136, 136, 255, 137, 137, 137, 255, 139, 139, 139, 255, 140, 140, 140, 255, 141, 141, 141, 255, 143, 143, 143, 255, 144, 144, 144, 255, 145, 145, 145, 255, 146, 146, 146, 255, 148, 148, 148, 255, 149, 149, 149, 255, 150, 150, 150, 255, 151, 151, 151, 255, 152, 152, 152, 255, 153, 153, 153, 255, 154, 154, 154, 255, 155, 155, 155, 255, 156, 156, 156, 255, 158, 158, 158, 255, 159, 159, 159, 255, 160, 160, 160, 255, 161, 161, 161, 255, 162, 162, 162, 255, 163, 163, 163, 255, 163, 163, 163, 255, 164, 164, 164, 255, 165, 165, 165, 255, 166, 166, 166, 255, 167, 167, 167, 255, 168, 168, 168, 255, 169, 169, 169, 255, 170, 170, 170, 255, 171, 171, 171, 255, 172, 172, 172, 255, 173, 173, 173, 255, 173, 173, 173, 255, 174, 174, 174, 255, 175, 175, 175, 255, 176, 176, 176, 255, 177, 177, 177, 255, 178, 178, 178, 255, 178, 178, 178, 255, 179, 179, 179, 255, 180, 180, 180, 255, 181, 181, 181, 255, 182, 182, 182, 255, 182, 182, 182, 255, 183, 183, 183, 255, 184, 184, 184, 255, 185, 185, 185, 255, 186, 186, 186, 255, 186, 186, 186, 255, 187, 187, 187, 255, 188, 188, 188, 255, 189, 189, 189, 255, 189, 189, 189, 255, 190, 190, 190, 255, 191, 191, 191, 255, 191, 191, 191, 255, 192, 192, 192, 255, 193, 193, 193, 255, 194, 194, 194, 255, 194, 194, 194, 255, 195, 195, 195, 255, 196, 196, 196, 255, 196, 196, 196, 255, 197, 197, 197, 255, 198, 198, 198, 255, 198, 198, 198, 255, 199, 199, 199, 255, 200, 200, 200, 255, 200, 200, 200, 255, 201, 201, 201, 255, 202, 202, 202, 255, 203, 203, 203, 255, 203, 203, 203, 255, 204, 204, 204, 255, 205, 205, 205, 255, 205, 205, 205, 255, 206, 206, 206, 255, 206, 206, 206, 255, 207, 207, 207, 255, 208, 208, 208, 255, 208, 208, 208, 255, 209, 209, 209, 255, 210, 210, 210, 255, 210, 210, 210, 255, 211, 211, 211, 255, 212, 212, 212, 255, 212, 212, 212, 255, 213, 213, 213, 255, 214, 214, 214, 255, 214, 214, 214, 255, 215, 215, 215, 255, 216, 216, 216, 255, 216, 216, 216, 255, 217, 217, 217, 255, 217, 217, 217, 255, 218, 218, 218, 255, 219, 219, 219, 255, 219, 219, 219, 255, 220, 220, 220, 255, 221, 221, 221, 255, 221, 221, 221, 255, 222, 222, 222, 255, 222, 222, 222, 255, 223, 223, 223, 255, 224, 224, 224, 255, 224, 224, 224, 255, 225, 225, 225, 255, 226, 226, 226, 255, 226, 226, 226, 255, 227, 227, 227, 255, 227, 227, 227, 255, 228, 228, 228, 255, 229, 229, 229, 255, 229, 229, 229, 255, 230, 230, 230, 255, 230, 230, 230, 255, 231, 231, 231, 255, 232, 232, 232, 255, 232, 232, 232, 255, 233, 233, 233, 255, 233, 233, 233, 255, 234, 234, 234, 255, 234, 234, 234, 255, 235, 235, 235, 255, 236, 236, 236, 255, 236, 236, 236, 255, 237, 237, 237, 255, 237, 237, 237, 255, 238, 238, 238, 255, 238, 238, 238, 255, 239, 239, 239, 255, 239, 239, 239, 255, 240, 240, 240, 255, 241, 241, 241, 255, 241, 241, 241, 255, 242, 242, 242, 255, 242, 242, 242, 255, 243, 243, 243, 255, 243, 243, 243, 255, 244, 244, 244, 255, 244, 244, 244, 255, 245, 245, 245, 255, 245, 245, 245, 255, 246, 246, 246, 255, 247, 247, 247, 255, 247, 247, 247, 255, 248, 248, 248, 255, 248, 248, 248, 255, 249, 249, 249, 255, 249, 249, 249, 255, 250, 250, 250, 255, 250, 250, 250, 255, 251, 251, 251, 255, 251, 251, 251, 255, 
        252, 252, 252, 255, 252, 252, 252, 255, 253, 253, 253, 255, 253, 253, 253, 255, 254, 254, 254, 255, 255, 255, 255, 255};
        this.f46340i = new short[]{0, 0, 0, 255, 0, 0, 0, 255, 1, 1, 1, 255, 2, 2, 2, 255, 2, 2, 2, 255, 3, 3, 3, 255, 4, 4, 4, 255, 4, 4, 4, 255, 5, 5, 5, 255, 6, 6, 6, 255, 6, 6, 6, 255, 7, 7, 7, 255, 8, 8, 8, 255, 8, 8, 8, 255, 9, 9, 9, 255, 10, 10, 10, 255, 11, 11, 11, 255, 11, 11, 11, 255, 12, 12, 12, 255, 13, 13, 13, 255, 13, 13, 13, 255, 14, 14, 14, 255, 15, 15, 15, 255, 15, 15, 15, 255, 16, 16, 16, 255, 17, 17, 17, 255, 17, 17, 17, 255, 18, 18, 18, 255, 19, 19, 19, 255, 20, 20, 20, 255, 20, 20, 20, 255, 21, 21, 21, 255, 22, 22, 22, 255, 22, 22, 22, 255, 23, 23, 23, 255, 24, 24, 24, 255, 24, 24, 24, 255, 25, 25, 25, 255, 26, 26, 26, 255, 27, 27, 27, 255, 27, 27, 27, 255, 28, 28, 28, 255, 29, 29, 29, 255, 29, 29, 29, 255, 30, 30, 30, 255, 31, 31, 31, 255, 32, 32, 32, 255, 32, 32, 32, 255, 33, 33, 33, 255, 34, 34, 34, 255, 34, 34, 34, 255, 35, 35, 35, 255, 36, 36, 36, 255, 37, 37, 37, 255, 37, 37, 37, 255, 38, 38, 38, 255, 39, 39, 39, 255, 39, 39, 39, 255, 40, 40, 40, 255, 41, 41, 41, 255, 42, 42, 42, 255, 42, 42, 42, 255, 43, 43, 43, 255, 44, 44, 44, 255, 45, 45, 45, 255, 45, 45, 45, 255, 46, 46, 46, 255, 47, 47, 47, 255, 47, 47, 47, 255, 48, 48, 48, 255, 49, 49, 49, 255, 50, 50, 50, 255, 50, 50, 50, 255, 51, 51, 51, 255, 52, 52, 52, 255, 53, 53, 53, 255, 53, 53, 53, 255, 54, 54, 54, 255, 55, 55, 55, 255, 56, 56, 56, 255, 57, 57, 57, 255, 57, 57, 57, 255, 58, 58, 58, 255, 59, 59, 59, 255, 60, 60, 60, 255, 60, 60, 60, 255, 61, 61, 61, 255, 62, 62, 62, 255, 63, 63, 63, 255, 63, 63, 63, 255, 64, 64, 64, 255, 65, 65, 65, 255, 66, 66, 66, 255, 67, 67, 67, 255, 67, 67, 67, 255, 68, 68, 68, 255, 69, 69, 69, 255, 70, 70, 70, 255, 71, 71, 71, 255, 71, 71, 71, 255, 72, 72, 72, 255, 73, 73, 73, 255, 74, 74, 74, 255, 75, 75, 75, 255, 75, 75, 75, 255, 76, 76, 76, 255, 77, 77, 77, 255, 78, 78, 78, 255, 79, 79, 79, 255, 80, 80, 80, 255, 80, 80, 80, 255, 81, 81, 81, 255, 82, 82, 82, 255, 83, 83, 83, 255, 84, 84, 84, 255, 85, 85, 85, 255, 85, 85, 85, 255, 86, 86, 86, 255, 87, 87, 87, 255, 88, 88, 88, 255, 89, 89, 89, 255, 90, 90, 90, 255, 91, 91, 91, 255, 91, 91, 91, 255, 92, 92, 92, 255, 93, 93, 93, 255, 94, 94, 94, 255, 95, 95, 95, 255, 96, 96, 96, 255, 97, 97, 97, 255, 98, 98, 98, 255, 98, 98, 98, 255, 99, 99, 99, 255, 100, 100, 100, 255, 101, 101, 101, 255, 102, 102, 102, 255, 103, 103, 103, 255, 104, 104, 104, 255, 105, 105, 105, 255, 106, 106, 106, 255, 107, 107, 107, 255, 108, 108, 108, 255, 108, 108, 108, 255, 109, 109, 109, 255, 110, 110, 110, 255, 111, 111, 111, 255, 112, 112, 112, 255, 113, 113, 113, 255, 114, 114, 114, 255, 115, 115, 115, 255, 116, 116, 116, 255, 117, 117, 117, 255, 118, 118, 118, 255, 119, 119, 119, 255, 120, 120, 120, 255, 121, 121, 121, 255, 122, 122, 122, 255, 123, 123, 123, 255, 124, 124, 124, 255, 125, 125, 125, 255, 126, 126, 126, 255, 127, 127, 127, 255, f.f92927k, f.f92927k, f.f92927k, 255, 129, 129, 129, 255, 130, 130, 130, 255, 131, 131, 131, 255, 132, 132, 132, 255, 133, 133, 133, 255, 134, 134, 134, 255, 135, 135, 135, 255, 136, 136, 136, 255, 137, 137, 137, 255, 138, 138, 138, 255, 139, 139, 139, 255, 140, 140, 140, 255, 141, 141, 141, 255, 142, 142, 142, 255, 143, 143, 143, 255, 144, 144, 144, 255, 145, 145, 145, 255, 146, 146, 146, 255, 148, 148, 148, 255, 149, 149, 149, 255, 150, 150, 150, 255, 151, 151, 151, 255, 152, 152, 152, 255, 153, 153, 153, 255, 154, 154, 154, 255, 155, 155, 155, 255, 156, 156, 156, 255, 157, 157, 157, 255, 159, 159, 159, 255, 160, 160, 160, 255, 161, 161, 161, 255, 162, 162, 162, 255, 163, 163, 163, 255, 164, 164, 164, 255, 165, 165, 165, 255, 167, 167, 167, 255, 168, 168, 168, 255, 169, 169, 169, 255, 170, 170, 170, 255, 171, 171, 171, 255, 172, 172, 172, 255, 174, 174, 174, 255, 175, 175, 175, 255, 176, 176, 176, 255, 177, 177, 177, 255, 178, 178, 178, 255, 179, 179, 179, 255, 181, 181, 181, 255, 182, 182, 182, 255, 183, 183, 183, 255, 184, 184, 184, 255, 186, 186, 186, 255, 187, 187, 187, 255, 188, 188, 188, 255, 189, 189, 189, 255, 190, 190, 190, 255, 192, 192, 192, 255, 193, 193, 193, 255, 194, 194, 194, 255, 195, 195, 195, 255, 197, 197, 197, 255, 198, 198, 198, 255, 199, 199, 199, 255, 200, 200, 200, 255, 202, 202, 202, 255, 203, 203, 203, 255, 204, 204, 204, 255, 205, 205, 205, 255, 207, 207, 207, 255, 208, 208, 208, 255, 209, 209, 209, 255, 211, 211, 211, 255, 212, 212, 212, 255, 213, 213, 213, 255, 214, 214, 214, 255, 216, 216, 216, 255, 217, 217, 217, 255, 218, 218, 218, 255, 219, 219, 219, 255, 221, 221, 221, 255, 222, 222, 222, 255, 223, 223, 223, 255, 225, 225, 225, 255, 226, 226, 226, 255, 227, 227, 227, 255, 228, 228, 228, 255, 230, 230, 230, 255, 
        231, 231, 231, 255, 232, 232, 232, 255, 234, 234, 234, 255, 235, 235, 235, 255, 236, 236, 236, 255, 238, 238, 238, 255};
        this.mGrindRatio = 0.75f;
    }

    private void a() {
        byte[] bArr = new byte[1024];
        for (int i4 = 0; i4 < 1024; i4++) {
            bArr[i4] = (byte) this.f46339h[i4];
        }
        this.f46337f[0] = GlUtil.loadTexture(ByteBuffer.wrap(bArr), 256, 1, this.f46337f[0]);
        byte[] bArr2 = new byte[1024];
        for (int i10 = 0; i10 < 1024; i10++) {
            bArr2[i10] = (byte) this.f46340i[i10];
        }
        this.f46338g[0] = GlUtil.loadTexture(ByteBuffer.wrap(bArr2), 256, 1, this.f46338g[0]);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isWhitenRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysAfter() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, 0);
        GLES20.glActiveTexture(33984);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.f46337f[0]);
        GLES20.glUniform1i(this.f46333b, 2);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.f46338g[0]);
        GLES20.glUniform1i(this.f46334c, 3);
        GLES20.glUniform1f(this.f46332a, this.mGrindRatio);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46336e = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46333b = getUniformLocation("lightenTex");
        this.f46334c = getUniformLocation("darkenTex");
        this.f46332a = getUniformLocation("grindRatio");
        int uniformLocation = getUniformLocation("singleStepOffset");
        this.f46335d = uniformLocation;
        ImgTexFormat imgTexFormat = this.f46336e;
        GLES20.glUniform2f(uniformLocation, 2.0f / imgTexFormat.width, 2.0f / imgTexFormat.height);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        GLES20.glDeleteTextures(1, this.f46337f, 0);
        GLES20.glDeleteTextures(1, this.f46338g, 0);
        this.f46337f[0] = -1;
        this.f46338g[0] = -1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10 * 0.8f);
    }
}
