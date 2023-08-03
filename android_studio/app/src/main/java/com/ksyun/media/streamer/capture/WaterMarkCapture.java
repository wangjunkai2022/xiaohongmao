package com.ksyun.media.streamer.capture;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.e;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public class WaterMarkCapture {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45738a = "WaterMarkCapture";

    /* renamed from: b  reason: collision with root package name */
    private static final int f45739b = 512;

    /* renamed from: c  reason: collision with root package name */
    private Timer f45740c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f45741d;

    /* renamed from: e  reason: collision with root package name */
    private GLRender f45742e;

    /* renamed from: j  reason: collision with root package name */
    private Runnable f45747j;

    /* renamed from: k  reason: collision with root package name */
    private int f45748k;

    /* renamed from: l  reason: collision with root package name */
    private String f45749l;

    /* renamed from: m  reason: collision with root package name */
    private float f45750m;
    public ImgTexSrcPin mLogoTexSrcPin;
    public ImgTexSrcPin mTimeTexSrcPin;

    /* renamed from: n  reason: collision with root package name */
    private float f45751n;

    /* renamed from: o  reason: collision with root package name */
    private Bitmap f45752o;

    /* renamed from: f  reason: collision with root package name */
    private int f45743f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f45744g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f45745h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f45746i = 0;

    /* renamed from: p  reason: collision with root package name */
    private final Object f45753p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private GLRender.OnReadyListener f45754q = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.5
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            WaterMarkCapture.this.f45742e.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.5.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (WaterMarkCapture.this.f45753p) {
                        if (WaterMarkCapture.this.f45752o != null) {
                            WaterMarkCapture waterMarkCapture = WaterMarkCapture.this;
                            waterMarkCapture.a(waterMarkCapture.f45752o, WaterMarkCapture.this.mLogoTexSrcPin, false);
                        }
                    }
                    if (WaterMarkCapture.this.f45740c != null) {
                        WaterMarkCapture waterMarkCapture2 = WaterMarkCapture.this;
                        waterMarkCapture2.a(waterMarkCapture2.f45748k, WaterMarkCapture.this.f45749l, WaterMarkCapture.this.f45750m, WaterMarkCapture.this.f45751n);
                    }
                }
            });
        }
    };
    public a mLogoBufSrcPin = new a();
    public a mTimeBufSrcPin = new a();

    public WaterMarkCapture(GLRender gLRender) {
        this.mLogoTexSrcPin = new ImgTexSrcPin(gLRender);
        this.mTimeTexSrcPin = new ImgTexSrcPin(gLRender);
        this.mLogoTexSrcPin.setUseSyncMode(true);
        this.mTimeTexSrcPin.setUseSyncMode(true);
        this.f45741d = Executors.newSingleThreadExecutor();
        this.f45742e = gLRender;
        gLRender.addListener(this.f45754q);
    }

    public a getLogoBufSrcPin() {
        return this.mLogoBufSrcPin;
    }

    public ImgTexSrcPin getLogoTexSrcPin() {
        return this.mLogoTexSrcPin;
    }

    public a getTimeBufSrcPin() {
        return this.mTimeBufSrcPin;
    }

    public ImgTexSrcPin getTimeTexSrcPin() {
        return this.mTimeTexSrcPin;
    }

    public void hideLogo() {
        synchronized (this.f45753p) {
            Bitmap bitmap = this.f45752o;
            if (bitmap != null) {
                bitmap.recycle();
                this.f45752o = null;
            }
        }
        if (!this.f45741d.isShutdown()) {
            this.f45741d.execute(new Runnable() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.3
                @Override // java.lang.Runnable
                public void run() {
                    WaterMarkCapture.this.mLogoBufSrcPin.a(null, false);
                    WaterMarkCapture.this.mLogoTexSrcPin.updateFrame(null, false);
                }
            });
        }
        if (this.f45747j != null) {
            this.f45747j = null;
        }
    }

    public void hideTime() {
        Timer timer = this.f45740c;
        if (timer != null) {
            timer.cancel();
            this.f45740c = null;
        }
        this.mTimeBufSrcPin.a(null, false);
        this.mTimeTexSrcPin.updateFrame(null, false);
    }

    public void release() {
        Timer timer = this.f45740c;
        if (timer != null) {
            timer.cancel();
            this.f45740c = null;
        }
        synchronized (this.f45753p) {
            Bitmap bitmap = this.f45752o;
            if (bitmap != null) {
                bitmap.recycle();
                this.f45752o = null;
            }
        }
        this.f45741d.shutdown();
        this.mLogoTexSrcPin.release();
        this.mLogoBufSrcPin.a();
        this.mTimeTexSrcPin.release();
        this.mTimeBufSrcPin.a();
        this.f45742e.removeListener(this.f45754q);
    }

    public void setPreviewSize(int i4, int i10) {
        Runnable runnable;
        this.f45743f = i4;
        this.f45744g = i10;
        if (!a() || (runnable = this.f45747j) == null) {
            return;
        }
        this.f45741d.execute(runnable);
        this.f45747j = null;
    }

    public void setTargetSize(int i4, int i10) {
        Runnable runnable;
        this.f45745h = i4;
        this.f45746i = i10;
        if (!a() || (runnable = this.f45747j) == null) {
            return;
        }
        this.f45741d.execute(runnable);
        this.f45747j = null;
    }

    public void showLogo(final Context context, final String str, final float f10, final float f11) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.1
            @Override // java.lang.Runnable
            public void run() {
                WaterMarkCapture.this.a(context, str, f10, f11);
            }
        };
        if (a()) {
            this.f45741d.execute(runnable);
        } else {
            this.f45747j = runnable;
        }
    }

    public void showTime(final int i4, final String str, final float f10, final float f11) {
        if (this.f45740c != null) {
            return;
        }
        this.f45748k = i4;
        this.f45749l = str;
        this.f45750m = f10;
        this.f45751n = f11;
        Timer timer = new Timer();
        this.f45740c = timer;
        timer.schedule(new TimerTask() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                WaterMarkCapture.this.a(i4, str, f10, f11);
            }
        }, 0L, 1000L);
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_WATERMARK);
    }

    private boolean a() {
        return (this.f45743f == 0 || this.f45744g == 0 || this.f45745h == 0 || this.f45746i == 0) ? false : true;
    }

    public void showLogo(Bitmap bitmap, final float f10, final float f11) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        synchronized (this.f45753p) {
            Bitmap bitmap2 = this.f45752o;
            if (bitmap2 != null && bitmap2 != bitmap) {
                bitmap2.recycle();
            }
            this.f45752o = bitmap;
        }
        Runnable runnable = new Runnable() { // from class: com.ksyun.media.streamer.capture.WaterMarkCapture.2
            @Override // java.lang.Runnable
            public void run() {
                WaterMarkCapture.this.a(f10, f11);
            }
        };
        if (a()) {
            this.f45741d.execute(runnable);
        } else {
            this.f45747j = runnable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, float f10, float f11) {
        int i4 = (((int) (this.f45743f * f10)) / 2) * 2;
        int i10 = (((int) (this.f45744g * f11)) / 2) * 2;
        if (i4 == 0 && i10 == 0) {
            i4 = 512;
            i10 = 512;
        }
        synchronized (this.f45753p) {
            Bitmap bitmap = this.f45752o;
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.f45752o = BitmapLoader.loadBitmap(context, str, i4, i10);
        }
        a(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f10, float f11) {
        synchronized (this.f45753p) {
            Bitmap bitmap = this.f45752o;
            if (bitmap != null) {
                a(bitmap, this.mLogoBufSrcPin, f10, f11);
                a(this.f45752o, this.mLogoTexSrcPin, false);
            }
        }
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_WATERMARK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i4, String str, float f10, float f11) {
        if (TextUtils.isEmpty(str)) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        Bitmap a10 = e.a(new SimpleDateFormat(str, Locale.getDefault()).format(new Date()), i4, 32.0f);
        a(a10, this.mTimeBufSrcPin, f10, f11);
        a(a10, this.mTimeTexSrcPin, true);
    }

    private void a(Bitmap bitmap, a aVar, float f10, float f11) {
        if (!aVar.isConnected() || bitmap == null) {
            return;
        }
        int i4 = (((int) (f10 * this.f45745h)) / 2) * 2;
        int i10 = (((int) (f11 * this.f45746i)) / 2) * 2;
        if (i4 == 0 && i10 == 0) {
            return;
        }
        if (i4 == 0) {
            i4 = (((bitmap.getWidth() * i10) / bitmap.getHeight()) / 2) * 2;
        } else if (i10 == 0) {
            i10 = (((bitmap.getHeight() * i4) / bitmap.getWidth()) / 2) * 2;
        }
        boolean z9 = false;
        if (i4 != bitmap.getWidth() || i10 != bitmap.getHeight()) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i4, i10, true);
            z9 = true;
        }
        aVar.a(bitmap, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap, ImgTexSrcPin imgTexSrcPin, boolean z9) {
        if (imgTexSrcPin.isConnected()) {
            imgTexSrcPin.updateFrame(bitmap, z9);
        } else if (z9) {
            bitmap.recycle();
        }
    }
}
