package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public final class u implements Callable<y> {

    /* renamed from: q  reason: collision with root package name */
    private static final HttpRequestRetryHandler f6674q = new e();

    /* renamed from: a  reason: collision with root package name */
    protected p f6675a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f6676b;

    /* renamed from: c  reason: collision with root package name */
    protected s f6677c;

    /* renamed from: d  reason: collision with root package name */
    private HttpUriRequest f6678d;

    /* renamed from: g  reason: collision with root package name */
    private CookieManager f6681g;

    /* renamed from: h  reason: collision with root package name */
    private AbstractHttpEntity f6682h;

    /* renamed from: i  reason: collision with root package name */
    private HttpHost f6683i;

    /* renamed from: j  reason: collision with root package name */
    private URL f6684j;

    /* renamed from: k  reason: collision with root package name */
    String f6685k;

    /* renamed from: p  reason: collision with root package name */
    private String f6690p;

    /* renamed from: e  reason: collision with root package name */
    private HttpContext f6679e = new BasicHttpContext();

    /* renamed from: f  reason: collision with root package name */
    private CookieStore f6680f = new BasicCookieStore();

    /* renamed from: l  reason: collision with root package name */
    private int f6686l = 0;

    /* renamed from: m  reason: collision with root package name */
    private boolean f6687m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6688n = false;

    /* renamed from: o  reason: collision with root package name */
    private String f6689o = null;

    public u(p pVar, s sVar) {
        this.f6675a = pVar;
        this.f6676b = pVar.f6652a;
        this.f6677c = sVar;
    }

    private static long a(String[] strArr) {
        for (int i4 = 0; i4 < strArr.length; i4++) {
            if ("max-age".equalsIgnoreCase(strArr[i4])) {
                int i10 = i4 + 1;
                if (strArr[i10] != null) {
                    try {
                        return Long.parseLong(strArr[i10]);
                    } catch (Exception unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return 0L;
    }

    private static HttpUrlHeader b(HttpResponse httpResponse) {
        Header[] allHeaders;
        HttpUrlHeader httpUrlHeader = new HttpUrlHeader();
        for (Header header : httpResponse.getAllHeaders()) {
            httpUrlHeader.setHead(header.getName(), header.getValue());
        }
        return httpUrlHeader;
    }

    private y d(HttpResponse httpResponse, int i4, String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        String str2;
        Thread.currentThread().getId();
        HttpEntity entity = httpResponse.getEntity();
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        String str3 = null;
        if (entity == null || httpResponse.getStatusLine().getStatusCode() != 200) {
            if (entity == null) {
                httpResponse.getStatusLine().getStatusCode();
                return null;
            }
            return null;
        }
        Thread.currentThread().getId();
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th) {
            th = th;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            f(entity, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.f6688n = false;
            this.f6675a.g(System.currentTimeMillis() - currentTimeMillis);
            this.f6675a.d(byteArray.length);
            t tVar = new t(b(httpResponse), i4, str, byteArray);
            long g4 = g(httpResponse);
            Header contentType = httpResponse.getEntity().getContentType();
            if (contentType != null) {
                HashMap<String, String> e4 = e(contentType.getValue());
                str3 = e4.get("Content-Type");
                str2 = e4.get("charset");
            } else {
                str2 = null;
            }
            tVar.a(str3);
            tVar.e(str2);
            tVar.d(System.currentTimeMillis());
            tVar.f(g4);
            try {
                byteArrayOutputStream.close();
                return tVar;
            } catch (IOException e10) {
                throw new RuntimeException("ArrayOutputStream close error!", e10.getCause());
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            if (byteArrayOutputStream2 != null) {
                try {
                    byteArrayOutputStream2.close();
                } catch (IOException e11) {
                    throw new RuntimeException("ArrayOutputStream close error!", e11.getCause());
                }
            }
            throw th;
        }
    }

    private static HashMap<String, String> e(String str) {
        String[] split;
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str2 : str.split(com.alipay.sdk.util.i.f6965b)) {
            String[] split2 = str2.indexOf(61) == -1 ? new String[]{"Content-Type", str2} : str2.split("=");
            hashMap.put(split2[0], split2[1]);
        }
        return hashMap;
    }

    private void f(HttpEntity httpEntity, OutputStream outputStream) {
        InputStream c10 = f.c(httpEntity);
        long contentLength = httpEntity.getContentLength();
        try {
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = c10.read(bArr);
                    if (read == -1 || this.f6677c.c()) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    if (this.f6677c.a() != null && contentLength > 0) {
                        this.f6677c.a();
                    }
                }
                outputStream.flush();
            } catch (Exception e4) {
                e4.getCause();
                throw new IOException("HttpWorker Request Error!" + e4.getLocalizedMessage());
            }
        } finally {
            v.a(c10);
        }
    }

    private static long g(HttpResponse httpResponse) {
        Header firstHeader = httpResponse.getFirstHeader(com.google.common.net.b.f34606a);
        if (firstHeader != null) {
            String[] split = firstHeader.getValue().split("=");
            if (split.length >= 2) {
                try {
                    return a(split);
                } catch (NumberFormatException unused) {
                }
            }
        }
        Header firstHeader2 = httpResponse.getFirstHeader(com.google.common.net.b.f34630j0);
        if (firstHeader2 != null) {
            return f.i(firstHeader2.getValue()) - System.currentTimeMillis();
        }
        return 0L;
    }

    private URI h() {
        String d4 = this.f6677c.d();
        String str = this.f6685k;
        if (str != null) {
            d4 = str;
        }
        if (d4 != null) {
            return new URI(d4);
        }
        throw new RuntimeException("url should not be null");
    }

    private HttpUriRequest i() {
        HttpUriRequest httpUriRequest = this.f6678d;
        if (httpUriRequest != null) {
            return httpUriRequest;
        }
        if (this.f6682h == null) {
            byte[] k10 = this.f6677c.k();
            String j4 = this.f6677c.j("gzip");
            if (k10 != null) {
                if (TextUtils.equals(j4, "true")) {
                    this.f6682h = f.f(k10);
                } else {
                    this.f6682h = new ByteArrayEntity(k10);
                }
                this.f6682h.setContentType(this.f6677c.l());
            }
        }
        AbstractHttpEntity abstractHttpEntity = this.f6682h;
        if (abstractHttpEntity != null) {
            HttpPost httpPost = new HttpPost(h());
            httpPost.setEntity(abstractHttpEntity);
            this.f6678d = httpPost;
        } else {
            this.f6678d = new HttpGet(h());
        }
        return this.f6678d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100 A[Catch: Exception -> 0x0248, NullPointerException -> 0x026a, IOException -> 0x0289, UnknownHostException -> 0x02ae, HttpHostConnectException -> 0x02d5, NoHttpResponseException -> 0x02f9, SocketTimeoutException -> 0x031f, ConnectTimeoutException -> 0x0345, ConnectionPoolTimeoutException -> 0x036a, SSLException -> 0x038f, SSLPeerUnverifiedException -> 0x03b4, SSLHandshakeException -> 0x03d9, URISyntaxException -> 0x03fe, HttpException -> 0x040b, TryCatch #3 {HttpException -> 0x040b, SocketTimeoutException -> 0x031f, URISyntaxException -> 0x03fe, UnknownHostException -> 0x02ae, SSLException -> 0x038f, ConnectTimeoutException -> 0x0345, Exception -> 0x0248, ConnectionPoolTimeoutException -> 0x036a, HttpHostConnectException -> 0x02d5, IOException -> 0x0289, NullPointerException -> 0x026a, NoHttpResponseException -> 0x02f9, SSLHandshakeException -> 0x03d9, SSLPeerUnverifiedException -> 0x03b4, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0047, B:25:0x004d, B:26:0x0051, B:28:0x0057, B:29:0x0065, B:31:0x00c9, B:33:0x00cf, B:35:0x00d9, B:38:0x00e2, B:40:0x00ee, B:44:0x00f8, B:48:0x0118, B:50:0x0120, B:51:0x012d, B:53:0x0153, B:54:0x015a, B:56:0x0160, B:57:0x0164, B:59:0x016a, B:61:0x0176, B:65:0x01a5, B:66:0x01c1, B:74:0x01de, B:75:0x01f7, B:76:0x01f8, B:78:0x0200, B:80:0x0206, B:84:0x0212, B:86:0x0216, B:88:0x0226, B:90:0x022e, B:92:0x0238, B:47:0x0100, B:94:0x023c, B:95:0x0247, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:180:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0120 A[Catch: Exception -> 0x0248, NullPointerException -> 0x026a, IOException -> 0x0289, UnknownHostException -> 0x02ae, HttpHostConnectException -> 0x02d5, NoHttpResponseException -> 0x02f9, SocketTimeoutException -> 0x031f, ConnectTimeoutException -> 0x0345, ConnectionPoolTimeoutException -> 0x036a, SSLException -> 0x038f, SSLPeerUnverifiedException -> 0x03b4, SSLHandshakeException -> 0x03d9, URISyntaxException -> 0x03fe, HttpException -> 0x040b, TryCatch #3 {HttpException -> 0x040b, SocketTimeoutException -> 0x031f, URISyntaxException -> 0x03fe, UnknownHostException -> 0x02ae, SSLException -> 0x038f, ConnectTimeoutException -> 0x0345, Exception -> 0x0248, ConnectionPoolTimeoutException -> 0x036a, HttpHostConnectException -> 0x02d5, IOException -> 0x0289, NullPointerException -> 0x026a, NoHttpResponseException -> 0x02f9, SSLHandshakeException -> 0x03d9, SSLPeerUnverifiedException -> 0x03b4, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0047, B:25:0x004d, B:26:0x0051, B:28:0x0057, B:29:0x0065, B:31:0x00c9, B:33:0x00cf, B:35:0x00d9, B:38:0x00e2, B:40:0x00ee, B:44:0x00f8, B:48:0x0118, B:50:0x0120, B:51:0x012d, B:53:0x0153, B:54:0x015a, B:56:0x0160, B:57:0x0164, B:59:0x016a, B:61:0x0176, B:65:0x01a5, B:66:0x01c1, B:74:0x01de, B:75:0x01f7, B:76:0x01f8, B:78:0x0200, B:80:0x0206, B:84:0x0212, B:86:0x0216, B:88:0x0226, B:90:0x022e, B:92:0x0238, B:47:0x0100, B:94:0x023c, B:95:0x0247, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:180:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0153 A[Catch: Exception -> 0x0248, NullPointerException -> 0x026a, IOException -> 0x0289, UnknownHostException -> 0x02ae, HttpHostConnectException -> 0x02d5, NoHttpResponseException -> 0x02f9, SocketTimeoutException -> 0x031f, ConnectTimeoutException -> 0x0345, ConnectionPoolTimeoutException -> 0x036a, SSLException -> 0x038f, SSLPeerUnverifiedException -> 0x03b4, SSLHandshakeException -> 0x03d9, URISyntaxException -> 0x03fe, HttpException -> 0x040b, TryCatch #3 {HttpException -> 0x040b, SocketTimeoutException -> 0x031f, URISyntaxException -> 0x03fe, UnknownHostException -> 0x02ae, SSLException -> 0x038f, ConnectTimeoutException -> 0x0345, Exception -> 0x0248, ConnectionPoolTimeoutException -> 0x036a, HttpHostConnectException -> 0x02d5, IOException -> 0x0289, NullPointerException -> 0x026a, NoHttpResponseException -> 0x02f9, SSLHandshakeException -> 0x03d9, SSLPeerUnverifiedException -> 0x03b4, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0047, B:25:0x004d, B:26:0x0051, B:28:0x0057, B:29:0x0065, B:31:0x00c9, B:33:0x00cf, B:35:0x00d9, B:38:0x00e2, B:40:0x00ee, B:44:0x00f8, B:48:0x0118, B:50:0x0120, B:51:0x012d, B:53:0x0153, B:54:0x015a, B:56:0x0160, B:57:0x0164, B:59:0x016a, B:61:0x0176, B:65:0x01a5, B:66:0x01c1, B:74:0x01de, B:75:0x01f7, B:76:0x01f8, B:78:0x0200, B:80:0x0206, B:84:0x0212, B:86:0x0216, B:88:0x0226, B:90:0x022e, B:92:0x0238, B:47:0x0100, B:94:0x023c, B:95:0x0247, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:180:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0160 A[Catch: Exception -> 0x0248, NullPointerException -> 0x026a, IOException -> 0x0289, UnknownHostException -> 0x02ae, HttpHostConnectException -> 0x02d5, NoHttpResponseException -> 0x02f9, SocketTimeoutException -> 0x031f, ConnectTimeoutException -> 0x0345, ConnectionPoolTimeoutException -> 0x036a, SSLException -> 0x038f, SSLPeerUnverifiedException -> 0x03b4, SSLHandshakeException -> 0x03d9, URISyntaxException -> 0x03fe, HttpException -> 0x040b, TryCatch #3 {HttpException -> 0x040b, SocketTimeoutException -> 0x031f, URISyntaxException -> 0x03fe, UnknownHostException -> 0x02ae, SSLException -> 0x038f, ConnectTimeoutException -> 0x0345, Exception -> 0x0248, ConnectionPoolTimeoutException -> 0x036a, HttpHostConnectException -> 0x02d5, IOException -> 0x0289, NullPointerException -> 0x026a, NoHttpResponseException -> 0x02f9, SSLHandshakeException -> 0x03d9, SSLPeerUnverifiedException -> 0x03b4, blocks: (B:4:0x0006, B:18:0x0032, B:20:0x003a, B:21:0x003f, B:23:0x0047, B:25:0x004d, B:26:0x0051, B:28:0x0057, B:29:0x0065, B:31:0x00c9, B:33:0x00cf, B:35:0x00d9, B:38:0x00e2, B:40:0x00ee, B:44:0x00f8, B:48:0x0118, B:50:0x0120, B:51:0x012d, B:53:0x0153, B:54:0x015a, B:56:0x0160, B:57:0x0164, B:59:0x016a, B:61:0x0176, B:65:0x01a5, B:66:0x01c1, B:74:0x01de, B:75:0x01f7, B:76:0x01f8, B:78:0x0200, B:80:0x0206, B:84:0x0212, B:86:0x0216, B:88:0x0226, B:90:0x022e, B:92:0x0238, B:47:0x0100, B:94:0x023c, B:95:0x0247, B:7:0x0017, B:9:0x001b, B:11:0x001f, B:13:0x0025, B:16:0x002d), top: B:180:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d5  */
    @Override // java.util.concurrent.Callable
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.alipay.android.phone.mrpc.core.y call() {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.android.phone.mrpc.core.u.call():com.alipay.android.phone.mrpc.core.y");
    }

    private void k() {
        HttpUriRequest httpUriRequest = this.f6678d;
        if (httpUriRequest != null) {
            httpUriRequest.abort();
        }
    }

    private String l() {
        if (TextUtils.isEmpty(this.f6690p)) {
            String j4 = this.f6677c.j("operationType");
            this.f6690p = j4;
            return j4;
        }
        return this.f6690p;
    }

    private int m() {
        URL n9 = n();
        return n9.getPort() == -1 ? n9.getDefaultPort() : n9.getPort();
    }

    private URL n() {
        URL url = this.f6684j;
        if (url != null) {
            return url;
        }
        URL url2 = new URL(this.f6677c.d());
        this.f6684j = url2;
        return url2;
    }

    private CookieManager o() {
        CookieManager cookieManager = this.f6681g;
        if (cookieManager != null) {
            return cookieManager;
        }
        CookieManager cookieManager2 = CookieManager.getInstance();
        this.f6681g = cookieManager2;
        return cookieManager2;
    }

    public final s c() {
        return this.f6677c;
    }
}
