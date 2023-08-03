package com.koushikdutta.async.http;

import android.net.Uri;
import android.util.Log;
import com.koushikdutta.async.AsyncSSLException;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.util.Locale;

/* loaded from: classes3.dex */
public class AsyncHttpRequest {

    /* renamed from: m  reason: collision with root package name */
    public static final String f44558m = "*/*";

    /* renamed from: n  reason: collision with root package name */
    public static final int f44559n = 30000;

    /* renamed from: a  reason: collision with root package name */
    private String f44560a;

    /* renamed from: b  reason: collision with root package name */
    private String f44561b;

    /* renamed from: c  reason: collision with root package name */
    Uri f44562c;

    /* renamed from: d  reason: collision with root package name */
    private Headers f44563d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44564e;

    /* renamed from: f  reason: collision with root package name */
    private AsyncHttpRequestBody f44565f;

    /* renamed from: g  reason: collision with root package name */
    int f44566g;

    /* renamed from: h  reason: collision with root package name */
    String f44567h;

    /* renamed from: i  reason: collision with root package name */
    int f44568i;

    /* renamed from: j  reason: collision with root package name */
    String f44569j;

    /* renamed from: k  reason: collision with root package name */
    int f44570k;

    /* renamed from: l  reason: collision with root package name */
    long f44571l;

    public AsyncHttpRequest(Uri uri, String str) {
        this(uri, str, null);
    }

    public static void E(Headers headers, Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (uri.getPort() != -1) {
                host = host + ":" + uri.getPort();
            }
            if (host != null) {
                headers.n(com.google.common.net.b.f34653v, host);
            }
        }
        headers.n(com.google.common.net.b.M, g());
        headers.n(com.google.common.net.b.f34629j, "gzip, deflate");
        headers.n(com.google.common.net.b.f34639o, "keep-alive");
        headers.n(com.google.common.net.b.f34625h, f44558m);
    }

    protected static String g() {
        String property = System.getProperty("http.agent");
        if (property != null) {
            return property;
        }
        return "Java" + System.getProperty("java.version");
    }

    private String k(String str) {
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", Long.valueOf(this.f44571l != 0 ? System.currentTimeMillis() - this.f44571l : 0L), t(), str);
    }

    public void A(String str) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 2) {
            Log.v(str2, k(str));
        }
    }

    public void B(String str) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 5) {
            Log.w(str2, k(str));
        }
    }

    public void C(AsyncSSLException asyncSSLException) {
    }

    public void D(AsyncHttpRequestBody asyncHttpRequestBody) {
        this.f44565f = asyncHttpRequestBody;
    }

    public AsyncHttpRequest F(boolean z9) {
        this.f44564e = z9;
        return this;
    }

    public AsyncHttpRequest G(String str, String str2) {
        i().n(str, str2);
        return this;
    }

    public void H(String str, int i4) {
        this.f44569j = str;
        this.f44570k = i4;
    }

    public AsyncHttpRequest I(String str) {
        if (getClass() == AsyncHttpRequest.class) {
            this.f44561b = str;
            return this;
        }
        throw new UnsupportedOperationException("can't change method on a subclass of AsyncHttpRequest");
    }

    public void J(String str) {
        this.f44560a = str;
    }

    public AsyncHttpRequest K(int i4) {
        this.f44566g = i4;
        return this;
    }

    public AsyncHttpRequest c(String str, String str2) {
        i().a(str, str2);
        return this;
    }

    public void d() {
        this.f44567h = null;
        this.f44568i = -1;
    }

    public void e(String str, int i4) {
        this.f44567h = str;
        this.f44568i = i4;
    }

    public AsyncHttpRequestBody f() {
        return this.f44565f;
    }

    public boolean h() {
        return this.f44564e;
    }

    public Headers i() {
        return this.f44563d;
    }

    public int j() {
        return this.f44570k;
    }

    public String l() {
        return this.f44569j;
    }

    public String m() {
        return this.f44561b;
    }

    public String n() {
        return t().getEncodedPath();
    }

    public String o() {
        return this.f44567h;
    }

    public int p() {
        return this.f44568i;
    }

    public RequestLine q() {
        return new RequestLine() { // from class: com.koushikdutta.async.http.AsyncHttpRequest.1
            @Override // com.koushikdutta.async.http.RequestLine
            public ProtocolVersion a() {
                return new ProtocolVersion("HTTP", 1, 1);
            }

            @Override // com.koushikdutta.async.http.RequestLine
            public String c() {
                return AsyncHttpRequest.this.t().toString();
            }

            @Override // com.koushikdutta.async.http.RequestLine
            public String getMethod() {
                return AsyncHttpRequest.this.f44561b;
            }

            public String toString() {
                AsyncHttpRequest asyncHttpRequest = AsyncHttpRequest.this;
                if (asyncHttpRequest.f44567h != null) {
                    return String.format(Locale.ENGLISH, "%s %s %s", asyncHttpRequest.f44561b, AsyncHttpRequest.this.t(), AsyncHttpRequest.this.f44560a);
                }
                String n9 = asyncHttpRequest.n();
                n9 = (n9 == null || n9.length() == 0) ? "/" : "/";
                String encodedQuery = AsyncHttpRequest.this.t().getEncodedQuery();
                if (encodedQuery != null && encodedQuery.length() != 0) {
                    n9 = n9 + "?" + encodedQuery;
                }
                return String.format(Locale.ENGLISH, "%s %s %s", AsyncHttpRequest.this.f44561b, n9, AsyncHttpRequest.this.f44560a);
            }
        };
    }

    public String r() {
        return this.f44560a;
    }

    public int s() {
        return this.f44566g;
    }

    public Uri t() {
        return this.f44562c;
    }

    public String toString() {
        Headers headers = this.f44563d;
        if (headers == null) {
            return super.toString();
        }
        return headers.o(this.f44562c.toString());
    }

    public boolean u() {
        return true;
    }

    public void v(String str) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 3) {
            Log.d(str2, k(str));
        }
    }

    public void w(String str, Exception exc) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 3) {
            Log.d(str2, k(str));
            Log.d(this.f44569j, exc.getMessage(), exc);
        }
    }

    public void x(String str) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 6) {
            Log.e(str2, k(str));
        }
    }

    public void y(String str, Exception exc) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 6) {
            Log.e(str2, k(str));
            Log.e(this.f44569j, exc.getMessage(), exc);
        }
    }

    public void z(String str) {
        String str2 = this.f44569j;
        if (str2 != null && this.f44570k <= 4) {
            Log.i(str2, k(str));
        }
    }

    public AsyncHttpRequest(Uri uri, String str, Headers headers) {
        this.f44560a = "HTTP/1.1";
        this.f44563d = new Headers();
        this.f44564e = true;
        this.f44566g = 30000;
        this.f44568i = -1;
        this.f44561b = str;
        this.f44562c = uri;
        if (headers == null) {
            this.f44563d = new Headers();
        } else {
            this.f44563d = headers;
        }
        if (headers == null) {
            E(this.f44563d, uri);
        }
    }
}
