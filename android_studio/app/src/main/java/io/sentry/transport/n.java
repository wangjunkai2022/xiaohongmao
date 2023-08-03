package io.sentry.transport;

import com.koushikdutta.async.http.AsyncHttpPost;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.l3;
import io.sentry.o0;
import io.sentry.o2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpConnection.java */
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: e  reason: collision with root package name */
    private static final Charset f84037e = Charset.forName("UTF-8");
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Proxy f84038a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final o2 f84039b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryOptions f84040c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final z f84041d;

    public n(@m8.g SentryOptions sentryOptions, @m8.g o2 o2Var, @m8.g z zVar) {
        this(sentryOptions, o2Var, l.a(), zVar);
    }

    private void a(@m8.g HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
        httpURLConnection.disconnect();
    }

    @m8.g
    private HttpURLConnection b() throws IOException {
        HttpURLConnection f10 = f();
        for (Map.Entry<String, String> entry : this.f84039b.a().entrySet()) {
            f10.setRequestProperty(entry.getKey(), entry.getValue());
        }
        f10.setRequestMethod(AsyncHttpPost.f44556o);
        f10.setDoOutput(true);
        f10.setRequestProperty("Content-Encoding", "gzip");
        f10.setRequestProperty("Content-Type", "application/x-sentry-envelope");
        f10.setRequestProperty(com.google.common.net.b.f34625h, "application/json");
        f10.setRequestProperty(com.google.common.net.b.f34639o, "close");
        f10.setConnectTimeout(this.f84040c.getConnectionTimeoutMillis());
        f10.setReadTimeout(this.f84040c.getReadTimeoutMillis());
        HostnameVerifier hostnameVerifier = this.f84040c.getHostnameVerifier();
        boolean z9 = f10 instanceof HttpsURLConnection;
        if (z9 && hostnameVerifier != null) {
            ((HttpsURLConnection) f10).setHostnameVerifier(hostnameVerifier);
        }
        SSLSocketFactory sslSocketFactory = this.f84040c.getSslSocketFactory();
        if (z9 && sslSocketFactory != null) {
            ((HttpsURLConnection) f10).setSSLSocketFactory(sslSocketFactory);
        }
        f10.connect();
        return f10;
    }

    @m8.g
    private String c(@m8.g HttpURLConnection httpURLConnection) {
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f84037e));
            try {
                StringBuilder sb = new StringBuilder();
                boolean z9 = true;
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (!z9) {
                        sb.append("\n");
                    }
                    sb.append(readLine);
                    z9 = false;
                }
                String sb2 = sb.toString();
                bufferedReader.close();
                if (errorStream != null) {
                    errorStream.close();
                }
                return sb2;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return "Failed to obtain error message while analyzing send failure.";
        }
    }

    private boolean e(int i4) {
        return i4 == 200;
    }

    @m8.g
    private c0 g(@m8.g HttpURLConnection httpURLConnection) {
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                j(httpURLConnection, responseCode);
                if (!e(responseCode)) {
                    o0 logger = this.f84040c.getLogger();
                    SentryLevel sentryLevel = SentryLevel.ERROR;
                    logger.c(sentryLevel, "Request failed, API returned %s", Integer.valueOf(responseCode));
                    if (this.f84040c.isDebug()) {
                        this.f84040c.getLogger().c(sentryLevel, c(httpURLConnection), new Object[0]);
                    }
                    return c0.b(responseCode);
                }
                this.f84040c.getLogger().c(SentryLevel.DEBUG, "Envelope sent successfully.", new Object[0]);
                return c0.e();
            } catch (IOException e4) {
                this.f84040c.getLogger().a(SentryLevel.ERROR, e4, "Error reading and logging the response stream", new Object[0]);
                a(httpURLConnection);
                return c0.a();
            }
        } finally {
            a(httpURLConnection);
        }
    }

    @m8.h
    private Proxy h(@m8.h SentryOptions.e eVar) {
        if (eVar != null) {
            String c10 = eVar.c();
            String a10 = eVar.a();
            if (c10 != null && a10 != null) {
                try {
                    return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(a10, Integer.parseInt(c10)));
                } catch (NumberFormatException e4) {
                    o0 logger = this.f84040c.getLogger();
                    SentryLevel sentryLevel = SentryLevel.ERROR;
                    logger.a(sentryLevel, e4, "Failed to parse Sentry Proxy port: " + eVar.c() + ". Proxy is ignored", new Object[0]);
                }
            }
        }
        return null;
    }

    @m8.h
    @m8.k
    Proxy d() {
        return this.f84038a;
    }

    @m8.g
    HttpURLConnection f() throws IOException {
        URLConnection openConnection;
        if (this.f84038a == null) {
            openConnection = this.f84039b.b().openConnection();
        } else {
            openConnection = this.f84039b.b().openConnection(this.f84038a);
        }
        return (HttpURLConnection) openConnection;
    }

    @m8.g
    public c0 i(@m8.g l3 l3Var) throws IOException {
        HttpURLConnection b10;
        try {
            OutputStream outputStream = b().getOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                this.f84040c.getSerializer().b(l3Var, gZIPOutputStream);
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } finally {
            try {
                return g(b10);
            } finally {
            }
        }
        return g(b10);
    }

    public void j(@m8.g HttpURLConnection httpURLConnection, int i4) {
        String headerField = httpURLConnection.getHeaderField(com.google.common.net.b.f34648s0);
        this.f84041d.k(httpURLConnection.getHeaderField("X-Sentry-Rate-Limits"), headerField, i4);
    }

    n(@m8.g SentryOptions sentryOptions, @m8.g o2 o2Var, @m8.g l lVar, @m8.g z zVar) {
        this.f84039b = o2Var;
        this.f84040c = sentryOptions;
        this.f84041d = zVar;
        Proxy h4 = h(sentryOptions.getProxy());
        this.f84038a = h4;
        if (h4 == null || sentryOptions.getProxy() == null) {
            return;
        }
        String d4 = sentryOptions.getProxy().d();
        String b10 = sentryOptions.getProxy().b();
        if (d4 == null || b10 == null) {
            return;
        }
        lVar.b(new v(d4, b10));
    }
}
