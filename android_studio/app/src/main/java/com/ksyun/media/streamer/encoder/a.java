package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.Image;
import android.media.ImageReader;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.nio.ByteBuffer;

/* compiled from: ImgTexToBitmap.java */
/* loaded from: classes3.dex */
public class a extends ImgTexToBuf {

    /* renamed from: d  reason: collision with root package name */
    private static final String f46184d = "ImgTexToBitmap";

    /* renamed from: e  reason: collision with root package name */
    private boolean f46185e;

    /* renamed from: f  reason: collision with root package name */
    private float f46186f;

    /* renamed from: g  reason: collision with root package name */
    private GLRender.ScreenShotListener f46187g;

    /* renamed from: h  reason: collision with root package name */
    private Thread f46188h;

    public a(GLRender gLRender) {
        super(gLRender);
        this.f46185e = false;
        this.f46186f = 1.0f;
        this.f46187g = null;
        this.f46188h = null;
        setOutputColorFormat(5);
    }

    @Override // com.ksyun.media.streamer.encoder.ImgTexToBuf
    public SinkPin<ImgTexFrame> getSinkPin() {
        return this.mSinkPin;
    }

    @Override // com.ksyun.media.streamer.encoder.ImgTexToBuf
    public void release() {
        Thread thread = this.f46188h;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.f46188h.interrupt();
        this.f46188h = null;
    }

    @Override // com.ksyun.media.streamer.encoder.ImgTexToBuf
    @TargetApi(19)
    protected void a(ImageReader imageReader) {
        Image acquireNextImage = imageReader.acquireNextImage();
        if (this.f46185e) {
            if (acquireNextImage != null) {
                Image.Plane[] planes = acquireNextImage.getPlanes();
                final ByteBuffer buffer = planes[0].getBuffer();
                if (buffer != null) {
                    final int width = acquireNextImage.getWidth();
                    final int height = acquireNextImage.getHeight();
                    final int pixelStride = planes[0].getPixelStride();
                    final int rowStride = planes[0].getRowStride() - (pixelStride * width);
                    Thread thread = new Thread(new Runnable() { // from class: com.ksyun.media.streamer.encoder.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Bitmap createBitmap = Bitmap.createBitmap(width + (rowStride / pixelStride), height, Bitmap.Config.ARGB_8888);
                            createBitmap.copyPixelsFromBuffer(buffer);
                            if (a.this.f46186f != 1.0d) {
                                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, (int) (width * a.this.f46186f), (int) (height * a.this.f46186f), true);
                                if (a.this.f46187g != null) {
                                    a.this.f46187g.onBitmapAvailable(createScaledBitmap);
                                }
                                if (createScaledBitmap != null) {
                                    createScaledBitmap.recycle();
                                    return;
                                }
                                return;
                            }
                            if (a.this.f46187g != null) {
                                a.this.f46187g.onBitmapAvailable(createBitmap);
                            }
                            createBitmap.recycle();
                        }
                    });
                    this.f46188h = thread;
                    thread.start();
                }
            }
            this.f46185e = false;
            this.f46103a = false;
        }
        acquireNextImage.close();
    }

    private void a(float f10) {
        this.f46186f = Math.min(Math.max(0.0f, f10), 1.0f);
    }

    public void a(GLRender.ScreenShotListener screenShotListener) {
        a(1.0f, screenShotListener);
    }

    public void a(float f10, GLRender.ScreenShotListener screenShotListener) {
        a(f10);
        this.f46103a = true;
        this.f46185e = true;
        this.f46187g = screenShotListener;
    }
}
