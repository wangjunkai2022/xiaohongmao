package com.ksyun.media.streamer.capture;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public class ImageCapture {
    public static final String TAG = "ImageCapture";

    /* renamed from: a  reason: collision with root package name */
    private ImgTexSrcPin f45686a;

    /* renamed from: b  reason: collision with root package name */
    private float f45687b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private Timer f45688c;

    public ImageCapture(GLRender gLRender) {
        this.f45686a = new ImgTexSrcPin(gLRender);
    }

    public float getRepeatFps() {
        return this.f45687b;
    }

    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f45686a;
    }

    public void release() {
        stop();
    }

    public void setRepeatFps(float f10) {
        this.f45687b = f10;
    }

    public void start(Context context, String str) {
        start(BitmapLoader.loadBitmap(context, str), true);
    }

    public void stop() {
        Timer timer = this.f45688c;
        if (timer != null) {
            timer.cancel();
            this.f45688c = null;
        }
        this.f45686a.updateFrame(null, false);
    }

    public void start(Bitmap bitmap, boolean z9) {
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f45686a.updateFrame(bitmap, z9);
            float f10 = this.f45687b;
            if (f10 > 0.0f) {
                long j4 = 1000.0f / f10;
                Timer timer = new Timer("ImageRepeat");
                this.f45688c = timer;
                timer.schedule(new TimerTask() { // from class: com.ksyun.media.streamer.capture.ImageCapture.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        ImageCapture.this.f45686a.repeatFrame();
                    }
                }, j4, j4);
                return;
            }
            return;
        }
        Log.e(TAG, "invalid bitmap, start failed!");
    }
}
