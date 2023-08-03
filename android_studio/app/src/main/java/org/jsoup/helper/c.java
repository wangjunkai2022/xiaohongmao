package org.jsoup.helper;

import com.alipay.sdk.util.i;
import com.facebook.common.statfs.StatFsHelper;
import com.qennnsad.aknkaksd.presentation.module.main.profile.l;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.CookieManager;
import java.net.CookieStore;
import java.net.HttpURLConnection;
import java.net.IDN;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import kotlin.text.Typography;
import org.jsoup.Connection;
import org.jsoup.UncheckedIOException;
import org.jsoup.nodes.Document;
import r7.h;

/* compiled from: HttpConnection.java */
/* loaded from: classes5.dex */
public class c implements Connection {

    /* renamed from: c  reason: collision with root package name */
    public static final String f91734c = "Content-Encoding";

    /* renamed from: d  reason: collision with root package name */
    public static final String f91735d = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36";

    /* renamed from: e  reason: collision with root package name */
    private static final String f91736e = "User-Agent";

    /* renamed from: f  reason: collision with root package name */
    public static final String f91737f = "Content-Type";

    /* renamed from: g  reason: collision with root package name */
    public static final String f91738g = "multipart/form-data";

    /* renamed from: h  reason: collision with root package name */
    public static final String f91739h = "application/x-www-form-urlencoded";

    /* renamed from: i  reason: collision with root package name */
    private static final int f91740i = 307;

    /* renamed from: j  reason: collision with root package name */
    private static final String f91741j = "application/octet-stream";

    /* renamed from: k  reason: collision with root package name */
    private static final Charset f91742k = Charset.forName("UTF-8");

    /* renamed from: l  reason: collision with root package name */
    private static final Charset f91743l = Charset.forName("ISO-8859-1");

    /* renamed from: a  reason: collision with root package name */
    private d f91744a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Connection.d f91745b;

    /* compiled from: HttpConnection.java */
    /* renamed from: org.jsoup.helper.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0796c implements Connection.b {

        /* renamed from: a  reason: collision with root package name */
        private String f91751a;

        /* renamed from: b  reason: collision with root package name */
        private String f91752b;
        @h

        /* renamed from: c  reason: collision with root package name */
        private InputStream f91753c;
        @h

        /* renamed from: d  reason: collision with root package name */
        private String f91754d;

        private C0796c(String str, String str2) {
            org.jsoup.helper.d.i(str, "Data key must not be empty");
            org.jsoup.helper.d.k(str2, "Data value must not be null");
            this.f91751a = str;
            this.f91752b = str2;
        }

        public static C0796c b(String str, String str2) {
            return new C0796c(str, str2);
        }

        public static C0796c c(String str, String str2, InputStream inputStream) {
            return new C0796c(str, str2).i(inputStream);
        }

        @Override // org.jsoup.Connection.b
        public String a() {
            return this.f91751a;
        }

        @Override // org.jsoup.Connection.b
        /* renamed from: d */
        public C0796c i(InputStream inputStream) {
            org.jsoup.helper.d.k(this.f91752b, "Data input stream must not be null");
            this.f91753c = inputStream;
            return this;
        }

        @Override // org.jsoup.Connection.b
        public String e() {
            return this.f91754d;
        }

        @Override // org.jsoup.Connection.b
        public Connection.b f(String str) {
            org.jsoup.helper.d.h(str);
            this.f91754d = str;
            return this;
        }

        @Override // org.jsoup.Connection.b
        public InputStream inputStream() {
            return this.f91753c;
        }

        @Override // org.jsoup.Connection.b
        public boolean j() {
            return this.f91753c != null;
        }

        @Override // org.jsoup.Connection.b
        /* renamed from: k */
        public C0796c g(String str) {
            org.jsoup.helper.d.i(str, "Data key must not be empty");
            this.f91751a = str;
            return this;
        }

        @Override // org.jsoup.Connection.b
        /* renamed from: l */
        public C0796c h(String str) {
            org.jsoup.helper.d.k(str, "Data value must not be null");
            this.f91752b = str;
            return this;
        }

        public String toString() {
            return this.f91751a + "=" + this.f91752b;
        }

        @Override // org.jsoup.Connection.b
        public String value() {
            return this.f91752b;
        }
    }

    public static Connection N(String str) {
        c cVar = new c();
        cVar.x(str);
        return cVar;
    }

    public static Connection O(URL url) {
        c cVar = new c();
        cVar.k(url);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String P(String str) {
        return str.replace("\"", "%22");
    }

    private static String Q(String str) {
        try {
            return R(new URL(str)).toExternalForm();
        } catch (Exception unused) {
            return str;
        }
    }

    static URL R(URL url) {
        URL T = T(url);
        try {
            return new URL(new URI(T.toExternalForm().replace(" ", "%20")).toASCIIString());
        } catch (MalformedURLException | URISyntaxException unused) {
            return T;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean S(Connection.c cVar) {
        for (Connection.b bVar : cVar.data()) {
            if (bVar.j()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static URL T(URL url) {
        if (org.jsoup.internal.f.f(url.getHost())) {
            return url;
        }
        try {
            return new URL(url.getProtocol(), IDN.toASCII(url.getHost()), url.getPort(), url.getFile());
        } catch (MalformedURLException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    @Override // org.jsoup.Connection
    public CookieStore A() {
        return this.f91744a.f91767r.getCookieStore();
    }

    @Override // org.jsoup.Connection
    public Connection B(String str) {
        org.jsoup.helper.d.k(str, "Referrer must not be null");
        this.f91744a.l(com.google.common.net.b.H, str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection C(Map<String, String> map) {
        org.jsoup.helper.d.k(map, "Cookie map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f91744a.c(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection D(String str, String str2, InputStream inputStream) {
        this.f91744a.z(C0796c.c(str, str2, inputStream));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection E(Connection.d dVar) {
        this.f91745b = dVar;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection F(String... strArr) {
        org.jsoup.helper.d.k(strArr, "Data key value pairs must not be null");
        org.jsoup.helper.d.e(strArr.length % 2 == 0, "Must supply an even number of key value pairs");
        for (int i4 = 0; i4 < strArr.length; i4 += 2) {
            String str = strArr[i4];
            String str2 = strArr[i4 + 1];
            org.jsoup.helper.d.i(str, "Data key must not be empty");
            org.jsoup.helper.d.k(str2, "Data value must not be null");
            this.f91744a.z(C0796c.b(str, str2));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.b G(String str) {
        org.jsoup.helper.d.i(str, "Data key must not be empty");
        for (Connection.b bVar : request().data()) {
            if (bVar.a().equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    @Override // org.jsoup.Connection
    public Connection H(Map<String, String> map) {
        org.jsoup.helper.d.k(map, "Data map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f91744a.z(C0796c.b(entry.getKey(), entry.getValue()));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection a(boolean z9) {
        this.f91744a.a(z9);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection b(String str) {
        this.f91744a.b(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection c(String str, String str2) {
        this.f91744a.c(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection d(int i4) {
        this.f91744a.d(i4);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection e(Collection<Connection.b> collection) {
        org.jsoup.helper.d.k(collection, "Data collection must not be null");
        for (Connection.b bVar : collection) {
            this.f91744a.z(bVar);
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.d execute() throws IOException {
        e c02 = e.c0(this.f91744a);
        this.f91745b = c02;
        return c02;
    }

    @Override // org.jsoup.Connection
    public Connection f(Map<String, String> map) {
        org.jsoup.helper.d.k(map, "Header map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f91744a.l(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection g(SSLSocketFactory sSLSocketFactory) {
        this.f91744a.g(sSLSocketFactory);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document get() throws IOException {
        this.f91744a.m(Connection.Method.GET);
        execute();
        org.jsoup.helper.d.j(this.f91745b);
        return this.f91745b.D();
    }

    @Override // org.jsoup.Connection
    public Connection h(String str) {
        this.f91744a.h(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection i(@h Proxy proxy) {
        this.f91744a.i(proxy);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection j(org.jsoup.parser.f fVar) {
        this.f91744a.j(fVar);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection k(URL url) {
        this.f91744a.k(url);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection l(String str, String str2) {
        this.f91744a.l(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection m(Connection.Method method) {
        this.f91744a.m(method);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection n(String str, String str2, InputStream inputStream, String str3) {
        this.f91744a.z(C0796c.c(str, str2, inputStream).f(str3));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection o(String str, int i4) {
        this.f91744a.o(str, i4);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection p(int i4) {
        this.f91744a.p(i4);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection q(boolean z9) {
        this.f91744a.q(z9);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection r(boolean z9) {
        this.f91744a.r(z9);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.c request() {
        return this.f91744a;
    }

    @Override // org.jsoup.Connection
    public Connection s() {
        return new c(this.f91744a);
    }

    @Override // org.jsoup.Connection
    public Connection t(String str, String str2) {
        this.f91744a.z(C0796c.b(str, str2));
        return this;
    }

    @Override // org.jsoup.Connection
    public Document u() throws IOException {
        this.f91744a.m(Connection.Method.POST);
        execute();
        org.jsoup.helper.d.j(this.f91745b);
        return this.f91745b.D();
    }

    @Override // org.jsoup.Connection
    public Connection v(String str) {
        org.jsoup.helper.d.k(str, "User agent must not be null");
        this.f91744a.l("User-Agent", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection w(Connection.c cVar) {
        this.f91744a = (d) cVar;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection x(String str) {
        org.jsoup.helper.d.i(str, "Must supply a valid URL");
        try {
            this.f91744a.k(new URL(Q(str)));
            return this;
        } catch (MalformedURLException e4) {
            throw new IllegalArgumentException("Malformed URL: " + str, e4);
        }
    }

    @Override // org.jsoup.Connection
    public Connection.d y() {
        Connection.d dVar = this.f91745b;
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("You must execute the request before getting a response.");
    }

    @Override // org.jsoup.Connection
    public Connection z(CookieStore cookieStore) {
        this.f91744a.f91767r = new CookieManager(cookieStore, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpConnection.java */
    /* loaded from: classes5.dex */
    public static abstract class b<T extends Connection.a<T>> implements Connection.a<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final URL f91746e;

        /* renamed from: a  reason: collision with root package name */
        URL f91747a;

        /* renamed from: b  reason: collision with root package name */
        Connection.Method f91748b;

        /* renamed from: c  reason: collision with root package name */
        Map<String, List<String>> f91749c;

        /* renamed from: d  reason: collision with root package name */
        Map<String, String> f91750d;

        static {
            try {
                f91746e = new URL("http://undefined/");
            } catch (MalformedURLException e4) {
                throw new IllegalStateException(e4);
            }
        }

        private static String V(String str) {
            byte[] bytes = str.getBytes(c.f91743l);
            return !X(bytes) ? str : new String(bytes, c.f91742k);
        }

        private List<String> W(String str) {
            org.jsoup.helper.d.j(str);
            for (Map.Entry<String, List<String>> entry : this.f91749c.entrySet()) {
                if (str.equalsIgnoreCase(entry.getKey())) {
                    return entry.getValue();
                }
            }
            return Collections.emptyList();
        }

        private static boolean X(byte[] bArr) {
            int i4;
            int i10 = 3;
            i10 = (bArr.length >= 3 && (bArr[0] & 255) == 239 && (bArr[1] & 255) == 187 && (bArr[2] & 255) == 191) ? 0 : 0;
            int length = bArr.length;
            while (i10 < length) {
                byte b10 = bArr[i10];
                if ((b10 & 128) != 0) {
                    if ((b10 & 224) == 192) {
                        i4 = i10 + 1;
                    } else if ((b10 & 240) == 224) {
                        i4 = i10 + 2;
                    } else if ((b10 & 248) != 240) {
                        return false;
                    } else {
                        i4 = i10 + 3;
                    }
                    if (i4 >= bArr.length) {
                        return false;
                    }
                    while (i10 < i4) {
                        i10++;
                        if ((bArr[i10] & 192) != 128) {
                            return false;
                        }
                    }
                    continue;
                }
                i10++;
            }
            return true;
        }

        @h
        private Map.Entry<String, List<String>> Y(String str) {
            String a10 = org.jsoup.internal.d.a(str);
            for (Map.Entry<String, List<String>> entry : this.f91749c.entrySet()) {
                if (org.jsoup.internal.d.a(entry.getKey()).equals(a10)) {
                    return entry;
                }
            }
            return null;
        }

        @Override // org.jsoup.Connection.a
        public Map<String, String> A() {
            return this.f91750d;
        }

        @Override // org.jsoup.Connection.a
        public String B(String str) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            return this.f91750d.get(str);
        }

        @Override // org.jsoup.Connection.a
        public T E(String str, String str2) {
            org.jsoup.helper.d.h(str);
            if (str2 == null) {
                str2 = "";
            }
            List<String> M = M(str);
            if (M.isEmpty()) {
                M = new ArrayList<>();
                this.f91749c.put(str, M);
            }
            M.add(V(str2));
            return this;
        }

        @Override // org.jsoup.Connection.a
        public boolean F(String str) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            return this.f91750d.containsKey(str);
        }

        @Override // org.jsoup.Connection.a
        public T G(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            Map.Entry<String, List<String>> Y = Y(str);
            if (Y != null) {
                this.f91749c.remove(Y.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.a
        public String H(String str) {
            org.jsoup.helper.d.k(str, "Header name must not be null");
            List<String> W = W(str);
            if (W.size() > 0) {
                return org.jsoup.internal.f.k(W, ", ");
            }
            return null;
        }

        @Override // org.jsoup.Connection.a
        public boolean I(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            return !W(str).isEmpty();
        }

        @Override // org.jsoup.Connection.a
        public T K(String str) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            this.f91750d.remove(str);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public List<String> M(String str) {
            org.jsoup.helper.d.h(str);
            return W(str);
        }

        @Override // org.jsoup.Connection.a
        public Map<String, List<String>> N() {
            return this.f91749c;
        }

        @Override // org.jsoup.Connection.a
        public T c(String str, String str2) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            org.jsoup.helper.d.k(str2, "Cookie value must not be null");
            this.f91750d.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Map<String, String> f() {
            LinkedHashMap linkedHashMap = new LinkedHashMap(this.f91749c.size());
            for (Map.Entry<String, List<String>> entry : this.f91749c.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value.size() > 0) {
                    linkedHashMap.put(key, value.get(0));
                }
            }
            return linkedHashMap;
        }

        @Override // org.jsoup.Connection.a
        public T k(URL url) {
            org.jsoup.helper.d.k(url, "URL must not be null");
            this.f91747a = c.T(url);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public T l(String str, String str2) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            G(str);
            E(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.a
        public T m(Connection.Method method) {
            org.jsoup.helper.d.k(method, "Method must not be null");
            this.f91748b = method;
            return this;
        }

        @Override // org.jsoup.Connection.a
        public Connection.Method method() {
            return this.f91748b;
        }

        @Override // org.jsoup.Connection.a
        public URL v() {
            URL url = this.f91747a;
            if (url != f91746e) {
                return url;
            }
            throw new IllegalArgumentException("URL not set. Make sure to call #url(...) before executing the request.");
        }

        @Override // org.jsoup.Connection.a
        public boolean w(String str, String str2) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            for (String str3 : M(str)) {
                if (str2.equalsIgnoreCase(str3)) {
                    return true;
                }
            }
            return false;
        }

        private b() {
            this.f91747a = f91746e;
            this.f91748b = Connection.Method.GET;
            this.f91749c = new LinkedHashMap();
            this.f91750d = new LinkedHashMap();
        }

        private b(b<T> bVar) {
            this.f91747a = f91746e;
            this.f91748b = Connection.Method.GET;
            this.f91747a = bVar.f91747a;
            this.f91748b = bVar.f91748b;
            this.f91749c = new LinkedHashMap();
            for (Map.Entry<String, List<String>> entry : bVar.f91749c.entrySet()) {
                this.f91749c.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            this.f91750d = linkedHashMap;
            linkedHashMap.putAll(bVar.f91750d);
        }
    }

    public c() {
        this.f91744a = new d();
    }

    c(d dVar) {
        this.f91744a = new d(dVar);
    }

    private c(d dVar, e eVar) {
        this.f91744a = dVar;
        this.f91745b = eVar;
    }

    /* compiled from: HttpConnection.java */
    /* loaded from: classes5.dex */
    public static class e extends b<Connection.d> implements Connection.d {

        /* renamed from: q  reason: collision with root package name */
        private static final int f91769q = 20;

        /* renamed from: r  reason: collision with root package name */
        private static final String f91770r = "Location";

        /* renamed from: s  reason: collision with root package name */
        private static final Pattern f91771s = Pattern.compile("(application|text)/\\w*\\+?xml.*");

        /* renamed from: f  reason: collision with root package name */
        private final int f91772f;

        /* renamed from: g  reason: collision with root package name */
        private final String f91773g;
        @h

        /* renamed from: h  reason: collision with root package name */
        private ByteBuffer f91774h;
        @h

        /* renamed from: i  reason: collision with root package name */
        private InputStream f91775i;
        @h

        /* renamed from: j  reason: collision with root package name */
        private HttpURLConnection f91776j;
        @h

        /* renamed from: k  reason: collision with root package name */
        private String f91777k;
        @h

        /* renamed from: l  reason: collision with root package name */
        private final String f91778l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f91779m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f91780n;

        /* renamed from: o  reason: collision with root package name */
        private int f91781o;

        /* renamed from: p  reason: collision with root package name */
        private final d f91782p;

        e() {
            super();
            this.f91779m = false;
            this.f91780n = false;
            this.f91781o = 0;
            this.f91772f = StatFsHelper.f11024h;
            this.f91773g = "Request not made";
            this.f91782p = new d();
            this.f91778l = null;
        }

        private static HttpURLConnection a0(d dVar) throws IOException {
            URLConnection openConnection;
            Proxy y9 = dVar.y();
            if (y9 == null) {
                openConnection = dVar.v().openConnection();
            } else {
                openConnection = dVar.v().openConnection(y9);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestMethod(dVar.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(dVar.timeout());
            httpURLConnection.setReadTimeout(dVar.timeout() / 2);
            if (dVar.x() != null && (httpURLConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(dVar.x());
            }
            if (dVar.method().hasBody()) {
                httpURLConnection.setDoOutput(true);
            }
            org.jsoup.helper.a.a(dVar, httpURLConnection);
            for (Map.Entry entry : dVar.N().entrySet()) {
                for (String str : (List) entry.getValue()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), str);
                }
            }
            return httpURLConnection;
        }

        private static LinkedHashMap<String, List<String>> b0(HttpURLConnection httpURLConnection) {
            LinkedHashMap<String, List<String>> linkedHashMap = new LinkedHashMap<>();
            int i4 = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i4);
                String headerField = httpURLConnection.getHeaderField(i4);
                if (headerFieldKey == null && headerField == null) {
                    return linkedHashMap;
                }
                i4++;
                if (headerFieldKey != null && headerField != null) {
                    if (linkedHashMap.containsKey(headerFieldKey)) {
                        linkedHashMap.get(headerFieldKey).add(headerField);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(headerField);
                        linkedHashMap.put(headerFieldKey, arrayList);
                    }
                }
            }
        }

        static e c0(d dVar) throws IOException {
            return d0(dVar, null);
        }

        /* JADX WARN: Code restructure failed: missing block: B:75:0x015a, code lost:
            if (org.jsoup.helper.c.e.f91771s.matcher(r9).matches() == false) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0160, code lost:
            if (r8.f91764o != false) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0162, code lost:
            r8.g0(org.jsoup.parser.f.t());
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0092 A[Catch: all -> 0x01f7, IOException -> 0x01f9, TRY_LEAVE, TryCatch #0 {IOException -> 0x01f9, blocks: (B:27:0x0089, B:29:0x0092, B:31:0x0099, B:38:0x00a4, B:39:0x00a7, B:40:0x00a8), top: B:112:0x0089 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        static org.jsoup.helper.c.e d0(org.jsoup.helper.c.d r8, @r7.h org.jsoup.helper.c.e r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 519
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.c.e.d0(org.jsoup.helper.c$d, org.jsoup.helper.c$e):org.jsoup.helper.c$e");
        }

        private void e0() {
            org.jsoup.helper.d.e(this.f91779m, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            if (this.f91775i == null || this.f91774h != null) {
                return;
            }
            org.jsoup.helper.d.c(this.f91780n, "Request has already been read (with .parse())");
            try {
                try {
                    this.f91774h = org.jsoup.helper.b.k(this.f91775i, this.f91782p.R());
                } catch (IOException e4) {
                    throw new UncheckedIOException(e4);
                }
            } finally {
                this.f91780n = true;
                g0();
            }
        }

        private void g0() {
            InputStream inputStream = this.f91775i;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f91775i = null;
                    throw th;
                }
                this.f91775i = null;
            }
            HttpURLConnection httpURLConnection = this.f91776j;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.f91776j = null;
            }
        }

        private static void h0(Connection.c cVar) throws IOException {
            boolean z9;
            URL v9 = cVar.v();
            StringBuilder b10 = org.jsoup.internal.f.b();
            b10.append(v9.getProtocol());
            b10.append("://");
            b10.append(v9.getAuthority());
            b10.append(v9.getPath());
            b10.append("?");
            if (v9.getQuery() != null) {
                b10.append(v9.getQuery());
                z9 = false;
            } else {
                z9 = true;
            }
            for (Connection.b bVar : cVar.data()) {
                org.jsoup.helper.d.c(bVar.j(), "InputStream data not supported in URL query string.");
                if (z9) {
                    z9 = false;
                } else {
                    b10.append(Typography.amp);
                }
                String a10 = bVar.a();
                String str = org.jsoup.helper.b.f91727c;
                b10.append(URLEncoder.encode(a10, str));
                b10.append('=');
                b10.append(URLEncoder.encode(bVar.value(), str));
            }
            cVar.k(new URL(org.jsoup.internal.f.p(b10)));
            cVar.data().clear();
        }

        @h
        private static String i0(Connection.c cVar) {
            String H = cVar.H("Content-Type");
            if (H != null) {
                if (H.contains("multipart/form-data") && !H.contains("boundary")) {
                    String i4 = org.jsoup.helper.b.i();
                    cVar.l("Content-Type", "multipart/form-data; boundary=" + i4);
                    return i4;
                }
            } else if (c.S(cVar)) {
                String i10 = org.jsoup.helper.b.i();
                cVar.l("Content-Type", "multipart/form-data; boundary=" + i10);
                return i10;
            } else {
                cVar.l("Content-Type", "application/x-www-form-urlencoded; charset=" + cVar.t());
            }
            return null;
        }

        private static void j0(Connection.c cVar, OutputStream outputStream, @h String str) throws IOException {
            Collection<Connection.b> data = cVar.data();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, cVar.t()));
            if (str != null) {
                for (Connection.b bVar : data) {
                    bufferedWriter.write(l.f51916a);
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    bufferedWriter.write(c.P(bVar.a()));
                    bufferedWriter.write("\"");
                    InputStream inputStream = bVar.inputStream();
                    if (inputStream != null) {
                        bufferedWriter.write("; filename=\"");
                        bufferedWriter.write(c.P(bVar.value()));
                        bufferedWriter.write("\"\r\nContent-Type: ");
                        String e4 = bVar.e();
                        if (e4 == null) {
                            e4 = c.f91741j;
                        }
                        bufferedWriter.write(e4);
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.flush();
                        org.jsoup.helper.b.a(inputStream, outputStream);
                        outputStream.flush();
                    } else {
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.write(bVar.value());
                    }
                    bufferedWriter.write("\r\n");
                }
                bufferedWriter.write(l.f51916a);
                bufferedWriter.write(str);
                bufferedWriter.write(l.f51916a);
            } else {
                String Q = cVar.Q();
                if (Q != null) {
                    bufferedWriter.write(Q);
                } else {
                    boolean z9 = true;
                    for (Connection.b bVar2 : data) {
                        if (z9) {
                            z9 = false;
                        } else {
                            bufferedWriter.append(Typography.amp);
                        }
                        bufferedWriter.write(URLEncoder.encode(bVar2.a(), cVar.t()));
                        bufferedWriter.write(61);
                        bufferedWriter.write(URLEncoder.encode(bVar2.value(), cVar.t()));
                    }
                }
            }
            bufferedWriter.close();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map A() {
            return super.A();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ String B(String str) {
            return super.B(str);
        }

        @Override // org.jsoup.Connection.d
        public Document D() throws IOException {
            org.jsoup.helper.d.e(this.f91779m, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            if (this.f91774h != null) {
                this.f91775i = new ByteArrayInputStream(this.f91774h.array());
                this.f91780n = false;
            }
            org.jsoup.helper.d.c(this.f91780n, "Input stream already read and parsed, cannot re-read.");
            Document j4 = org.jsoup.helper.b.j(this.f91775i, this.f91777k, this.f91747a.toExternalForm(), this.f91782p.U());
            j4.z2(new c(this.f91782p, this));
            this.f91777k = j4.K2().a().name();
            this.f91780n = true;
            g0();
            return j4;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d E(String str, String str2) {
            return super.E(str, str2);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean F(String str) {
            return super.F(str);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d G(String str) {
            return super.G(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ String H(String str) {
            return super.H(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean I(String str) {
            return super.I(str);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d K(String str) {
            return super.K(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ List M(String str) {
            return super.M(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map N() {
            return super.N();
        }

        @Override // org.jsoup.Connection.d
        public Connection.d O() {
            e0();
            return this;
        }

        @Override // org.jsoup.Connection.d
        public int P() {
            return this.f91772f;
        }

        @Override // org.jsoup.Connection.d
        public String S() {
            return this.f91773g;
        }

        @Override // org.jsoup.Connection.d
        public byte[] T() {
            e0();
            org.jsoup.helper.d.j(this.f91774h);
            return this.f91774h.array();
        }

        @Override // org.jsoup.Connection.d
        /* renamed from: Z */
        public e L(String str) {
            this.f91777k = str;
            return this;
        }

        @Override // org.jsoup.Connection.d
        public String body() {
            e0();
            org.jsoup.helper.d.j(this.f91774h);
            String str = this.f91777k;
            String charBuffer = (str == null ? org.jsoup.helper.b.f91726b : Charset.forName(str)).decode(this.f91774h).toString();
            this.f91774h.rewind();
            return charBuffer;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d c(String str, String str2) {
            return super.c(str, str2);
        }

        @Override // org.jsoup.Connection.d
        public String e() {
            return this.f91778l;
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map f() {
            return super.f();
        }

        void f0(Map<String, List<String>> map) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    List<String> value = entry.getValue();
                    if (key.equalsIgnoreCase(com.google.common.net.b.f34656w0)) {
                        for (String str : value) {
                            if (str != null) {
                                org.jsoup.parser.h hVar = new org.jsoup.parser.h(str);
                                String trim = hVar.e("=").trim();
                                String trim2 = hVar.m(i.f6965b).trim();
                                if (trim.length() > 0 && !this.f91750d.containsKey(trim)) {
                                    c(trim, trim2);
                                }
                            }
                        }
                    }
                    for (String str2 : value) {
                        E(key, str2);
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d k(URL url) {
            return super.k(url);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d l(String str, String str2) {
            return super.l(str, str2);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$d] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.d m(Connection.Method method) {
            return super.m(method);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.Connection.d
        public String n() {
            return this.f91777k;
        }

        @Override // org.jsoup.Connection.d
        public BufferedInputStream u() {
            org.jsoup.helper.d.e(this.f91779m, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            org.jsoup.helper.d.c(this.f91780n, "Request has already been read");
            this.f91780n = true;
            return org.jsoup.internal.a.h(this.f91775i, 32768, this.f91782p.R());
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ URL v() {
            return super.v();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean w(String str, String str2) {
            return super.w(str, str2);
        }

        private e(HttpURLConnection httpURLConnection, d dVar, @h e eVar) throws IOException {
            super();
            this.f91779m = false;
            this.f91780n = false;
            this.f91781o = 0;
            this.f91776j = httpURLConnection;
            this.f91782p = dVar;
            this.f91748b = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.f91747a = httpURLConnection.getURL();
            this.f91772f = httpURLConnection.getResponseCode();
            this.f91773g = httpURLConnection.getResponseMessage();
            this.f91778l = httpURLConnection.getContentType();
            LinkedHashMap<String, List<String>> b02 = b0(httpURLConnection);
            f0(b02);
            org.jsoup.helper.a.d(dVar, this.f91747a, b02);
            if (eVar != null) {
                for (Map.Entry entry : eVar.A().entrySet()) {
                    if (!F((String) entry.getKey())) {
                        c((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                eVar.g0();
                int i4 = eVar.f91781o + 1;
                this.f91781o = i4;
                if (i4 >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", eVar.v()));
                }
            }
        }
    }

    /* compiled from: HttpConnection.java */
    /* loaded from: classes5.dex */
    public static class d extends b<Connection.c> implements Connection.c {
        @h

        /* renamed from: f  reason: collision with root package name */
        private Proxy f91755f;

        /* renamed from: g  reason: collision with root package name */
        private int f91756g;

        /* renamed from: h  reason: collision with root package name */
        private int f91757h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f91758i;

        /* renamed from: j  reason: collision with root package name */
        private final Collection<Connection.b> f91759j;
        @h

        /* renamed from: k  reason: collision with root package name */
        private String f91760k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f91761l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f91762m;

        /* renamed from: n  reason: collision with root package name */
        private org.jsoup.parser.f f91763n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f91764o;

        /* renamed from: p  reason: collision with root package name */
        private String f91765p;
        @h

        /* renamed from: q  reason: collision with root package name */
        private SSLSocketFactory f91766q;

        /* renamed from: r  reason: collision with root package name */
        private CookieManager f91767r;

        /* renamed from: s  reason: collision with root package name */
        private volatile boolean f91768s;

        static {
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true");
        }

        d() {
            super();
            this.f91760k = null;
            this.f91761l = false;
            this.f91762m = false;
            this.f91764o = false;
            this.f91765p = org.jsoup.helper.b.f91727c;
            this.f91768s = false;
            this.f91756g = 30000;
            this.f91757h = 2097152;
            this.f91758i = true;
            this.f91759j = new ArrayList();
            this.f91748b = Connection.Method.GET;
            E(com.google.common.net.b.f34629j, "gzip");
            E("User-Agent", c.f91735d);
            this.f91763n = org.jsoup.parser.f.c();
            this.f91767r = new CookieManager();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map A() {
            return super.A();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ String B(String str) {
            return super.B(str);
        }

        @Override // org.jsoup.Connection.c
        public boolean C() {
            return this.f91758i;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c E(String str, String str2) {
            return super.E(str, str2);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean F(String str) {
            return super.F(str);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c G(String str) {
            return super.G(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ String H(String str) {
            return super.H(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean I(String str) {
            return super.I(str);
        }

        @Override // org.jsoup.Connection.c
        public boolean J() {
            return this.f91762m;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c K(String str) {
            return super.K(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ List M(String str) {
            return super.M(str);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map N() {
            return super.N();
        }

        @Override // org.jsoup.Connection.c
        public String Q() {
            return this.f91760k;
        }

        @Override // org.jsoup.Connection.c
        public int R() {
            return this.f91757h;
        }

        @Override // org.jsoup.Connection.c
        public org.jsoup.parser.f U() {
            return this.f91763n;
        }

        @Override // org.jsoup.Connection.c
        public Connection.c a(boolean z9) {
            this.f91758i = z9;
            return this;
        }

        @Override // org.jsoup.Connection.c
        public Connection.c b(@h String str) {
            this.f91760k = str;
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c c(String str, String str2) {
            return super.c(str, str2);
        }

        @Override // org.jsoup.Connection.c
        public Collection<Connection.b> data() {
            return this.f91759j;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CookieManager e0() {
            return this.f91767r;
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Map f() {
            return super.f();
        }

        @Override // org.jsoup.Connection.c
        /* renamed from: f0 */
        public d z(Connection.b bVar) {
            org.jsoup.helper.d.k(bVar, "Key val must not be null");
            this.f91759j.add(bVar);
            return this;
        }

        @Override // org.jsoup.Connection.c
        public void g(SSLSocketFactory sSLSocketFactory) {
            this.f91766q = sSLSocketFactory;
        }

        @Override // org.jsoup.Connection.c
        /* renamed from: g0 */
        public d j(org.jsoup.parser.f fVar) {
            this.f91763n = fVar;
            this.f91764o = true;
            return this;
        }

        @Override // org.jsoup.Connection.c
        public Connection.c h(String str) {
            org.jsoup.helper.d.k(str, "Charset must not be null");
            if (Charset.isSupported(str)) {
                this.f91765p = str;
                return this;
            }
            throw new IllegalCharsetNameException(str);
        }

        @Override // org.jsoup.Connection.c
        /* renamed from: h0 */
        public d o(String str, int i4) {
            this.f91755f = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(str, i4));
            return this;
        }

        @Override // org.jsoup.Connection.c
        /* renamed from: i0 */
        public d i(@h Proxy proxy) {
            this.f91755f = proxy;
            return this;
        }

        @Override // org.jsoup.Connection.c
        /* renamed from: j0 */
        public d d(int i4) {
            org.jsoup.helper.d.e(i4 >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
            this.f91756g = i4;
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c k(URL url) {
            return super.k(url);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c l(String str, String str2) {
            return super.l(str, str2);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.Connection$a, org.jsoup.Connection$c] */
        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.c m(Connection.Method method) {
            return super.m(method);
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.Connection.c
        public Connection.c p(int i4) {
            org.jsoup.helper.d.e(i4 >= 0, "maxSize must be 0 (unlimited) or larger");
            this.f91757h = i4;
            return this;
        }

        @Override // org.jsoup.Connection.c
        public Connection.c q(boolean z9) {
            this.f91761l = z9;
            return this;
        }

        @Override // org.jsoup.Connection.c
        public Connection.c r(boolean z9) {
            this.f91762m = z9;
            return this;
        }

        @Override // org.jsoup.Connection.c
        public boolean s() {
            return this.f91761l;
        }

        @Override // org.jsoup.Connection.c
        public String t() {
            return this.f91765p;
        }

        @Override // org.jsoup.Connection.c
        public int timeout() {
            return this.f91756g;
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ URL v() {
            return super.v();
        }

        @Override // org.jsoup.helper.c.b, org.jsoup.Connection.a
        public /* bridge */ /* synthetic */ boolean w(String str, String str2) {
            return super.w(str, str2);
        }

        @Override // org.jsoup.Connection.c
        public SSLSocketFactory x() {
            return this.f91766q;
        }

        @Override // org.jsoup.Connection.c
        public Proxy y() {
            return this.f91755f;
        }

        d(d dVar) {
            super(dVar);
            this.f91760k = null;
            this.f91761l = false;
            this.f91762m = false;
            this.f91764o = false;
            this.f91765p = org.jsoup.helper.b.f91727c;
            this.f91768s = false;
            this.f91755f = dVar.f91755f;
            this.f91765p = dVar.f91765p;
            this.f91756g = dVar.f91756g;
            this.f91757h = dVar.f91757h;
            this.f91758i = dVar.f91758i;
            ArrayList arrayList = new ArrayList();
            this.f91759j = arrayList;
            arrayList.addAll(dVar.data());
            this.f91760k = dVar.f91760k;
            this.f91761l = dVar.f91761l;
            this.f91762m = dVar.f91762m;
            this.f91763n = dVar.f91763n.f();
            this.f91764o = dVar.f91764o;
            this.f91766q = dVar.f91766q;
            this.f91767r = dVar.f91767r;
            this.f91768s = false;
        }
    }
}
