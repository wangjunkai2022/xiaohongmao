package com.ksyun.media.streamer.capture;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.ConditionVariable;
import com.facebook.imagepipeline.common.e;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import com.ksyun.media.streamer.util.gles.g;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ImgTexSrcPin extends SrcPin<ImgTexFrame> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45690a = "ImgTexSrcPin";

    /* renamed from: e  reason: collision with root package name */
    private ImgTexFormat f45691e;

    /* renamed from: h  reason: collision with root package name */
    private GLRender f45694h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45695i;

    /* renamed from: k  reason: collision with root package name */
    private g f45697k;

    /* renamed from: f  reason: collision with root package name */
    private int f45692f = -1;

    /* renamed from: j  reason: collision with root package name */
    private ConditionVariable f45696j = new ConditionVariable();

    /* renamed from: l  reason: collision with root package name */
    private GLRender.OnReadyListener f45698l = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.6
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            ImgTexSrcPin.this.f45691e = null;
            ImgTexSrcPin.this.f45692f = -1;
            if (ImgTexSrcPin.this.f45697k != null) {
                ImgTexSrcPin.this.f45697k.a();
            }
        }
    };

    /* renamed from: m  reason: collision with root package name */
    private GLRender.OnReleasedListener f45699m = new GLRender.OnReleasedListener() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.7
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReleasedListener
        public void onReleased() {
            if (ImgTexSrcPin.this.f45695i) {
                ImgTexSrcPin.this.f45696j.open();
            }
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private float[] f45693g = new float[16];

    public ImgTexSrcPin(GLRender gLRender) {
        this.f45694h = gLRender;
        gLRender.addListener(this.f45698l);
        this.f45694h.addListener(this.f45699m);
        this.f45695i = false;
    }

    public boolean getUseSyncMode() {
        return this.f45695i;
    }

    public void release() {
        disconnect(true);
        this.f45694h.removeListener(this.f45698l);
        this.f45694h.removeListener(this.f45699m);
        reset();
        this.f45697k = null;
    }

    public void repeatFrame() {
        repeatFrame((System.nanoTime() / 1000) / 1000);
    }

    public void reset() {
        if (this.f45694h.isGLRenderThread()) {
            a();
        } else {
            this.f45694h.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.5
                @Override // java.lang.Runnable
                public void run() {
                    ImgTexSrcPin.this.a();
                }
            });
        }
    }

    public void setUseSyncMode(boolean z9) {
        this.f45695i = z9;
    }

    public void updateFrame(Bitmap bitmap, boolean z9) {
        updateFrame(bitmap, 0, (System.nanoTime() / 1000) / 1000, z9);
    }

    public void updateYUVFrame(final ByteBuffer byteBuffer, final int[] iArr, final int i4, final int i10, final int i11, final long j4) {
        if (this.f45694h.isGLRenderThread()) {
            a(byteBuffer, iArr, i4, i10, i11, j4);
            return;
        }
        if (this.f45695i) {
            this.f45696j.close();
        }
        this.f45694h.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.3
            @Override // java.lang.Runnable
            public void run() {
                ImgTexSrcPin.this.a(byteBuffer, iArr, i4, i10, i11, j4);
                if (ImgTexSrcPin.this.f45695i) {
                    ImgTexSrcPin.this.f45696j.open();
                }
            }
        });
        if (this.f45695i) {
            this.f45696j.block();
        }
    }

    public void repeatFrame(final long j4) {
        if (this.f45694h.isGLRenderThread()) {
            a(j4);
            return;
        }
        if (this.f45695i) {
            this.f45696j.close();
        }
        this.f45694h.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.4
            @Override // java.lang.Runnable
            public void run() {
                ImgTexSrcPin.this.a(j4);
                if (ImgTexSrcPin.this.f45695i) {
                    ImgTexSrcPin.this.f45696j.open();
                }
            }
        });
        if (this.f45695i) {
            this.f45696j.block();
        }
    }

    public void updateFrame(Bitmap bitmap, long j4, boolean z9) {
        updateFrame(bitmap, 0, j4, z9);
    }

    public void updateFrame(final Bitmap bitmap, final int i4, final long j4, final boolean z9) {
        if (this.f45694h.isGLRenderThread()) {
            a(bitmap, i4, j4, z9);
            return;
        }
        if (this.f45695i) {
            this.f45696j.close();
        }
        this.f45694h.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.1
            @Override // java.lang.Runnable
            public void run() {
                ImgTexSrcPin.this.a(bitmap, i4, j4, z9);
                if (ImgTexSrcPin.this.f45695i) {
                    ImgTexSrcPin.this.f45696j.open();
                }
            }
        });
        if (this.f45695i) {
            this.f45696j.block();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        g gVar = this.f45697k;
        if (gVar == null) {
            int i4 = this.f45692f;
            if (i4 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i4}, 0);
                this.f45692f = -1;
            }
        } else {
            gVar.a();
            this.f45692f = -1;
        }
        this.f45691e = null;
    }

    public void updateFrame(ByteBuffer byteBuffer, int i4, int i10, int i11) {
        updateFrame(byteBuffer, i4, i10, i11, 0, (System.nanoTime() / 1000) / 1000);
    }

    public void updateFrame(ByteBuffer byteBuffer, int i4, int i10, int i11, long j4) {
        updateFrame(byteBuffer, i4, i10, i11, 0, j4);
    }

    public void updateFrame(final ByteBuffer byteBuffer, final int i4, final int i10, final int i11, final int i12, final long j4) {
        if (this.f45694h.isGLRenderThread()) {
            a(byteBuffer, i4, i10, i11, i12, j4);
            return;
        }
        if (this.f45695i) {
            this.f45696j.close();
        }
        this.f45694h.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.ImgTexSrcPin.2
            @Override // java.lang.Runnable
            public void run() {
                ImgTexSrcPin.this.a(byteBuffer, i4, i10, i11, i12, j4);
                if (ImgTexSrcPin.this.f45695i) {
                    ImgTexSrcPin.this.f45696j.open();
                }
            }
        });
        if (this.f45695i) {
            this.f45696j.block();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap, int i4, long j4, boolean z9) {
        boolean z10 = false;
        if (bitmap != null && !bitmap.isRecycled()) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (i4 % e.f12205e != 0) {
                width = bitmap.getHeight();
                height = bitmap.getWidth();
            }
            ImgTexFormat imgTexFormat = this.f45691e;
            if (imgTexFormat == null || imgTexFormat.width != width || imgTexFormat.height != height) {
                this.f45691e = new ImgTexFormat(1, width, height);
                int i10 = this.f45692f;
                if (i10 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i10}, 0);
                    this.f45692f = -1;
                }
                z10 = true;
            }
            this.f45692f = GlUtil.loadTexture(bitmap, this.f45692f);
            if (z9) {
                bitmap.recycle();
            }
            if (this.f45692f == -1) {
                return;
            }
            if (z10) {
                onFormatChanged(this.f45691e);
            }
            TexTransformUtil.calTransformMatrix(this.f45693g, 1.0f, 1.0f, i4);
            onFrameAvailable(new ImgTexFrame(this.f45691e, this.f45692f, this.f45693g, j4));
        } else if (this.f45691e == null) {
        } else {
            int i11 = this.f45692f;
            if (i11 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i11}, 0);
                this.f45692f = -1;
            }
            onFrameAvailable(new ImgTexFrame(this.f45691e, -1, null, 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ByteBuffer byteBuffer, int i4, int i10, int i11, int i12, long j4) {
        int i13;
        int i14;
        boolean z9 = false;
        if (byteBuffer != null && byteBuffer.limit() != 0) {
            if (i12 % e.f12205e != 0) {
                i14 = i10;
                i13 = i11;
            } else {
                i13 = i10;
                i14 = i11;
            }
            ImgTexFormat imgTexFormat = this.f45691e;
            if (imgTexFormat == null || imgTexFormat.width != i13 || imgTexFormat.height != i14) {
                this.f45691e = new ImgTexFormat(1, i13, i14);
                int i15 = this.f45692f;
                if (i15 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i15}, 0);
                    this.f45692f = -1;
                }
                z9 = true;
            }
            int i16 = i4 / 4;
            int loadTexture = GlUtil.loadTexture(byteBuffer, i16, i11, this.f45692f);
            this.f45692f = loadTexture;
            if (loadTexture == -1) {
                return;
            }
            if (z9) {
                onFormatChanged(this.f45691e);
            }
            TexTransformUtil.calTransformMatrix(this.f45693g, i10 / i16, 1.0f, i12);
            onFrameAvailable(new ImgTexFrame(this.f45691e, this.f45692f, this.f45693g, j4));
        } else if (this.f45691e == null) {
        } else {
            int i17 = this.f45692f;
            if (i17 != -1) {
                GLES20.glDeleteTextures(1, new int[]{i17}, 0);
                this.f45692f = -1;
            }
            onFrameAvailable(new ImgTexFrame(this.f45691e, -1, null, 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ByteBuffer byteBuffer, int[] iArr, int i4, int i10, int i11, long j4) {
        int i12;
        int i13;
        if (byteBuffer != null && byteBuffer.limit() != 0) {
            if (i11 % e.f12205e != 0) {
                i13 = i4;
                i12 = i10;
            } else {
                i12 = i4;
                i13 = i10;
            }
            boolean z9 = false;
            ImgTexFormat imgTexFormat = this.f45691e;
            if (imgTexFormat == null || imgTexFormat.width != i12 || imgTexFormat.height != i13) {
                this.f45691e = new ImgTexFormat(1, i12, i13);
                g gVar = this.f45697k;
                if (gVar != null) {
                    gVar.a();
                }
                this.f45692f = -1;
                z9 = true;
            }
            if (this.f45697k == null) {
                this.f45697k = new g(this.f45694h);
            }
            int a10 = this.f45697k.a(byteBuffer, i4, i10, iArr);
            this.f45692f = a10;
            if (a10 == -1) {
                return;
            }
            if (z9) {
                onFormatChanged(this.f45691e);
            }
            TexTransformUtil.calTransformMatrix(this.f45693g, 1.0f, 1.0f, i11);
            onFrameAvailable(new ImgTexFrame(this.f45691e, this.f45692f, this.f45693g, j4));
        } else if (this.f45691e == null) {
        } else {
            g gVar2 = this.f45697k;
            if (gVar2 != null) {
                gVar2.a();
            }
            this.f45692f = -1;
            onFrameAvailable(new ImgTexFrame(this.f45691e, -1, null, 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j4) {
        if (this.f45692f == -1 || this.f45691e == null) {
            return;
        }
        onFrameAvailable(new ImgTexFrame(this.f45691e, this.f45692f, this.f45693g, j4));
    }
}
