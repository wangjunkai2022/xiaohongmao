package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* compiled from: DefaultHttpDataSource.java */
/* loaded from: classes2.dex */
public class u extends f implements HttpDataSource {

    /* renamed from: t  reason: collision with root package name */
    public static final int f27372t = 8000;

    /* renamed from: u  reason: collision with root package name */
    public static final int f27373u = 8000;

    /* renamed from: v  reason: collision with root package name */
    private static final String f27374v = "DefaultHttpDataSource";

    /* renamed from: w  reason: collision with root package name */
    private static final int f27375w = 20;

    /* renamed from: x  reason: collision with root package name */
    private static final int f27376x = 307;

    /* renamed from: y  reason: collision with root package name */
    private static final int f27377y = 308;

    /* renamed from: z  reason: collision with root package name */
    private static final long f27378z = 2048;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f27379f;

    /* renamed from: g  reason: collision with root package name */
    private final int f27380g;

    /* renamed from: h  reason: collision with root package name */
    private final int f27381h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f27382i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final HttpDataSource.c f27383j;

    /* renamed from: k  reason: collision with root package name */
    private final HttpDataSource.c f27384k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.google.common.base.b0<String> f27385l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private o f27386m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private HttpURLConnection f27387n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private InputStream f27388o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f27389p;

    /* renamed from: q  reason: collision with root package name */
    private int f27390q;

    /* renamed from: r  reason: collision with root package name */
    private long f27391r;

    /* renamed from: s  reason: collision with root package name */
    private long f27392s;

    /* compiled from: DefaultHttpDataSource.java */
    /* loaded from: classes2.dex */
    public static final class b implements HttpDataSource.b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private p0 f27394b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private com.google.common.base.b0<String> f27395c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f27396d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f27399g;

        /* renamed from: a  reason: collision with root package name */
        private final HttpDataSource.c f27393a = new HttpDataSource.c();

        /* renamed from: e  reason: collision with root package name */
        private int f27397e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f27398f = 8000;

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b
        @Deprecated
        public final HttpDataSource.c b() {
            return this.f27393a;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b, com.google.android.exoplayer2.upstream.m.a
        /* renamed from: d */
        public u a() {
            u uVar = new u(this.f27396d, this.f27397e, this.f27398f, this.f27399g, this.f27393a, this.f27395c);
            p0 p0Var = this.f27394b;
            if (p0Var != null) {
                uVar.e(p0Var);
            }
            return uVar;
        }

        public b e(boolean z9) {
            this.f27399g = z9;
            return this;
        }

        public b f(int i4) {
            this.f27397e = i4;
            return this;
        }

        public b g(@Nullable com.google.common.base.b0<String> b0Var) {
            this.f27395c = b0Var;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b
        /* renamed from: h */
        public final b c(Map<String, String> map) {
            this.f27393a.b(map);
            return this;
        }

        public b i(int i4) {
            this.f27398f = i4;
            return this;
        }

        public b j(@Nullable p0 p0Var) {
            this.f27394b = p0Var;
            return this;
        }

        public b k(@Nullable String str) {
            this.f27396d = str;
            return this;
        }
    }

    private HttpURLConnection A(o oVar) throws IOException {
        HttpURLConnection B;
        o oVar2 = oVar;
        URL url = new URL(oVar2.f27288a.toString());
        int i4 = oVar2.f27290c;
        byte[] bArr = oVar2.f27291d;
        long j4 = oVar2.f27294g;
        long j10 = oVar2.f27295h;
        boolean d4 = oVar2.d(1);
        if (this.f27379f) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (i10 <= 20) {
                    byte[] bArr2 = bArr;
                    long j11 = j10;
                    long j12 = j4;
                    B = B(url, i4, bArr, j4, j10, d4, false, oVar2.f27292e);
                    int responseCode = B.getResponseCode();
                    String headerField = B.getHeaderField(com.google.common.net.b.f34636m0);
                    if ((i4 == 1 || i4 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                        B.disconnect();
                        url = y(url, headerField);
                    } else if (i4 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    } else {
                        B.disconnect();
                        url = y(url, headerField);
                        bArr2 = null;
                        i4 = 1;
                    }
                    i10 = i11;
                    bArr = bArr2;
                    j10 = j11;
                    j4 = j12;
                    oVar2 = oVar;
                } else {
                    StringBuilder sb = new StringBuilder(31);
                    sb.append("Too many redirects: ");
                    sb.append(i11);
                    throw new NoRouteToHostException(sb.toString());
                }
            }
            return B;
        }
        return B(url, i4, bArr, j4, j10, d4, true, oVar2.f27292e);
    }

    private HttpURLConnection B(URL url, int i4, @Nullable byte[] bArr, long j4, long j10, boolean z9, boolean z10, Map<String, String> map) throws IOException {
        HttpURLConnection D = D(url);
        D.setConnectTimeout(this.f27380g);
        D.setReadTimeout(this.f27381h);
        HashMap hashMap = new HashMap();
        HttpDataSource.c cVar = this.f27383j;
        if (cVar != null) {
            hashMap.putAll(cVar.c());
        }
        hashMap.putAll(this.f27384k.c());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            D.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a10 = d0.a(j4, j10);
        if (a10 != null) {
            D.setRequestProperty(com.google.common.net.b.G, a10);
        }
        String str = this.f27382i;
        if (str != null) {
            D.setRequestProperty(com.google.common.net.b.M, str);
        }
        D.setRequestProperty(com.google.common.net.b.f34629j, z9 ? "gzip" : "identity");
        D.setInstanceFollowRedirects(z10);
        D.setDoOutput(bArr != null);
        D.setRequestMethod(o.c(i4));
        if (bArr != null) {
            D.setFixedLengthStreamingMode(bArr.length);
            D.connect();
            OutputStream outputStream = D.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            D.connect();
        }
        return D;
    }

    private static void C(@Nullable HttpURLConnection httpURLConnection, long j4) {
        int i4;
        if (httpURLConnection != null && (i4 = z0.f27743a) >= 19 && i4 <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j4 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j4 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = ((Class) com.google.android.exoplayer2.util.a.g(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    private int E(byte[] bArr, int i4, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        long j4 = this.f27391r;
        if (j4 != -1) {
            long j10 = j4 - this.f27392s;
            if (j10 == 0) {
                return -1;
            }
            i10 = (int) Math.min(i10, j10);
        }
        int read = ((InputStream) z0.k(this.f27388o)).read(bArr, i4, i10);
        if (read == -1) {
            return -1;
        }
        this.f27392s += read;
        t(read);
        return read;
    }

    private boolean G(long j4) throws IOException {
        if (j4 == 0) {
            return true;
        }
        byte[] bArr = new byte[4096];
        while (j4 > 0) {
            int read = ((InputStream) z0.k(this.f27388o)).read(bArr, 0, (int) Math.min(j4, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (read == -1) {
                return false;
            }
            j4 -= read;
            t(read);
        }
        return true;
    }

    private void x() {
        HttpURLConnection httpURLConnection = this.f27387n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e4) {
                com.google.android.exoplayer2.util.w.e(f27374v, "Unexpected error while disconnecting", e4);
            }
            this.f27387n = null;
        }
    }

    private static URL y(URL url, @Nullable String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if ("https".equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            String valueOf = String.valueOf(protocol);
            throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
        }
        throw new ProtocolException("Null location redirect");
    }

    private static boolean z(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    @VisibleForTesting
    HttpURLConnection D(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Deprecated
    public void F(@Nullable com.google.common.base.b0<String> b0Var) {
        this.f27385l = b0Var;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr;
        this.f27386m = oVar;
        long j4 = 0;
        this.f27392s = 0L;
        this.f27391r = 0L;
        v(oVar);
        try {
            HttpURLConnection A = A(oVar);
            this.f27387n = A;
            try {
                this.f27390q = A.getResponseCode();
                String responseMessage = A.getResponseMessage();
                int i4 = this.f27390q;
                if (i4 >= 200 && i4 <= 299) {
                    String contentType = A.getContentType();
                    com.google.common.base.b0<String> b0Var = this.f27385l;
                    if (b0Var != null && !b0Var.apply(contentType)) {
                        x();
                        throw new HttpDataSource.InvalidContentTypeException(contentType, oVar);
                    }
                    if (this.f27390q == 200) {
                        long j10 = oVar.f27294g;
                        if (j10 != 0) {
                            j4 = j10;
                        }
                    }
                    boolean z9 = z(A);
                    if (!z9) {
                        long j11 = oVar.f27295h;
                        if (j11 != -1) {
                            this.f27391r = j11;
                        } else {
                            long b10 = d0.b(A.getHeaderField(com.google.common.net.b.f34609b), A.getHeaderField(com.google.common.net.b.f34610b0));
                            this.f27391r = b10 != -1 ? b10 - j4 : -1L;
                        }
                    } else {
                        this.f27391r = oVar.f27295h;
                    }
                    try {
                        this.f27388o = A.getInputStream();
                        if (z9) {
                            this.f27388o = new GZIPInputStream(this.f27388o);
                        }
                        this.f27389p = true;
                        w(oVar);
                        try {
                            if (G(j4)) {
                                return this.f27391r;
                            }
                            throw new DataSourceException(0);
                        } catch (IOException e4) {
                            x();
                            throw new HttpDataSource.HttpDataSourceException(e4, oVar, 1);
                        }
                    } catch (IOException e10) {
                        x();
                        throw new HttpDataSource.HttpDataSourceException(e10, oVar, 1);
                    }
                }
                Map<String, List<String>> headerFields = A.getHeaderFields();
                if (this.f27390q == 416) {
                    if (oVar.f27294g == d0.c(A.getHeaderField(com.google.common.net.b.f34610b0))) {
                        this.f27389p = true;
                        w(oVar);
                        long j12 = oVar.f27295h;
                        if (j12 != -1) {
                            return j12;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = A.getErrorStream();
                try {
                    bArr = errorStream != null ? z0.r1(errorStream) : z0.f27748f;
                } catch (IOException unused) {
                    bArr = z0.f27748f;
                }
                x();
                HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(this.f27390q, responseMessage, headerFields, oVar, bArr);
                if (this.f27390q == 416) {
                    invalidResponseCodeException.initCause(new DataSourceException(0));
                }
                throw invalidResponseCodeException;
            } catch (IOException e11) {
                x();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e11, oVar, 1);
            }
        } catch (IOException e12) {
            String message = e12.getMessage();
            if (message != null && com.google.common.base.c.g(message).matches("cleartext http traffic.*not permitted.*")) {
                throw new HttpDataSource.CleartextNotPermittedException(e12, oVar);
            }
            throw new HttpDataSource.HttpDataSourceException("Unable to connect", e12, oVar, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.f, com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        HttpURLConnection httpURLConnection = this.f27387n;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        HttpURLConnection httpURLConnection = this.f27387n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            InputStream inputStream = this.f27388o;
            if (inputStream != null) {
                long j4 = this.f27391r;
                long j10 = -1;
                if (j4 != -1) {
                    j10 = j4 - this.f27392s;
                }
                C(this.f27387n, j10);
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    throw new HttpDataSource.HttpDataSourceException(e4, (o) z0.k(this.f27386m), 3);
                }
            }
        } finally {
            this.f27388o = null;
            x();
            if (this.f27389p) {
                this.f27389p = false;
                u();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void d(String str, String str2) {
        com.google.android.exoplayer2.util.a.g(str);
        com.google.android.exoplayer2.util.a.g(str2);
        this.f27384k.e(str, str2);
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public int l() {
        int i4;
        if (this.f27387n == null || (i4 = this.f27390q) <= 0) {
            return -1;
        }
        return i4;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void p() {
        this.f27384k.a();
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void r(String str) {
        com.google.android.exoplayer2.util.a.g(str);
        this.f27384k.d(str);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws HttpDataSource.HttpDataSourceException {
        try {
            return E(bArr, i4, i10);
        } catch (IOException e4) {
            throw new HttpDataSource.HttpDataSourceException(e4, (o) z0.k(this.f27386m), 2);
        }
    }

    @Deprecated
    public u() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public u(@Nullable String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public u(@Nullable String str, int i4, int i10) {
        this(str, i4, i10, false, null);
    }

    @Deprecated
    public u(@Nullable String str, int i4, int i10, boolean z9, @Nullable HttpDataSource.c cVar) {
        this(str, i4, i10, z9, cVar, null);
    }

    private u(@Nullable String str, int i4, int i10, boolean z9, @Nullable HttpDataSource.c cVar, @Nullable com.google.common.base.b0<String> b0Var) {
        super(true);
        this.f27382i = str;
        this.f27380g = i4;
        this.f27381h = i10;
        this.f27379f = z9;
        this.f27383j = cVar;
        this.f27385l = b0Var;
        this.f27384k = new HttpDataSource.c();
    }
}
