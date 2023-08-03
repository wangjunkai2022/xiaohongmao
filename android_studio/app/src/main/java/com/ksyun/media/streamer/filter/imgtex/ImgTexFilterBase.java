package com.ksyun.media.streamer.filter.imgtex;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLProgramLoadException;
import com.ksyun.media.streamer.util.gles.GLRender;
import io.sentry.protocol.y;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ImgTexFilterBase extends ImgFilterBase {
    public static final int ERROR_LOAD_PROGRAM_FAILED = -1;
    public static final int ERROR_UNKNOWN = -2;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46475a = "ImgTexFilterBase";

    /* renamed from: c  reason: collision with root package name */
    private SrcPin<ImgTexFrame> f46477c;

    /* renamed from: d  reason: collision with root package name */
    private ImgTexFrame[] f46478d;

    /* renamed from: e  reason: collision with root package name */
    private boolean[] f46479e;

    /* renamed from: g  reason: collision with root package name */
    private ImgTexFormat f46481g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f46482h;

    /* renamed from: i  reason: collision with root package name */
    private float f46483i;

    /* renamed from: j  reason: collision with root package name */
    private GLRender.ScreenShotListener f46484j;
    protected GLRender mGLRender;
    protected boolean mInited;
    protected Handler mMainHandler;

    /* renamed from: f  reason: collision with root package name */
    private int[] f46480f = new int[4];
    protected boolean mReuseFbo = true;
    protected int mOutTexture = -1;

    /* renamed from: k  reason: collision with root package name */
    private Thread f46485k = null;

    /* renamed from: l  reason: collision with root package name */
    private GLRender.OnReadyListener f46486l = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase.3
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
            imgTexFilterBase.mInited = false;
            imgTexFilterBase.mOutTexture = -1;
            for (int i4 = 0; i4 < ImgTexFilterBase.this.f46478d.length; i4++) {
                ImgTexFilterBase.this.f46478d[i4] = null;
            }
            ImgTexFilterBase.this.onGLContextReady();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private List<SinkPin<ImgTexFrame>> f46476b = new LinkedList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends SinkPin<ImgTexFrame> {

        /* renamed from: b  reason: collision with root package name */
        private int f46497b;

        public a(int i4) {
            this.f46497b = i4;
        }

        private void b(ImgTexFrame imgTexFrame) {
            ImgTexFormat srcPinFormat;
            if (ImgTexFilterBase.this.f46477c.isConnected() && (srcPinFormat = ImgTexFilterBase.this.getSrcPinFormat()) != null) {
                if (ImgTexFilterBase.this.f46481g != null && (ImgTexFilterBase.this.f46481g.width != srcPinFormat.width || ImgTexFilterBase.this.f46481g.height != srcPinFormat.height)) {
                    int i4 = this.f46497b;
                    ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
                    if (i4 == imgTexFilterBase.mMainSinkPinIndex) {
                        imgTexFilterBase.f46477c.onFormatChanged(srcPinFormat);
                    }
                }
                ImgTexFilterBase.this.f46481g = srcPinFormat;
                ImgTexFilterBase imgTexFilterBase2 = ImgTexFilterBase.this;
                if (imgTexFilterBase2.mOutTexture == -1) {
                    imgTexFilterBase2.mOutTexture = imgTexFilterBase2.mGLRender.getFboManager().getTextureAndLock(srcPinFormat.width, srcPinFormat.height);
                }
                int framebuffer = ImgTexFilterBase.this.mGLRender.getFboManager().getFramebuffer(ImgTexFilterBase.this.mOutTexture);
                GLES20.glGetIntegerv(2978, ImgTexFilterBase.this.f46480f, 0);
                GLES20.glViewport(0, 0, srcPinFormat.width, srcPinFormat.height);
                GLES20.glBindFramebuffer(36160, framebuffer);
                try {
                    try {
                        GLES20.glClear(16384);
                        ImgTexFilterBase imgTexFilterBase3 = ImgTexFilterBase.this;
                        imgTexFilterBase3.onDraw(imgTexFilterBase3.f46478d);
                        if (ImgTexFilterBase.this.f46482h) {
                            ImgTexFilterBase.this.a(srcPinFormat.width, srcPinFormat.height);
                            ImgTexFilterBase.this.f46482h = false;
                        }
                        if (ImgTexFilterBase.this.f46479e[this.f46497b]) {
                            imgTexFrame.unref();
                        }
                        GLES20.glBindFramebuffer(36160, 0);
                        GLES20.glViewport(ImgTexFilterBase.this.f46480f[0], ImgTexFilterBase.this.f46480f[1], ImgTexFilterBase.this.f46480f[2], ImgTexFilterBase.this.f46480f[3]);
                        ImgTexFrame imgTexFrame2 = new ImgTexFrame(srcPinFormat, ImgTexFilterBase.this.isReuseFbo() ? ImgTexFilterBase.this.mGLRender.getFboManager() : null, ImgTexFilterBase.this.mOutTexture, null, imgTexFrame.pts);
                        imgTexFrame2.flags = imgTexFrame.flags;
                        ImgTexFilterBase.this.f46477c.onFrameAvailable(imgTexFrame2);
                        if (ImgTexFilterBase.this.isReuseFbo()) {
                            ImgTexFilterBase.this.mOutTexture = -1;
                        }
                    } catch (Exception e4) {
                        if (ImgTexFilterBase.this.isReuseFbo()) {
                            ImgTexFilterBase.this.mGLRender.getFboManager().unlock(ImgTexFilterBase.this.mOutTexture);
                            ImgTexFilterBase.this.mOutTexture = -1;
                        }
                        if (e4 instanceof GLProgramLoadException) {
                            ImgTexFilterBase.this.sendError(-1);
                        } else {
                            ImgTexFilterBase.this.sendError(-2);
                        }
                        Log.e(ImgTexFilterBase.f46475a, "Draw frame error!");
                        e4.printStackTrace();
                        if (ImgTexFilterBase.this.f46479e[this.f46497b]) {
                            imgTexFrame.unref();
                        }
                        GLES20.glBindFramebuffer(36160, 0);
                        GLES20.glViewport(ImgTexFilterBase.this.f46480f[0], ImgTexFilterBase.this.f46480f[1], ImgTexFilterBase.this.f46480f[2], ImgTexFilterBase.this.f46480f[3]);
                    }
                } catch (Throwable th) {
                    if (ImgTexFilterBase.this.f46479e[this.f46497b]) {
                        imgTexFrame.unref();
                    }
                    GLES20.glBindFramebuffer(36160, 0);
                    GLES20.glViewport(ImgTexFilterBase.this.f46480f[0], ImgTexFilterBase.this.f46480f[1], ImgTexFilterBase.this.f46480f[2], ImgTexFilterBase.this.f46480f[3]);
                    throw th;
                }
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public synchronized void onConnected(SrcPin<ImgTexFrame> srcPin) {
            super.onConnected(srcPin);
            ImgTexFilterBase.this.f46479e[this.f46497b] = srcPin instanceof b;
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public synchronized void onDisconnect(boolean z9) {
            int i4 = this.f46497b;
            ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
            if (i4 != imgTexFilterBase.mMainSinkPinIndex) {
                imgTexFilterBase.mGLRender.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ImgTexFilterBase.this.f46478d[a.this.f46497b] != null && ImgTexFilterBase.this.f46478d[a.this.f46497b].isRefCounted()) {
                            ImgTexFilterBase.this.f46478d[a.this.f46497b].unref();
                        }
                        ImgTexFilterBase.this.f46478d[a.this.f46497b] = null;
                    }
                });
            } else if (z9) {
                imgTexFilterBase.release();
            } else {
                imgTexFilterBase.onDisconnect(z9);
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            ImgTexFilterBase.this.onFormatChanged(this.f46497b, (ImgTexFormat) obj);
            int i4 = this.f46497b;
            ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
            if (i4 == imgTexFilterBase.mMainSinkPinIndex) {
                ImgTexFormat srcPinFormat = imgTexFilterBase.getSrcPinFormat();
                ImgTexFilterBase.this.f46477c.onFormatChanged(srcPinFormat);
                ImgTexFilterBase.this.f46481g = srcPinFormat;
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(ImgTexFrame imgTexFrame) {
            int i4 = this.f46497b;
            ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
            if (i4 != imgTexFilterBase.mMainSinkPinIndex) {
                if (imgTexFilterBase.f46478d[this.f46497b] != null && ImgTexFilterBase.this.f46478d[this.f46497b].isRefCounted()) {
                    ImgTexFilterBase.this.f46478d[this.f46497b].unref();
                }
                if (!ImgTexFilterBase.this.f46479e[this.f46497b] && imgTexFrame.isRefCounted()) {
                    imgTexFrame.ref();
                }
                ImgTexFilterBase.this.f46478d[this.f46497b] = imgTexFrame;
                return;
            }
            imgTexFilterBase.f46478d[this.f46497b] = imgTexFrame;
            b(imgTexFrame);
            ImgTexFilterBase.this.f46478d[this.f46497b] = null;
        }
    }

    /* loaded from: classes3.dex */
    private class b extends SrcPin<ImgTexFrame> {
        private b() {
        }

        @Override // com.ksyun.media.streamer.framework.SrcPin
        /* renamed from: a */
        public synchronized void onFrameAvailable(ImgTexFrame imgTexFrame) {
            if (imgTexFrame == null) {
                return;
            }
            if (ImgTexFilterBase.this.isReuseFbo()) {
                for (int i4 = 0; i4 < this.f46554b.size(); i4++) {
                    imgTexFrame.ref();
                }
                imgTexFrame.unref();
            }
            Iterator it = this.f46554b.iterator();
            while (it.hasNext()) {
                SinkPin sinkPin = (SinkPin) it.next();
                try {
                    if (!this.f46555c.get(sinkPin).booleanValue()) {
                        sinkPin.onFormatChanged(this.f46556d);
                        this.f46555c.put(sinkPin, Boolean.TRUE);
                    }
                    sinkPin.onFrameAvailable(imgTexFrame);
                } catch (Exception e4) {
                    Log.e(ImgTexFilterBase.f46475a, ImgTexFilterBase.this.getClass().getSimpleName());
                    e4.printStackTrace();
                    if (ImgTexFilterBase.this.isReuseFbo() && !(sinkPin instanceof a)) {
                    }
                }
                if (ImgTexFilterBase.this.isReuseFbo() && !(sinkPin instanceof a)) {
                    imgTexFrame.unref();
                }
            }
        }
    }

    public ImgTexFilterBase(GLRender gLRender) {
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            this.f46476b.add(new a(i4));
        }
        this.f46477c = new b();
        this.f46478d = new ImgTexFrame[getSinkPinNum()];
        this.f46479e = new boolean[getSinkPinNum()];
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mGLRender = gLRender;
        gLRender.addListener(this.f46486l);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f46476b.get(i4);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f46477c;
    }

    protected abstract ImgTexFormat getSrcPinFormat();

    protected boolean isReuseFbo() {
        return this.mReuseFbo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDisconnect(boolean z9) {
    }

    protected abstract void onDraw(ImgTexFrame[] imgTexFrameArr);

    protected abstract void onFormatChanged(int i4, ImgTexFormat imgTexFormat);

    protected void onGLContextReady() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRelease() {
        ImgTexFrame[] imgTexFrameArr;
        for (ImgTexFrame imgTexFrame : this.f46478d) {
            if (imgTexFrame != null && imgTexFrame.isRefCounted()) {
                imgTexFrame.unref();
            }
        }
        if (isReuseFbo()) {
            return;
        }
        this.mGLRender.getFboManager().unlock(this.mOutTexture);
        this.mOutTexture = -1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void release() {
        this.f46477c.disconnect(true);
        this.mGLRender.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase.1
            @Override // java.lang.Runnable
            public void run() {
                ImgTexFilterBase.this.onRelease();
            }
        });
        this.mGLRender.removeListener(this.f46486l);
        Thread thread = this.f46485k;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.f46485k.interrupt();
        this.f46485k = null;
    }

    public void requestScreenShot(GLRender.ScreenShotListener screenShotListener) {
        requestScreenShot(1.0f, screenShotListener);
    }

    protected void sendError(final int i4) {
        this.mMainHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase.2
            @Override // java.lang.Runnable
            public void run() {
                ImgTexFilterBase imgTexFilterBase = ImgTexFilterBase.this;
                ImgFilterBase.OnErrorListener onErrorListener = imgTexFilterBase.mErrorListener;
                if (onErrorListener != null) {
                    onErrorListener.onError(imgTexFilterBase, i4);
                }
            }
        });
    }

    public void setGLRender(GLRender gLRender) {
        GLRender gLRender2 = this.mGLRender;
        if (gLRender2 != null) {
            gLRender2.removeListener(this.f46486l);
        }
        this.mGLRender = gLRender;
        gLRender.addListener(this.f46486l);
    }

    public void setReuseFbo(boolean z9) {
        this.mReuseFbo = z9;
    }

    public void requestScreenShot(float f10, GLRender.ScreenShotListener screenShotListener) {
        a(f10);
        this.f46482h = true;
        this.f46484j = screenShotListener;
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_SCREENSHOT);
    }

    private void a(float f10) {
        this.f46483i = Math.min(Math.max(0.0f, f10), 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i4, final int i10) {
        final long currentTimeMillis = System.currentTimeMillis();
        final ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i4 * i10 * 4);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        GLES20.glReadPixels(0, 0, i4, i10, 6408, 5121, allocateDirect);
        allocateDirect.rewind();
        Thread thread = new Thread(new Runnable() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase.4
            @Override // java.lang.Runnable
            public void run() {
                Bitmap createBitmap = Bitmap.createBitmap(i4, i10, Bitmap.Config.ARGB_8888);
                createBitmap.copyPixelsFromBuffer(allocateDirect);
                Matrix matrix = new Matrix();
                matrix.preScale(1.0f, -1.0f);
                if (ImgTexFilterBase.this.f46483i != 1.0d) {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, (int) (i4 * ImgTexFilterBase.this.f46483i), (int) (i10 * ImgTexFilterBase.this.f46483i), true);
                    Bitmap createBitmap2 = Bitmap.createBitmap(createScaledBitmap, 0, 0, createScaledBitmap.getWidth(), createScaledBitmap.getHeight(), matrix, true);
                    if (ImgTexFilterBase.this.f46484j != null) {
                        ImgTexFilterBase.this.f46484j.onBitmapAvailable(createBitmap2);
                    }
                    createScaledBitmap.recycle();
                    createBitmap2.recycle();
                } else {
                    Bitmap createBitmap3 = Bitmap.createBitmap(createBitmap, 0, 0, i4, i10, matrix, true);
                    if (ImgTexFilterBase.this.f46484j != null) {
                        ImgTexFilterBase.this.f46484j.onBitmapAvailable(createBitmap3);
                    }
                    createBitmap3.recycle();
                }
                createBitmap.recycle();
                Log.d(ImgTexFilterBase.f46475a, "Saved " + i4 + y.b.f83919g + i10 + " frame in " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            }
        });
        this.f46485k = thread;
        thread.start();
    }
}
