package com.ksyun.media.streamer.framework;

import android.opengl.Matrix;
import com.ksyun.media.streamer.util.gles.FboManager;

/* loaded from: classes3.dex */
public class ImgTexFrame extends AVFrameBase {
    public static final int NO_TEXTURE = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f46551a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private FboManager f46552b;
    public ImgTexFormat format;
    public final float[] texMatrix;
    public int textureId;

    public ImgTexFrame(ImgTexFormat imgTexFormat, FboManager fboManager, int i4, float[] fArr, long j4) {
        this(imgTexFormat, i4, fArr, j4);
        this.f46552b = fboManager;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public boolean isRefCounted() {
        return (this.f46552b == null || this.textureId == -1) ? false : true;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public synchronized void ref() {
        if (isRefCounted()) {
            this.f46552b.lock(this.textureId);
        }
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public synchronized void unref() {
        if (isRefCounted()) {
            this.f46552b.unlock(this.textureId);
        }
    }

    public ImgTexFrame(ImgTexFormat imgTexFormat, int i4, float[] fArr, long j4) {
        this.f46552b = null;
        this.format = imgTexFormat;
        this.textureId = i4;
        this.pts = j4;
        this.flags = 0;
        if (fArr != null && fArr.length == 16) {
            this.texMatrix = fArr;
            return;
        }
        float[] fArr2 = f46551a;
        this.texMatrix = fArr2;
        Matrix.setIdentityM(fArr2, 0);
    }

    public ImgTexFrame(ImgTexFrame imgTexFrame) {
        this.f46552b = null;
        this.format = imgTexFrame.format;
        this.textureId = imgTexFrame.textureId;
        this.texMatrix = imgTexFrame.texMatrix;
        this.pts = imgTexFrame.pts;
        this.flags = imgTexFrame.flags;
        if (imgTexFrame.isRefCounted()) {
            FboManager fboManager = imgTexFrame.f46552b;
            this.f46552b = fboManager;
            fboManager.lock(imgTexFrame.textureId);
        }
    }
}
