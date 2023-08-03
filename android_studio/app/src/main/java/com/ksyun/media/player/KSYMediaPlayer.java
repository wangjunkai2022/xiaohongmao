package com.ksyun.media.player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Range;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.exoplayer2.util.a0;
import com.ksyun.media.player.KSYMediaMeta;
import com.ksyun.media.player.misc.IMediaDataSource;
import com.ksyun.media.player.misc.KSYQosInfo;
import com.ksyun.media.player.misc.KSYTrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class KSYMediaPlayer extends com.ksyun.media.player.a {
    private static final int A = 50001;
    private static final int B = 50002;
    private static final int C = 20003;
    private static final int D = 20004;
    private static final int E = 0;
    private static final int F = 3;
    public static final int FFP_PROPV_DECODER_AVCODEC = 1;
    public static final int FFP_PROPV_DECODER_MEDIACODEC = 2;
    private static final int G = 20005;
    private static final int H = 20006;
    private static final int I = 20007;
    private static final int J = 20008;
    private static final int K = 20009;
    public static final int KSY_LOG_DEBUG = 3;
    public static final int KSY_LOG_DEFAULT = 1;
    public static final int KSY_LOG_ERROR = 6;
    public static final int KSY_LOG_FATAL = 7;
    public static final int KSY_LOG_INFO = 4;
    public static final int KSY_LOG_SILENT = 8;
    public static final int KSY_LOG_UNKNOWN = 0;
    public static final int KSY_LOG_VERBOSE = 2;
    public static final int KSY_LOG_WARN = 5;
    private static final int L = 20010;
    public static final int LOG_REPORT_GOT_HEADER = 6;
    public static final int LOG_REPORT_GOT_LOCAL_DNS_INFO = 7;
    private static final int M = 20030;
    public static final int MEDIA_LOG_REPORT = 501;
    private static final int N = 20032;
    private static final int O = 20031;
    public static final int OPT_CATEGORY_CODEC = 2;
    public static final int OPT_CATEGORY_FORMAT = 1;
    public static final int OPT_CATEGORY_PLAYER = 4;
    public static final int OPT_CATEGORY_SWS = 3;
    public static final int SDL_FCC_RV16 = 909203026;
    public static final int SDL_FCC_RV32 = 842225234;
    public static final int SDL_FCC_YV12 = 842094169;
    public static final int VIDEO_SCALING_MODE_NOSCALE_TO_FIT = 0;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;

    /* renamed from: a  reason: collision with root package name */
    protected static final int f45203a = 599;
    private static volatile boolean aJ = false;
    private static volatile boolean aK = false;
    private static String ax = null;

    /* renamed from: b  reason: collision with root package name */
    protected static final int f45204b = 10001;

    /* renamed from: d  reason: collision with root package name */
    private static final String f45205d = "com.ksyun.media.player.KSYMediaPlayer";

    /* renamed from: e  reason: collision with root package name */
    private static final int f45206e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f45207f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f45208g = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45209h = 3;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45210i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45211j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final int f45212k = 99;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45213l = 100;

    /* renamed from: m  reason: collision with root package name */
    private static final int f45214m = 200;

    /* renamed from: n  reason: collision with root package name */
    private static final int f45215n = 40010;

    /* renamed from: o  reason: collision with root package name */
    private static final int f45216o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f45217p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f45218q = 10001;

    /* renamed from: r  reason: collision with root package name */
    private static final int f45219r = 10002;

    /* renamed from: s  reason: collision with root package name */
    private static final int f45220s = 10003;

    /* renamed from: t  reason: collision with root package name */
    private static final int f45221t = 20001;

    /* renamed from: u  reason: collision with root package name */
    private static final int f45222u = 20002;

    /* renamed from: v  reason: collision with root package name */
    private static final int f45223v = 20050;

    /* renamed from: w  reason: collision with root package name */
    private static final int f45224w = 20051;

    /* renamed from: x  reason: collision with root package name */
    private static final int f45225x = 40001;

    /* renamed from: y  reason: collision with root package name */
    private static final int f45226y = 40002;

    /* renamed from: z  reason: collision with root package name */
    private static final int f45227z = 40003;
    private long P;
    private long Q;
    @com.ksyun.media.player.a.a
    private int R;
    @com.ksyun.media.player.a.a
    private int S;
    private Context T;
    private SurfaceHolder U;
    private b V;
    private PowerManager.WakeLock W;
    private boolean X;
    private boolean Y;
    private int Z;
    private Object aA;
    private boolean aB;
    private List<String> aC;
    private int aD;
    private com.ksyun.media.player.misc.d aE;
    private Object aF;
    private Object aG;
    private int aH;
    private c aI;
    private d aL;
    private f aM;
    private e aN;
    private OnVideoTextureListener aO;
    private OnAudioPCMListener aP;
    private ByteBuffer aQ;
    private OnVideoRawDataListener aR;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private long af;
    private int ag;
    private long ah;
    private int ai;
    private long aj;
    private boolean ak;
    private boolean al;
    private UUID am;
    private String an;
    private String ao;
    private String ap;
    private String aq;
    private g ar;
    private String as;
    private String at;
    private boolean au;
    private float av;
    private String aw;
    private String ay;
    private String az;

    /* renamed from: c  reason: collision with root package name */
    KSYMediaMeta f45228c;

    /* renamed from: com.ksyun.media.player.KSYMediaPlayer$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45229a;

        static {
            int[] iArr = new int[KSYDecodeMode.values().length];
            f45229a = iArr;
            try {
                iArr[KSYDecodeMode.KSY_DECODE_MODE_SOFTWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45229a[KSYDecodeMode.KSY_DECODE_MODE_AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45229a[KSYDecodeMode.KSY_DECODE_MODE_HARDWARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        private boolean enableStatModule = true;
        private Context mContext;

        public Builder(Context context) {
            this.mContext = context.getApplicationContext();
        }

        public KSYMediaPlayer build() {
            return new KSYMediaPlayer(this, null);
        }

        public Builder enableKSYStatModule(boolean z9) {
            this.enableStatModule = z9;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public enum KSYDecodeMode {
        KSY_DECODE_MODE_SOFTWARE,
        KSY_DECODE_MODE_AUTO,
        KSY_DECODE_MODE_HARDWARE
    }

    /* loaded from: classes3.dex */
    public enum KSYDeinterlaceMode {
        KSY_Deinterlace_Close,
        KSY_Deinterlace_Open,
        KSY_Deinterlace_Auto
    }

    /* loaded from: classes3.dex */
    public enum KSYReloadMode {
        KSY_RELOAD_MODE_FAST,
        KSY_RELOAD_MODE_ACCURATE
    }

    /* loaded from: classes3.dex */
    public interface OnAudioPCMListener {
        void onAudioPCMAvailable(IMediaPlayer iMediaPlayer, ByteBuffer byteBuffer, long j4, int i4, int i10, int i11);
    }

    /* loaded from: classes3.dex */
    public interface OnVideoRawDataListener {
        void onVideoRawDataAvailable(IMediaPlayer iMediaPlayer, byte[] bArr, int i4, int i10, int i11, int i12, long j4);
    }

    /* loaded from: classes3.dex */
    public interface OnVideoTextureListener {
        void onVideoTextureAvailable(IMediaPlayer iMediaPlayer, SurfaceTexture surfaceTexture, int i4);
    }

    /* loaded from: classes3.dex */
    public static class a implements e {

        /* renamed from: a  reason: collision with root package name */
        public static final a f45230a = new a();

        @Override // com.ksyun.media.player.KSYMediaPlayer.e
        @TargetApi(16)
        public String a(IMediaPlayer iMediaPlayer, String str, int i4, int i10, int i11, int i12) {
            String[] supportedTypes;
            com.ksyun.media.player.f a10;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int codecCount = MediaCodecList.getCodecCount();
            for (int i13 = 0; i13 < codecCount; i13++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i13);
                if (!codecInfoAt.isEncoder() && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                    for (String str2 : supportedTypes) {
                        if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase(str) && (a10 = com.ksyun.media.player.f.a(codecInfoAt, str)) != null && KSYMediaPlayer.checkMediaCodecSupportedResolution(codecInfoAt, str, i11, i12) >= 0) {
                            arrayList.add(a10);
                            a10.a(str);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            com.ksyun.media.player.f fVar = (com.ksyun.media.player.f) arrayList.get(0);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.ksyun.media.player.f fVar2 = (com.ksyun.media.player.f) it.next();
                if (fVar2.f45512j > fVar.f45512j) {
                    fVar = fVar2;
                }
            }
            if (fVar.f45512j < 600) {
                Log.w(KSYMediaPlayer.f45205d, String.format(Locale.US, "unaccetable codec: %s", fVar.f45511i.getName()));
                return null;
            }
            return fVar.f45511i.getName();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<KSYMediaPlayer> f45231a;

        public b(KSYMediaPlayer kSYMediaPlayer, Looper looper) {
            super(looper);
            this.f45231a = new WeakReference<>(kSYMediaPlayer);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            KSYMediaPlayer kSYMediaPlayer = this.f45231a.get();
            if (kSYMediaPlayer != null && kSYMediaPlayer.P != 0) {
                int i4 = message.what;
                if (i4 == 501) {
                    int i10 = message.arg1;
                    if (i10 == 1) {
                        kSYMediaPlayer.j();
                        return;
                    } else if (i10 == 2) {
                        kSYMediaPlayer.h();
                        return;
                    } else if (i10 == 6) {
                        kSYMediaPlayer.notifyOnLogEvent((String) message.obj);
                        return;
                    } else if (i10 != 7) {
                        return;
                    } else {
                        String str = null;
                        Object obj = message.obj;
                        if (obj != null && (obj instanceof String)) {
                            str = (String) obj;
                        }
                        kSYMediaPlayer.a(str);
                        return;
                    }
                } else if (i4 != 0) {
                    if (i4 == 1) {
                        kSYMediaPlayer.ar = g.STATE_PREPARED;
                        kSYMediaPlayer.notifyOnPrepared();
                        kSYMediaPlayer.g();
                        kSYMediaPlayer.i();
                        return;
                    } else if (i4 == 2) {
                        kSYMediaPlayer.ar = g.STATE_COMPLETED;
                        kSYMediaPlayer.notifyOnCompletion();
                        kSYMediaPlayer.a(false);
                        return;
                    } else if (i4 == 3) {
                        long j4 = message.arg2;
                        if (j4 >= 100) {
                            j4 = 100;
                        }
                        kSYMediaPlayer.notifyOnBufferingUpdate((int) j4);
                        return;
                    } else if (i4 == 4) {
                        kSYMediaPlayer.notifyOnSeekComplete();
                        return;
                    } else if (i4 == 5) {
                        kSYMediaPlayer.Z = message.arg1;
                        kSYMediaPlayer.aa = message.arg2;
                        kSYMediaPlayer.notifyOnVideoSizeChanged(kSYMediaPlayer.Z, kSYMediaPlayer.aa, kSYMediaPlayer.ab, kSYMediaPlayer.ac);
                        return;
                    } else if (i4 == 99) {
                        Object obj2 = message.obj;
                        if (obj2 != null) {
                            kSYMediaPlayer.notifyOnTimedText(obj2.toString());
                            return;
                        }
                        return;
                    } else if (i4 == 100) {
                        com.ksyun.media.player.c.a.a(KSYMediaPlayer.f45205d, "Error (" + message.arg1 + "," + message.arg2 + ")");
                        if (kSYMediaPlayer.ar.ordinal() < g.STATE_PREPARED.ordinal()) {
                            String str2 = kSYMediaPlayer.an != null ? kSYMediaPlayer.an : "N/A";
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("_id", kSYMediaPlayer.am);
                                jSONObject.put("type", 100);
                                jSONObject.put("body_type", com.ksyun.media.player.d.d.aq);
                                jSONObject.put("action_id", kSYMediaPlayer.ao);
                                jSONObject.put("url", str2);
                                jSONObject.put(com.ksyun.media.player.d.d.f45447s, kSYMediaPlayer.av);
                                jSONObject.put(com.ksyun.media.player.d.d.f45448t, "fail");
                                jSONObject.put("fail_code", message.arg1);
                                jSONObject.put("net_type", com.ksyun.media.player.util.c.d(kSYMediaPlayer.T));
                                jSONObject.put("net_des", com.ksyun.media.player.util.c.e(kSYMediaPlayer.T));
                                jSONObject.put("date", System.currentTimeMillis());
                                jSONObject.put(com.ksyun.media.player.d.d.f45443o, kSYMediaPlayer.aq);
                                jSONObject.put(com.ksyun.media.player.d.d.M, jSONObject.length() + 1);
                            } catch (JSONException e4) {
                                e4.printStackTrace();
                            }
                            com.ksyun.media.player.d.c.a().a(jSONObject);
                            kSYMediaPlayer.notifyOnLogEvent(jSONObject.toString());
                            kSYMediaPlayer.a(true, message.arg2);
                            kSYMediaPlayer.i();
                        }
                        if (!kSYMediaPlayer.notifyOnError(message.arg1, message.arg2)) {
                            kSYMediaPlayer.notifyOnCompletion();
                        }
                        kSYMediaPlayer.a(false);
                        return;
                    } else if (i4 != 200) {
                        if (i4 == 599) {
                            Object obj3 = message.obj;
                            if (obj3 != null) {
                                kSYMediaPlayer.notifyMessageInfo((Bundle) obj3);
                                return;
                            }
                            return;
                        } else if (i4 != 10001) {
                            com.ksyun.media.player.c.a.a(KSYMediaPlayer.f45205d, "Unknown message type " + message.what);
                            return;
                        } else {
                            kSYMediaPlayer.ab = message.arg1;
                            kSYMediaPlayer.ac = message.arg2;
                            kSYMediaPlayer.notifyOnVideoSizeChanged(kSYMediaPlayer.Z, kSYMediaPlayer.aa, kSYMediaPlayer.ab, kSYMediaPlayer.ac);
                            return;
                        }
                    } else {
                        int i11 = message.arg1;
                        if (i11 == 3) {
                            kSYMediaPlayer.ai = (int) (System.currentTimeMillis() - kSYMediaPlayer.aj);
                        } else if (i11 != 10001) {
                            if (i11 == 701) {
                                KSYMediaPlayer.access$2308(kSYMediaPlayer);
                                kSYMediaPlayer.ah = System.currentTimeMillis();
                            } else if (i11 != 702) {
                                switch (i11) {
                                    case IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE /* 41000 */:
                                        kSYMediaPlayer.az = com.ksyun.media.player.d.d.ao;
                                        Log.d(KSYMediaPlayer.f45205d, "KSYMediaPlayer Use Hardware Decode and SDK Version is:" + KSYMediaPlayer.getVersion() + ", BufferTimeMax:" + kSYMediaPlayer.getBufferTimeMax());
                                        break;
                                    case IMediaPlayer.MEDIA_INFO_SOFTWARE_DECODE /* 41001 */:
                                        kSYMediaPlayer.az = com.ksyun.media.player.d.d.ap;
                                        Log.d(KSYMediaPlayer.f45205d, "KSYMediaPlayer Use Software Decode and SDK Version is:" + KSYMediaPlayer.getVersion() + ", BufferTimeMax:" + kSYMediaPlayer.getBufferTimeMax());
                                        break;
                                }
                            } else {
                                kSYMediaPlayer.ag += (int) (System.currentTimeMillis() - kSYMediaPlayer.ah);
                            }
                        } else if (kSYMediaPlayer.az == com.ksyun.media.player.d.d.ap) {
                            kSYMediaPlayer.setRotateDegree(message.arg2);
                        }
                        int i12 = message.arg1;
                        if (i12 == KSYMediaPlayer.f45215n) {
                            kSYMediaPlayer.V.obtainMessage(501, 1, 0).sendToTarget();
                            return;
                        } else {
                            kSYMediaPlayer.notifyOnInfo(i12, message.arg2);
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
            com.ksyun.media.player.c.a.c(KSYMediaPlayer.f45205d, "KSYMediaPlayer went away with unhandled events");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(14)
    /* loaded from: classes3.dex */
    public class c implements SurfaceTexture.OnFrameAvailableListener {

        /* renamed from: b  reason: collision with root package name */
        private KSYMediaPlayer f45233b;

        c(KSYMediaPlayer kSYMediaPlayer) {
            this.f45233b = kSYMediaPlayer;
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            if (KSYMediaPlayer.this.aO != null) {
                KSYMediaPlayer.this.aO.onVideoTextureAvailable(this.f45233b, surfaceTexture, KSYMediaPlayer.this.aH);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        String a(int i4);
    }

    /* loaded from: classes3.dex */
    public interface e {
        String a(IMediaPlayer iMediaPlayer, String str, int i4, int i10, int i11, int i12);
    }

    /* loaded from: classes3.dex */
    public interface f {

        /* renamed from: a  reason: collision with root package name */
        public static final int f45234a = 65536;

        /* renamed from: b  reason: collision with root package name */
        public static final int f45235b = 65537;

        /* renamed from: c  reason: collision with root package name */
        public static final int f45236c = 65538;

        /* renamed from: d  reason: collision with root package name */
        public static final int f45237d = 65540;

        /* renamed from: e  reason: collision with root package name */
        public static final String f45238e = "url";

        /* renamed from: f  reason: collision with root package name */
        public static final String f45239f = "segment_index";

        /* renamed from: g  reason: collision with root package name */
        public static final String f45240g = "retry_counter";

        boolean a(int i4, Bundle bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum g {
        STATE_IDLE,
        STATE_INITIALIZED,
        STATE_PREPARING,
        STATE_PREPARED,
        STATE_PLAYING,
        STATE_PAUSED,
        STATE_STOPPED,
        STATE_COMPLETED,
        STATE_ERROR,
        STATE_END
    }

    /* synthetic */ KSYMediaPlayer(Builder builder, AnonymousClass1 anonymousClass1) {
        this(builder);
    }

    private native String _getAudioCodecInfo();

    private static native String _getColorFormatName(int i4);

    private native String _getLinkLatencyInfo(String str);

    private native int _getLoopCount();

    private native Bundle _getMediaMeta();

    private native float _getPropertyFloat(int i4, float f10);

    private native long _getPropertyLong(int i4, long j4);

    private native String _getPropertyString(int i4);

    private native Bundle _getQosInfo();

    private native void _getScreenShot(Bitmap bitmap);

    private native String _getVideoCodecInfo();

    private native void _pause() throws IllegalStateException;

    private native void _prepareAsync() throws IllegalStateException;

    private native void _release();

    private native void _reload(String str, boolean z9, int i4) throws IllegalStateException;

    private native void _reset();

    private native void _seekTo(long j4, boolean z9);

    private native void _setBufferSize(int i4);

    private native void _setDataSource(IMediaDataSource iMediaDataSource) throws IllegalArgumentException, SecurityException, IllegalStateException;

    private native void _setDataSource(String str, String[] strArr, String[] strArr2) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    private native void _setDataSourceFd(int i4, long j4, long j10) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    private native void _setDataSourceList(String str);

    private native void _setDecodeMode(int i4);

    private native void _setLoopCount(int i4);

    private native boolean _setMirror(boolean z9);

    private native void _setOption(int i4, String str, long j4);

    private native void _setOption(int i4, String str, String str2);

    private native void _setPlayerMute(int i4);

    private native void _setPropertyFloat(int i4, float f10);

    private native void _setPropertyLong(int i4, long j4);

    private native void _setPropertyString(int i4, String str);

    private native boolean _setRotateDegree(int i4);

    private native void _setStreamSelected(int i4, boolean z9);

    private native void _setTimeout(int i4, int i10);

    private native void _setVideoRenderingState(int i4);

    private native void _setVideoScalingMode(int i4);

    private native void _setVideoSurface(Surface surface);

    private native void _softReset();

    private native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    private void a() {
        this.am = UUID.randomUUID();
        this.ad = 0;
        this.ae = 0;
        this.ag = 0;
        this.ah = 0L;
        this.ak = false;
        this.au = false;
        this.af = 0L;
        this.ai = 0;
        this.aj = System.currentTimeMillis();
        this.av = getBufferTimeMax();
        this.as = "UNKNOWN";
        this.at = "UNKNOWN";
        this.ar = g.STATE_IDLE;
        this.aB = false;
    }

    static /* synthetic */ int access$2308(KSYMediaPlayer kSYMediaPlayer) {
        int i4 = kSYMediaPlayer.ad;
        kSYMediaPlayer.ad = i4 + 1;
        return i4;
    }

    private void b() {
        loadLibrariesOnce();
        initNativeOnce();
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.V = new b(this, myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.V = new b(this, mainLooper);
            } else {
                this.V = null;
            }
        }
        native_setup(new WeakReference(this));
        this.aI = new c(this);
    }

    private String c() {
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : getVersion().split("\\.")) {
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    public static int checkMediaCodecSupportedResolution(MediaCodecInfo mediaCodecInfo, String str, int i4, int i10) {
        MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecInfo.getCapabilitiesForType(str).getVideoCapabilities();
        return (videoCapabilities.getSupportedWidths().contains((Range<Integer>) Integer.valueOf(i4)) && videoCapabilities.getSupportedHeights().contains((Range<Integer>) Integer.valueOf(i10))) ? 0 : -1;
    }

    private void d() {
        SurfaceHolder surfaceHolder = this.U;
        if (surfaceHolder != null) {
            surfaceHolder.setKeepScreenOn(this.X && this.Y);
        }
    }

    private String e() {
        StringBuffer stringBuffer = new StringBuffer();
        String[] split = getVersion().split("\\.");
        String b10 = com.ksyun.media.player.misc.e.a().b();
        stringBuffer.append("ksyplayer/");
        for (String str : split) {
            stringBuffer.append(str);
        }
        stringBuffer.append("/");
        if (TextUtils.isEmpty(b10)) {
            stringBuffer.append("null");
        } else {
            stringBuffer.append(b10);
        }
        return stringBuffer.toString();
    }

    private void f() {
        if (!this.ak && this.ar.ordinal() >= g.STATE_PREPARED.ordinal()) {
            JSONObject jSONObject = new JSONObject();
            int currentTimeMillis = (int) ((System.currentTimeMillis() - this.aj) - this.ae);
            try {
                jSONObject.put("_id", this.am.toString());
                jSONObject.put("type", 100);
                jSONObject.put("body_type", com.ksyun.media.player.d.d.ar);
                jSONObject.put("action_id", this.ao);
                jSONObject.put(com.ksyun.media.player.d.d.G, getCurrentPosition());
                jSONObject.put(com.ksyun.media.player.d.d.H, this.ad);
                jSONObject.put(com.ksyun.media.player.d.d.I, this.ag);
                jSONObject.put("net_type", com.ksyun.media.player.util.c.d(this.T));
                jSONObject.put(com.ksyun.media.player.d.d.J, getDownloadDataSize());
                jSONObject.put("date", System.currentTimeMillis());
                jSONObject.put(com.ksyun.media.player.d.d.f45451w, this.ai);
                jSONObject.put(com.ksyun.media.player.d.d.f45443o, this.aq);
                if (!TextUtils.isEmpty(this.ap)) {
                    jSONObject.put("streamId", this.ap);
                } else {
                    jSONObject.put("streamId", "");
                }
                jSONObject.put(com.ksyun.media.player.d.d.K, currentTimeMillis);
                jSONObject.put(com.ksyun.media.player.d.d.L, this.ae);
                jSONObject.put(com.ksyun.media.player.d.d.f45447s, getBufferTimeMax());
                jSONObject.put(com.ksyun.media.player.d.d.M, jSONObject.length() + 1);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            com.ksyun.media.player.d.c.a().a(jSONObject);
            this.ak = true;
            if (this.al) {
                notifyOnLogEvent(jSONObject.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        String serverAddress;
        String str;
        String str2;
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        JSONObject jSONObject = new JSONObject();
        String str3 = "unknown";
        synchronized (this.aA) {
            serverAddress = this.aB ? "N/A" : getServerAddress();
        }
        try {
            this.f45228c = KSYMediaMeta.parse(_getMediaMeta());
        } catch (Throwable th) {
            this.f45228c = null;
            th.printStackTrace();
        }
        KSYMediaMeta kSYMediaMeta = this.f45228c;
        if (kSYMediaMeta != null) {
            String streamId = kSYMediaMeta.getStreamId();
            this.ap = streamId;
            if (TextUtils.isEmpty(streamId)) {
                this.ap = "";
            }
            int firstDataTime = this.f45228c.getFirstDataTime();
            if (firstDataTime < 0) {
                firstDataTime = 0;
            }
            int prepareCostTime = this.f45228c.getPrepareCostTime();
            int prepareReadBytes = this.f45228c.getPrepareReadBytes();
            int parserInfoStatus = this.f45228c.getParserInfoStatus();
            int openStreamCostTime = this.f45228c.getOpenStreamCostTime();
            String streamType = this.f45228c.getStreamType();
            str = this.f45228c.getVideoCodec();
            str2 = this.f45228c.getAudioCodec();
            i4 = firstDataTime;
            str3 = streamType;
            i13 = openStreamCostTime;
            i12 = parserInfoStatus;
            i11 = prepareReadBytes;
            i10 = prepareCostTime;
        } else {
            str = "N/A";
            str2 = "N/A";
            i4 = 0;
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
        }
        try {
            jSONObject.put("_id", this.am.toString());
            jSONObject.put("type", 100);
            jSONObject.put("body_type", com.ksyun.media.player.d.d.aq);
            jSONObject.put("prepare_cost", i10);
            jSONObject.put("prepare_read_bytes", i11);
            jSONObject.put("parser_info_status", i12);
            jSONObject.put("open_stream_cost", i13);
            jSONObject.put("stream_type", str3);
            jSONObject.put("vcodec", str);
            jSONObject.put("acodec", str2);
            jSONObject.put("action_id", this.ao);
            jSONObject.put("url", this.an);
            jSONObject.put(com.ksyun.media.player.d.d.f45447s, getBufferTimeMax());
            jSONObject.put(com.ksyun.media.player.d.d.f45448t, "ok");
            jSONObject.put("fail_code", 0);
            jSONObject.put(com.ksyun.media.player.d.d.f45450v, i4);
            jSONObject.put("net_type", com.ksyun.media.player.util.c.d(this.T));
            jSONObject.put("net_des", com.ksyun.media.player.util.c.e(this.T));
            jSONObject.put("serverIp", serverAddress);
            jSONObject.put("date", System.currentTimeMillis());
            jSONObject.put(com.ksyun.media.player.d.d.f45443o, this.aq);
            if (!TextUtils.isEmpty(this.ap)) {
                jSONObject.put("streamId", this.ap);
            } else {
                jSONObject.put("streamId", "");
            }
            jSONObject.put(com.ksyun.media.player.d.d.M, jSONObject.length() + 1);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        com.ksyun.media.player.d.c.a().a(jSONObject);
        if (this.al) {
            notifyOnLogEvent(jSONObject.toString());
        }
        com.ksyun.media.player.d.c.a().a(this.V);
    }

    public static String getColorFormatName(int i4) {
        return _getColorFormatName(i4);
    }

    private long getMediaDataSource() {
        return this.Q;
    }

    private long getMediaPlayer() {
        return this.P;
    }

    public static native String getVersion();

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        String str = this.an;
        if (str == null || str.startsWith("http")) {
            KSYMediaMeta kSYMediaMeta = this.f45228c;
            boolean z9 = true;
            if (kSYMediaMeta != null) {
                int analyzeDnsTime = kSYMediaMeta.getAnalyzeDnsTime();
                int connectTime = this.f45228c.getConnectTime();
                int firstDataTime = this.f45228c.getFirstDataTime();
                synchronized (this.aA) {
                    if (this.aB) {
                        return;
                    }
                    long downloadDataSize = getDownloadDataSize();
                    long currentTimeMillis = System.currentTimeMillis() - this.aj;
                    long j4 = currentTimeMillis > 0 ? (downloadDataSize * 1000) / currentTimeMillis : 0L;
                    boolean z10 = analyzeDnsTime > 80;
                    if (connectTime > 30) {
                        z10 = true;
                    }
                    if (firstDataTime > 100) {
                        z10 = true;
                    }
                    if (j4 > 0 && j4 < 200) {
                        z10 = true;
                    }
                    if (this.f45228c.getHttpCode() < 400) {
                        z9 = z10;
                    }
                }
            } else {
                z9 = false;
            }
            a(z9, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        JSONObject jSONObject = new JSONObject();
        String c10 = c(ax);
        if (c10 == null) {
            c10 = "unsupport";
        }
        try {
            jSONObject.put("_id", this.am.toString());
            jSONObject.put("body_type", com.ksyun.media.player.d.d.at);
            jSONObject.put("action_id", this.ao);
            jSONObject.put("date", System.currentTimeMillis());
            jSONObject.put(com.ksyun.media.player.d.d.ac, this.aw);
            jSONObject.put(com.ksyun.media.player.d.d.af, c10);
            jSONObject.put(com.ksyun.media.player.d.d.ad, this.az);
            jSONObject.put(com.ksyun.media.player.d.d.f45443o, this.aq);
            if (!TextUtils.isEmpty(this.ap)) {
                jSONObject.put("streamId", this.ap);
            } else {
                jSONObject.put("streamId", "");
            }
            jSONObject.put(com.ksyun.media.player.d.d.M, jSONObject.length() + 1);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        this.aw = com.ksyun.media.player.d.d.ap;
        ax = null;
        com.ksyun.media.player.d.c.a().a(jSONObject);
    }

    private static void initNativeOnce() {
        synchronized (KSYMediaPlayer.class) {
            if (!aK) {
                native_init();
                aK = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.al) {
            String _getLinkLatencyInfo = _getLinkLatencyInfo(this.aq);
            com.ksyun.media.player.d.c.a().a(_getLinkLatencyInfo);
            notifyOnLogEvent(_getLinkLatencyInfo);
        }
    }

    public static void loadLibrariesOnce() {
        synchronized (KSYMediaPlayer.class) {
            if (!aJ) {
                if (TextUtils.isEmpty(KSYLibraryManager.getLocalLibraryPath())) {
                    if (!com.ksyun.media.player.e.a("ksylive")) {
                        com.ksyun.media.player.e.a("ksyplayer");
                    }
                } else if (!com.ksyun.media.player.e.a(KSYLibraryManager.getLocalLibraryPath(), "ksylive")) {
                    com.ksyun.media.player.e.a(KSYLibraryManager.getLocalLibraryPath(), "ksyplayer");
                }
                aJ = true;
            }
        }
    }

    private native void native_addMasterClock(Object obj);

    private native void native_addTimedTextSource(String str);

    private native void native_addVideoRawBuffer(byte[] bArr);

    private native void native_enableDeinterlace(boolean z9);

    private native void native_enableFastPlayMode(boolean z9);

    private native void native_enableVideoRawDataCallback(boolean z9);

    private native void native_finalize();

    private static native void native_init();

    private native void native_initRecorder(String str, int i4, int i10);

    private native void native_message_loop(Object obj);

    public static native void native_profileBegin(String str);

    public static native void native_profileEnd();

    public static native void native_setLogLevel(int i4);

    public static native void native_setPCMBuffer(long j4, ByteBuffer byteBuffer);

    private native void native_setPlayableRanges(long j4, long j10);

    private native void native_setVideoOffset(float f10, float f11);

    private native void native_setup(Object obj);

    @com.ksyun.media.player.a.b
    private static boolean onNativeInvoke(Object obj, int i4, Bundle bundle) {
        d dVar;
        com.ksyun.media.player.c.a.b(f45205d, "onNativeInvoke %d", Integer.valueOf(i4));
        if (obj != null && (obj instanceof WeakReference)) {
            KSYMediaPlayer kSYMediaPlayer = (KSYMediaPlayer) ((WeakReference) obj).get();
            if (kSYMediaPlayer != null) {
                f fVar = kSYMediaPlayer.aM;
                if (fVar == null || !fVar.a(i4, bundle)) {
                    if (i4 == 65536 && (dVar = kSYMediaPlayer.aL) != null) {
                        int i10 = bundle.getInt(f.f45239f, -1);
                        if (i10 >= 0) {
                            String a10 = dVar.a(i10);
                            if (a10 != null) {
                                bundle.putString("url", a10);
                                return true;
                            }
                            throw new RuntimeException(new IOException("onNativeInvoke() = <NULL newUrl>"));
                        }
                        throw new InvalidParameterException("onNativeInvoke(invalid segment index)");
                    }
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("<null weakPlayer>.onNativeInvoke()");
        }
        throw new IllegalStateException("<null weakThiz>.onNativeInvoke()");
    }

    @com.ksyun.media.player.a.b
    private static String onSelectCodec(Object obj, String str, int i4, int i10, int i11, int i12) {
        KSYMediaPlayer kSYMediaPlayer;
        if (obj == null || !(obj instanceof WeakReference) || (kSYMediaPlayer = (KSYMediaPlayer) ((WeakReference) obj).get()) == null) {
            return null;
        }
        e eVar = kSYMediaPlayer.aN;
        if (eVar == null) {
            eVar = a.f45230a;
        }
        e eVar2 = eVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (KSYHardwareDecodeWhiteList.getInstance().getCurrentStatus() == 12) {
            if (str.equalsIgnoreCase("video/avc")) {
                if (KSYHardwareDecodeWhiteList.getInstance().supportHardwareDecodeH264()) {
                    ax = com.ksyun.media.player.e.a.a(kSYMediaPlayer.T, com.ksyun.media.player.e.a.f45484d, (String) null);
                }
            } else if (str.equalsIgnoreCase(a0.f27451k)) {
                if (KSYHardwareDecodeWhiteList.getInstance().supportHardwareDecodeH265()) {
                    ax = com.ksyun.media.player.e.a.a(kSYMediaPlayer.T, com.ksyun.media.player.e.a.f45485e, (String) null);
                }
            } else {
                ax = eVar2.a(kSYMediaPlayer, str, i4, i10, i11, i12);
            }
        } else {
            ax = eVar2.a(kSYMediaPlayer, str, i4, i10, i11, i12);
        }
        return ax;
    }

    @com.ksyun.media.player.a.b
    private static void onVideoRawDataReady(Object obj, byte[] bArr, int i4, int i10, int i11, int i12, long j4) {
        KSYMediaPlayer kSYMediaPlayer;
        Object obj2;
        WeakReference weakReference = (WeakReference) obj;
        if (weakReference == null || (kSYMediaPlayer = (KSYMediaPlayer) weakReference.get()) == null || (obj2 = kSYMediaPlayer.aF) == null) {
            return;
        }
        synchronized (obj2) {
            OnVideoRawDataListener onVideoRawDataListener = kSYMediaPlayer.aR;
            if (onVideoRawDataListener != null) {
                onVideoRawDataListener.onVideoRawDataAvailable(kSYMediaPlayer, bArr, i4, i10, i11, i12, j4);
            }
        }
    }

    @com.ksyun.media.player.a.b
    private static void postEventFromNative(Object obj, int i4, int i10, int i11, Object obj2) {
        KSYMediaPlayer kSYMediaPlayer;
        if (obj == null || (kSYMediaPlayer = (KSYMediaPlayer) ((WeakReference) obj).get()) == null) {
            return;
        }
        if (i4 == 200 && i10 == 2) {
            kSYMediaPlayer.start();
        }
        b bVar = kSYMediaPlayer.V;
        if (bVar != null) {
            kSYMediaPlayer.V.sendMessage(bVar.obtainMessage(i4, i10, i11, obj2));
        }
    }

    private void setMediaDataSource(long j4) {
        this.Q = j4;
    }

    private void setMediaPlayer(long j4) {
        this.P = j4;
    }

    public void _onAudioPCMReady(ByteBuffer byteBuffer, long j4, int i4, int i10, int i11) {
        synchronized (this.aG) {
            OnAudioPCMListener onAudioPCMListener = this.aP;
            if (onAudioPCMListener != null) {
                onAudioPCMListener.onAudioPCMAvailable(this, byteBuffer, j4, i10, i4, i11);
            }
        }
    }

    public void addMasterClock(KSYMediaPlayer kSYMediaPlayer) {
        if (kSYMediaPlayer == null || kSYMediaPlayer.equals(this)) {
            return;
        }
        native_addMasterClock(kSYMediaPlayer);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void addTimedTextSource(String str) {
        if (!TextUtils.isEmpty(str)) {
            native_addTimedTextSource(str);
            return;
        }
        throw new IllegalArgumentException("Wrong Input Argument, path can't be NULL!");
    }

    public void addVideoRawBuffer(byte[] bArr) {
        native_addVideoRawBuffer(bArr);
    }

    public int bufferEmptyCount() {
        return this.ad;
    }

    public float bufferEmptyDuration() {
        return this.ag / 1000;
    }

    @TargetApi(14)
    public SurfaceTexture createSurfaceTexture() {
        this.aH = com.ksyun.media.player.util.a.a(36197);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.aH);
        surfaceTexture.setOnFrameAvailableListener(this.aI);
        return surfaceTexture;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void deselectTrack(int i4) {
        _setStreamSelected(i4, false);
    }

    public void enableFastPlayMode(boolean z9) {
        native_enableFastPlayMode(z9);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        native_finalize();
    }

    public long getAudioCachedBytes() {
        return _getPropertyLong(J, 0L);
    }

    public long getAudioCachedDuration() {
        return _getPropertyLong(H, 0L);
    }

    public long getAudioCachedPackets() {
        return _getPropertyLong(L, 0L);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public native int getAudioSessionId();

    public float getBufferTimeMax() {
        return _getPropertyFloat(40003, 0.0f);
    }

    public String getClientIP() {
        return this.as;
    }

    public Context getContext() {
        return this.T;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public native long getCurrentPosition();

    public long getCurrentPts() {
        return _getPropertyLong(M, 0L);
    }

    public long getCurrentVideoPts() {
        return _getPropertyLong(N, 0L);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public String getDataSource() {
        return this.an;
    }

    public long getDecodedDataSize() {
        return _getPropertyLong(f45225x, 0L);
    }

    public long getDownloadDataSize() {
        return _getPropertyLong(f45226y, 0L);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public native long getDuration();

    public String getLocalDnsIP() {
        return this.at;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.mMediaPlayerName = "ksyplayer";
        String _getVideoCodecInfo = _getVideoCodecInfo();
        if (!TextUtils.isEmpty(_getVideoCodecInfo)) {
            String[] split = _getVideoCodecInfo.split(",");
            if (split.length >= 2) {
                mediaInfo.mVideoDecoder = split[0];
                mediaInfo.mVideoDecoderImpl = split[1];
            } else if (split.length >= 1) {
                mediaInfo.mVideoDecoder = split[0];
                mediaInfo.mVideoDecoderImpl = "";
            }
        }
        String _getAudioCodecInfo = _getAudioCodecInfo();
        if (!TextUtils.isEmpty(_getAudioCodecInfo)) {
            String[] split2 = _getAudioCodecInfo.split(",");
            if (split2.length >= 2) {
                mediaInfo.mAudioDecoder = split2[0];
                mediaInfo.mAudioDecoderImpl = split2[1];
            } else if (split2.length >= 1) {
                mediaInfo.mAudioDecoder = split2[0];
                mediaInfo.mAudioDecoderImpl = "";
            }
        }
        try {
            mediaInfo.mMeta = KSYMediaMeta.parse(getMediaMeta());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return mediaInfo;
    }

    public Bundle getMediaMeta() {
        if (this.al) {
            return _getMediaMeta();
        }
        return null;
    }

    public Bitmap getScreenShot() {
        int i4;
        int i10 = this.Z;
        if (i10 <= 0 || (i4 = this.aa) <= 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i10, i4, Bitmap.Config.RGB_565);
        _getScreenShot(createBitmap);
        return createBitmap;
    }

    public int getSelectedTrack(int i4) {
        long _getPropertyLong;
        if (i4 == 1) {
            _getPropertyLong = _getPropertyLong(f45221t, -1L);
        } else if (i4 == 2) {
            _getPropertyLong = _getPropertyLong(f45222u, -1L);
        } else if (i4 == 3) {
            _getPropertyLong = _getPropertyLong(f45223v, -1L);
        } else if (i4 != 100) {
            return -1;
        } else {
            _getPropertyLong = _getPropertyLong(f45224w, -1L);
        }
        return (int) _getPropertyLong;
    }

    public String getServerAddress() {
        return _getPropertyString(50001);
    }

    public float getSpeed() {
        return _getPropertyFloat(f45220s, 0.0f);
    }

    public KSYQosInfo getStreamQosInfo() {
        Bundle _getQosInfo = _getQosInfo();
        if (_getQosInfo == null || !this.al) {
            return null;
        }
        KSYQosInfo kSYQosInfo = new KSYQosInfo();
        kSYQosInfo.audioBufferByteLength = _getQosInfo.getInt(KSYQosInfo.AUDIO_BUFFER_BYTE, 0);
        kSYQosInfo.audioBufferTimeLength = _getQosInfo.getInt(KSYQosInfo.AUDIO_BUFFER_TIME, 0);
        kSYQosInfo.audioTotalDataSize = _getQosInfo.getLong(KSYQosInfo.AUDIO_TOTAL_DATA_SIZE, 0L);
        kSYQosInfo.videoBufferByteLength = _getQosInfo.getInt(KSYQosInfo.VIDEO_BUFFER_BYTE, 0);
        kSYQosInfo.videoBufferTimeLength = _getQosInfo.getInt(KSYQosInfo.VIDEO_BUFFER_TIME, 0);
        kSYQosInfo.videoTotalDataSize = _getQosInfo.getLong(KSYQosInfo.VIDEO_TOTAL_DATA_SIZE, 0L);
        kSYQosInfo.totalDataSize = _getQosInfo.getLong(KSYQosInfo.TOTAL_DATA_BYTES, 0L);
        return kSYQosInfo;
    }

    public long getStreamStartTime() {
        return _getPropertyLong(O, 0L);
    }

    public long getVideoCachedBytes() {
        return _getPropertyLong(I, 0L);
    }

    public long getVideoCachedDuration() {
        return _getPropertyLong(G, 0L);
    }

    public long getVideoCachedPackets() {
        return _getPropertyLong(K, 0L);
    }

    public float getVideoDecodeFramesPerSecond() {
        return _getPropertyFloat(IMediaPlayer.MEDIA_INFO_VIDEO_ROTATION_CHANGED, 0.0f);
    }

    public int getVideoDecoder() {
        return (int) _getPropertyLong(C, 0L);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.aa;
    }

    public float getVideoOutputFramesPerSecond() {
        return _getPropertyFloat(10002, 0.0f);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.ac;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.ab;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.Z;
    }

    public void initRecorderMuxer(String str, int i4, int i10) {
        native_initRecorder(str, i4, i10);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isLooping() {
        return _getLoopCount() != 1;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public native boolean isPlaying();

    @Override // com.ksyun.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        int ordinal = this.ar.ordinal();
        g gVar = g.STATE_PAUSED;
        if (ordinal < gVar.ordinal()) {
            this.af = System.currentTimeMillis();
        }
        a(false);
        _pause();
        this.ar = gVar;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        a();
        setOption(1, "user-agent", e());
        com.ksyun.media.player.d.c.a().a(this.T, this.V, getVersion());
        this.ao = com.ksyun.media.player.util.c.b(this.an + String.valueOf(System.currentTimeMillis()));
        this.aq = com.ksyun.media.player.util.c.b(this.an + String.valueOf(System.currentTimeMillis()) + com.ksyun.media.player.util.c.a(this.T));
        this.aj = System.currentTimeMillis();
        this.ak = false;
        List<String> list = this.aC;
        if (list != null && !list.isEmpty()) {
            this.aE.a(this.aD);
            this.aE.a(this, this.aj);
            return;
        }
        _prepareAsync();
        this.ar = g.STATE_PREPARING;
    }

    public void prepareSourceList(String str, boolean z9) {
        if (z9) {
            _setDataSourceList(str);
            _prepareAsync();
            this.ar = g.STATE_PREPARING;
            return;
        }
        b bVar = this.V;
        if (bVar != null) {
            bVar.obtainMessage(100, IMediaPlayer.MEDIA_ERROR_INVALID_URL, 0).sendToTarget();
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void release() {
        a(false);
        f();
        d();
        resetListeners();
        List<String> list = this.aC;
        if (list != null && !list.isEmpty()) {
            this.aC.clear();
        }
        com.ksyun.media.player.misc.d dVar = this.aE;
        if (dVar != null) {
            dVar.a();
        }
        this.aE = null;
        synchronized (this.aA) {
            this.aB = true;
            _release();
        }
        this.ar = g.STATE_END;
    }

    public void reload(String str, boolean z9) throws IllegalStateException {
        _reload(str, z9, KSYReloadMode.KSY_RELOAD_MODE_FAST.ordinal());
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void reset() {
        a(false);
        f();
        List<String> list = this.aC;
        if (list != null && !list.isEmpty()) {
            this.aC.clear();
        }
        com.ksyun.media.player.misc.d dVar = this.aE;
        if (dVar != null) {
            dVar.a();
        }
        this.aE = null;
        synchronized (this.aA) {
            this.aB = true;
            _reset();
        }
        this.V.removeCallbacksAndMessages(null);
        this.Z = 0;
        this.aa = 0;
    }

    @Override // com.ksyun.media.player.a
    public void resetListeners() {
        super.resetListeners();
        this.aN = null;
        this.aQ = null;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void seekTo(long j4) throws IllegalStateException {
        _seekTo(j4, false);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void selectTrack(int i4) {
        _setStreamSelected(i4, true);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setAudioStreamType(int i4) {
    }

    public void setBufferSize(int i4) {
        if (i4 <= 0) {
            i4 = 0;
        }
        _setBufferSize(i4);
    }

    public void setBufferTimeMax(float f10) {
        this.av = f10;
        _setPropertyFloat(40003, f10);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(context, uri, (Map<String, String>) null);
    }

    public void setDecodeMode(KSYDecodeMode kSYDecodeMode) {
        int i4 = AnonymousClass1.f45229a[kSYDecodeMode.ordinal()];
        if (i4 == 1) {
            this.aw = com.ksyun.media.player.d.d.ap;
        } else if (i4 == 2 || i4 == 3) {
            this.aw = com.ksyun.media.player.d.d.ao;
        }
        _setDecodeMode(kSYDecodeMode.ordinal());
    }

    public void setDeinterlaceMode(KSYDeinterlaceMode kSYDeinterlaceMode) {
        if (kSYDeinterlaceMode != KSYDeinterlaceMode.KSY_Deinterlace_Close && kSYDeinterlaceMode != KSYDeinterlaceMode.KSY_Deinterlace_Auto) {
            native_enableDeinterlace(true);
        } else {
            native_enableDeinterlace(false);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.U = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        d();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z9) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLogEnabled(boolean z9) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLooping(boolean z9) {
        int i4 = !z9 ? 1 : 0;
        setOption(4, "loop", i4);
        _setLoopCount(i4);
    }

    public boolean setMirror(boolean z9) {
        return _setMirror(z9);
    }

    public void setOnAudioPCMAvailableListener(OnAudioPCMListener onAudioPCMListener) {
        if (this.aQ == null) {
            this.aQ = ByteBuffer.allocate(176000);
        }
        if (onAudioPCMListener != null) {
            native_setPCMBuffer(getMediaPlayer(), this.aQ);
        } else {
            native_setPCMBuffer(getMediaPlayer(), null);
        }
        synchronized (this.aG) {
            this.aP = onAudioPCMListener;
        }
    }

    public void setOnControlMessageListener(d dVar) {
        this.aL = dVar;
    }

    public void setOnMediaCodecSelectListener(e eVar) {
        this.aN = eVar;
    }

    public void setOnNativeInvokeListener(f fVar) {
        this.aM = fVar;
    }

    public void setOnVideoTextureListener(OnVideoTextureListener onVideoTextureListener) {
        this.aO = onVideoTextureListener;
    }

    public void setOption(int i4, String str, String str2) {
        _setOption(i4, str, str2);
    }

    public void setPlayableRanges(long j4, long j10) {
        if ((j4 < 0 && j10 < 0) || (j10 > 0 && j4 > j10)) {
            throw new IllegalArgumentException("Wrong Input Arguments, start time:" + j4 + ", end time:" + j10);
        }
        native_setPlayableRanges(j4, j10);
    }

    public void setPlayerMute(int i4) {
        _setPlayerMute(i4);
    }

    public boolean setRotateDegree(int i4) {
        return _setRotateDegree(i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z9) {
        if (this.X != z9) {
            if (z9 && this.U == null) {
                com.ksyun.media.player.c.a.c(f45205d, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.X = z9;
            d();
        }
    }

    public void setSpeed(float f10) {
        _setPropertyFloat(f45220s, f10);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setSurface(Surface surface) {
        if (this.X && surface != null) {
            com.ksyun.media.player.c.a.c(f45205d, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.U = null;
        _setVideoSurface(surface);
        d();
    }

    public void setTimeout(int i4, int i10) {
        if (i4 > 0 && i10 > 0) {
            this.aD = i4;
            _setTimeout(i4, i10);
            return;
        }
        String str = f45205d;
        Log.w(str, "Wrong parameters, prepareTimeout:" + i4 + ", readTimeout:" + i10);
    }

    public void setVideoOffset(float f10, float f11) {
        if (f10 < -1.0f) {
            f10 = -1.0f;
        }
        if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        if (f11 < -1.0f) {
            f11 = -1.0f;
        }
        native_setVideoOffset(f10, f11 <= 1.0f ? f11 : 1.0f);
    }

    public void setVideoRawDataListener(OnVideoRawDataListener onVideoRawDataListener) {
        if (onVideoRawDataListener == null) {
            native_enableVideoRawDataCallback(false);
        } else {
            native_enableVideoRawDataCallback(true);
        }
        synchronized (this.aF) {
            this.aR = onVideoRawDataListener;
        }
    }

    public void setVideoRenderingState(int i4) {
        if (i4 <= 1 && i4 >= 0) {
            _setVideoRenderingState(i4);
            return;
        }
        String str = f45205d;
        Log.e(str, "setVideoRenderingState wrong parameter:" + i4);
    }

    public void setVideoScalingMode(int i4) {
        _setVideoScalingMode(i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public native void setVolume(float f10, float f11);

    @Override // com.ksyun.media.player.IMediaPlayer
    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int i4) {
        boolean z9;
        PowerManager.WakeLock wakeLock = this.W;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                z9 = true;
                this.W.release();
            } else {
                z9 = false;
            }
            this.W = null;
        } else {
            z9 = false;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i4 | 536870912, KSYMediaPlayer.class.getName());
        this.W = newWakeLock;
        newWakeLock.setReferenceCounted(false);
        if (z9) {
            this.W.acquire();
        }
    }

    public void shouldAutoPlay(boolean z9) {
        setOption(4, "start-on-prepared", z9 ? 1L : 0L);
    }

    public void softReset() {
        a(false);
        f();
        synchronized (this) {
            this.aB = true;
            _softReset();
        }
        this.V.removeCallbacksAndMessages(null);
        this.Z = 0;
        this.aa = 0;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        int ordinal = this.ar.ordinal();
        g gVar = g.STATE_PAUSED;
        if (ordinal == gVar.ordinal()) {
            this.ae += (int) (System.currentTimeMillis() - this.af);
        }
        a(true);
        _start();
        g gVar2 = this.ar;
        if (gVar2 == g.STATE_PREPARED || gVar2 == gVar) {
            this.ar = g.STATE_PLAYING;
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        a(false);
        f();
        _stop();
        this.ar = g.STATE_STOPPED;
    }

    private KSYMediaPlayer(Builder builder) {
        this.W = null;
        this.av = 2.0f;
        this.ay = null;
        this.aH = -1;
        this.aI = null;
        this.aO = null;
        this.aP = null;
        this.aQ = null;
        this.aR = null;
        this.T = builder.mContext;
        this.aA = new Object();
        this.aG = new Object();
        this.aF = new Object();
        this.am = UUID.randomUUID();
        this.ad = 0;
        this.ae = 0;
        this.ag = 0;
        this.ah = 0L;
        this.as = "UNKNOWN";
        this.at = "UNKNOWN";
        this.aw = com.ksyun.media.player.d.d.ap;
        ax = null;
        this.ar = g.STATE_IDLE;
        this.ak = false;
        this.au = false;
        this.al = builder.enableStatModule;
        this.aB = false;
        com.ksyun.media.player.misc.e.a().a(this.T);
        b();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public KSYTrackInfo[] getTrackInfo() {
        KSYMediaMeta parse;
        Bundle mediaMeta = getMediaMeta();
        if (mediaMeta == null || (parse = KSYMediaMeta.parse(mediaMeta)) == null || parse.mStreams == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<KSYMediaMeta.KSYStreamMeta> it = parse.mStreams.iterator();
        while (it.hasNext()) {
            KSYMediaMeta.KSYStreamMeta next = it.next();
            KSYTrackInfo kSYTrackInfo = new KSYTrackInfo(next);
            if (next.mType.equalsIgnoreCase("video")) {
                kSYTrackInfo.setTrackType(1);
            } else if (next.mType.equalsIgnoreCase("audio")) {
                kSYTrackInfo.setTrackType(2);
            } else if (next.mType.equalsIgnoreCase("subtitle")) {
                kSYTrackInfo.setTrackType(3);
            } else if (next.mType.equalsIgnoreCase(KSYMediaMeta.IJKM_VAL_TYPE__EXTERNAL_TIMED_TEXT)) {
                kSYTrackInfo.setTrackType(100);
            }
            kSYTrackInfo.setTrackIndex(next.mIndex);
            arrayList.add(kSYTrackInfo);
        }
        return (KSYTrackInfo[]) arrayList.toArray(new KSYTrackInfo[arrayList.size()]);
    }

    public void reload(String str, boolean z9, KSYReloadMode kSYReloadMode) throws IllegalStateException {
        _reload(str, z9, kSYReloadMode.ordinal());
    }

    public void seekTo(long j4, boolean z9) throws IllegalStateException {
        _seekTo(j4, z9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
        if (0 == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        if (0 == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0085, code lost:
        android.util.Log.d(com.ksyun.media.player.KSYMediaPlayer.f45205d, "Couldn't open file on client side, trying server side");
        setDataSource(r9.toString(), r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0093, code lost:
        return;
     */
    @Override // com.ksyun.media.player.IMediaPlayer
    @android.annotation.TargetApi(14)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setDataSource(android.content.Context r8, android.net.Uri r9, java.util.Map<java.lang.String, java.lang.String> r10) throws java.io.IOException, java.lang.IllegalArgumentException, java.lang.SecurityException, java.lang.IllegalStateException {
        /*
            r7 = this;
            java.lang.String r0 = r9.getScheme()
            java.lang.String r1 = "file"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L14
            java.lang.String r8 = r9.getPath()
            r7.setDataSource(r8)
            return
        L14:
            java.lang.String r1 = "content"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3b
            java.lang.String r0 = r9.getAuthority()
            java.lang.String r1 = "settings"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L3b
            int r9 = android.media.RingtoneManager.getDefaultType(r9)
            android.net.Uri r9 = android.media.RingtoneManager.getActualDefaultRingtoneUri(r8, r9)
            if (r9 == 0) goto L33
            goto L3b
        L33:
            java.io.FileNotFoundException r8 = new java.io.FileNotFoundException
            java.lang.String r9 = "Failed to resolve default ringtone"
            r8.<init>(r9)
            throw r8
        L3b:
            r0 = 0
            android.content.ContentResolver r8 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            java.lang.String r1 = "r"
            android.content.res.AssetFileDescriptor r0 = r8.openAssetFileDescriptor(r9, r1)     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            if (r0 != 0) goto L4e
            if (r0 == 0) goto L4d
            r0.close()
        L4d:
            return
        L4e:
            long r1 = r0.getDeclaredLength()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            r3 = 0
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 >= 0) goto L60
            java.io.FileDescriptor r8 = r0.getFileDescriptor()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            r7.setDataSource(r8)     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            goto L70
        L60:
            java.io.FileDescriptor r2 = r0.getFileDescriptor()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            long r3 = r0.getStartOffset()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            long r5 = r0.getDeclaredLength()     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
            r1 = r7
            r1.setDataSource(r2, r3, r5)     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L7b java.lang.SecurityException -> L7f
        L70:
            r0.close()
            return
        L74:
            r8 = move-exception
            if (r0 == 0) goto L7a
            r0.close()
        L7a:
            throw r8
        L7b:
            if (r0 == 0) goto L85
            goto L82
        L7f:
            if (r0 == 0) goto L85
        L82:
            r0.close()
        L85:
            java.lang.String r8 = com.ksyun.media.player.KSYMediaPlayer.f45205d
            java.lang.String r0 = "Couldn't open file on client side, trying server side"
            android.util.Log.d(r8, r0)
            java.lang.String r8 = r9.toString()
            r7.setDataSource(r8, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.KSYMediaPlayer.setDataSource(android.content.Context, android.net.Uri, java.util.Map):void");
    }

    public void setOption(int i4, String str, long j4) {
        _setOption(i4, str, j4);
    }

    @TargetApi(16)
    private String c(String str) {
        String[] supportedTypes;
        com.ksyun.media.player.f a10;
        String str2 = this.ay;
        if (str2 != null) {
            return str2;
        }
        new ArrayList();
        int codecCount = MediaCodecList.getCodecCount();
        for (int i4 = 0; i4 < codecCount; i4++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i4);
            if (!codecInfoAt.isEncoder() && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                for (String str3 : supportedTypes) {
                    if (!TextUtils.isEmpty(str3) && ((str3.equalsIgnoreCase("video/avc") || str3.equalsIgnoreCase(a0.f27451k)) && (a10 = com.ksyun.media.player.f.a(codecInfoAt, str3)) != null && a10.f45512j != 200)) {
                        String name = codecInfoAt.getName();
                        if (str != null && str.equalsIgnoreCase(name)) {
                            name = name + "*";
                        }
                        if (!name.isEmpty()) {
                            String str4 = this.ay;
                            if (str4 == null) {
                                this.ay = name;
                            } else if (str4.isEmpty()) {
                                this.ay = name;
                            } else {
                                this.ay += "," + name;
                            }
                        }
                    }
                }
            }
        }
        return this.ay;
    }

    private void b(String str) {
        _setPropertyString(B, str);
    }

    @TargetApi(13)
    private int a(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        return ParcelFileDescriptor.dup(fileDescriptor).getFd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Wakelock"})
    public void a(boolean z9) {
        PowerManager.WakeLock wakeLock = this.W;
        if (wakeLock != null) {
            if (z9 && !wakeLock.isHeld()) {
                this.W.acquire();
            } else if (!z9 && this.W.isHeld()) {
                this.W.release();
            }
        }
        this.Y = z9;
        d();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.an = str;
        _setDataSource(str, null, null);
        this.ar = g.STATE_INITIALIZED;
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        if (map != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":");
                if (!TextUtils.isEmpty(entry.getValue())) {
                    sb.append(" " + entry.getValue());
                }
                sb.append("\r\n");
                setOption(1, "headers", sb.toString());
            }
        }
        setDataSource(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z9, int i4) {
        String str = this.an;
        if ((str == null || str.startsWith("http")) && !this.au) {
            long currentTimeMillis = System.currentTimeMillis();
            long currentTimeMillis2 = System.currentTimeMillis() - this.aj;
            int i10 = (int) (currentTimeMillis2 / 1000);
            synchronized (this.aA) {
                if (this.aB) {
                    return;
                }
                long downloadDataSize = getDownloadDataSize();
                String serverAddress = getServerAddress();
                int i11 = (int) ((downloadDataSize * 1000) / currentTimeMillis2);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.ksyun.media.player.d.d.A, new URL(this.an).getHost());
                    jSONObject.put("_id", this.am.toString());
                    jSONObject.put("type", 100);
                    jSONObject.put("body_type", com.ksyun.media.player.d.d.as);
                    jSONObject.put("action_id", this.ao);
                    jSONObject.put(com.ksyun.media.player.d.d.N, 0);
                    jSONObject.put("date", currentTimeMillis);
                    jSONObject.put(com.ksyun.media.player.d.d.P, i10);
                    jSONObject.put(com.ksyun.media.player.d.d.Q, i11);
                    jSONObject.put("serverIp", serverAddress);
                    jSONObject.put(com.ksyun.media.player.d.d.D, this.as);
                    jSONObject.put(com.ksyun.media.player.d.d.F, this.at);
                    jSONObject.put("platform", "android");
                    jSONObject.put("os_ver", Build.VERSION.RELEASE);
                    jSONObject.put("dev_model", Build.MODEL);
                    jSONObject.put(com.ksyun.media.player.d.d.f45443o, this.aq);
                    if (!TextUtils.isEmpty(this.ap)) {
                        jSONObject.put("streamId", this.ap);
                    } else {
                        jSONObject.put("streamId", "");
                    }
                    jSONObject.put("net_type", com.ksyun.media.player.util.c.d(this.T));
                    KSYMediaMeta kSYMediaMeta = this.f45228c;
                    if (kSYMediaMeta != null) {
                        jSONObject.put("connectDt", kSYMediaMeta.getConnectTime());
                        jSONObject.put(com.ksyun.media.player.d.d.S, this.f45228c.getFirstDataTime());
                        jSONObject.put(com.ksyun.media.player.d.d.R, this.f45228c.getAnalyzeDnsTime());
                        jSONObject.put(com.ksyun.media.player.d.d.T, this.f45228c.getHttpCode());
                    } else if (i4 > 0) {
                        jSONObject.put(com.ksyun.media.player.d.d.T, i4);
                    }
                    jSONObject.put(com.ksyun.media.player.d.d.M, jSONObject.length() + 1);
                } catch (MalformedURLException e4) {
                    e4.printStackTrace();
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                com.ksyun.media.player.d.c.a().a(jSONObject, z9);
                if (this.al) {
                    notifyOnLogEvent(jSONObject.toString());
                }
                this.au = true;
            }
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    @TargetApi(13)
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.an = fileDescriptor.toString();
        _setDataSourceFd(a(fileDescriptor), 0L, 0L);
        this.ar = g.STATE_INITIALIZED;
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j4, long j10) throws IOException, IllegalArgumentException, IllegalStateException {
        this.an = fileDescriptor.toString();
        _setDataSourceFd(a(fileDescriptor), j4, j10);
        this.ar = g.STATE_INITIALIZED;
    }

    public void setDataSource(List<String> list, Map<String, String> map) throws IOException, IllegalArgumentException, IllegalStateException {
        if (list != null && !list.isEmpty()) {
            if (this.aE == null) {
                this.aE = new com.ksyun.media.player.misc.d();
            }
            if (this.aC == null) {
                this.aC = new ArrayList();
            }
            this.aC.clear();
            this.aC.addAll(list);
            this.an = this.aC.get(0);
            if (map != null && !map.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    sb.append(entry.getKey());
                    sb.append(":");
                    if (!TextUtils.isEmpty(entry.getValue())) {
                        sb.append(" " + entry.getValue());
                    }
                    sb.append("\r\n");
                }
                setOption(1, "headers", sb.toString());
            }
            this.aE.a(this.aC, map);
            return;
        }
        throw new IllegalArgumentException("Empty Input Source List.");
    }

    @Override // com.ksyun.media.player.a, com.ksyun.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalArgumentException, SecurityException, IllegalStateException {
        _setDataSource(iMediaDataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.as = jSONObject.getString("ClientIP");
                this.at = jSONObject.getString("LocalDnsIP");
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        this.V.obtainMessage(501, 2, 0).sendToTarget();
    }
}
