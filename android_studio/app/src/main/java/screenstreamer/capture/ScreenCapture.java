package screenstreamer.capture;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.SurfaceTexture;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import com.im.freechat.utils.h;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class ScreenCapture implements SurfaceTexture.OnFrameAvailableListener {
    public static final int A = 1001;
    public static ScreenCaptureAssistantActivity B = null;
    public static final int C = 0;
    public static final int D = 1;
    public static final int E = 2;
    public static final int F = 3;
    public static final int G = 4;
    public static final int H = -1;
    public static final int I = -2;
    public static final int J = 4;
    public static final int K = 5;
    private static final int L = 1;
    private static final int M = 2;
    private static final int N = 3;
    private static final int O = 4;
    private static final int P = 5;
    private static final int Q = 1;
    private static final boolean R = true;

    /* renamed from: y  reason: collision with root package name */
    private static final String f93292y = ScreenCapture.class.getSimpleName();

    /* renamed from: z  reason: collision with root package name */
    public static final String f93293z = "ScreenCapture.OnAssistantActivityCreated";

    /* renamed from: a  reason: collision with root package name */
    private Context f93294a;

    /* renamed from: b  reason: collision with root package name */
    private e f93295b;

    /* renamed from: c  reason: collision with root package name */
    public MediaProjectionManager f93296c;

    /* renamed from: d  reason: collision with root package name */
    private MediaProjection f93297d;

    /* renamed from: e  reason: collision with root package name */
    private VirtualDisplay f93298e;

    /* renamed from: i  reason: collision with root package name */
    private AtomicInteger f93302i;

    /* renamed from: j  reason: collision with root package name */
    private GLRender f93303j;

    /* renamed from: k  reason: collision with root package name */
    private int f93304k;

    /* renamed from: l  reason: collision with root package name */
    private Surface f93305l;

    /* renamed from: m  reason: collision with root package name */
    private SurfaceTexture f93306m;

    /* renamed from: o  reason: collision with root package name */
    private ImgTexFormat f93308o;

    /* renamed from: p  reason: collision with root package name */
    private Handler f93309p;

    /* renamed from: q  reason: collision with root package name */
    private HandlerThread f93310q;

    /* renamed from: r  reason: collision with root package name */
    private Handler f93311r;

    /* renamed from: s  reason: collision with root package name */
    private Runnable f93312s;

    /* renamed from: t  reason: collision with root package name */
    private long f93313t;

    /* renamed from: u  reason: collision with root package name */
    private long f93314u;

    /* renamed from: v  reason: collision with root package name */
    public SrcPin<ImgTexFrame> f93315v;

    /* renamed from: w  reason: collision with root package name */
    private GLRender.GLRenderListener f93316w;

    /* renamed from: x  reason: collision with root package name */
    public Intent f93317x;

    /* renamed from: f  reason: collision with root package name */
    private final BroadcastReceiver f93299f = new screenstreamer.capture.a(this);

    /* renamed from: g  reason: collision with root package name */
    private int f93300g = h.f43782b;

    /* renamed from: h  reason: collision with root package name */
    private int f93301h = 720;

    /* renamed from: n  reason: collision with root package name */
    private boolean f93307n = false;

    /* loaded from: classes5.dex */
    public static class ScreenCaptureAssistantActivity extends Activity {

        /* renamed from: a  reason: collision with root package name */
        public ScreenCapture f93318a;

        @Override // android.app.Activity
        public void onActivityResult(int i4, int i10, Intent intent) {
            ScreenCapture screenCapture = this.f93318a;
            if (screenCapture != null && screenCapture.f93302i.get() != 0) {
                Message message = new Message();
                message.what = 2;
                message.arg1 = i4;
                message.arg2 = i10;
                ScreenCapture screenCapture2 = this.f93318a;
                screenCapture2.f93317x = intent;
                screenCapture2.f93311r.removeMessages(2);
                this.f93318a.f93311r.sendMessage(message);
            }
            finish();
            this.f93318a = null;
            ScreenCapture.B = null;
        }

        @Override // android.app.Activity
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            requestWindowFeature(1);
            ScreenCapture.B = this;
            sendBroadcast(new Intent(ScreenCapture.f93293z));
        }
    }

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ScreenCapture.this.f93302i.get() == 4) {
                ScreenCapture.this.f93303j.requestRender();
                ScreenCapture.this.f93309p.postDelayed(ScreenCapture.this.f93312s, 100L);
            }
        }
    }

    /* loaded from: classes5.dex */
    class b implements GLRender.GLRenderListener {
        b() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onDrawFrame() {
            long nanoTime = (System.nanoTime() / 1000) / 1000;
            try {
                ScreenCapture.this.f93306m.updateTexImage();
                if (!ScreenCapture.this.f93307n) {
                    ScreenCapture.this.f93307n = true;
                    ScreenCapture.this.K();
                }
                float[] fArr = new float[16];
                ScreenCapture.this.f93306m.getTransformMatrix(fArr);
                try {
                    ScreenCapture.this.f93315v.onFrameAvailable(new ImgTexFrame(ScreenCapture.this.f93308o, ScreenCapture.this.f93304k, fArr, nanoTime));
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Log.e(ScreenCapture.f93292y, "Draw frame failed, ignore");
                }
                ScreenCapture.l(ScreenCapture.this);
                long currentTimeMillis = System.currentTimeMillis();
                long j4 = currentTimeMillis - ScreenCapture.this.f93313t;
                if (j4 >= 5000) {
                    float f10 = (((float) ScreenCapture.this.f93314u) * 1000.0f) / ((float) j4);
                    String str = ScreenCapture.f93292y;
                    Log.d(str, "screen fps: " + String.format(Locale.getDefault(), "%.2f", Float.valueOf(f10)));
                    ScreenCapture.this.f93314u = 0L;
                    ScreenCapture.this.f93313t = currentTimeMillis;
                }
            } catch (Exception unused) {
                Log.e(ScreenCapture.f93292y, "updateTexImage failed, ignore");
            }
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onReady() {
            Log.d(ScreenCapture.f93292y, "onReady");
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onReleased() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onSizeChanged(int i4, int i10) {
            String str = ScreenCapture.f93292y;
            Log.d(str, "onSizeChanged : " + i4 + "*" + i10);
            ScreenCapture.this.f93300g = i4;
            ScreenCapture.this.f93301h = i10;
            ScreenCapture.this.f93307n = false;
            if (ScreenCapture.this.f93298e != null) {
                ScreenCapture.this.f93298e.release();
                ScreenCapture.this.f93298e = null;
            }
            ScreenCapture.this.f93304k = GlUtil.createOESTextureObject();
            if (ScreenCapture.this.f93306m != null) {
                ScreenCapture.this.f93306m.release();
            }
            if (ScreenCapture.this.f93305l != null) {
                ScreenCapture.this.f93305l.release();
            }
            ScreenCapture.this.f93306m = new SurfaceTexture(ScreenCapture.this.f93304k);
            ScreenCapture.this.f93306m.setDefaultBufferSize(ScreenCapture.this.f93300g, ScreenCapture.this.f93301h);
            ScreenCapture.this.f93305l = new Surface(ScreenCapture.this.f93306m);
            ScreenCapture.this.f93306m.setOnFrameAvailableListener(ScreenCapture.this);
            if (ScreenCapture.this.f93302i.get() < 2 || ScreenCapture.this.f93298e != null) {
                return;
            }
            ScreenCapture.this.f93311r.removeMessages(3);
            ScreenCapture.this.f93311r.sendEmptyMessage(3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 1) {
                ScreenCapture.this.H();
            } else if (i4 == 2) {
                ScreenCapture screenCapture = ScreenCapture.this;
                screenCapture.I(message.arg1, message.arg2, screenCapture.f93317x);
            } else if (i4 == 3) {
                ScreenCapture.this.P();
            } else if (i4 == 4) {
                ScreenCapture.this.G(message.arg1);
            } else if (i4 != 5) {
            } else {
                ScreenCapture.this.f93310q.quit();
            }
        }
    }

    /* loaded from: classes5.dex */
    private static class d extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<ScreenCapture> f93322a;

        public d(ScreenCapture screenCapture) {
            this.f93322a = new WeakReference<>(screenCapture);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ScreenCapture screenCapture = this.f93322a.get();
            if (screenCapture == null) {
                return;
            }
            int i4 = message.what;
            if (i4 != 4) {
                if (i4 == 5 && screenCapture.f93295b != null) {
                    screenCapture.f93295b.onError(message.arg1);
                }
            } else if (screenCapture.f93295b != null) {
                screenCapture.f93295b.onStarted();
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface e {
        void onError(int i4);

        void onStarted();
    }

    public ScreenCapture(Context context, GLRender gLRender) {
        b bVar = new b();
        this.f93316w = bVar;
        if (context != null && gLRender != null) {
            this.f93294a = context;
            this.f93303j = gLRender;
            gLRender.addListener(bVar);
            this.f93315v = new SrcPin<>();
            this.f93309p = new d(this);
            this.f93302i = new AtomicInteger(0);
            this.f93312s = new a();
            J();
            return;
        }
        throw new IllegalArgumentException("the context or render must be not null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(int i4) {
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            Log.d(f93292y, "doRelease");
        }
        this.f93302i.set(0);
        VirtualDisplay virtualDisplay = this.f93298e;
        if (virtualDisplay != null) {
            virtualDisplay.release();
        }
        MediaProjection mediaProjection = this.f93297d;
        if (mediaProjection != null) {
            mediaProjection.stop();
        }
        this.f93298e = null;
        this.f93297d = null;
        if (i4 == 1) {
            this.f93311r.sendEmptyMessage(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"WrongConstant"})
    public void H() {
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            Log.d(f93292y, "doScreenSetup");
        }
        if (this.f93296c == null) {
            this.f93296c = (MediaProjectionManager) this.f93294a.getSystemService("media_projection");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f93293z);
        this.f93294a.registerReceiver(this.f93299f, intentFilter);
        Intent intent = new Intent(this.f93294a, ScreenCaptureAssistantActivity.class);
        intent.addFlags(268435456);
        this.f93294a.startActivity(intent);
    }

    private void J() {
        HandlerThread handlerThread = new HandlerThread("screen_setup_thread", 5);
        this.f93310q = handlerThread;
        handlerThread.start();
        this.f93311r = new c(this.f93310q.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        ImgTexFormat imgTexFormat = new ImgTexFormat(3, this.f93300g, this.f93301h);
        this.f93308o = imgTexFormat;
        this.f93315v.onFormatChanged(imgTexFormat);
    }

    private void L() {
        try {
            try {
                this.f93310q.join();
            } catch (InterruptedException unused) {
                Log.d(f93292y, "ScreenSetUpThread Interrupted!");
            }
            Handler handler = this.f93309p;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.f93309p = null;
            }
        } finally {
            this.f93310q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public void P() {
        this.f93298e = this.f93297d.createVirtualDisplay("ScreenCapture", this.f93300g, this.f93301h, 1, 1, this.f93305l, null, null);
        this.f93302i.set(4);
        this.f93309p.sendMessage(this.f93309p.obtainMessage(4, 0, 0));
    }

    static /* synthetic */ long l(ScreenCapture screenCapture) {
        long j4 = screenCapture.f93314u;
        screenCapture.f93314u = 1 + j4;
        return j4;
    }

    @RequiresApi(21)
    public final void I(int i4, int i10, Intent intent) {
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            Log.d(f93292y, "initProjection");
        }
        this.f93294a.unregisterReceiver(this.f93299f);
        if (i4 != 1001) {
            if (StatsLogReport.getInstance().getEnableDebugLog()) {
                String str = f93292y;
                Log.d(str, "Unknown request code: " + i4);
            }
        } else if (i10 != -1) {
            String str2 = f93292y;
            Log.e(str2, "Screen Cast Permission Denied, resultCode:" + i10);
            this.f93309p.sendMessage(this.f93309p.obtainMessage(5, -2, 0));
            Q();
        } else {
            this.f93297d = this.f93296c.getMediaProjection(i10, intent);
            if (this.f93305l != null) {
                P();
            } else {
                this.f93302i.set(2);
            }
        }
    }

    @RequiresApi(21)
    public void M() {
        Handler handler = this.f93309p;
        if (handler != null) {
            handler.removeCallbacks(this.f93312s);
        }
        if (this.f93302i.get() == 0) {
            this.f93311r.removeMessages(5);
            this.f93311r.sendEmptyMessage(5);
            L();
            return;
        }
        Message message = new Message();
        message.what = 4;
        message.arg1 = 1;
        this.f93302i.set(3);
        this.f93311r.removeMessages(4);
        this.f93311r.sendMessage(message);
        L();
    }

    public void N(e eVar) {
        this.f93295b = eVar;
    }

    public boolean O() {
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            Log.d(f93292y, com.google.android.exoplayer2.text.ttml.d.f25725o0);
        }
        if (this.f93302i.get() != 0) {
            return false;
        }
        if (B != null) {
            Log.e(f93292y, "start failed you may best confim the user permission");
            return false;
        }
        this.f93302i.set(1);
        this.f93311r.removeMessages(1);
        this.f93311r.sendEmptyMessage(1);
        return true;
    }

    public void Q() {
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            Log.d(f93292y, "stop");
        }
        if (this.f93302i.get() == 0) {
            return;
        }
        this.f93309p.removeCallbacks(this.f93312s);
        Message message = new Message();
        message.what = 4;
        message.arg1 = -2;
        this.f93302i.set(3);
        this.f93311r.removeMessages(4);
        this.f93311r.sendMessage(message);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.f93302i.get() != 4) {
            return;
        }
        this.f93303j.requestRender();
        Handler handler = this.f93309p;
        if (handler != null) {
            handler.removeCallbacks(this.f93312s);
            this.f93309p.postDelayed(this.f93312s, 100L);
        }
    }
}
