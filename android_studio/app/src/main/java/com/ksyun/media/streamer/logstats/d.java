package com.ksyun.media.streamer.logstats;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Base64;
import com.ksyun.media.streamer.util.StringWrapper;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONObject;

/* compiled from: StreamSucessCount.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46613a = "StreamSucessCount";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46614b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final int f46615c = 5000;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46616d = 5000;

    /* renamed from: e  reason: collision with root package name */
    private static final String f46617e = "http://videodev.ksyun.com:8980/univ/clientcounter";

    /* renamed from: f  reason: collision with root package name */
    private Context f46618f;

    /* renamed from: g  reason: collision with root package name */
    private StringWrapper f46619g;

    /* renamed from: h  reason: collision with root package name */
    private String f46620h;

    /* renamed from: i  reason: collision with root package name */
    private String f46621i;

    /* renamed from: j  reason: collision with root package name */
    private String f46622j;

    /* renamed from: k  reason: collision with root package name */
    private String f46623k;

    /* compiled from: StreamSucessCount.java */
    /* loaded from: classes3.dex */
    private class a extends AsyncTask<String, Void, Void> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0045, code lost:
            if (r0 == null) goto L10;
         */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Void doInBackground(java.lang.String... r5) {
            /*
                r4 = this;
                com.ksyun.media.streamer.logstats.d r5 = com.ksyun.media.streamer.logstats.d.this
                com.ksyun.media.streamer.logstats.d.a(r5)
                r5 = 0
                java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                com.ksyun.media.streamer.logstats.d r1 = com.ksyun.media.streamer.logstats.d.this     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                java.lang.String r1 = com.ksyun.media.streamer.logstats.d.b(r1)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                r0.<init>(r1)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
                java.lang.String r1 = "GET"
                r0.setRequestMethod(r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                r1 = 5000(0x1388, float:7.006E-42)
                r0.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                r0.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                int r1 = r0.getResponseCode()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                r2 = 200(0xc8, float:2.8E-43)
                if (r1 != r2) goto L47
                java.io.InputStream r1 = r0.getInputStream()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                com.ksyun.media.streamer.logstats.d r2 = com.ksyun.media.streamer.logstats.d.this     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                com.ksyun.media.streamer.logstats.d.a(r2, r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
                goto L47
            L36:
                r5 = move-exception
                goto L3e
            L38:
                goto L45
            L3a:
                r0 = move-exception
                r3 = r0
                r0 = r5
                r5 = r3
            L3e:
                if (r0 == 0) goto L43
                r0.disconnect()
            L43:
                throw r5
            L44:
                r0 = r5
            L45:
                if (r0 == 0) goto L4a
            L47:
                r0.disconnect()
            L4a:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.logstats.d.a.doInBackground(java.lang.String[]):java.lang.Void");
        }
    }

    public d(Context context, StringWrapper stringWrapper) {
        this.f46618f = context;
        this.f46619g = stringWrapper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f46620h == null) {
            d();
        }
        e();
        this.f46623k = f46617e + "?accesskey=" + this.f46619g.getStringInfo(StringWrapper.COUNT_ACCESS_KEY) + "&expire=" + this.f46622j + "&cont=" + this.f46620h + "&uniqname=" + c.a() + "&signature=" + this.f46621i;
    }

    private void d() {
        JSONObject b10 = com.ksyun.media.streamer.logstats.a.b(this.f46618f);
        if (b10 != null) {
            String jSONObject = b10.toString();
            if (TextUtils.isEmpty(jSONObject)) {
                return;
            }
            String encodeToString = Base64.encodeToString(jSONObject.getBytes(), 2);
            this.f46620h = encodeToString;
            try {
                this.f46620h = URLEncoder.encode(encodeToString, c.f46607a);
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        }
    }

    private void e() {
        StringBuilder sb = new StringBuilder();
        sb.append("GET\n");
        sb.append(String.valueOf(this.f46622j));
        sb.append("\n");
        sb.append("cont=" + this.f46620h + "&method=clientcounter&uniqname=" + c.a());
        this.f46621i = c.a(this.f46619g.getStringInfo(StringWrapper.COUNT_SECRET_KEY), sb.toString());
    }

    private long f() {
        long timeInMillis = (Calendar.getInstance().getTimeInMillis() / 1000) + 600;
        new Date(1000 * timeInMillis);
        return timeInMillis;
    }

    public Context b() {
        return this.f46618f;
    }

    public synchronized void a() {
        this.f46622j = String.valueOf(f());
        new a().execute(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                inputStream.close();
                String byteArrayOutputStream2 = byteArrayOutputStream.toString();
                byteArrayOutputStream.close();
                return byteArrayOutputStream2;
            }
        }
    }
}
