package com.ksyun.media.streamer.util.https;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class KsyHttpConnection {

    /* renamed from: g  reason: collision with root package name */
    private KsyHttpResponse f46890g;

    /* renamed from: b  reason: collision with root package name */
    private final String f46885b = "KsyHttpClient";

    /* renamed from: c  reason: collision with root package name */
    private int f46886c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f46887d = 0;

    /* renamed from: e  reason: collision with root package name */
    private HttpURLConnection f46888e = null;

    /* renamed from: f  reason: collision with root package name */
    private HttpsURLConnection f46889f = null;

    /* renamed from: h  reason: collision with root package name */
    private Thread f46891h = null;

    /* renamed from: i  reason: collision with root package name */
    private HttpResponseListener f46892i = null;

    /* renamed from: j  reason: collision with root package name */
    private final Object f46893j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private final Object f46894k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f46895l = false;

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, String> f46884a = new HashMap<>();

    /* renamed from: m  reason: collision with root package name */
    private List<String> f46896m = new LinkedList();

    /* loaded from: classes3.dex */
    public class a implements X509TrustManager {
        public a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            try {
                x509CertificateArr[0].checkValidity();
            } catch (Exception unused) {
                throw new CertificateException("Certificate not valid or trusted.");
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public KsyHttpConnection() {
        this.f46890g = null;
        this.f46890g = new KsyHttpResponse();
    }

    public void addHostName(String str) {
        if (this.f46896m.contains(str)) {
            return;
        }
        this.f46896m.add(str);
    }

    public void cancelHttpRequest() {
        this.f46895l = true;
        Thread thread = this.f46891h;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        this.f46891h.interrupt();
        try {
            this.f46891h.join();
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
    }

    public boolean otherHostName(String str) {
        return this.f46896m.contains(str);
    }

    public void performHttpRequest(final String str) {
        Thread thread = new Thread(new Runnable() { // from class: com.ksyun.media.streamer.util.https.KsyHttpConnection.1

            /* renamed from: a  reason: collision with root package name */
            URL f46897a = null;

            /* renamed from: b  reason: collision with root package name */
            BufferedReader f46898b = null;

            /* renamed from: c  reason: collision with root package name */
            String f46899c = null;

            /* renamed from: d  reason: collision with root package name */
            int f46900d = -1;

            @Override // java.lang.Runnable
            public void run() {
                String str2;
                StringBuilder sb;
                try {
                    try {
                        this.f46897a = new URL(str);
                        try {
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            this.f46900d = -1;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            this.f46900d = -1;
                        }
                    } catch (MalformedURLException e11) {
                        e11.printStackTrace();
                        this.f46900d = -1;
                        KsyHttpConnection.this.f46890g.setResponseCode(this.f46900d);
                        if (!Thread.currentThread().isInterrupted() && KsyHttpConnection.this.f46892i != null) {
                            KsyHttpConnection.this.f46892i.onHttpResponse(KsyHttpConnection.this.f46890g);
                        }
                        BufferedReader bufferedReader = this.f46898b;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (KsyHttpConnection.this.f46888e != null) {
                            KsyHttpConnection.this.f46888e.disconnect();
                        }
                        str2 = "KsyHttpClient";
                        sb = new StringBuilder();
                    }
                    synchronized (KsyHttpConnection.this.f46893j) {
                        if (KsyHttpConnection.this.f46895l) {
                            return;
                        }
                        KsyHttpConnection.this.f46888e = (HttpURLConnection) this.f46897a.openConnection();
                        if (KsyHttpConnection.this.f46887d > 0) {
                            KsyHttpConnection.this.f46888e.setConnectTimeout(KsyHttpConnection.this.f46887d);
                        }
                        if (KsyHttpConnection.this.f46886c > 0) {
                            KsyHttpConnection.this.f46888e.setReadTimeout(KsyHttpConnection.this.f46886c);
                        }
                        for (String str3 : KsyHttpConnection.this.f46884a.keySet()) {
                            KsyHttpConnection.this.f46888e.addRequestProperty(str3, KsyHttpConnection.this.f46884a.get(str3));
                        }
                        this.f46899c = KsyHttpConnection.this.f46888e.getResponseMessage();
                        int responseCode = KsyHttpConnection.this.f46888e.getResponseCode();
                        this.f46900d = responseCode;
                        if (responseCode == 200) {
                            KsyHttpConnection.this.f46890g.restResponse();
                            this.f46898b = new BufferedReader(new InputStreamReader(KsyHttpConnection.this.f46888e.getInputStream()));
                            while (true) {
                                String readLine = this.f46898b.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                KsyHttpConnection.this.f46890g.appendData(readLine);
                            }
                        } else {
                            this.f46900d = -1;
                        }
                        KsyHttpConnection.this.f46890g.setResponseCode(this.f46900d);
                        if (!Thread.currentThread().isInterrupted() && KsyHttpConnection.this.f46892i != null) {
                            KsyHttpConnection.this.f46892i.onHttpResponse(KsyHttpConnection.this.f46890g);
                        }
                        BufferedReader bufferedReader2 = this.f46898b;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (KsyHttpConnection.this.f46888e != null) {
                            KsyHttpConnection.this.f46888e.disconnect();
                        }
                        str2 = "KsyHttpClient";
                        sb = new StringBuilder();
                        sb.append("http response code: ");
                        sb.append(this.f46900d);
                        sb.append(" response message : ");
                        sb.append(this.f46899c);
                        Log.d(str2, sb.toString());
                    }
                } finally {
                    KsyHttpConnection.this.f46890g.setResponseCode(this.f46900d);
                    if (!Thread.currentThread().isInterrupted() && KsyHttpConnection.this.f46892i != null) {
                        KsyHttpConnection.this.f46892i.onHttpResponse(KsyHttpConnection.this.f46890g);
                    }
                    BufferedReader bufferedReader3 = this.f46898b;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    if (KsyHttpConnection.this.f46888e != null) {
                        KsyHttpConnection.this.f46888e.disconnect();
                    }
                    Log.d("KsyHttpClient", "http response code: " + this.f46900d + " response message : " + this.f46899c);
                }
            }
        });
        this.f46891h = thread;
        thread.start();
    }

    public void performHttpsRequest(final String str) {
        Thread thread = new Thread(new Runnable() { // from class: com.ksyun.media.streamer.util.https.KsyHttpConnection.2

            /* renamed from: a  reason: collision with root package name */
            int f46903a = -1;

            /* renamed from: b  reason: collision with root package name */
            String f46904b = null;

            /* renamed from: c  reason: collision with root package name */
            URL f46905c = null;

            /* renamed from: d  reason: collision with root package name */
            SSLContext f46906d = null;

            /* renamed from: e  reason: collision with root package name */
            BufferedReader f46907e = null;

            /* JADX WARN: Code restructure failed: missing block: B:107:0x0269, code lost:
                if (r6.f46909g.f46889f == null) goto L56;
             */
            /* JADX WARN: Code restructure failed: missing block: B:123:0x02b0, code lost:
                if (r6.f46909g.f46889f == null) goto L56;
             */
            /* JADX WARN: Code restructure failed: missing block: B:124:0x02b2, code lost:
                r6.f46909g.f46889f.disconnect();
             */
            /* JADX WARN: Code restructure failed: missing block: B:125:0x02bb, code lost:
                android.util.Log.d("KsyHttpClient", "https response code: " + r6.f46903a + " response message : " + r6.f46904b);
             */
            /* JADX WARN: Code restructure failed: missing block: B:126:0x02dd, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x018b, code lost:
                if (r6.f46909g.f46889f != null) goto L58;
             */
            /* JADX WARN: Code restructure failed: missing block: B:75:0x01d9, code lost:
                if (r6.f46909g.f46889f == null) goto L56;
             */
            /* JADX WARN: Code restructure failed: missing block: B:91:0x0221, code lost:
                if (r6.f46909g.f46889f == null) goto L56;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 808
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.util.https.KsyHttpConnection.AnonymousClass2.run():void");
            }
        });
        this.f46891h = thread;
        thread.start();
    }

    public void setConnectTimeout(int i4) {
        this.f46887d = i4;
    }

    public void setListener(HttpResponseListener httpResponseListener) {
        this.f46892i = httpResponseListener;
    }

    public void setRequestProperty(String str, String str2) {
        this.f46884a.put(str, str2);
    }

    public void setTimeout(int i4) {
        this.f46886c = i4;
    }
}
