package com.koushikdutta.async.http.cache;

import android.net.Uri;
import com.google.common.net.b;
import com.koushikdutta.async.http.HttpDate;
import com.koushikdutta.async.http.cache.HeaderParser;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class ResponseHeaders {

    /* renamed from: w  reason: collision with root package name */
    private static final String f44857w = "X-Android-Sent-Millis";

    /* renamed from: x  reason: collision with root package name */
    private static final String f44858x = "X-Android-Received-Millis";

    /* renamed from: a  reason: collision with root package name */
    private final Uri f44859a;

    /* renamed from: b  reason: collision with root package name */
    private final RawHeaders f44860b;

    /* renamed from: c  reason: collision with root package name */
    private Date f44861c;

    /* renamed from: d  reason: collision with root package name */
    private Date f44862d;

    /* renamed from: e  reason: collision with root package name */
    private Date f44863e;

    /* renamed from: f  reason: collision with root package name */
    private long f44864f;

    /* renamed from: g  reason: collision with root package name */
    private long f44865g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f44866h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f44867i;

    /* renamed from: j  reason: collision with root package name */
    private int f44868j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f44869k = -1;

    /* renamed from: l  reason: collision with root package name */
    private boolean f44870l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f44871m;

    /* renamed from: n  reason: collision with root package name */
    private String f44872n;

    /* renamed from: o  reason: collision with root package name */
    private int f44873o;

    /* renamed from: p  reason: collision with root package name */
    private Set<String> f44874p;

    /* renamed from: q  reason: collision with root package name */
    private String f44875q;

    /* renamed from: r  reason: collision with root package name */
    private String f44876r;

    /* renamed from: s  reason: collision with root package name */
    private long f44877s;

    /* renamed from: t  reason: collision with root package name */
    private String f44878t;

    /* renamed from: u  reason: collision with root package name */
    private String f44879u;

    /* renamed from: v  reason: collision with root package name */
    private String f44880v;

    public ResponseHeaders(Uri uri, RawHeaders rawHeaders) {
        this.f44873o = -1;
        this.f44874p = Collections.emptySet();
        this.f44877s = -1L;
        this.f44859a = uri;
        this.f44860b = rawHeaders;
        HeaderParser.CacheControlHandler cacheControlHandler = new HeaderParser.CacheControlHandler() { // from class: com.koushikdutta.async.http.cache.ResponseHeaders.1
            @Override // com.koushikdutta.async.http.cache.HeaderParser.CacheControlHandler
            public void a(String str, String str2) {
                if (str.equalsIgnoreCase("no-cache")) {
                    ResponseHeaders.this.f44866h = true;
                } else if (str.equalsIgnoreCase("no-store")) {
                    ResponseHeaders.this.f44867i = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    ResponseHeaders.this.f44868j = HeaderParser.b(str2);
                } else if (str.equalsIgnoreCase("s-maxage")) {
                    ResponseHeaders.this.f44869k = HeaderParser.b(str2);
                } else if (str.equalsIgnoreCase("public")) {
                    ResponseHeaders.this.f44870l = true;
                } else if (str.equalsIgnoreCase("must-revalidate")) {
                    ResponseHeaders.this.f44871m = true;
                }
            }
        };
        for (int i4 = 0; i4 < rawHeaders.n(); i4++) {
            String h4 = rawHeaders.h(i4);
            String m9 = rawHeaders.m(i4);
            if (b.f34606a.equalsIgnoreCase(h4)) {
                HeaderParser.a(m9, cacheControlHandler);
            } else if (b.f34615d.equalsIgnoreCase(h4)) {
                this.f44861c = HttpDate.b(m9);
            } else if (b.f34630j0.equalsIgnoreCase(h4)) {
                this.f44863e = HttpDate.b(m9);
            } else if (b.f34632k0.equalsIgnoreCase(h4)) {
                this.f44862d = HttpDate.b(m9);
            } else if (b.f34628i0.equalsIgnoreCase(h4)) {
                this.f44872n = m9;
            } else if (b.f34618e.equalsIgnoreCase(h4)) {
                if (m9.equalsIgnoreCase("no-cache")) {
                    this.f44866h = true;
                }
            } else if (b.U.equalsIgnoreCase(h4)) {
                this.f44873o = HeaderParser.b(m9);
            } else if (b.D0.equalsIgnoreCase(h4)) {
                if (this.f44874p.isEmpty()) {
                    this.f44874p = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : m9.split(",")) {
                    this.f44874p.add(str.trim().toLowerCase(Locale.US));
                }
            } else if ("Content-Encoding".equalsIgnoreCase(h4)) {
                this.f44875q = m9;
            } else if (b.C0.equalsIgnoreCase(h4)) {
                this.f44876r = m9;
            } else if (b.f34609b.equalsIgnoreCase(h4)) {
                try {
                    this.f44877s = Long.parseLong(m9);
                } catch (NumberFormatException unused) {
                }
            } else if (b.f34639o.equalsIgnoreCase(h4)) {
                this.f44878t = m9;
            } else if (b.f34642p0.equalsIgnoreCase(h4)) {
                this.f44879u = m9;
            } else if (b.E0.equalsIgnoreCase(h4)) {
                this.f44880v = m9;
            } else if (f44857w.equalsIgnoreCase(h4)) {
                this.f44864f = Long.parseLong(m9);
            } else if (f44858x.equalsIgnoreCase(h4)) {
                this.f44865g = Long.parseLong(m9);
            }
        }
    }

    private static boolean D(String str) {
        return (str.equalsIgnoreCase(b.f34639o) || str.equalsIgnoreCase("Keep-Alive") || str.equalsIgnoreCase(b.f34642p0) || str.equalsIgnoreCase(b.F) || str.equalsIgnoreCase(b.K) || str.equalsIgnoreCase("Trailers") || str.equalsIgnoreCase(b.C0) || str.equalsIgnoreCase(b.L)) ? false : true;
    }

    private boolean E() {
        return this.f44868j == -1 && this.f44863e == null;
    }

    private long i(long j4) {
        Date date = this.f44861c;
        long max = date != null ? Math.max(0L, this.f44865g - date.getTime()) : 0L;
        int i4 = this.f44873o;
        if (i4 != -1) {
            max = Math.max(max, TimeUnit.SECONDS.toMillis(i4));
        }
        long j10 = this.f44865g;
        return max + (j10 - this.f44864f) + (j4 - j10);
    }

    private long j() {
        int i4 = this.f44868j;
        if (i4 != -1) {
            return TimeUnit.SECONDS.toMillis(i4);
        }
        if (this.f44863e != null) {
            Date date = this.f44861c;
            long time = this.f44863e.getTime() - (date != null ? date.getTime() : this.f44865g);
            if (time > 0) {
                return time;
            }
            return 0L;
        } else if (this.f44862d == null || this.f44859a.getEncodedQuery() != null) {
            return 0L;
        } else {
            Date date2 = this.f44861c;
            long time2 = (date2 != null ? date2.getTime() : this.f44864f) - this.f44862d.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }
    }

    public boolean A(RequestHeaders requestHeaders) {
        int j4 = this.f44860b.j();
        if (j4 == 200 || j4 == 203 || j4 == 300 || j4 == 301 || j4 == 410) {
            return (!requestHeaders.v() || this.f44870l || this.f44871m || this.f44869k != -1) && !this.f44867i;
        }
        return false;
    }

    public boolean B() {
        return "chunked".equalsIgnoreCase(this.f44876r);
    }

    public boolean C() {
        return "gzip".equalsIgnoreCase(this.f44875q);
    }

    public boolean F() {
        return this.f44871m;
    }

    public boolean G() {
        return this.f44866h;
    }

    public boolean H() {
        return this.f44867i;
    }

    public boolean I() {
        return this.f44870l;
    }

    public void J(long j4, long j10) {
        this.f44864f = j4;
        this.f44860b.a(f44857w, Long.toString(j4));
        this.f44865g = j10;
        this.f44860b.a(f44858x, Long.toString(j10));
    }

    public void K() {
        this.f44875q = null;
        this.f44860b.p("Content-Encoding");
    }

    public boolean L(ResponseHeaders responseHeaders) {
        Date date;
        if (responseHeaders.f44860b.j() == 304) {
            return true;
        }
        return (this.f44862d == null || (date = responseHeaders.f44862d) == null || date.getTime() >= this.f44862d.getTime()) ? false : true;
    }

    public boolean M(Map<String, List<String>> map, Map<String, List<String>> map2) {
        for (String str : this.f44874p) {
            if (!Objects.a(map.get(str), map2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public ResponseSource g(long j4, RequestHeaders requestHeaders) {
        if (!A(requestHeaders)) {
            return ResponseSource.NETWORK;
        }
        if (!requestHeaders.z() && !requestHeaders.w()) {
            long i4 = i(j4);
            long j10 = j();
            if (requestHeaders.o() != -1) {
                j10 = Math.min(j10, TimeUnit.SECONDS.toMillis(requestHeaders.o()));
            }
            long j11 = 0;
            long millis = requestHeaders.q() != -1 ? TimeUnit.SECONDS.toMillis(requestHeaders.q()) : 0L;
            if (!this.f44871m && requestHeaders.p() != -1) {
                j11 = TimeUnit.SECONDS.toMillis(requestHeaders.p());
            }
            if (!this.f44866h) {
                long j12 = millis + i4;
                if (j12 < j11 + j10) {
                    if (j12 >= j10) {
                        this.f44860b.a(b.f34623g, "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (i4 > 86400000 && E()) {
                        this.f44860b.a(b.f34623g, "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return ResponseSource.CACHE;
                }
            }
            String str = this.f44872n;
            if (str != null) {
                requestHeaders.I(str);
            } else {
                Date date = this.f44862d;
                if (date != null) {
                    requestHeaders.H(date);
                } else {
                    Date date2 = this.f44861c;
                    if (date2 != null) {
                        requestHeaders.H(date2);
                    }
                }
            }
            return requestHeaders.w() ? ResponseSource.CONDITIONAL_CACHE : ResponseSource.NETWORK;
        }
        return ResponseSource.NETWORK;
    }

    public ResponseHeaders h(ResponseHeaders responseHeaders) {
        RawHeaders rawHeaders = new RawHeaders();
        for (int i4 = 0; i4 < this.f44860b.n(); i4++) {
            String h4 = this.f44860b.h(i4);
            String m9 = this.f44860b.m(i4);
            if ((!h4.equals(b.f34623g) || !m9.startsWith("1")) && (!D(h4) || responseHeaders.f44860b.f(h4) == null)) {
                rawHeaders.a(h4, m9);
            }
        }
        for (int i10 = 0; i10 < responseHeaders.f44860b.n(); i10++) {
            String h10 = responseHeaders.f44860b.h(i10);
            if (D(h10)) {
                rawHeaders.a(h10, responseHeaders.f44860b.m(i10));
            }
        }
        return new ResponseHeaders(this.f44859a, rawHeaders);
    }

    public String k() {
        return this.f44878t;
    }

    public String l() {
        return this.f44875q;
    }

    public long m() {
        return this.f44877s;
    }

    public String n() {
        return this.f44872n;
    }

    public Date o() {
        return this.f44863e;
    }

    public RawHeaders p() {
        return this.f44860b;
    }

    public Date q() {
        return this.f44862d;
    }

    public int r() {
        return this.f44868j;
    }

    public String s() {
        return this.f44879u;
    }

    public int t() {
        return this.f44869k;
    }

    public Date u() {
        return this.f44861c;
    }

    public Uri v() {
        return this.f44859a;
    }

    public Set<String> w() {
        return this.f44874p;
    }

    public String x() {
        return this.f44880v;
    }

    public boolean y() {
        return "close".equalsIgnoreCase(this.f44878t);
    }

    public boolean z() {
        return this.f44874p.contains("*");
    }
}
