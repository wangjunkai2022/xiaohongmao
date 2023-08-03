package com.ksyun.media.streamer.capture;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.ConditionVariable;
import android.util.Log;
import android.view.View;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import io.sentry.protocol.y;
import java.nio.ByteBuffer;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public class ViewCapture {
    public static final String TAG = "ViewCapture";

    /* renamed from: a  reason: collision with root package name */
    private ImgTexSrcPin f45724a;

    /* renamed from: c  reason: collision with root package name */
    private int f45726c;

    /* renamed from: d  reason: collision with root package name */
    private int f45727d;

    /* renamed from: e  reason: collision with root package name */
    private Timer f45728e;

    /* renamed from: f  reason: collision with root package name */
    private View f45729f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f45730g;

    /* renamed from: h  reason: collision with root package name */
    private Canvas f45731h;

    /* renamed from: j  reason: collision with root package name */
    private ByteBuffer f45733j;

    /* renamed from: l  reason: collision with root package name */
    private Bitmap f45735l;

    /* renamed from: b  reason: collision with root package name */
    private float f45725b = 15.0f;

    /* renamed from: i  reason: collision with root package name */
    private Object f45732i = new Object();

    /* renamed from: k  reason: collision with root package name */
    private ConditionVariable f45734k = new ConditionVariable();

    public ViewCapture(GLRender gLRender) {
        ImgTexSrcPin imgTexSrcPin = new ImgTexSrcPin(gLRender);
        this.f45724a = imgTexSrcPin;
        imgTexSrcPin.setUseSyncMode(true);
    }

    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f45724a;
    }

    public int getTargetHeight() {
        return this.f45727d;
    }

    public int getTargetWidth() {
        return this.f45726c;
    }

    public float getUpdateFps() {
        return this.f45725b;
    }

    public void release() {
        stop();
        this.f45724a.release();
    }

    public void setTargetResolution(int i4, int i10) {
        this.f45726c = i4;
        this.f45727d = i10;
    }

    public void setUpdateFps(float f10) {
        this.f45725b = f10;
    }

    public void start(View view) {
        if (view == null) {
            return;
        }
        this.f45729f = view;
        float f10 = this.f45725b;
        if (f10 > 0.0f) {
            Timer timer = new Timer("ViewRepeat");
            this.f45728e = timer;
            timer.schedule(new TimerTask() { // from class: com.ksyun.media.streamer.capture.ViewCapture.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    ViewCapture.this.f45734k.close();
                    ViewCapture.this.f45735l = null;
                    ViewCapture.this.f45729f.post(new Runnable() { // from class: com.ksyun.media.streamer.capture.ViewCapture.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewCapture viewCapture = ViewCapture.this;
                            viewCapture.f45735l = viewCapture.a(viewCapture.f45729f);
                            ViewCapture.this.f45734k.open();
                        }
                    });
                    ViewCapture.this.f45734k.block();
                    ViewCapture viewCapture = ViewCapture.this;
                    viewCapture.a(viewCapture.f45735l);
                }
            }, 40L, 1000.0f / f10);
        }
    }

    public void stop() {
        this.f45734k.open();
        Timer timer = this.f45728e;
        if (timer != null) {
            timer.cancel();
            this.f45728e = null;
        }
        this.f45724a.updateFrame(null, false);
        synchronized (this.f45732i) {
            this.f45733j = null;
        }
        Bitmap bitmap = this.f45730g;
        if (bitmap != null) {
            bitmap.recycle();
            this.f45730g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(View view) {
        if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
            return null;
        }
        Bitmap bitmap = this.f45730g;
        if (bitmap == null || bitmap.isRecycled()) {
            int width = view.getWidth();
            int height = view.getHeight();
            int i4 = this.f45726c;
            if (i4 > 0 || this.f45727d > 0) {
                if (i4 == 0) {
                    this.f45726c = (this.f45727d * width) / height;
                }
                if (this.f45727d == 0) {
                    this.f45727d = (this.f45726c * height) / width;
                }
                width = this.f45726c;
                height = this.f45727d;
            }
            float width2 = width / view.getWidth();
            float height2 = height / view.getHeight();
            Log.d(TAG, "init bitmap " + width + y.b.f83919g + height + " scale: " + width2 + y.b.f83919g + height2);
            this.f45730g = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.f45730g);
            this.f45731h = canvas;
            canvas.scale(width2, height2);
        }
        this.f45730g.eraseColor(0);
        view.draw(this.f45731h);
        return this.f45730g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i4 = width * 4;
            synchronized (this.f45732i) {
                if (this.f45733j == null) {
                    this.f45733j = ByteBuffer.allocate(i4 * height);
                }
                this.f45733j.clear();
                bitmap.copyPixelsToBuffer(this.f45733j);
                this.f45733j.flip();
                this.f45724a.updateFrame(this.f45733j, i4, width, height);
            }
            return;
        }
        this.f45724a.updateFrame(null, false);
    }
}
