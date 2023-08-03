package com.ksyun.media.streamer.util.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.exoplayer2.upstream.w;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;

/* loaded from: classes3.dex */
public class DeviceInfoTools {
    public static final int REQUEST_ERROR_FAILED = -1001;
    public static final int REQUEST_ERROR_PARSE_FILED = -1002;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46764a = "DeviceInfoTools";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46765b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final int f46766c = 5000;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46767d = 5000;

    /* renamed from: u  reason: collision with root package name */
    private static DeviceInfoTools f46768u;
    public b mRequestListener;

    /* renamed from: o  reason: collision with root package name */
    private SharedPreferences f46779o;

    /* renamed from: p  reason: collision with root package name */
    private SharedPreferences.Editor f46780p;

    /* renamed from: s  reason: collision with root package name */
    private String f46783s;

    /* renamed from: t  reason: collision with root package name */
    private DeviceInfo f46784t;

    /* renamed from: e  reason: collision with root package name */
    private final String f46769e = "last_save_time";

    /* renamed from: f  reason: collision with root package name */
    private long f46770f = 604800000;

    /* renamed from: g  reason: collision with root package name */
    private final long f46771g = 86400000;

    /* renamed from: h  reason: collision with root package name */
    private final long f46772h = w.f27407d;

    /* renamed from: i  reason: collision with root package name */
    private final int f46773i = 3;

    /* renamed from: j  reason: collision with root package name */
    private int f46774j = 0;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46775k = false;

    /* renamed from: l  reason: collision with root package name */
    private String f46776l = Build.MODEL;

    /* renamed from: m  reason: collision with root package name */
    private String f46777m = Build.VERSION.RELEASE;

    /* renamed from: n  reason: collision with root package name */
    private final String f46778n = "ksydeviceinfo";

    /* renamed from: r  reason: collision with root package name */
    private final String f46782r = "http://devinfo.ks-live.com:8420/info";

    /* renamed from: q  reason: collision with root package name */
    private final Handler f46781q = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends AsyncTask<String, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        String f46787a;

        /* renamed from: b  reason: collision with root package name */
        String f46788b;

        public a(String str, String str2) {
            this.f46787a = str;
            this.f46788b = str2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x018e, code lost:
            if (r1 != null) goto L21;
         */
        /* JADX WARN: Not initialized variable reg: 1, insn: 0x0195: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:51:0x0195 */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0198  */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Void doInBackground(java.lang.String... r11) {
            /*
                Method dump skipped, instructions count: 412
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.util.device.DeviceInfoTools.a.doInBackground(java.lang.String[]):java.lang.Void");
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(int i4);

        void a(int i4, Object obj);
    }

    private DeviceInfoTools() {
    }

    public static DeviceInfoTools getInstance() {
        if (f46768u == null) {
            synchronized (DeviceInfoTools.class) {
                if (f46768u == null) {
                    f46768u = new DeviceInfoTools();
                }
            }
        }
        return f46768u;
    }

    public DeviceInfo getDeviceInfo() {
        a();
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_DEVICEINFO);
        return this.f46784t;
    }

    public void init(Context context) {
        if (context != null) {
            if (this.f46779o == null) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("ksydeviceinfo", 0);
                this.f46779o = sharedPreferences;
                this.f46780p = sharedPreferences.edit();
            }
            a();
            return;
        }
        throw new IllegalArgumentException("the context must not null");
    }

    public void sendDeviceInfoRequest(b bVar, String str, String str2) {
        this.mRequestListener = bVar;
        new a(str, str2).execute(new String[0]);
    }

    public void unInit() {
        this.f46781q.removeCallbacksAndMessages(null);
    }

    private boolean c() {
        if (this.f46779o == null) {
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = this.f46779o.getLong("last_save_time", 0L);
        return j4 != 0 && currentTimeMillis - j4 >= this.f46770f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f46774j <= 3) {
            this.f46781q.postDelayed(new Runnable() { // from class: com.ksyun.media.streamer.util.device.DeviceInfoTools.1
                @Override // java.lang.Runnable
                public void run() {
                    DeviceInfoTools.this.a();
                }
            }, w.f27407d);
            this.f46774j++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f46781q.postDelayed(new Runnable() { // from class: com.ksyun.media.streamer.util.device.DeviceInfoTools.2
            @Override // java.lang.Runnable
            public void run() {
                DeviceInfoTools.this.a();
            }
        }, 86400000L);
    }

    private DeviceInfo b() {
        SharedPreferences sharedPreferences = this.f46779o;
        if (sharedPreferences == null && this.f46784t == null) {
            Log.w(f46764a, "please call init before call this function");
            DeviceInfo deviceInfo = new DeviceInfo(this.f46776l, this.f46777m);
            this.f46784t = deviceInfo;
            return deviceInfo;
        }
        if (sharedPreferences != null && sharedPreferences.getLong("last_save_time", 0L) != 0) {
            this.f46775k = true;
        }
        if (this.f46784t == null) {
            SharedPreferences sharedPreferences2 = this.f46779o;
            if (sharedPreferences2 != null) {
                this.f46784t = new DeviceInfo(sharedPreferences2, this.f46776l, this.f46777m);
            } else {
                this.f46784t = new DeviceInfo(this.f46776l, this.f46777m);
            }
        }
        return this.f46784t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        b();
        if (c() || !this.f46775k) {
            new a(this.f46776l, this.f46777m).execute(new String[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DeviceInfo deviceInfo) {
        if (this.f46779o == null) {
            return;
        }
        deviceInfo.saveDeviceInfoForLocal(this.f46780p);
        this.f46780p.putLong("last_save_time", System.currentTimeMillis());
        this.f46780p.commit();
        this.f46775k = true;
    }
}
