package com.alipay.sdk.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import java.net.URL;
import org.apache.http.HttpHost;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f6883c = "application/octet-stream;binary/octet-stream";

    /* renamed from: a  reason: collision with root package name */
    private Context f6884a;

    /* renamed from: b  reason: collision with root package name */
    public String f6885b;

    private a(Context context) {
        this(context, null);
    }

    private String a() {
        return this.f6885b;
    }

    private void c(String str) {
        this.f6885b = str;
    }

    private URL d() {
        try {
            return new URL(this.f6885b);
        } catch (Exception unused) {
            return null;
        }
    }

    private HttpHost e() {
        URL d4;
        String i4 = i();
        if ((i4 == null || i4.contains("wap")) && (d4 = d()) != null) {
            "https".equalsIgnoreCase(d4.getProtocol());
            String property = System.getProperty("https.proxyHost");
            String property2 = System.getProperty("https.proxyPort");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return new HttpHost(property, Integer.parseInt(property2));
        }
        return null;
    }

    private HttpHost f() {
        NetworkInfo h4 = h();
        if (h4 != null && h4.isAvailable() && h4.getType() == 0) {
            String defaultHost = Proxy.getDefaultHost();
            int defaultPort = Proxy.getDefaultPort();
            if (defaultHost != null) {
                return new HttpHost(defaultHost, defaultPort);
            }
        }
        return null;
    }

    private HttpHost g() {
        URL d4;
        String i4 = i();
        if ((i4 == null || i4.contains("wap")) && (d4 = d()) != null) {
            "https".equalsIgnoreCase(d4.getProtocol());
            String property = System.getProperty("https.proxyHost");
            String property2 = System.getProperty("https.proxyPort");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return new HttpHost(property, Integer.parseInt(property2));
        }
        return null;
    }

    private NetworkInfo h() {
        try {
            return ((ConnectivityManager) this.f6884a.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    private String i() {
        try {
            NetworkInfo h4 = h();
            return (h4 == null || !h4.isAvailable()) ? "none" : h4.getType() == 1 ? "wifi" : h4.getExtraInfo().toLowerCase();
        } catch (Exception unused) {
            return "none";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0050 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:5:0x000e, B:7:0x001a, B:16:0x0050, B:18:0x0057, B:21:0x005b, B:24:0x008a, B:25:0x008e, B:27:0x0094, B:28:0x009e, B:30:0x00a9, B:32:0x00ac, B:34:0x00b0, B:35:0x00b9, B:37:0x00bf, B:39:0x00c2, B:41:0x00c6, B:22:0x0081, B:10:0x0024, B:12:0x002a, B:14:0x0045), top: B:49:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008a A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:5:0x000e, B:7:0x001a, B:16:0x0050, B:18:0x0057, B:21:0x005b, B:24:0x008a, B:25:0x008e, B:27:0x0094, B:28:0x009e, B:30:0x00a9, B:32:0x00ac, B:34:0x00b0, B:35:0x00b9, B:37:0x00bf, B:39:0x00c2, B:41:0x00c6, B:22:0x0081, B:10:0x0024, B:12:0x002a, B:14:0x0045), top: B:49:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:5:0x000e, B:7:0x001a, B:16:0x0050, B:18:0x0057, B:21:0x005b, B:24:0x008a, B:25:0x008e, B:27:0x0094, B:28:0x009e, B:30:0x00a9, B:32:0x00ac, B:34:0x00b0, B:35:0x00b9, B:37:0x00bf, B:39:0x00c2, B:41:0x00c6, B:22:0x0081, B:10:0x0024, B:12:0x002a, B:14:0x0045), top: B:49:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bf A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:5:0x000e, B:7:0x001a, B:16:0x0050, B:18:0x0057, B:21:0x005b, B:24:0x008a, B:25:0x008e, B:27:0x0094, B:28:0x009e, B:30:0x00a9, B:32:0x00ac, B:34:0x00b0, B:35:0x00b9, B:37:0x00bf, B:39:0x00c2, B:41:0x00c6, B:22:0x0081, B:10:0x0024, B:12:0x002a, B:14:0x0045), top: B:49:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.apache.http.HttpResponse b(byte[] r10, java.util.List<org.apache.http.Header> r11) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.String r0 = "Keep-Alive"
            java.lang.String r1 = "X-ExecuteTime"
            java.lang.String r2 = "X-Hostname"
            com.alipay.sdk.net.b r3 = com.alipay.sdk.net.b.a()
            r4 = 0
            if (r3 != 0) goto Le
            return r4
        Le:
            org.apache.http.impl.client.DefaultHttpClient r5 = r3.f6888a     // Catch: java.lang.Throwable -> Ld0
            org.apache.http.params.HttpParams r5 = r5.getParams()     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r6 = r9.i()     // Catch: java.lang.Throwable -> Ld0
            if (r6 == 0) goto L24
            java.lang.String r7 = "wap"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> Ld0
            if (r6 != 0) goto L24
        L22:
            r8 = r4
            goto L4e
        L24:
            java.net.URL r6 = r9.d()     // Catch: java.lang.Throwable -> Ld0
            if (r6 == 0) goto L22
            java.lang.String r6 = r6.getProtocol()     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r7 = "https"
            r7.equalsIgnoreCase(r6)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r6 = "https.proxyHost"
            java.lang.String r6 = java.lang.System.getProperty(r6)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r7 = "https.proxyPort"
            java.lang.String r7 = java.lang.System.getProperty(r7)     // Catch: java.lang.Throwable -> Ld0
            boolean r8 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> Ld0
            if (r8 != 0) goto L22
            org.apache.http.HttpHost r8 = new org.apache.http.HttpHost     // Catch: java.lang.Throwable -> Ld0
            int r7 = java.lang.Integer.parseInt(r7)     // Catch: java.lang.Throwable -> Ld0
            r8.<init>(r6, r7)     // Catch: java.lang.Throwable -> Ld0
        L4e:
            if (r8 == 0) goto L55
            java.lang.String r6 = "http.route.default-proxy"
            r5.setParameter(r6, r8)     // Catch: java.lang.Throwable -> Ld0
        L55:
            if (r10 == 0) goto L81
            int r5 = r10.length     // Catch: java.lang.Throwable -> Ld0
            if (r5 != 0) goto L5b
            goto L81
        L5b:
            org.apache.http.client.methods.HttpPost r5 = new org.apache.http.client.methods.HttpPost     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r6 = r9.f6885b     // Catch: java.lang.Throwable -> Ld0
            r5.<init>(r6)     // Catch: java.lang.Throwable -> Ld0
            org.apache.http.entity.ByteArrayEntity r6 = new org.apache.http.entity.ByteArrayEntity     // Catch: java.lang.Throwable -> Ld0
            r6.<init>(r10)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r10 = "application/octet-stream;binary/octet-stream"
            r6.setContentType(r10)     // Catch: java.lang.Throwable -> Ld0
            r5.setEntity(r6)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r10 = "Accept-Charset"
            java.lang.String r6 = "UTF-8"
            r5.addHeader(r10, r6)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r10 = "Connection"
            r5.addHeader(r10, r0)     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r10 = "timeout=180, max=100"
            r5.addHeader(r0, r10)     // Catch: java.lang.Throwable -> Ld0
            goto L88
        L81:
            org.apache.http.client.methods.HttpGet r5 = new org.apache.http.client.methods.HttpGet     // Catch: java.lang.Throwable -> Ld0
            java.lang.String r10 = r9.f6885b     // Catch: java.lang.Throwable -> Ld0
            r5.<init>(r10)     // Catch: java.lang.Throwable -> Ld0
        L88:
            if (r11 == 0) goto L9e
            java.util.Iterator r10 = r11.iterator()     // Catch: java.lang.Throwable -> Ld0
        L8e:
            boolean r11 = r10.hasNext()     // Catch: java.lang.Throwable -> Ld0
            if (r11 == 0) goto L9e
            java.lang.Object r11 = r10.next()     // Catch: java.lang.Throwable -> Ld0
            org.apache.http.Header r11 = (org.apache.http.Header) r11     // Catch: java.lang.Throwable -> Ld0
            r5.addHeader(r11)     // Catch: java.lang.Throwable -> Ld0
            goto L8e
        L9e:
            org.apache.http.HttpResponse r10 = r3.h(r5)     // Catch: java.lang.Throwable -> Ld0
            org.apache.http.Header[] r11 = r10.getHeaders(r2)     // Catch: java.lang.Throwable -> Ld0
            r0 = 0
            if (r11 == 0) goto Lb9
            int r5 = r11.length     // Catch: java.lang.Throwable -> Ld0
            if (r5 <= 0) goto Lb9
            r11 = r11[r0]     // Catch: java.lang.Throwable -> Ld0
            if (r11 == 0) goto Lb9
            org.apache.http.Header[] r11 = r10.getHeaders(r2)     // Catch: java.lang.Throwable -> Ld0
            r11 = r11[r0]     // Catch: java.lang.Throwable -> Ld0
            r11.toString()     // Catch: java.lang.Throwable -> Ld0
        Lb9:
            org.apache.http.Header[] r11 = r10.getHeaders(r1)     // Catch: java.lang.Throwable -> Ld0
            if (r11 == 0) goto Lcf
            int r2 = r11.length     // Catch: java.lang.Throwable -> Ld0
            if (r2 <= 0) goto Lcf
            r11 = r11[r0]     // Catch: java.lang.Throwable -> Ld0
            if (r11 == 0) goto Lcf
            org.apache.http.Header[] r11 = r10.getHeaders(r1)     // Catch: java.lang.Throwable -> Ld0
            r11 = r11[r0]     // Catch: java.lang.Throwable -> Ld0
            r11.toString()     // Catch: java.lang.Throwable -> Ld0
        Lcf:
            return r10
        Ld0:
            r10 = move-exception
            org.apache.http.impl.client.DefaultHttpClient r11 = r3.f6888a     // Catch: java.lang.Throwable -> Lde
            org.apache.http.conn.ClientConnectionManager r11 = r11.getConnectionManager()     // Catch: java.lang.Throwable -> Lde
            if (r11 == 0) goto Lde
            r11.shutdown()     // Catch: java.lang.Throwable -> Lde
            com.alipay.sdk.net.b.f6887c = r4     // Catch: java.lang.Throwable -> Lde
        Lde:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.net.a.b(byte[], java.util.List):org.apache.http.HttpResponse");
    }

    public a(Context context, String str) {
        this.f6884a = context;
        this.f6885b = str;
    }
}
