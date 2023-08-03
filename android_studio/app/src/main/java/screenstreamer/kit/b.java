package screenstreamer.kit;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.WindowManager;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.ksyun.media.streamer.capture.AudioCapture;
import com.ksyun.media.streamer.capture.WaterMarkCapture;
import com.ksyun.media.streamer.encoder.AVCodecAudioEncoder;
import com.ksyun.media.streamer.encoder.AudioEncodeFormat;
import com.ksyun.media.streamer.encoder.AudioEncoderMgt;
import com.ksyun.media.streamer.encoder.Encoder;
import com.ksyun.media.streamer.encoder.MediaCodecAudioEncoder;
import com.ksyun.media.streamer.encoder.VideoEncodeFormat;
import com.ksyun.media.streamer.encoder.VideoEncoderMgt;
import com.ksyun.media.streamer.filter.audio.AudioFilterMgt;
import com.ksyun.media.streamer.filter.audio.AudioMixer;
import com.ksyun.media.streamer.filter.audio.AudioResampleFilter;
import com.ksyun.media.streamer.filter.imgtex.ImgTexMixer;
import com.ksyun.media.streamer.filter.imgtex.ImgTexScaleFilter;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.kit.StreamerConstants;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.publisher.FilePublisher;
import com.ksyun.media.streamer.publisher.Publisher;
import com.ksyun.media.streamer.publisher.PublisherMgt;
import com.ksyun.media.streamer.publisher.RtmpPublisher;
import com.ksyun.media.streamer.util.gles.GLRender;
import io.sentry.protocol.y;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import screenstreamer.capture.ScreenCapture;

/* compiled from: KSYScreenStreamer.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: d0  reason: collision with root package name */
    private static final String f93385d0 = "KSYScreenStreamer";

    /* renamed from: e0  reason: collision with root package name */
    public static final String f93386e0 = "1.0.4.0";

    /* renamed from: f0  reason: collision with root package name */
    public static final int f93387f0 = -2007;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f93388g0 = -2008;
    protected AtomicInteger J;
    private i K;
    private h L;
    private GLRender M;
    private WaterMarkCapture N;
    private ImgTexScaleFilter O;
    private ImgTexMixer P;
    private ScreenCapture Q;
    private AudioCapture R;
    private VideoEncoderMgt S;
    private AudioEncoderMgt T;
    private RtmpPublisher U;
    private AudioResampleFilter V;
    private AudioFilterMgt W;
    private AudioMixer X;
    private FilePublisher Y;
    private PublisherMgt Z;

    /* renamed from: a  reason: collision with root package name */
    private Context f93389a;

    /* renamed from: a0  reason: collision with root package name */
    private Handler f93390a0;

    /* renamed from: c0  reason: collision with root package name */
    private Map<Integer, screenstreamer.kit.a> f93394c0;

    /* renamed from: g  reason: collision with root package name */
    private String f93398g;

    /* renamed from: h  reason: collision with root package name */
    protected String f93399h;

    /* renamed from: i  reason: collision with root package name */
    private int f93400i;

    /* renamed from: j  reason: collision with root package name */
    private int f93401j;

    /* renamed from: b  reason: collision with root package name */
    protected int f93391b = 1;

    /* renamed from: c  reason: collision with root package name */
    protected int f93393c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f93395d = 1;

    /* renamed from: e  reason: collision with root package name */
    protected int f93396e = 2;

    /* renamed from: f  reason: collision with root package name */
    protected int f93397f = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f93402k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f93403l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f93404m = 0;

    /* renamed from: n  reason: collision with root package name */
    private float f93405n = 15.0f;

    /* renamed from: o  reason: collision with root package name */
    private float f93406o = 3.0f;

    /* renamed from: p  reason: collision with root package name */
    private int f93407p = 1;

    /* renamed from: q  reason: collision with root package name */
    private int f93408q = 1;

    /* renamed from: r  reason: collision with root package name */
    private int f93409r = 3;

    /* renamed from: s  reason: collision with root package name */
    private int f93410s = StreamerConstants.DEFAULT_MAX_VIDEO_BITRATE;

    /* renamed from: t  reason: collision with root package name */
    private int f93411t = StreamerConstants.DEFAULT_INIT_VIDEO_BITRATE;

    /* renamed from: u  reason: collision with root package name */
    private int f93412u = StreamerConstants.DEFAILT_MIN_VIDEO_BITRATE;

    /* renamed from: v  reason: collision with root package name */
    private boolean f93413v = true;

    /* renamed from: w  reason: collision with root package name */
    protected int f93414w = 0;

    /* renamed from: x  reason: collision with root package name */
    private int f93415x = 48000;

    /* renamed from: y  reason: collision with root package name */
    private int f93416y = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;

    /* renamed from: z  reason: collision with root package name */
    private int f93417z = 1;
    protected int A = 4;
    private boolean B = true;
    private boolean C = false;
    private boolean D = false;
    private boolean E = false;
    private boolean F = false;
    private boolean G = false;
    private boolean H = false;
    private int I = PathInterpolatorCompat.MAX_NUM_POINTS;

    /* renamed from: b0  reason: collision with root package name */
    private final Object f93392b0 = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class a implements GLRender.GLRenderListener {
        a() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onDrawFrame() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onReady() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onReleased() {
        }

        @Override // com.ksyun.media.streamer.util.gles.GLRender.GLRenderListener
        public void onSizeChanged(int i4, int i10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* renamed from: screenstreamer.kit.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0838b implements AudioCapture.OnAudioCaptureListener {
        C0838b() {
        }

        @Override // com.ksyun.media.streamer.capture.AudioCapture.OnAudioCaptureListener
        public void onError(int i4) {
            Log.e(b.f93385d0, "AudioCapture error: " + i4);
            int i10 = i4 != -2003 ? -2005 : -2003;
            if (b.this.L != null) {
                b.this.L.onError(i10, 0, 0);
            }
        }

        @Override // com.ksyun.media.streamer.capture.AudioCapture.OnAudioCaptureListener
        public void onStatusChanged(int i4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class c implements ScreenCapture.e {
        c() {
        }

        @Override // screenstreamer.capture.ScreenCapture.e
        public void onError(int i4) {
            if (i4 != 0) {
                b.this.g1();
            }
            int i10 = i4 != -2 ? i4 != -1 ? 0 : -2007 : b.f93388g0;
            if (b.this.L != null) {
                b.this.L.onError(i10, 0, 0);
            }
        }

        @Override // screenstreamer.capture.ScreenCapture.e
        public void onStarted() {
            Log.d(b.f93385d0, "Screen Record Started");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class d implements Encoder.EncoderListener {
        d() {
        }

        @Override // com.ksyun.media.streamer.encoder.Encoder.EncoderListener
        public void onError(Encoder encoder, int i4) {
            if (i4 != 0) {
                b.this.g1();
            }
            boolean z9 = true;
            z9 = ((encoder instanceof MediaCodecAudioEncoder) || (encoder instanceof AVCodecAudioEncoder)) ? false : false;
            int i10 = i4 != -1002 ? z9 ? StreamerConstants.KSY_STREAMER_VIDEO_ENCODER_ERROR_UNKNOWN : StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNKNOWN : z9 ? -1004 : StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNSUPPORTED;
            if (b.this.L != null) {
                b.this.L.onError(i10, 0, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class e implements Publisher.PubListener {
        e() {
        }

        @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
        public void onError(int i4, long j4) {
            Log.e(b.f93385d0, "RtmpPub err=" + i4);
            if (i4 != 0) {
                b.this.g1();
            }
            if (b.this.L != null) {
                int i10 = -1010;
                if (i4 == -3020) {
                    i10 = -1007;
                } else if (i4 != -2004) {
                    switch (i4) {
                        case -3011:
                            i10 = StreamerConstants.KSY_STREAMER_ERROR_CONNECT_FAILED;
                            break;
                        case -3010:
                            i10 = StreamerConstants.KSY_STREAMER_ERROR_DNS_PARSE_FAILED;
                            break;
                    }
                } else {
                    i10 = -2004;
                }
                b.this.L.onError(i10, (int) j4, 0);
                b.this.q();
            }
        }

        @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
        public void onInfo(int i4, long j4) {
            if (i4 == 1) {
                if (!b.this.T.getEncoder().isEncoding()) {
                    b.this.T.getEncoder().start();
                } else {
                    b.this.U.setAudioExtra(b.this.T.getEncoder().getExtra());
                }
                if (b.this.K != null) {
                    b.this.K.onInfo(0, 0, 0);
                }
            } else if (i4 != 2) {
                switch (i4) {
                    case 100:
                        Log.i(b.f93385d0, "packet send slow, delayed " + j4 + "ms");
                        if (b.this.K != null) {
                            b.this.K.onInfo(StreamerConstants.KSY_STREAMER_FRAME_SEND_SLOW, (int) j4, 0);
                            return;
                        }
                        return;
                    case 101:
                        if (b.this.f93413v) {
                            long min = Math.min(j4 - b.this.f93415x, b.this.f93410s);
                            Log.d(b.f93385d0, "Raise video bitrate to " + min);
                            int i10 = (int) min;
                            b.this.S.getEncoder().adjustBitrate(i10);
                            if (b.this.K != null) {
                                b.this.K.onInfo(StreamerConstants.KSY_STREAMER_EST_BW_RAISE, i10, 0);
                                return;
                            }
                            return;
                        }
                        return;
                    case 102:
                        if (b.this.f93413v) {
                            long max = Math.max(j4 - b.this.f93415x, b.this.f93412u);
                            Log.d(b.f93385d0, "Drop video bitrate to " + max);
                            int i11 = (int) max;
                            b.this.S.getEncoder().adjustBitrate(i11);
                            if (b.this.K != null) {
                                b.this.K.onInfo(StreamerConstants.KSY_STREAMER_EST_BW_DROP, i11, 0);
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } else if (!b.this.S.getEncoder().isEncoding()) {
                b.this.S.start();
            } else {
                b.this.U.setVideoExtra(b.this.S.getEncoder().getExtra());
                b.this.S.getEncoder().forceKeyFrame();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class f implements Publisher.PubListener {
        f() {
        }

        @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
        public void onError(int i4, long j4) {
            int i10;
            Log.e(b.f93385d0, "FilePublisher err=" + i4);
            if (i4 != 0) {
                b.this.f1();
            }
            if (b.this.L != null) {
                switch (i4) {
                    case -4004:
                        i10 = -4004;
                        break;
                    case -4003:
                        i10 = -4003;
                        break;
                    case -4002:
                        i10 = -4002;
                        break;
                    case -4001:
                        i10 = -4001;
                        break;
                    default:
                        i10 = -4000;
                        break;
                }
                b.this.L.onError(i10, (int) j4, 0);
            }
        }

        @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
        public void onInfo(int i4, long j4) {
            Log.d(b.f93385d0, "file publisher info:" + i4);
            if (i4 == 1) {
                if (!b.this.T.getEncoder().isEncoding()) {
                    b.this.T.getEncoder().start();
                } else {
                    b.this.Y.setAudioExtra(b.this.T.getEncoder().getExtra());
                }
                if (b.this.K != null) {
                    b.this.K.onInfo(1, 0, 0);
                }
            } else if (i4 == 2) {
                if (!b.this.S.getEncoder().isEncoding()) {
                    b.this.S.start();
                    return;
                }
                b.this.Y.setVideoExtra(b.this.S.getEncoder().getExtra());
                b.this.S.getEncoder().forceKeyFrame();
            } else if (i4 != 4) {
            } else {
                b.this.Z.removePublisher(b.this.Y);
                b.this.D = false;
                if (b.this.K != null) {
                    b.this.K.onInfo(2, 0, 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b.this.f93392b0) {
                if (b.this.f93390a0 != null) {
                    b.this.c1();
                }
            }
        }
    }

    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public interface h {
        void onError(int i4, int i10, int i11);
    }

    /* compiled from: KSYScreenStreamer.java */
    /* loaded from: classes5.dex */
    public interface i {
        void onInfo(int i4, int i10, int i11);
    }

    public b(Context context) {
        if (context != null) {
            this.f93389a = context.getApplicationContext();
            this.f93390a0 = new Handler(Looper.getMainLooper());
            StatsLogReport.getInstance().setContext(this.f93389a);
            k0();
            return;
        }
        throw new IllegalArgumentException("Context cannot be null!");
    }

    private void I0() {
        r();
        this.O.setTargetSize(this.f93403l, this.f93404m);
        this.P.setTargetSize(this.f93403l, this.f93404m);
        this.N.setTargetSize(this.f93403l, this.f93404m);
        this.N.setPreviewSize(this.f93403l, this.f93404m);
        VideoEncodeFormat videoEncodeFormat = new VideoEncodeFormat(this.f93407p, this.f93403l, this.f93404m, this.f93411t);
        if (this.f93405n == 0.0f) {
            this.f93405n = 15.0f;
        }
        videoEncodeFormat.setFramerate(this.f93405n);
        videoEncodeFormat.setIframeinterval(this.f93406o);
        videoEncodeFormat.setScene(this.f93408q);
        videoEncodeFormat.setProfile(this.f93409r);
        this.S.setEncodeFormat(videoEncodeFormat);
        if (this.A != 1) {
            this.T.setEncodeMethod(3);
        }
        AudioEncodeFormat audioEncodeFormat = new AudioEncodeFormat(256, 1, this.f93416y, this.f93417z, this.f93415x);
        audioEncodeFormat.setProfile(this.A);
        this.T.setEncodeFormat(audioEncodeFormat);
        RtmpPublisher.BwEstConfig bwEstConfig = new RtmpPublisher.BwEstConfig();
        bwEstConfig.strategy = this.f93414w;
        bwEstConfig.initAudioBitrate = this.f93415x;
        bwEstConfig.initVideoBitrate = this.f93411t;
        bwEstConfig.minVideoBitrate = this.f93412u;
        bwEstConfig.maxVideoBitrate = this.f93410s;
        bwEstConfig.isAdjustBitrate = this.f93413v;
        this.U.setBwEstConfig(bwEstConfig);
        this.U.setFramerate(this.f93405n);
        this.U.setVideoBitrate(this.f93410s);
        this.U.setAudioBitrate(this.f93415x);
        this.Y.setVideoBitrate(this.f93411t);
        this.Y.setAudioBitrate(this.f93415x);
        this.Y.setFramerate(this.f93405n);
    }

    private int W(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return i4 != 4 ? 720 : 1080;
                }
                return 540;
            }
            return 480;
        }
        return 360;
    }

    private void a1() {
        if (this.E) {
            return;
        }
        this.E = true;
        v0();
        I0();
        Z0();
        this.Q.O();
    }

    private void e1() {
        if (this.E) {
            this.E = false;
            d1();
            if (!this.C) {
                this.S.getEncoder().flush();
                this.T.getEncoder().flush();
            }
            this.S.stop();
            this.T.getEncoder().stop();
        }
    }

    private void k0() {
        GLRender gLRender = new GLRender();
        this.M = gLRender;
        this.N = new WaterMarkCapture(gLRender);
        this.Q = new ScreenCapture(this.f93389a, this.M);
        this.O = new ImgTexScaleFilter(this.M);
        this.P = new ImgTexMixer(this.M);
        this.Q.f93315v.connect(this.O.getSinkPin());
        this.O.getSrcPin().connect(this.P.getSinkPin(this.f93393c));
        this.N.mLogoTexSrcPin.connect(this.P.getSinkPin(this.f93395d));
        this.N.mTimeTexSrcPin.connect(this.P.getSinkPin(this.f93396e));
        AudioCapture audioCapture = new AudioCapture(this.f93389a);
        this.R = audioCapture;
        audioCapture.setAudioCaptureType(this.f93391b);
        this.W = new AudioFilterMgt();
        this.X = new AudioMixer();
        this.V = new AudioResampleFilter();
        this.R.getSrcPin().connect(this.W.getSinkPin());
        this.W.getSrcPin().connect(this.V.getSinkPin());
        this.V.getSrcPin().connect(this.X.getSinkPin(this.f93397f));
        this.S = new VideoEncoderMgt(this.M);
        this.T = new AudioEncoderMgt();
        this.P.getSrcPin().connect(this.S.getImgTexSinkPin());
        this.X.getSrcPin().connect(this.T.getSinkPin());
        this.U = new RtmpPublisher();
        FilePublisher filePublisher = new FilePublisher();
        this.Y = filePublisher;
        filePublisher.setForceVideoFrameFirst(true);
        this.Z = new PublisherMgt();
        this.T.getSrcPin().connect(this.Z.getAudioSink());
        this.S.getSrcPin().connect(this.Z.getVideoSink());
        this.Z.addPublisher(this.U);
        this.M.addListener(new a());
        WindowManager windowManager = (WindowManager) this.f93389a.getSystemService("window");
        int width = windowManager.getDefaultDisplay().getWidth();
        int height = windowManager.getDefaultDisplay().getHeight();
        boolean z9 = this.F;
        if ((z9 && width < height) || (!z9 && width > height)) {
            width = windowManager.getDefaultDisplay().getHeight();
            height = windowManager.getDefaultDisplay().getWidth();
        }
        E0(width, height);
        if (StatsLogReport.getInstance().getEnableDebugLog()) {
            StatsLogReport.getInstance().initLogReport(this.f93389a);
        }
        this.R.setAudioCaptureListener(new C0838b());
        this.Q.N(new c());
        d dVar = new d();
        this.S.setEncoderListener(dVar);
        this.T.setEncoderListener(dVar);
        this.U.setPubListener(new e());
        this.Y.setPubListener(new f());
    }

    private int p(int i4, int i10) {
        return (((i4 + i10) - 1) / i10) * i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.H || this.f93390a0 == null) {
            return;
        }
        g1();
        this.f93390a0.postDelayed(new g(), this.I);
    }

    private void r() {
        WindowManager windowManager = (WindowManager) this.f93389a.getSystemService("window");
        int width = windowManager.getDefaultDisplay().getWidth();
        int height = windowManager.getDefaultDisplay().getHeight();
        boolean z9 = this.F;
        if ((z9 && width < height) || (!z9 && width > height)) {
            width = windowManager.getDefaultDisplay().getHeight();
            height = windowManager.getDefaultDisplay().getWidth();
        }
        if (this.f93403l == 0 && this.f93404m == 0) {
            int W = W(this.f93402k);
            if (width > height) {
                this.f93404m = W;
            } else {
                this.f93403l = W;
            }
        }
        int i4 = this.f93403l;
        if (i4 == 0) {
            this.f93403l = (this.f93404m * width) / height;
        } else if (this.f93404m == 0) {
            this.f93404m = (i4 * height) / width;
        }
        this.f93403l = p(this.f93403l, 8);
        this.f93404m = p(this.f93404m, 8);
    }

    private int v(screenstreamer.kit.a aVar) {
        for (int i4 = 0; i4 < this.f93394c0.size(); i4++) {
            if (this.f93394c0.get(Integer.valueOf(i4)) == aVar) {
                return i4;
            }
        }
        return -1;
    }

    private void v0() {
        this.V.setOutFormat(new AudioBufFormat(1, this.f93416y, this.f93417z));
    }

    public int A() {
        return this.A;
    }

    public void A0(int i4) throws IllegalStateException {
        if (i4 != 1) {
            Q0(i4);
            s0(i4);
            return;
        }
        throw new IllegalArgumentException("not support ENCODE_METHOD_SOFTWARE_COMPAT for screen");
    }

    public AudioEncoderMgt B() {
        return this.T;
    }

    public void B0(float f10) throws IllegalArgumentException {
        if (f10 > 0.0f) {
            this.f93406o = f10;
            return;
        }
        throw new IllegalArgumentException("the IFrameInterval must > 0");
    }

    public AudioFilterMgt C() {
        return this.W;
    }

    public void C0(boolean z9) {
        if (this.F != z9) {
            E0(this.f93401j, this.f93400i);
            L0(this.f93404m, this.f93403l);
            this.N.setTargetSize(this.f93403l, this.f93404m);
        }
        this.F = z9;
    }

    public AudioMixer D() {
        return this.X;
    }

    public void D0(boolean z9) {
        this.X.setMute(z9);
    }

    public int E() {
        return this.f93416y;
    }

    public void E0(int i4, int i10) {
        if (i4 > 0 && i10 > 0) {
            this.f93400i = i4;
            this.f93401j = i10;
            this.M.init(i4, i10);
            return;
        }
        Log.e(f93385d0, "Invalid offscreen resolution " + i4 + y.b.f83919g + i10);
    }

    public int F() {
        return this.f93414w;
    }

    public void F0(h hVar) {
        this.L = hVar;
    }

    public int G() {
        return this.U.getConnectTime();
    }

    public void G0(i iVar) {
        this.K = iVar;
    }

    @Deprecated
    public float H() {
        return I();
    }

    public void H0(StatsLogReport.OnLogEventListener onLogEventListener) {
        StatsLogReport.getInstance().setOnLogEventListener(onLogEventListener);
    }

    public int I() {
        return this.U.getCurrentUploadKBitrate();
    }

    public int J() {
        return this.U.getDnsParseTime();
    }

    public void J0(float f10) throws IllegalArgumentException {
        if (f10 > 0.0f) {
            this.f93405n = f10;
            return;
        }
        throw new IllegalArgumentException("the fps must > 0");
    }

    public int K() {
        return this.S.getEncoder().getFrameDropped() + this.U.getDroppedVideoFrames();
    }

    public void K0(int i4) throws IllegalArgumentException {
        if (i4 >= 0 && i4 <= 4) {
            this.f93402k = i4;
            this.f93403l = 0;
            this.f93404m = 0;
            r();
            this.O.setTargetSize(this.f93403l, this.f93404m);
            this.P.setTargetSize(this.f93403l, this.f93404m);
            this.S.setImgBufTargetSize(this.f93403l, this.f93404m);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution index");
    }

    public boolean L() {
        return this.H;
    }

    public void L0(int i4, int i10) throws IllegalArgumentException {
        if (i4 >= 0 && i10 >= 0 && (i4 != 0 || i10 != 0)) {
            Log.d(f93385d0, "setTargetResolution: " + i4 + "*" + i10);
            this.f93403l = i4;
            this.f93404m = i10;
            r();
            Log.d(f93385d0, "setTargetResolution: " + this.f93403l + "*" + this.f93404m);
            this.O.setTargetSize(this.f93403l, this.f93404m);
            this.P.setTargetSize(this.f93403l, this.f93404m);
            this.S.setImgBufTargetSize(this.f93403l, this.f93404m);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution");
    }

    public long M() {
        return this.S.getEncoder().getFrameEncoded();
    }

    public void M0(String str) throws IllegalArgumentException {
        if (!TextUtils.isEmpty(str)) {
            this.f93398g = str;
            return;
        }
        throw new IllegalArgumentException("url can not be null");
    }

    public GLRender N() {
        return this.M;
    }

    public void N0(int i4) throws IllegalArgumentException {
        if (i4 > 0) {
            this.f93411t = i4;
            this.f93410s = i4;
            this.f93412u = i4;
            this.f93413v = false;
            return;
        }
        throw new IllegalArgumentException("the VideoBitrate must > 0");
    }

    public float O() {
        return this.f93406o;
    }

    public void O0(int i4, int i10, int i11) throws IllegalArgumentException {
        if (i4 <= 0 || i10 <= 0) {
            throw new IllegalArgumentException("the initial and max VideoBitrate must > 0");
        }
        if (i11 >= 0) {
            this.f93411t = i4;
            this.f93410s = i10;
            this.f93412u = i11;
            this.f93413v = true;
            return;
        }
        throw new IllegalArgumentException("the min VideoBitrate must >= 0");
    }

    public int P() {
        return this.f93411t;
    }

    public void P0(int i4) throws IllegalArgumentException {
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("input video codecid error");
        }
        this.f93407p = i4;
    }

    public String Q() {
        return StatsConstant.SDK_VERSION_VALUE;
    }

    public void Q0(int i4) {
        if (this.C) {
            throw new IllegalStateException("Cannot set encode method while recording");
        }
        if (i4 != 1) {
            this.S.setEncodeMethod(i4);
            return;
        }
        throw new IllegalArgumentException("not support ENCODE_METHOD_SOFTWARE_COMPAT for screen");
    }

    public String R() {
        return f93386e0;
    }

    public void R0(int i4) {
        this.f93409r = i4;
    }

    public int S() {
        return this.f93410s;
    }

    public void S0(int i4) {
        this.f93408q = i4;
    }

    public int T() {
        return this.f93412u;
    }

    public void T0(int i4) throws IllegalArgumentException {
        N0(i4 * 1000);
    }

    public String U() {
        return this.U.getHostIp();
    }

    public void U0(int i4, int i10, int i11) throws IllegalArgumentException {
        O0(i4 * 1000, i10 * 1000, i11 * 1000);
    }

    public RtmpPublisher V() {
        return this.U;
    }

    public void V0(float f10) {
        this.R.setVolume(f10);
    }

    public void W0(Bitmap bitmap, float f10, float f11, float f12, float f13, float f14) {
        float min = Math.min(Math.max(0.0f, f14), 1.0f);
        this.P.setRenderRect(this.f93395d, f10, f11, f12, f13, min);
        this.S.getImgBufMixer().setRenderRect(1, f10, f11, f12, f13, min);
        this.N.showLogo(bitmap, f12, f13);
    }

    public float X() {
        return this.f93405n;
    }

    public void X0(String str, float f10, float f11, float f12, float f13, float f14) {
        if (!this.C) {
            Log.e(f93385d0, "Should be called after startStream");
            return;
        }
        float min = Math.min(Math.max(0.0f, f14), 1.0f);
        this.P.setRenderRect(this.f93395d, f10, f11, f12, f13, min);
        this.S.getImgBufMixer().setRenderRect(1, f10, f11, f12, f13, min);
        this.N.showLogo(this.f93389a, str, f12, f13);
    }

    public int Y() {
        return this.f93404m;
    }

    public void Y0(float f10, float f11, float f12, int i4, float f13) {
        if (!this.C) {
            Log.e(f93385d0, "Should be called after startStream");
            return;
        }
        float min = Math.min(Math.max(0.0f, f13), 1.0f);
        this.P.setRenderRect(this.f93396e, f10, f11, f12, 0.0f, min);
        this.S.getImgBufMixer().setRenderRect(2, f10, f11, f12, 0.0f, min);
        this.N.showTime(i4, "yyyy-MM-dd HH:mm:ss", f12, 0.0f);
    }

    public int Z() {
        return this.f93403l;
    }

    protected void Z0() {
        if (this.R.getSrcPin().isConnected()) {
            if (this.J == null) {
                this.J = new AtomicInteger(0);
            }
            if (this.J.getAndIncrement() == 0) {
                this.R.start();
            }
        }
    }

    public int a0() {
        return this.U.getUploadedKBytes();
    }

    public String b0() {
        return this.f93398g;
    }

    public boolean b1(String str) {
        if (this.D || TextUtils.isEmpty(str)) {
            return false;
        }
        this.f93399h = str;
        this.D = true;
        this.Y.startRecording(str);
        this.Z.addPublisher(this.Y);
        a1();
        return true;
    }

    public int c0() {
        return this.f93407p;
    }

    public boolean c1() {
        if (this.C) {
            return false;
        }
        this.C = true;
        a1();
        this.U.connect(this.f93398g);
        return true;
    }

    public int d0() {
        return this.S.getEncodeMethod();
    }

    protected void d1() {
        if (this.J == null) {
            this.J = new AtomicInteger(0);
        }
        if (this.J.get() != 0 && this.J.decrementAndGet() == 0) {
            this.R.stop();
        }
    }

    public int e0() {
        return this.f93409r;
    }

    public int f0() {
        return this.f93408q;
    }

    public void f1() {
        if (this.D) {
            if (!this.C && this.S.getEncoder().isEncoding() && this.T.getEncoder().isEncoding()) {
                e1();
            } else {
                this.Y.stop();
            }
        }
    }

    public VideoEncoderMgt g0() {
        return this.S;
    }

    public boolean g1() {
        if (this.C) {
            if (!this.D) {
                e1();
            }
            this.C = false;
            this.U.disconnect();
            return true;
        }
        return false;
    }

    public float h0() {
        return this.R.getVolume();
    }

    public void i0() {
        this.N.hideLogo();
    }

    public void j0() {
        this.N.hideTime();
    }

    public boolean l0() {
        return this.X.getMute();
    }

    public boolean m0() {
        return this.f93413v;
    }

    public boolean n0() {
        return this.D;
    }

    public boolean o0() {
        return this.C;
    }

    public void p0() {
        Handler handler = this.f93390a0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f93390a0 = null;
        }
        synchronized (this.f93392b0) {
            this.N.release();
            this.Q.M();
            this.R.release();
            this.M.release();
            H0(null);
        }
    }

    public void q0(int i4) throws IllegalArgumentException {
        if (i4 > 0) {
            this.f93415x = i4;
            return;
        }
        throw new IllegalArgumentException("the AudioBitrate must >0");
    }

    public void r0(int i4) throws IllegalArgumentException {
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("the AudioChannels must be mono or stereo");
        }
        this.f93417z = i4;
    }

    public boolean s(screenstreamer.kit.a aVar) {
        int v9;
        int emptySinkPin;
        if (this.f93394c0 == null) {
            this.f93394c0 = new ArrayMap();
        }
        if (this.f93394c0.size() >= this.X.getSinkPinNum() - 1) {
            return false;
        }
        if (!this.f93394c0.containsValue(aVar)) {
            AudioMixer audioMixer = this.X;
            if (audioMixer != null && (emptySinkPin = audioMixer.getEmptySinkPin()) != -1) {
                aVar.b().connect(this.X.getSinkPin(emptySinkPin));
                this.f93394c0.put(Integer.valueOf(emptySinkPin), aVar);
                return true;
            }
        } else if (this.X != null && (v9 = v(aVar)) != -1) {
            aVar.b().connect(this.X.getSinkPin(v9));
            return true;
        }
        return false;
    }

    public void s0(int i4) throws IllegalStateException {
        if (this.C) {
            throw new IllegalStateException("Cannot set encode method while recording");
        }
        if (i4 != 1) {
            this.T.setEncodeMethod(i4);
            return;
        }
        throw new IllegalArgumentException("not support ENCODE_METHOD_SOFTWARE_COMPAT for screen");
    }

    public void t(screenstreamer.kit.a aVar, boolean z9) {
        int v9;
        Map<Integer, screenstreamer.kit.a> map = this.f93394c0;
        if (map == null || !map.containsValue(aVar) || this.X == null || (v9 = v(aVar)) == -1) {
            return;
        }
        aVar.b().disconnect(this.X.getSinkPin(v9), z9);
        if (z9) {
            this.f93394c0.remove(aVar);
        }
    }

    public void t0(int i4) {
        this.A = i4;
    }

    public void u(boolean z9) {
        this.G = z9;
        StatsLogReport.getInstance().setEnableDebugLog(this.G);
    }

    public void u0(int i4) throws IllegalArgumentException {
        q0(i4 * 1000);
    }

    public int w() {
        return this.f93415x;
    }

    public void w0(int i4) throws IllegalArgumentException {
        if (i4 > 0) {
            this.f93416y = i4;
            return;
        }
        throw new IllegalArgumentException("the AudioSampleRate must > 0");
    }

    public AudioCapture x() {
        return this.R;
    }

    public void x0(int i4) {
        this.f93414w = i4;
    }

    public int y() {
        return this.f93417z;
    }

    public void y0(boolean z9, int i4) {
        this.H = z9;
        this.I = i4;
    }

    public int z() {
        return this.T.getEncodeMethod();
    }

    public void z0(boolean z9) {
        this.B = z9;
    }
}
