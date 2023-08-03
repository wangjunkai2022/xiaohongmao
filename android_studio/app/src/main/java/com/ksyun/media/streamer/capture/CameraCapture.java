package com.ksyun.media.streamer.capture;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.alipay.sdk.util.i;
import com.facebook.imagepipeline.common.e;
import com.google.android.exoplayer2.text.ttml.d;
import com.im.freechat.utils.h;
import com.ksyun.media.streamer.capture.camera.b;
import com.ksyun.media.streamer.capture.camera.c;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.kit.OnPreviewFrameListener;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import io.sentry.protocol.y;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.u0;

/* loaded from: classes3.dex */
public class CameraCapture implements SurfaceTexture.OnFrameAvailableListener {
    public static final int CAMERA_ERROR_EVICTED = -2007;
    public static final int CAMERA_ERROR_SERVER_DIED = -2006;
    public static final int CAMERA_ERROR_START_FAILED = -2002;
    public static final int CAMERA_ERROR_UNKNOWN = -2001;
    public static final int CAMERA_STATE_IDLE = 0;
    public static final int CAMERA_STATE_INITIALIZING = 1;
    public static final int CAMERA_STATE_PREVIEWING = 2;
    public static final int CAMERA_STATE_STOPPING = 3;
    public static final int DEFAULT_PREVIEW_FPS = 15;
    public static final int FACING_BACK = 0;
    public static final int FACING_FRONT = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f45649a = "CameraCapture";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f45650b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f45651c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final int f45652d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f45653e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f45654f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final int f45655g = 4;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45656h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45657i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45658j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f45659k = 4;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45660l = 11;
    private b.C0390b A;
    private Camera.Parameters B;
    private HandlerThread D;
    private Handler E;
    private ImgTexFormat H;
    private ImgBufFormat I;
    private byte[] J;
    private ByteBuffer K;
    private GLRender L;
    private float T;
    private long U;
    private long V;

    /* renamed from: m  reason: collision with root package name */
    private Context f45661m;

    /* renamed from: n  reason: collision with root package name */
    private OnCameraCaptureListener f45662n;

    /* renamed from: o  reason: collision with root package name */
    private OnPreviewFrameListener f45663o;

    /* renamed from: q  reason: collision with root package name */
    private b f45665q;

    /* renamed from: r  reason: collision with root package name */
    private float f45666r;

    /* renamed from: s  reason: collision with root package name */
    private b f45667s;

    /* renamed from: t  reason: collision with root package name */
    private float f45668t;

    /* renamed from: u  reason: collision with root package name */
    private int f45669u;

    /* renamed from: v  reason: collision with root package name */
    private String f45670v;

    /* renamed from: y  reason: collision with root package name */
    private int f45673y;

    /* renamed from: z  reason: collision with root package name */
    private SurfaceTexture f45674z;

    /* renamed from: p  reason: collision with root package name */
    private int f45664p = 0;

    /* renamed from: x  reason: collision with root package name */
    private final Object f45672x = new Object();
    private ConditionVariable F = new ConditionVariable();
    private volatile boolean G = false;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = true;
    private boolean R = true;
    private GLRender.OnReadyListener W = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.capture.CameraCapture.3
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            Log.d(CameraCapture.f45649a, "onGLContext ready");
            CameraCapture.this.f45673y = GlUtil.createOESTextureObject();
            synchronized (CameraCapture.this.f45672x) {
                if (CameraCapture.this.f45674z != null) {
                    CameraCapture.this.f45674z.release();
                }
                CameraCapture.this.f45674z = new SurfaceTexture(CameraCapture.this.f45673y);
                CameraCapture.this.f45674z.setOnFrameAvailableListener(CameraCapture.this);
                if (CameraCapture.this.A != null) {
                    CameraCapture.this.A.b(CameraCapture.this.f45674z);
                    CameraCapture.this.A.e();
                }
            }
            CameraCapture.this.M = false;
            CameraCapture.this.O = false;
        }
    };
    private GLRender.OnSizeChangedListener X = new GLRender.OnSizeChangedListener() { // from class: com.ksyun.media.streamer.capture.CameraCapture.4
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnSizeChangedListener
        public void onSizeChanged(int i4, int i10) {
            Log.d(CameraCapture.f45649a, "onSizeChanged " + i4 + y.b.f83919g + i10);
        }
    };
    private GLRender.OnDrawFrameListener Y = new GLRender.OnDrawFrameListener() { // from class: com.ksyun.media.streamer.capture.CameraCapture.5
        private void a() {
            int i4 = CameraCapture.this.f45669u;
            CameraCapture cameraCapture = CameraCapture.this;
            int a10 = c.a(i4, cameraCapture.a(cameraCapture.f45664p));
            int i10 = CameraCapture.this.f45667s.f45684a;
            int i11 = CameraCapture.this.f45667s.f45685b;
            if (a10 % e.f12205e != 0) {
                i10 = CameraCapture.this.f45667s.f45685b;
                i11 = CameraCapture.this.f45667s.f45684a;
            }
            CameraCapture.this.H = new ImgTexFormat(3, i10, i11);
            CameraCapture cameraCapture2 = CameraCapture.this;
            cameraCapture2.mImgTexSrcPin.onFormatChanged(cameraCapture2.H);
            CameraCapture.this.U = System.currentTimeMillis();
            CameraCapture.this.V = 0L;
            CameraCapture.this.T = 0.0f;
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnDrawFrameListener
        public void onDrawFrame() {
            long nanoTime = (System.nanoTime() / 1000) / 1000;
            try {
                CameraCapture.this.f45674z.updateTexImage();
                if (CameraCapture.this.f45671w.get() == 2 && CameraCapture.this.O) {
                    if (!CameraCapture.this.M) {
                        CameraCapture.this.M = true;
                        CameraCapture.this.S.a(CameraCapture.this.f45666r, nanoTime);
                        a();
                    }
                    if (CameraCapture.this.S.a(nanoTime) && CameraCapture.this.R) {
                        return;
                    }
                    boolean unused = CameraCapture.this.R;
                    float[] fArr = new float[16];
                    CameraCapture.this.f45674z.getTransformMatrix(fArr);
                    try {
                        CameraCapture.this.mImgTexSrcPin.onFrameAvailable(new ImgTexFrame(CameraCapture.this.H, CameraCapture.this.f45673y, fArr, nanoTime));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        Log.e(CameraCapture.f45649a, "Draw frame failed, ignore");
                    }
                    CameraCapture.t(CameraCapture.this);
                    long currentTimeMillis = System.currentTimeMillis();
                    long j4 = currentTimeMillis - CameraCapture.this.U;
                    if (j4 >= 1000) {
                        CameraCapture cameraCapture = CameraCapture.this;
                        cameraCapture.T = (((float) cameraCapture.V) * 1000.0f) / ((float) j4);
                        CameraCapture.this.V = 0L;
                        CameraCapture.this.U = currentTimeMillis;
                    }
                }
            } catch (Exception unused2) {
                Log.e(CameraCapture.f45649a, "updateTexImage failed, ignore");
            }
        }
    };
    private GLRender.OnReleasedListener Z = new GLRender.OnReleasedListener() { // from class: com.ksyun.media.streamer.capture.CameraCapture.6
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReleasedListener
        public void onReleased() {
            Log.d(CameraCapture.f45649a, "onGLContext released");
            CameraCapture.this.O = false;
            synchronized (CameraCapture.this.f45672x) {
                if (CameraCapture.this.A != null) {
                    CameraCapture.this.A.g();
                }
                if (CameraCapture.this.f45674z != null) {
                    CameraCapture.this.f45674z.setOnFrameAvailableListener(null);
                    CameraCapture.this.f45674z.release();
                    CameraCapture.this.f45674z = null;
                }
            }
        }
    };
    private Camera.ErrorCallback aa = new Camera.ErrorCallback() { // from class: com.ksyun.media.streamer.capture.CameraCapture.7
        @Override // android.hardware.Camera.ErrorCallback
        public void onError(int i4, Camera camera) {
            Log.e(CameraCapture.f45649a, "onCameraError: " + i4);
            CameraCapture.this.C.sendMessage(CameraCapture.this.C.obtainMessage(11, i4 != 2 ? i4 != 100 ? -2001 : -2006 : -2007, 0));
        }
    };
    private Camera.PreviewCallback ab = new Camera.PreviewCallback() { // from class: com.ksyun.media.streamer.capture.CameraCapture.8
        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            if (CameraCapture.this.mImgBufSrcPin.isConnected() && bArr != null) {
                long nanoTime = (System.nanoTime() / 1000) / 1000;
                if (CameraCapture.this.f45663o != null) {
                    CameraCapture.this.f45663o.onPreviewFrame(bArr, CameraCapture.this.f45667s.f45684a, CameraCapture.this.f45667s.f45685b, CameraCapture.this.P);
                }
                if (CameraCapture.this.K == null) {
                    CameraCapture.this.K = ByteBuffer.allocateDirect(bArr.length);
                }
                if (CameraCapture.this.K.capacity() < bArr.length) {
                    CameraCapture.this.K = null;
                    CameraCapture.this.K = ByteBuffer.allocateDirect(bArr.length);
                }
                CameraCapture.this.K.clear();
                CameraCapture.this.K.put(bArr);
                try {
                    if (!CameraCapture.this.N) {
                        int a10 = c.a(CameraCapture.this.f45669u, CameraCapture.this.f45664p);
                        if (CameraCapture.this.f45664p == 1) {
                            a10 = (360 - a10) % 360;
                        }
                        CameraCapture cameraCapture = CameraCapture.this;
                        cameraCapture.I = new ImgBufFormat(1, cameraCapture.f45667s.f45684a, CameraCapture.this.f45667s.f45685b, a10);
                        CameraCapture.this.N = true;
                        CameraCapture cameraCapture2 = CameraCapture.this;
                        cameraCapture2.mImgBufSrcPin.onFormatChanged(cameraCapture2.I);
                    }
                    CameraCapture.this.mImgBufSrcPin.onFrameAvailable(new ImgBufFrame(CameraCapture.this.I, CameraCapture.this.K, nanoTime));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (CameraCapture.this.A != null) {
                CameraCapture.this.A.a(bArr);
            }
        }
    };
    public final SrcPin<ImgTexFrame> mImgTexSrcPin = new SrcPin<>();
    public final SrcPin<ImgBufFrame> mImgBufSrcPin = new SrcPin<>();

    /* renamed from: w  reason: collision with root package name */
    private AtomicInteger f45671w = new AtomicInteger(0);
    private final Handler C = new a(this, Looper.getMainLooper());
    private com.ksyun.media.streamer.util.c S = new com.ksyun.media.streamer.util.c();

    /* loaded from: classes3.dex */
    public interface OnCameraCaptureListener {
        void onError(int i4);

        void onFacingChanged(int i4);

        void onStarted();
    }

    /* loaded from: classes3.dex */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<CameraCapture> f45683a;

        a(CameraCapture cameraCapture, Looper looper) {
            super(looper);
            this.f45683a = new WeakReference<>(cameraCapture);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CameraCapture cameraCapture = this.f45683a.get();
            if (cameraCapture == null) {
                return;
            }
            int i4 = message.what;
            if (i4 == 2) {
                Log.d(CameraCapture.f45649a, "Camera preview started");
                if (cameraCapture.f45662n != null) {
                    cameraCapture.f45662n.onStarted();
                }
            } else if (i4 == 3) {
                Log.d(CameraCapture.f45649a, "Camera closed");
            } else if (i4 == 4) {
                if (cameraCapture.f45662n != null) {
                    cameraCapture.f45662n.onFacingChanged(cameraCapture.f45664p);
                }
            } else if (i4 != 11) {
            } else {
                cameraCapture.stop();
                cameraCapture.f45671w.set(0);
                StatsLogReport.getInstance().reportError(message.arg1, 2);
                if (cameraCapture.f45662n != null) {
                    cameraCapture.f45662n.onError(message.arg1);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f45684a;

        /* renamed from: b  reason: collision with root package name */
        public final int f45685b;

        public b(int i4, int i10) {
            this.f45684a = i4;
            this.f45685b = i10;
        }

        public String toString() {
            return "Size{height=" + this.f45685b + ", width=" + this.f45684a + i.f6967d;
        }
    }

    public CameraCapture(Context context, GLRender gLRender) {
        this.f45661m = context;
        a();
        this.f45665q = new b(h.f43782b, 720);
        this.f45666r = 15.0f;
        this.L = gLRender;
        gLRender.addListener(this.W);
        this.L.addListener(this.X);
        this.L.addListener(this.Y);
        this.L.addListener(this.Z);
    }

    static /* synthetic */ long t(CameraCapture cameraCapture) {
        long j4 = cameraCapture.V;
        cameraCapture.V = 1 + j4;
        return j4;
    }

    public synchronized void autoFocus(Camera.AutoFocusCallback autoFocusCallback) {
        b.C0390b c0390b;
        if (this.f45671w.get() == 2 && (c0390b = this.A) != null) {
            c0390b.a(autoFocusCallback);
            return;
        }
        Log.e(f45649a, "Call autoFocus on invalid state!");
    }

    public synchronized void cancelAutoFocus() {
        b.C0390b c0390b;
        if (this.f45671w.get() == 2 && (c0390b = this.A) != null) {
            c0390b.h();
            return;
        }
        Log.e(f45649a, "Call cancelAutoFocus on invalid state!");
    }

    public int getCameraDisplayOrientation() {
        return c.a(this.f45669u, a(this.f45664p));
    }

    public int getCameraFacing() {
        return this.f45664p;
    }

    public synchronized Camera.Parameters getCameraParameters() {
        b.C0390b c0390b;
        if (this.f45671w.get() == 2 && (c0390b = this.A) != null) {
            return c0390b.i();
        }
        return null;
    }

    public float getCurrentPreviewFps() {
        return this.T;
    }

    public int getState() {
        return this.f45671w.get();
    }

    public float getTargetPreviewFps() {
        return this.f45668t;
    }

    public b getTargetPreviewSize() {
        return this.f45667s;
    }

    public boolean isRecording() {
        return this.P;
    }

    public synchronized boolean isTorchSupported() {
        Camera.Parameters parameters;
        if (this.f45671w.get() == 2 && (parameters = this.B) != null) {
            List<String> supportedFlashModes = parameters.getSupportedFlashModes();
            if (supportedFlashModes != null && supportedFlashModes.size() != 0) {
                return supportedFlashModes.contains("torch");
            }
            return false;
        }
        return false;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.O = true;
        this.L.requestRender();
    }

    public synchronized void release() {
        stop();
        this.J = null;
        this.mImgTexSrcPin.disconnect(true);
        this.mImgBufSrcPin.disconnect(true);
        this.L.removeListener(this.W);
        this.L.removeListener(this.X);
        this.L.removeListener(this.Y);
        this.L.removeListener(this.Z);
        synchronized (this.f45672x) {
            SurfaceTexture surfaceTexture = this.f45674z;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.f45674z = null;
            }
        }
        if (this.D != null) {
            this.E.sendEmptyMessage(4);
            try {
                this.D.join();
            } catch (InterruptedException unused) {
                Log.d(f45649a, "CameraSetUpThread Interrupted!");
            }
            this.D = null;
        }
        Handler handler = this.C;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public synchronized boolean setCameraParameters(Camera.Parameters parameters) {
        if (this.f45671w.get() != 2) {
            return false;
        }
        boolean b10 = this.A.b(parameters);
        this.B = this.A.i();
        return b10;
    }

    public synchronized void setCameraParametersAsync(Camera.Parameters parameters) {
        if (this.f45671w.get() != 2) {
            return;
        }
        this.A.c(parameters);
    }

    public void setEnableExposureWorkaround(boolean z9) {
        this.Q = z9;
    }

    public void setEnableFrameDrop(boolean z9) {
        this.R = z9;
    }

    public void setOnCameraCaptureListener(OnCameraCaptureListener onCameraCaptureListener) {
        this.f45662n = onCameraCaptureListener;
    }

    @Deprecated
    public void setOnPreviewFrameListener(OnPreviewFrameListener onPreviewFrameListener) {
        this.f45663o = onPreviewFrameListener;
    }

    public void setOrientation(int i4) {
        StatsLogReport.getInstance().setIsLandscape(i4 % e.f12205e != 0);
        if (this.f45669u == i4) {
            return;
        }
        this.f45669u = i4;
        if (this.f45671w.get() == 2) {
            f();
            this.M = false;
            this.N = false;
        }
    }

    public void setPreviewFps(float f10) {
        this.f45666r = f10;
    }

    public void setPreviewSize(int i4, int i10) {
        if (i4 > i10) {
            this.f45665q = new b(i4, i10);
        } else {
            this.f45665q = new b(i10, i4);
        }
    }

    public synchronized void start(int i4) {
        Log.d(f45649a, d.f25725o0);
        this.f45664p = i4;
        this.E.removeCallbacksAndMessages(null);
        this.E.sendEmptyMessage(1);
    }

    public void startRecord() {
        this.P = true;
    }

    public synchronized void stop() {
        Log.d(f45649a, "stop");
        this.F.close();
        this.G = true;
        this.E.removeCallbacksAndMessages(null);
        this.E.sendEmptyMessage(2);
        this.F.block();
        this.G = false;
        Log.d(f45649a, "stopped");
    }

    public void stopRecord() {
        this.P = false;
    }

    public synchronized boolean switchCamera() {
        if (this.f45671w.get() != 2) {
            Log.e(f45649a, "Call start on invalid state");
            return false;
        } else if (this.f45664p != 0 || a(1) >= 0) {
            this.E.removeMessages(3);
            this.E.sendEmptyMessage(3);
            return true;
        } else {
            return false;
        }
    }

    public synchronized boolean toggleTorch(boolean z9) {
        Camera.Parameters parameters;
        if (this.f45671w.get() == 2 && (parameters = this.B) != null) {
            List<String> supportedFlashModes = parameters.getSupportedFlashModes();
            if (supportedFlashModes != null && supportedFlashModes.size() != 0) {
                if (z9 && supportedFlashModes.contains("torch")) {
                    this.B.setFlashMode("torch");
                } else if (z9 || !supportedFlashModes.contains(u0.f86832e)) {
                    return false;
                } else {
                    this.B.setFlashMode(u0.f86832e);
                }
                if (this.A.b(this.B)) {
                    return true;
                }
                Log.e(f45649a, "Toggle flash failed!");
                this.B = this.A.i();
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:5|(1:7)|8|(2:12|(13:14|15|16|17|(1:19)|21|22|(1:24)|26|27|(1:29)|31|32))|36|(1:38)|15|16|17|(0)|21|22|(0)|26|27|(0)|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c9, code lost:
        android.util.Log.e(com.ksyun.media.streamer.capture.CameraCapture.f45649a, "setFocuseMode failed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e7, code lost:
        android.util.Log.e(com.ksyun.media.streamer.capture.CameraCapture.f45649a, "setVideoStabilization failed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x010a, code lost:
        android.util.Log.e(com.ksyun.media.streamer.capture.CameraCapture.f45649a, "setAntibanding failed");
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bd A[Catch: Exception -> 0x00c9, TRY_LEAVE, TryCatch #1 {Exception -> 0x00c9, blocks: (B:19:0x00ab, B:21:0x00bd), top: B:38:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00db A[Catch: Exception -> 0x00e7, TRY_LEAVE, TryCatch #2 {Exception -> 0x00e7, blocks: (B:24:0x00cc, B:26:0x00db), top: B:40:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f9 A[Catch: Exception -> 0x010a, TRY_LEAVE, TryCatch #0 {Exception -> 0x010a, blocks: (B:29:0x00ea, B:31:0x00f9), top: B:36:0x00ea }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d() {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.capture.CameraCapture.d():void");
    }

    private void e() {
        f();
        this.A.a(this.ab);
        b bVar = this.f45667s;
        int i4 = ((bVar.f45684a * bVar.f45685b) * 3) / 2;
        byte[] bArr = this.J;
        if (bArr == null || bArr.length != i4) {
            this.J = new byte[i4];
        }
        this.A.a(this.J);
        SurfaceTexture surfaceTexture = this.f45674z;
        if (surfaceTexture != null) {
            this.A.b(surfaceTexture);
            this.A.f();
        }
        if (TextUtils.isEmpty(this.f45670v) || !this.f45670v.equals("auto")) {
            return;
        }
        this.A.a(new Camera.AutoFocusCallback() { // from class: com.ksyun.media.streamer.capture.CameraCapture.2
            @Override // android.hardware.Camera.AutoFocusCallback
            public void onAutoFocus(boolean z9, Camera camera) {
                CameraCapture.this.A.h();
            }
        });
    }

    private void f() {
        this.A.a(c.a(this.f45669u, a(this.f45664p)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!TextUtils.isEmpty(this.f45670v) && this.f45670v.equals("auto")) {
            this.A.h();
        }
        synchronized (this.f45672x) {
            this.A.g();
            this.A.a((Camera.PreviewCallback) null);
            this.A.a((Camera.ErrorCallback) null);
            com.ksyun.media.streamer.capture.camera.a.a().b();
            this.A = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b() {
        int i4 = this.f45664p;
        if (i4 == 1 && a(i4) < 0) {
            this.f45664p = 0;
        }
        int a10 = a(this.f45664p);
        try {
            synchronized (this.f45672x) {
                b.C0390b a11 = c.a(this.f45661m, a10);
                this.A = a11;
                a11.a(this.aa);
                this.B = this.A.i();
                d();
                this.C.sendEmptyMessage(1);
                e();
            }
            this.M = false;
            this.N = false;
            return 0;
        } catch (Exception unused) {
            Log.e(f45649a, "[setupCamera]-------setup failed");
            return -2002;
        }
    }

    private void a() {
        HandlerThread handlerThread = new HandlerThread("camera_setup_thread", 5);
        this.D = handlerThread;
        handlerThread.start();
        this.E = new Handler(this.D.getLooper()) { // from class: com.ksyun.media.streamer.capture.CameraCapture.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 1) {
                    if (CameraCapture.this.f45671w.get() == 0) {
                        CameraCapture.this.f45671w.set(1);
                        int b10 = CameraCapture.this.b();
                        if (b10 == 0) {
                            CameraCapture.this.f45671w.set(2);
                            CameraCapture.this.C.sendEmptyMessage(2);
                            CameraCapture.this.C.sendEmptyMessage(4);
                            return;
                        }
                        CameraCapture.this.f45671w.set(0);
                        CameraCapture.this.C.sendMessage(CameraCapture.this.C.obtainMessage(11, b10, 0));
                    }
                } else if (i4 == 2) {
                    if (CameraCapture.this.f45671w.get() == 2) {
                        CameraCapture.this.f45671w.set(3);
                        CameraCapture.this.c();
                        CameraCapture.this.f45671w.set(0);
                        CameraCapture.this.C.sendEmptyMessage(3);
                    }
                    CameraCapture.this.F.open();
                } else if (i4 != 3) {
                    if (i4 != 4) {
                        return;
                    }
                    CameraCapture.this.D.quit();
                } else if (CameraCapture.this.f45671w.get() == 2) {
                    CameraCapture.this.f45671w.set(1);
                    CameraCapture.this.c();
                    if (CameraCapture.this.G) {
                        CameraCapture.this.f45671w.set(0);
                        CameraCapture.this.C.sendEmptyMessage(3);
                        return;
                    }
                    CameraCapture cameraCapture = CameraCapture.this;
                    cameraCapture.f45664p = cameraCapture.f45664p != 0 ? 0 : 1;
                    int b11 = CameraCapture.this.b();
                    if (b11 == 0) {
                        CameraCapture.this.f45671w.set(2);
                        CameraCapture.this.C.sendEmptyMessage(4);
                        return;
                    }
                    CameraCapture.this.f45671w.set(0);
                    CameraCapture.this.C.sendMessage(CameraCapture.this.C.obtainMessage(11, b11, 0));
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i4) {
        if (i4 == 0) {
            return com.ksyun.media.streamer.capture.camera.a.a().c();
        }
        return com.ksyun.media.streamer.capture.camera.a.a().d();
    }
}
