package com.ksyun.media.streamer.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.ksyun.media.streamer.util.https.HttpResponseListener;
import com.ksyun.media.streamer.util.https.KsyHttpClient;
import com.ksyun.media.streamer.util.https.KsyHttpResponse;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes3.dex */
public class TimeDeltaUtil {
    public static final int NTP_QUIT = 4;
    public static final int NTP_SERVER_REQUEST = 2;
    public static final int NTP_SERVER_RETRY = 3;
    public static final int URL_PARSE = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46727a = "TimeDeltaUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final String f46728b = "http://centertime.ksyun.com/time";

    /* renamed from: c  reason: collision with root package name */
    private static final String f46729c = "http://";

    /* renamed from: m  reason: collision with root package name */
    private static final int f46730m = 64;

    /* renamed from: u  reason: collision with root package name */
    private static TimeDeltaUtil f46731u;

    /* renamed from: d  reason: collision with root package name */
    private final int f46732d = 100;

    /* renamed from: e  reason: collision with root package name */
    private final int f46733e = -1;

    /* renamed from: f  reason: collision with root package name */
    private final int f46734f = 5000;

    /* renamed from: g  reason: collision with root package name */
    private final int f46735g = 100;

    /* renamed from: h  reason: collision with root package name */
    private final int f46736h = 3;

    /* renamed from: i  reason: collision with root package name */
    private long f46737i = Long.MAX_VALUE;

    /* renamed from: j  reason: collision with root package name */
    private volatile int f46738j = 0;

    /* renamed from: k  reason: collision with root package name */
    private HandlerThread f46739k;

    /* renamed from: l  reason: collision with root package name */
    private Handler f46740l;

    /* renamed from: n  reason: collision with root package name */
    private String f46741n;

    /* renamed from: o  reason: collision with root package name */
    private String f46742o;

    /* renamed from: p  reason: collision with root package name */
    private long f46743p;

    /* renamed from: q  reason: collision with root package name */
    private String f46744q;

    /* renamed from: r  reason: collision with root package name */
    private String f46745r;

    /* renamed from: s  reason: collision with root package name */
    private long f46746s;

    /* renamed from: t  reason: collision with root package name */
    private long f46747t;

    /* loaded from: classes3.dex */
    public class a implements HttpResponseListener {
        public a() {
        }

        @Override // com.ksyun.media.streamer.util.https.HttpResponseListener
        public void onHttpResponse(KsyHttpResponse ksyHttpResponse) {
            String data = ksyHttpResponse.getData();
            if (ksyHttpResponse.getData() == null || ksyHttpResponse.getData().length() == 0 || -1 == ksyHttpResponse.getResponseCode()) {
                TimeDeltaUtil.this.f46740l.removeMessages(3);
                TimeDeltaUtil.this.f46740l.sendEmptyMessage(3);
                return;
            }
            TimeDeltaUtil.this.f46747t = System.currentTimeMillis();
            if (TimeDeltaUtil.this.f46747t - TimeDeltaUtil.this.f46746s > 100) {
                TimeDeltaUtil.this.f46740l.removeMessages(3);
                TimeDeltaUtil.this.f46740l.sendEmptyMessage(3);
                return;
            }
            try {
                TimeDeltaUtil timeDeltaUtil = TimeDeltaUtil.this;
                timeDeltaUtil.f46737i = ((long) (Double.valueOf(data.trim()).doubleValue() * 1000.0d)) - ((timeDeltaUtil.f46746s + TimeDeltaUtil.this.f46747t) / 2);
            } catch (NumberFormatException e4) {
                e4.printStackTrace();
                Log.e(TimeDeltaUtil.f46727a, "server data error:" + data);
                TimeDeltaUtil.this.f46740l.removeMessages(3);
                TimeDeltaUtil.this.f46740l.sendEmptyMessage(3);
            }
        }
    }

    public static TimeDeltaUtil getInstance() {
        synchronized (TimeDeltaUtil.class) {
            if (f46731u == null) {
                synchronized (TimeDeltaUtil.class) {
                    if (f46731u == null) {
                        f46731u = new TimeDeltaUtil();
                    }
                }
            }
        }
        return f46731u;
    }

    public long getTimeDelta() {
        if (this.f46737i == Long.MAX_VALUE) {
            a();
        }
        return this.f46737i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f46738j++;
        if (this.f46738j < 3) {
            int i4 = 0;
            while (i4 < 5000) {
                try {
                    Thread.sleep(100L);
                    i4 += 100;
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
            Log.e(f46727a, "doRetry:" + this.f46738j);
            this.f46740l.removeMessages(2);
            this.f46740l.sendEmptyMessage(2);
            return;
        }
        this.f46740l.removeMessages(4);
        this.f46740l.sendEmptyMessage(4);
    }

    private void e() {
        KsyHttpClient ksyHttpClient = new KsyHttpClient();
        ksyHttpClient.setTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
        ksyHttpClient.setConnectTimetout(PathInterpolatorCompat.MAX_NUM_POINTS);
        ksyHttpClient.setRequestProperty(com.google.common.net.b.f34653v, this.f46745r);
        ksyHttpClient.setListener(new a());
        this.f46746s = System.currentTimeMillis();
        ksyHttpClient.performHttpRequest(this.f46744q);
    }

    private void a() {
        if (this.f46739k == null) {
            HandlerThread handlerThread = new HandlerThread("ksy_sync_time_thread", 5);
            this.f46739k = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.f46739k.getLooper()) { // from class: com.ksyun.media.streamer.util.TimeDeltaUtil.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i4 = message.what;
                    if (i4 == 1) {
                        TimeDeltaUtil.this.b();
                    } else if (i4 == 2) {
                        TimeDeltaUtil.this.c();
                    } else if (i4 == 3) {
                        TimeDeltaUtil.this.d();
                    } else if (i4 != 4) {
                    } else {
                        Log.e(TimeDeltaUtil.f46727a, "quit");
                        TimeDeltaUtil.this.f46739k.quit();
                    }
                }
            };
            this.f46740l = handler;
            handler.removeMessages(1);
            this.f46740l.sendEmptyMessage(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (a(f46728b) != 0) {
            Log.e(f46727a, "url parse failed");
            return;
        }
        if (!c(this.f46741n)) {
            int indexOf = f46728b.substring(7).indexOf(47);
            StringBuilder sb = new StringBuilder("http://");
            String str = this.f46742o;
            if (str != null) {
                sb.append(str);
            }
            if (indexOf != -1 && indexOf < 32) {
                sb.append(f46728b.substring(indexOf + 7));
            }
            this.f46744q = new String(sb.toString());
            if (this.f46743p != 0) {
                this.f46745r = new String(this.f46741n + ":" + String.valueOf(this.f46743p));
            } else {
                this.f46745r = new String(this.f46741n);
            }
        } else {
            this.f46744q = new String(f46728b);
        }
        this.f46740l.removeMessages(2);
        this.f46740l.sendEmptyMessage(2);
    }

    private boolean c(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (str.charAt(0) == '[' && str.charAt(str.length() - 1) == ']' && str.contains(":")) {
            return true;
        }
        int i4 = 0;
        int i10 = 0;
        while (i4 < 4) {
            int i11 = i10;
            int i12 = 0;
            while (str.charAt(i11) != '.' && str.charAt(i11) != 0) {
                if (i11 - i10 > 2 || str.charAt(i11) < '0' || str.charAt(i11) > '9') {
                    return false;
                }
                i12 = ((i12 * 10) + str.charAt(i11)) - 48;
                i11++;
            }
            if (i11 == i10 || i12 > 255) {
                return false;
            }
            i10 = i11 + 1;
            i4++;
        }
        return i4 == 4 && str.charAt(i10 + (-1)) == 0 && str.charAt(i10 - 2) != '.';
    }

    private int a(String str) {
        if (str != null && str.substring(0, 7).compareToIgnoreCase("http://") == 0) {
            if (b(str) != 0) {
                Log.w(f46727a, "host or port parse failed");
                return -1;
            }
            String str2 = this.f46741n;
            if (str2 != null) {
                if (!c(str2)) {
                    try {
                        this.f46742o = InetAddress.getByName(this.f46741n).getHostAddress().toString();
                    } catch (UnknownHostException e4) {
                        e4.printStackTrace();
                        return -1;
                    }
                } else {
                    this.f46742o = new String(this.f46741n);
                }
                return 0;
            }
            return -1;
        }
        return -1;
    }

    private int b(String str) {
        char charAt;
        int length = str.length();
        if (7 < str.length()) {
            String substring = str.substring(7);
            if (substring.charAt(7) == '[' && substring.contains("]")) {
                int indexOf = substring.indexOf(93);
                if (indexOf <= 7 || (indexOf - 7) + 1 >= 64) {
                    return -1;
                }
                int i4 = indexOf + 1;
                this.f46741n = str.substring(7, i4);
                if (substring.charAt(i4) == ':') {
                    this.f46743p = Long.valueOf(substring.substring(i4 + 1)).longValue();
                }
            } else {
                int i10 = 7;
                loop0: while (true) {
                    int i11 = 0;
                    while (i10 < length) {
                        charAt = str.charAt(i10);
                        if (charAt == ':' || charAt == '/') {
                            break loop0;
                        } else if (i11 < 64) {
                            i11++;
                            i10++;
                        }
                    }
                }
                if (charAt == ':') {
                    i10++;
                    this.f46743p = Long.valueOf(str.substring(i10)).longValue();
                }
                this.f46741n = str.substring(7, i10);
            }
            return 0;
        }
        return -1;
    }
}
