package com.koushikdutta.async.http.cache;

import android.net.Uri;
import com.google.common.net.b;
import com.koushikdutta.async.http.HttpDate;
import com.koushikdutta.async.http.cache.HeaderParser;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class RequestHeaders {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f44786a;

    /* renamed from: b  reason: collision with root package name */
    private final RawHeaders f44787b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44788c;

    /* renamed from: d  reason: collision with root package name */
    private int f44789d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f44790e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f44791f = -1;

    /* renamed from: g  reason: collision with root package name */
    private boolean f44792g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f44793h;

    /* renamed from: i  reason: collision with root package name */
    private int f44794i;

    /* renamed from: j  reason: collision with root package name */
    private String f44795j;

    /* renamed from: k  reason: collision with root package name */
    private String f44796k;

    /* renamed from: l  reason: collision with root package name */
    private String f44797l;

    /* renamed from: m  reason: collision with root package name */
    private String f44798m;

    /* renamed from: n  reason: collision with root package name */
    private String f44799n;

    /* renamed from: o  reason: collision with root package name */
    private String f44800o;

    /* renamed from: p  reason: collision with root package name */
    private String f44801p;

    /* renamed from: q  reason: collision with root package name */
    private String f44802q;

    /* renamed from: r  reason: collision with root package name */
    private String f44803r;

    public RequestHeaders(Uri uri, RawHeaders rawHeaders) {
        this.f44794i = -1;
        this.f44786a = uri;
        this.f44787b = rawHeaders;
        HeaderParser.CacheControlHandler cacheControlHandler = new HeaderParser.CacheControlHandler() { // from class: com.koushikdutta.async.http.cache.RequestHeaders.1
            @Override // com.koushikdutta.async.http.cache.HeaderParser.CacheControlHandler
            public void a(String str, String str2) {
                if (str.equalsIgnoreCase("no-cache")) {
                    RequestHeaders.this.f44788c = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    RequestHeaders.this.f44789d = HeaderParser.b(str2);
                } else if (str.equalsIgnoreCase("max-stale")) {
                    RequestHeaders.this.f44790e = HeaderParser.b(str2);
                } else if (str.equalsIgnoreCase("min-fresh")) {
                    RequestHeaders.this.f44791f = HeaderParser.b(str2);
                } else if (str.equalsIgnoreCase("only-if-cached")) {
                    RequestHeaders.this.f44792g = true;
                }
            }
        };
        for (int i4 = 0; i4 < rawHeaders.n(); i4++) {
            String h4 = rawHeaders.h(i4);
            String m9 = rawHeaders.m(i4);
            if (b.f34606a.equalsIgnoreCase(h4)) {
                HeaderParser.a(m9, cacheControlHandler);
            } else if (b.f34618e.equalsIgnoreCase(h4)) {
                if (m9.equalsIgnoreCase("no-cache")) {
                    this.f44788c = true;
                }
            } else if (b.f34661z.equalsIgnoreCase(h4)) {
                this.f44802q = m9;
            } else if (b.f34659y.equalsIgnoreCase(h4)) {
                this.f44801p = m9;
            } else if ("Authorization".equalsIgnoreCase(h4)) {
                this.f44793h = true;
            } else if (b.f34609b.equalsIgnoreCase(h4)) {
                try {
                    this.f44794i = Integer.parseInt(m9);
                } catch (NumberFormatException unused) {
                }
            } else if (b.C0.equalsIgnoreCase(h4)) {
                this.f44795j = m9;
            } else if (b.M.equalsIgnoreCase(h4)) {
                this.f44796k = m9;
            } else if (b.f34653v.equalsIgnoreCase(h4)) {
                this.f44797l = m9;
            } else if (b.f34639o.equalsIgnoreCase(h4)) {
                this.f44798m = m9;
            } else if (b.f34629j.equalsIgnoreCase(h4)) {
                this.f44799n = m9;
            } else if ("Content-Type".equalsIgnoreCase(h4)) {
                this.f44800o = m9;
            } else if (b.F.equalsIgnoreCase(h4)) {
                this.f44803r = m9;
            }
        }
    }

    public boolean A() {
        return this.f44792g;
    }

    public void B(String str) {
        if (this.f44799n != null) {
            this.f44787b.p(b.f34629j);
        }
        this.f44787b.a(b.f34629j, str);
        this.f44799n = str;
    }

    public void C() {
        if (this.f44795j != null) {
            this.f44787b.p(b.C0);
        }
        this.f44787b.a(b.C0, "chunked");
        this.f44795j = "chunked";
    }

    public void D(String str) {
        if (this.f44798m != null) {
            this.f44787b.p(b.f34639o);
        }
        this.f44787b.a(b.f34639o, str);
        this.f44798m = str;
    }

    public void E(int i4) {
        if (this.f44794i != -1) {
            this.f44787b.p(b.f34609b);
        }
        if (i4 != -1) {
            this.f44787b.a(b.f34609b, Integer.toString(i4));
        }
        this.f44794i = i4;
    }

    public void F(String str) {
        if (this.f44800o != null) {
            this.f44787b.p("Content-Type");
        }
        this.f44787b.a("Content-Type", str);
        this.f44800o = str;
    }

    public void G(String str) {
        if (this.f44797l != null) {
            this.f44787b.p(b.f34653v);
        }
        this.f44787b.a(b.f34653v, str);
        this.f44797l = str;
    }

    public void H(Date date) {
        if (this.f44801p != null) {
            this.f44787b.p(b.f34659y);
        }
        String a10 = HttpDate.a(date);
        this.f44787b.a(b.f34659y, a10);
        this.f44801p = a10;
    }

    public void I(String str) {
        if (this.f44802q != null) {
            this.f44787b.p(b.f34661z);
        }
        this.f44787b.a(b.f34661z, str);
        this.f44802q = str;
    }

    public void J(String str) {
        if (this.f44796k != null) {
            this.f44787b.p(b.M);
        }
        this.f44787b.a(b.M, str);
        this.f44796k = str;
    }

    public void f(Map<String, List<String>> map) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (b.f34641p.equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                this.f44787b.b(key, entry.getValue());
            }
        }
    }

    public String g() {
        return this.f44799n;
    }

    public String h() {
        return this.f44798m;
    }

    public int i() {
        return this.f44794i;
    }

    public String j() {
        return this.f44800o;
    }

    public RawHeaders k() {
        return this.f44787b;
    }

    public String l() {
        return this.f44797l;
    }

    public String m() {
        return this.f44801p;
    }

    public String n() {
        return this.f44802q;
    }

    public int o() {
        return this.f44789d;
    }

    public int p() {
        return this.f44790e;
    }

    public int q() {
        return this.f44791f;
    }

    public String r() {
        return this.f44803r;
    }

    public String s() {
        return this.f44795j;
    }

    public Uri t() {
        return this.f44786a;
    }

    public String u() {
        return this.f44796k;
    }

    public boolean v() {
        return this.f44793h;
    }

    public boolean w() {
        return (this.f44801p == null && this.f44802q == null) ? false : true;
    }

    public boolean x() {
        return "close".equalsIgnoreCase(this.f44798m);
    }

    public boolean y() {
        return "chunked".equalsIgnoreCase(this.f44795j);
    }

    public boolean z() {
        return this.f44788c;
    }
}
