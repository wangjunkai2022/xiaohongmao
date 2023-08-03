package com.ksyun.media.streamer.logstats;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.ksy.statlibrary.interval.IntervalResultListener;
import com.ksy.statlibrary.log.LogClient;
import com.ksy.statlibrary.log.LogParams;
import com.ksy.statlibrary.util.PreferenceUtil;
import com.ksyun.media.streamer.kit.StreamerConstants;
import com.ksyun.media.streamer.util.StringWrapper;
import com.ksyun.media.streamer.util.TimeDeltaUtil;
import io.sentry.protocol.y;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class StatsLogReport {
    public static final int ERROR_MODEL_TYPE_AUDIOCAPTURE = 1;
    public static final int ERROR_MODEL_TYPE_CAMERACAPTURE = 2;
    public static final int ERROR_MODEL_TYPE_ENCODE_AUDIO = 3;
    public static final int ERROR_MODEL_TYPE_ENCODE_VIDEO = 4;
    public static final int ERROR_MODEL_TYPE_PUBLISH = 5;
    private static StatsLogReport aj = null;

    /* renamed from: b  reason: collision with root package name */
    private static final int f46566b = 44100;

    /* renamed from: f  reason: collision with root package name */
    private static final int f46567f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f46568g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f46569h = 2;
    private float B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int K;
    private int L;
    private int N;
    private int P;
    private int R;
    private float S;
    private String T;
    private int U;
    private String V;
    private long W;
    private int X;
    private int Y;
    private int Z;
    private int aa;
    private float ab;

    /* renamed from: e  reason: collision with root package name */
    private Thread f46573e;

    /* renamed from: j  reason: collision with root package name */
    private String f46575j;

    /* renamed from: k  reason: collision with root package name */
    private String f46576k;

    /* renamed from: l  reason: collision with root package name */
    private String f46577l;

    /* renamed from: m  reason: collision with root package name */
    private String f46578m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f46579n;

    /* renamed from: o  reason: collision with root package name */
    private volatile boolean f46580o;

    /* renamed from: q  reason: collision with root package name */
    private JSONObject f46582q;

    /* renamed from: r  reason: collision with root package name */
    private d f46583r;

    /* renamed from: s  reason: collision with root package name */
    private Timer f46584s;

    /* renamed from: w  reason: collision with root package name */
    private OnLogEventListener f46588w;

    /* renamed from: x  reason: collision with root package name */
    private int f46589x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f46591z;

    /* renamed from: c  reason: collision with root package name */
    private final String f46571c = "StatsLogReport";

    /* renamed from: i  reason: collision with root package name */
    private volatile int f46574i = 0;

    /* renamed from: p  reason: collision with root package name */
    private StringBuffer f46581p = new StringBuffer();

    /* renamed from: u  reason: collision with root package name */
    private boolean f46586u = true;

    /* renamed from: v  reason: collision with root package name */
    private boolean f46587v = false;

    /* renamed from: y  reason: collision with root package name */
    private boolean f46590y = true;
    private boolean A = false;
    private String I = "0x0";
    private String J = "UNKNOWN";
    private String M = "UNKNOWN";
    private String O = "UNKNOWN";
    private String Q = "UNKNOWN";
    private int ac = 9999;
    private long ad = 0;
    private int ae = 0;
    private int af = 0;
    private int ag = 0;
    private int ah = 0;
    private boolean ai = false;

    /* renamed from: a  reason: collision with root package name */
    Runnable f46570a = new Runnable() { // from class: com.ksyun.media.streamer.logstats.StatsLogReport.1
        @Override // java.lang.Runnable
        public void run() {
            if (StatsLogReport.this.f46585t == null) {
                Log.i("StatsLogReport", "init log client failed because the context is null");
                return;
            }
            Log.i("StatsLogReport", "init log client begin");
            JSONObject a10 = com.ksyun.media.streamer.logstats.a.a(StatsLogReport.this.f46585t);
            if (StatsLogReport.this.f46587v) {
                Log.i("StatsLogReport", "***initLog header : " + a10.toString());
            }
            LogClient.getInstance(StatsLogReport.this.f46585t).addReportParam(new LogParams(a10, StatsLogReport.this.f46572d.getStringInfo(StringWrapper.LOG_ACCESS_KEY), StatsLogReport.this.f46572d.getStringInfo(StringWrapper.LOG_SECRET_KEY), c.a()));
            StatsLogReport.this.b(a10.toString());
            LogClient.getInstance(StatsLogReport.this.f46585t).sendIntervalRequest(StatsLogReport.this.ak, c.a());
            LogClient.getInstance(StatsLogReport.this.f46585t).start();
            StatsLogReport.this.f46574i = 2;
            Log.i("StatsLogReport", "init log cleint end");
        }
    };
    private IntervalResultListener ak = new IntervalResultListener() { // from class: com.ksyun.media.streamer.logstats.StatsLogReport.2
        @Override // com.ksy.statlibrary.interval.IntervalResultListener
        public void onGetIntervalFailure(int i4, String str) {
            Log.w("StatsLogReport", "get interval failed retCode:" + i4);
            StatsLogReport.this.ac = 9999;
        }

        @Override // com.ksy.statlibrary.interval.IntervalResultListener
        public void onGetIntervalSuccess(int i4, int i10) {
            if (i4 == 0) {
                Log.d("StatsLogReport", "get interval from server: " + i10);
            } else if (i4 == -1000) {
                Log.d("StatsLogReport", "get interval from local sharepreference : " + i10);
            }
            StatsLogReport.this.ac = i10;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private StringWrapper f46572d = StringWrapper.getInstance();

    /* renamed from: t  reason: collision with root package name */
    private Context f46585t = com.ksyun.media.streamer.util.a.a();

    /* loaded from: classes3.dex */
    public interface OnLogEventListener {
        void onLogEvent(StringBuilder sb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends AsyncTask<String, Void, Void> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
            if (r1 == null) goto L16;
         */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Void doInBackground(java.lang.String... r7) {
            /*
                r6 = this;
                r7 = 0
                r0 = -1
                java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L59 java.net.MalformedURLException -> L61
                java.lang.String r2 = "http://trace-ldns.ksyun.com/getlocaldns"
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L59 java.net.MalformedURLException -> L61
                java.net.URLConnection r1 = r1.openConnection()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L59 java.net.MalformedURLException -> L61
                java.net.HttpURLConnection r1 = (java.net.HttpURLConnection) r1     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L59 java.net.MalformedURLException -> L61
                r2 = 5000(0x1388, float:7.006E-42)
                r1.setConnectTimeout(r2)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                int r0 = r1.getResponseCode()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                r2 = 200(0xc8, float:2.8E-43)
                if (r0 != r2) goto L4a
                java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                java.io.InputStream r3 = r1.getInputStream()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                r2.<init>(r3)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                r3.<init>(r2)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                java.lang.String r5 = ""
                r4.<init>(r5)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
            L31:
                java.lang.String r5 = r3.readLine()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                if (r5 == 0) goto L3b
                r4.append(r5)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                goto L31
            L3b:
                com.ksyun.media.streamer.logstats.StatsLogReport r5 = com.ksyun.media.streamer.logstats.StatsLogReport.this     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                com.ksyun.media.streamer.logstats.StatsLogReport.b(r5, r4)     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                r2.close()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
                r3.close()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
            L4a:
                r1.disconnect()     // Catch: java.io.IOException -> L51 java.net.MalformedURLException -> L53 java.lang.Throwable -> L85
            L4d:
                r1.disconnect()
                goto L69
            L51:
                r2 = move-exception
                goto L5b
            L53:
                r2 = move-exception
                goto L63
            L55:
                r0 = move-exception
                r1 = r7
                r7 = r0
                goto L86
            L59:
                r2 = move-exception
                r1 = r7
            L5b:
                r2.printStackTrace()     // Catch: java.lang.Throwable -> L85
                if (r1 == 0) goto L69
                goto L4d
            L61:
                r2 = move-exception
                r1 = r7
            L63:
                r2.printStackTrace()     // Catch: java.lang.Throwable -> L85
                if (r1 == 0) goto L69
                goto L4d
            L69:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "dns check result:"
                r1.append(r2)
                r1.append(r0)
                java.lang.String r0 = r1.toString()
                java.lang.String r1 = "StatsLogReport"
                android.util.Log.i(r1, r0)
                com.ksyun.media.streamer.logstats.StatsLogReport r0 = com.ksyun.media.streamer.logstats.StatsLogReport.this
                com.ksyun.media.streamer.logstats.StatsLogReport.m(r0)
                return r7
            L85:
                r7 = move-exception
            L86:
                if (r1 == 0) goto L8b
                r1.disconnect()
            L8b:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.logstats.StatsLogReport.a.doInBackground(java.lang.String[]):java.lang.Void");
        }
    }

    private StatsLogReport() {
        LogClient.getInstance();
        j();
    }

    private boolean a(int i4, int i10) {
        return i4 >= 80 || i10 >= 30;
    }

    public static StatsLogReport getInstance() {
        if (aj == null) {
            synchronized (StatsLogReport.class) {
                if (aj == null) {
                    aj = new StatsLogReport();
                }
            }
        }
        return aj;
    }

    public static void uninitInstance() {
        StatsLogReport statsLogReport = aj;
        if (statsLogReport != null) {
            statsLogReport.a();
            aj = null;
        }
    }

    public void estBitrateDrop(int i4, long j4) {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init");
        } else if (i4 >= 0 && j4 >= 0) {
            JSONObject a10 = com.ksyun.media.streamer.logstats.a.a(this.T, this.f46576k, this.f46575j, this.f46585t, this.V, false, i4, j4, this.F, h());
            if (a10 != null) {
                JSONObject c10 = c(a10);
                if (this.f46587v) {
                    Log.i("StatsLogReport", "***estBitrateDrop : " + c10.toString());
                }
                b(c10, false);
            } else if (this.f46587v) {
                Log.w("StatsLogReport", "***estBitrateDrop the wrong notify");
            }
        } else {
            Log.w("StatsLogReport", "estBitrateRaise the input param is wrong. do not report. currentBitrate:" + i4 + "; estimateBandWidth:" + j4);
        }
    }

    public void estBitrateRaise(int i4, long j4) {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init");
        } else if (i4 >= 0 && j4 >= 0) {
            JSONObject a10 = com.ksyun.media.streamer.logstats.a.a(this.T, this.f46576k, this.f46575j, this.f46585t, this.V, true, i4, j4, this.F, h());
            if (a10 != null) {
                JSONObject c10 = c(a10);
                if (this.f46587v) {
                    Log.i("StatsLogReport", "***estBitrateRaise : " + c10.toString());
                }
                b(c10, false);
            } else if (this.f46587v) {
                Log.w("StatsLogReport", "***estBitrateRaise the wrong notify");
            }
        } else {
            Log.w("StatsLogReport", " estBitrateRaise the input param is wrong, do not report. currentBitrate:" + i4 + "; estimateBandWidth:" + j4);
        }
    }

    public void frameDataSendSlow() {
        b.a().h();
    }

    public boolean getEnableDebugLog() {
        return this.f46587v;
    }

    public long getLogInterval() {
        return this.ac;
    }

    public void initLogReport(Context context) {
        this.f46585t = context;
        j();
    }

    public boolean isPermitLogReport() {
        return this.f46586u;
    }

    public void reportError(int i4, int i10) {
        this.ai = true;
        if (this.f46574i == 2) {
            int i11 = -2006;
            if (i10 == 1) {
                i11 = (i4 == -2005 || i4 != -2003) ? -2005 : -2003;
            } else if (i10 != 2) {
                if (i10 == 3) {
                    i11 = i4 != -1002 ? StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNKNOWN : StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNSUPPORTED;
                } else if (i10 != 4) {
                    if (i10 == 5) {
                        if (i4 == -3020) {
                            i11 = -1007;
                        } else if (i4 != -2004) {
                            switch (i4) {
                                case -3012:
                                    i11 = -1010;
                                    break;
                                case -3011:
                                    i11 = StreamerConstants.KSY_STREAMER_ERROR_CONNECT_FAILED;
                                    break;
                                case -3010:
                                    i11 = StreamerConstants.KSY_STREAMER_ERROR_DNS_PARSE_FAILED;
                                    break;
                            }
                        } else {
                            i11 = -2004;
                        }
                    }
                    i11 = i4;
                } else {
                    i11 = i4 != -1002 ? StreamerConstants.KSY_STREAMER_VIDEO_ENCODER_ERROR_UNKNOWN : -1004;
                }
            } else if (i4 != -2006) {
                i11 = i4 != -2002 ? -2001 : -2002;
            }
            b.a().v();
            JSONObject c10 = c(com.ksyun.media.streamer.logstats.a.a(this.T, this.f46576k, this.f46575j, this.f46585t, i11, this.V, h()));
            if (this.f46587v) {
                Log.i("StatsLogReport", "***reportError : " + c10.toString());
            }
            b(c10, false);
        }
    }

    public void setAudioBitrate(int i4) {
        this.H = i4 / 1000;
    }

    public void setAudioChannels(int i4) {
        this.f46589x = i4;
    }

    public void setAudioEncodeProfile(int i4) {
        this.N = i4;
    }

    public void setAudioFrameNum(int i4) {
        this.ae = i4;
    }

    public void setAudioPts(long j4) {
        long j10;
        long j11;
        this.ad = j4;
        if (this.f46579n && this.f46586u && TimeDeltaUtil.getInstance().getTimeDelta() != Long.MAX_VALUE) {
            if (b.a().s() == 0) {
                b.a().c(h());
            }
            if (this.ad - b.a().r() < this.ac || !this.f46579n) {
                return;
            }
            if (l()) {
                j10 = this.ae;
                j11 = 1024;
            } else {
                j10 = this.ae;
                j11 = 2048;
            }
            b(com.ksyun.media.streamer.logstats.a.a(this.f46575j, this.ad, ((j10 * j11) * 1000) / 44100, this.af, this.ah, this.ag, h()), false);
        }
    }

    public void setAudioSampleRateInHz(int i4) {
        this.G = i4;
    }

    public void setAudioSendDelay(int i4) {
        this.ag = i4;
    }

    public void setAutoAdjustVideoBitrate(boolean z9) {
        this.f46590y = z9;
    }

    public void setBwEstStrategy(int i4) {
        this.F = i4;
    }

    public void setConnectTime(int i4) {
        this.aa = i4;
    }

    public synchronized void setContext(Context context) {
        if (context != null) {
            if (this.f46585t == null) {
                this.f46585t = context;
                j();
            }
        }
    }

    public void setCurrentBitrate(float f10) {
        this.ab = f10;
    }

    public void setDnsParseTime(int i4) {
        this.Z = i4;
    }

    public void setEnableDebugLog(boolean z9) {
        this.f46587v = z9;
    }

    public void setEncodeDroppedFrameCount(int i4) {
        this.Y = i4;
    }

    public void setEncodeFormat(int i4) {
        this.L = i4;
    }

    public void setEncodeMethod(int i4) {
        this.K = i4;
    }

    public void setEncodedFrames(long j4) {
        this.W = j4;
    }

    public void setFrameRate(float f10) {
        this.S = f10;
    }

    public void setIFrameIntervalSec(float f10) {
        this.B = f10;
    }

    public void setInitVideoBitrate(int i4) {
        this.C = i4 / 1000;
    }

    public void setIsFrontCameraMirror(boolean z9) {
        this.A = z9;
    }

    public void setIsLandscape(boolean z9) {
        this.f46591z = z9;
    }

    public void setMaxVideoBitrate(int i4) {
        this.D = i4 / 1000;
    }

    public void setMinVideoBitrate(int i4) {
        this.E = i4 / 1000;
    }

    public void setOnLogEventListener(OnLogEventListener onLogEventListener) {
        this.f46588w = onLogEventListener;
    }

    public void setRtmpDroppedFrameCount(int i4) {
        this.X = i4;
    }

    public void setRtmpHostIp(String str) {
        this.V = str;
    }

    public void setTargetResolution(int i4, int i10) {
        this.I = String.valueOf(i4) + y.b.f83919g + String.valueOf(i10);
    }

    public void setUploadedKBytes(int i4) {
        this.U = i4;
    }

    public void setUrl(String str) {
        this.T = str;
    }

    public void setVideoEncodeDelay(int i4) {
        this.ah = i4;
    }

    public void setVideoEncodeProfile(int i4) {
        this.P = i4;
    }

    public void setVideoEncodeScence(int i4) {
        this.R = i4;
    }

    public void setVideoFrameNum(int i4) {
        this.af = i4;
    }

    public void startRecordSuccess() {
        this.f46580o = true;
        if (this.f46579n) {
            updateFunctionPoint(StatsConstant.FUNCTION_STREAMERRECORDER);
        }
    }

    public void startStream(String str, String str2) {
        TimeDeltaUtil.getInstance().getTimeDelta();
        this.f46575j = str2;
        this.f46576k = UUID.randomUUID().toString();
        this.T = str;
        this.U = 0;
        this.V = null;
        this.W = 0L;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0.0f;
        this.ad = 0L;
        this.ae = 0;
        this.af = 0;
        this.ag = 0;
        this.ah = 0;
        this.ai = false;
    }

    public void startStreamSuccess() {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init or disable logreport");
            return;
        }
        this.f46579n = true;
        this.f46583r.a();
        b.a().v();
        b.a().a(this.ab);
        JSONObject c10 = c(com.ksyun.media.streamer.logstats.a.a(this.T, this.f46576k, this.f46575j, this.f46585t, this.V, h()));
        this.f46582q = c10;
        if (this.f46587v) {
            Log.i("StatsLogReport", "***startStreamSuccess : " + c10.toString());
        }
        b(c10, false);
        if (this.f46586u) {
            c();
            e();
        }
        if (this.f46580o) {
            updateFunctionPoint(StatsConstant.FUNCTION_STREAMERRECORDER);
        }
    }

    public void stopRecord() {
        this.f46580o = false;
    }

    public void stopStream() {
        Log.d("StatsLogReport", "stopStream :" + this.ai);
        if (this.f46574i == 2) {
            this.f46582q = null;
            if (!this.ai) {
                JSONObject c10 = c(com.ksyun.media.streamer.logstats.a.a(this.f46576k, this.f46575j, this.f46585t, 0, this.U, this.W, this.X, this.Y, h()));
                if (this.f46587v) {
                    Log.i("StatsLogReport", "***stopStream : " + c10.toString());
                }
                b(c10, false);
            }
            d();
            b.a().v();
            k();
            this.f46579n = false;
        }
        this.ai = false;
    }

    public void updateAudioFilterType(String... strArr) {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init or disable logreport");
            return;
        }
        JSONObject b10 = com.ksyun.media.streamer.logstats.a.b(i(), this.f46585t, strArr);
        if (b10 != null) {
            b(b10, false);
        } else if (this.f46587v) {
            Log.w("StatsLogReport", "***updateAudioFilterType report error");
        }
    }

    public void updateBeautyType(String... strArr) {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init or disable logreport");
            return;
        }
        JSONObject a10 = com.ksyun.media.streamer.logstats.a.a(i(), this.f46585t, strArr);
        if (a10 != null) {
            b(a10, false);
        } else if (this.f46587v) {
            Log.w("StatsLogReport", "***updateBeautyType report error");
        }
    }

    public void updateFunctionPoint(String str) {
        if (this.f46574i != 2) {
            Log.i("StatsLogReport", "the log client is not been init or disable logreport");
            return;
        }
        JSONObject a10 = com.ksyun.media.streamer.logstats.a.a(str, this.f46585t, i());
        if (a10 != null) {
            b(a10, false);
        } else if (this.f46587v) {
            Log.w("StatsLogReport", "***updateFunctionPoint report error");
        }
    }

    private void c() {
        if (this.f46584s == null) {
            Timer timer = new Timer("NetworkStatusStat");
            this.f46584s = timer;
            timer.schedule(new TimerTask() { // from class: com.ksyun.media.streamer.logstats.StatsLogReport.3
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (StatsLogReport.this.f46579n) {
                        b.a().e();
                        b.a().c();
                        if (b.a().f() % 5 == 0 && StatsLogReport.this.f46579n) {
                            StatsLogReport.this.b(com.ksyun.media.streamer.logstats.a.a(StatsLogReport.this.f46576k, StatsLogReport.this.f46575j, StatsLogReport.this.U, StatsLogReport.this.W, StatsLogReport.this.X, StatsLogReport.this.Y, StatsLogReport.this.h()), false);
                        }
                    }
                }
            }, 300L, 1000L);
        }
    }

    private void d() {
        Timer timer = this.f46584s;
        if (timer != null) {
            timer.cancel();
            this.f46584s = null;
        }
    }

    private synchronized void e() {
        Log.i("StatsLogReport", "begin dns check");
        new a().execute(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        int i4 = this.Z;
        int i10 = this.aa;
        b(com.ksyun.media.streamer.logstats.a.a(this.f46576k, this.f46575j, this.f46578m, i4, i10, h()), a(i4, i10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r0 != 3) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void g() {
        /*
            r8 = this;
            int r0 = r8.K
            r1 = 28
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r0 == r5) goto L37
            if (r0 == r4) goto Lf
            if (r0 == r3) goto L37
            goto L5e
        Lf:
            java.lang.String r6 = "hard264"
            r8.J = r6
            int r7 = r8.L
            if (r7 != r5) goto L1a
            r8.J = r6
            goto L20
        L1a:
            if (r7 != r4) goto L20
            java.lang.String r6 = "hard265"
            r8.J = r6
        L20:
            int r6 = r8.N
            if (r6 != r2) goto L29
            java.lang.String r1 = "at_aac_he"
            r8.M = r1
            goto L5e
        L29:
            if (r6 != r1) goto L30
            java.lang.String r1 = "at_aac_hev2"
            r8.M = r1
            goto L5e
        L30:
            if (r6 != r5) goto L5e
            java.lang.String r1 = "at_aac_lc"
            r8.M = r1
            goto L5e
        L37:
            java.lang.String r6 = "soft264"
            r8.J = r6
            int r7 = r8.L
            if (r7 != r5) goto L42
            r8.J = r6
            goto L48
        L42:
            if (r7 != r4) goto L48
            java.lang.String r6 = "soft265"
            r8.J = r6
        L48:
            int r6 = r8.N
            if (r6 != r2) goto L51
            java.lang.String r1 = "soft_aac_he"
            r8.M = r1
            goto L5e
        L51:
            if (r6 != r1) goto L58
            java.lang.String r1 = "soft_aac_hev2"
            r8.M = r1
            goto L5e
        L58:
            if (r6 != r5) goto L5e
            java.lang.String r1 = "soft_aac_lc"
            r8.M = r1
        L5e:
            java.lang.String r1 = "Default"
            java.lang.String r2 = "UNKNOWN"
            if (r0 == r4) goto L80
            int r6 = r8.P
            if (r6 != r3) goto L6d
            java.lang.String r3 = "LowPower"
            r8.O = r3
            goto L82
        L6d:
            if (r6 != r4) goto L74
            java.lang.String r3 = "Balance"
            r8.O = r3
            goto L82
        L74:
            if (r6 != r5) goto L7b
            java.lang.String r3 = "HighPerformance"
            r8.O = r3
            goto L82
        L7b:
            if (r6 != 0) goto L82
            r8.O = r1
            goto L82
        L80:
            r8.O = r2
        L82:
            if (r0 == r4) goto L99
            int r0 = r8.R
            if (r0 != 0) goto L8b
            r8.Q = r1
            goto L9b
        L8b:
            if (r0 != r4) goto L92
            java.lang.String r0 = "Game"
            r8.Q = r0
            goto L9b
        L92:
            if (r0 != r5) goto L9b
            java.lang.String r0 = "Showself"
            r8.Q = r0
            goto L9b
        L99:
            r8.Q = r2
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.logstats.StatsLogReport.g():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long h() {
        if (this.f46579n) {
            long timeDelta = TimeDeltaUtil.getInstance().getTimeDelta();
            return System.currentTimeMillis() + (timeDelta != Long.MAX_VALUE ? timeDelta : 0L);
        }
        return 0L;
    }

    private long i() {
        long timeDelta = TimeDeltaUtil.getInstance().getTimeDelta();
        if (timeDelta == Long.MAX_VALUE) {
            timeDelta = 0;
        }
        return System.currentTimeMillis() + timeDelta;
    }

    private void j() {
        d dVar = this.f46583r;
        if (dVar == null || dVar.b() == null) {
            this.f46583r = new d(this.f46585t, this.f46572d);
        }
        b();
    }

    private void k() {
        this.ab = 0.0f;
        this.ae = 0;
        this.af = 0;
        this.ad = 0L;
    }

    private boolean l() {
        return this.K == 2;
    }

    private void b() {
        if (this.f46585t != null && this.f46574i == 0) {
            PreferenceUtil.init(this.f46585t);
            this.ac = PreferenceUtil.getIntervalTime();
            Thread thread = new Thread(this.f46570a);
            this.f46573e = thread;
            thread.start();
            this.f46574i = 1;
        } else if (this.f46585t == null) {
            Log.i("StatsLogReport", "the user did not set context");
        } else {
            Log.i("StatsLogReport", "mLogClientInitState:" + this.f46574i);
        }
    }

    private void a() {
        this.f46588w = null;
        this.f46582q = null;
        this.f46574i = 0;
        b.b();
        StringWrapper.unInitInstance();
    }

    private JSONObject c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return jSONObject;
        }
        try {
            jSONObject.put(StatsConstant.AUDIO_CHANNELS, this.f46589x);
            jSONObject.put(StatsConstant.AUTO_ADJUST_BITRATE, this.f46590y);
            jSONObject.put(StatsConstant.IS_LANDSPACE, this.f46591z);
            jSONObject.put(StatsConstant.IS_FRONT_MIRROR, this.A);
            jSONObject.put(StatsConstant.IFRAME_INTERVAL, this.B);
            jSONObject.put(StatsConstant.MAX_VIDEO_BITRATE, this.D);
            jSONObject.put(StatsConstant.MIN_VIDEO_BITRATE, this.E);
            jSONObject.put(StatsConstant.VIDEO_BITRATE, this.C);
            jSONObject.put(StatsConstant.SAMPLE_AUDIO_RATE, this.G);
            jSONObject.put(StatsConstant.AUDIO_BITRATE, this.H);
            jSONObject.put(StatsConstant.RESOLUTION, this.I);
            jSONObject.put(StatsConstant.FRAME_RATE, this.S);
            g();
            jSONObject.put(StatsConstant.VIDEO_ENCODE_TYPE, this.J);
            jSONObject.put(StatsConstant.AUDIO_ENCODE_TYPE, this.M);
            jSONObject.put(StatsConstant.VIDEO_ENCODE_PROFILE, this.O);
            jSONObject.put(StatsConstant.VIDEO_SCENCE, this.Q);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    private void a(boolean z9) {
        this.f46586u = z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f46577l = jSONObject.getString("ClientIP");
            this.f46578m = jSONObject.getString("LocalDnsIP");
            Log.i("StatsLogReport", "dns check ClientIP:" + this.f46577l);
            Log.i("StatsLogReport", "dns check LocalDnsIp:" + this.f46578m);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (!this.f46586u || this.f46588w == null || str == null) {
            return;
        }
        StringBuffer stringBuffer = this.f46581p;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            StringBuffer stringBuffer2 = this.f46581p;
            stringBuffer2.delete(0, stringBuffer2.length());
        } else {
            this.f46581p = new StringBuffer();
        }
        this.f46581p.append(str);
        this.f46588w.onLogEvent(new StringBuilder(this.f46581p));
    }

    private void a(JSONObject jSONObject) {
        if (!this.f46586u || this.f46588w == null || jSONObject == null) {
            return;
        }
        StringBuffer stringBuffer = this.f46581p;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            StringBuffer stringBuffer2 = this.f46581p;
            stringBuffer2.delete(0, stringBuffer2.length());
        } else {
            this.f46581p = new StringBuffer();
        }
        this.f46581p.append(jSONObject.toString());
        this.f46588w.onLogEvent(new StringBuilder(this.f46581p));
    }

    private void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            LogClient.getInstance().put(jSONObject.toString(), c.a());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject, boolean z9) {
        a(jSONObject, z9);
        a(jSONObject);
    }

    private void a(JSONObject jSONObject, boolean z9) {
        if (jSONObject == null) {
            return;
        }
        try {
            LogClient.getInstance().put(jSONObject.toString(), c.a(), z9);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void a(String str, boolean z9) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            LogClient.getInstance().put(str, c.a(), z9);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
