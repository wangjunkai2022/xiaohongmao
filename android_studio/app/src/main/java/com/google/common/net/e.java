package com.google.common.net;

import com.google.common.base.Optional;
import com.google.common.base.a0;
import com.google.common.base.q;
import com.google.common.base.u;
import com.google.common.base.v;
import com.google.common.base.w;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.f3;
import com.google.common.collect.h3;
import com.google.common.collect.j3;
import com.google.common.collect.k5;
import com.google.errorprone.annotations.Immutable;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MediaType.java */
@Immutable
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: l  reason: collision with root package name */
    private static final String f34721l = "application";

    /* renamed from: m  reason: collision with root package name */
    private static final String f34724m = "audio";

    /* renamed from: n  reason: collision with root package name */
    private static final String f34727n = "image";

    /* renamed from: o  reason: collision with root package name */
    private static final String f34730o = "text";

    /* renamed from: p  reason: collision with root package name */
    private static final String f34733p = "video";

    /* renamed from: a  reason: collision with root package name */
    private final String f34757a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34758b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableListMultimap<String, String> f34759c;
    @LazyInit

    /* renamed from: d  reason: collision with root package name */
    private String f34760d;
    @LazyInit

    /* renamed from: e  reason: collision with root package name */
    private int f34761e;
    @LazyInit

    /* renamed from: f  reason: collision with root package name */
    private Optional<Charset> f34762f;

    /* renamed from: g  reason: collision with root package name */
    private static final String f34706g = "charset";

    /* renamed from: h  reason: collision with root package name */
    private static final ImmutableListMultimap<String, String> f34709h = ImmutableListMultimap.of(f34706g, com.google.common.base.c.g(com.google.common.base.e.f32190c.name()));

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.common.base.d f34712i = com.google.common.base.d.f().b(com.google.common.base.d.v().F()).b(com.google.common.base.d.s(' ')).b(com.google.common.base.d.H("()<>@,;:\\\"/[]?="));

    /* renamed from: j  reason: collision with root package name */
    private static final com.google.common.base.d f34715j = com.google.common.base.d.f().b(com.google.common.base.d.H("\"\\\r"));

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.common.base.d f34718k = com.google.common.base.d.d(" \t\r\n");

    /* renamed from: r  reason: collision with root package name */
    private static final Map<e, e> f34739r = f3.Y();

    /* renamed from: q  reason: collision with root package name */
    private static final String f34736q = "*";

    /* renamed from: s  reason: collision with root package name */
    public static final e f34741s = j(f34736q, f34736q);

    /* renamed from: t  reason: collision with root package name */
    public static final e f34743t = j("text", f34736q);

    /* renamed from: u  reason: collision with root package name */
    public static final e f34745u = j("image", f34736q);

    /* renamed from: v  reason: collision with root package name */
    public static final e f34747v = j("audio", f34736q);

    /* renamed from: w  reason: collision with root package name */
    public static final e f34749w = j("video", f34736q);

    /* renamed from: x  reason: collision with root package name */
    public static final e f34751x = j("application", f34736q);

    /* renamed from: y  reason: collision with root package name */
    public static final e f34753y = k("text", "cache-manifest");

    /* renamed from: z  reason: collision with root package name */
    public static final e f34755z = k("text", "css");
    public static final e A = k("text", "csv");
    public static final e B = k("text", "html");
    public static final e C = k("text", "calendar");
    public static final e D = k("text", "plain");
    public static final e E = k("text", "javascript");
    public static final e F = k("text", "tab-separated-values");
    public static final e G = k("text", "vcard");
    public static final e H = k("text", "vnd.wap.wml");
    public static final e I = k("text", "xml");
    public static final e J = k("text", "vtt");
    public static final e K = j("image", "bmp");
    public static final e L = j("image", "x-canon-crw");
    public static final e M = j("image", "gif");
    public static final e N = j("image", "vnd.microsoft.icon");
    public static final e O = j("image", "jpeg");
    public static final e P = j("image", "png");
    public static final e Q = j("image", "vnd.adobe.photoshop");
    public static final e R = k("image", "svg+xml");
    public static final e S = j("image", "tiff");
    public static final e T = j("image", "webp");
    public static final e U = j("audio", "mp4");
    public static final e V = j("audio", "mpeg");
    public static final e W = j("audio", "ogg");
    public static final e X = j("audio", "webm");
    public static final e Y = j("audio", "l16");
    public static final e Z = j("audio", "l24");

    /* renamed from: a0  reason: collision with root package name */
    public static final e f34694a0 = j("audio", "basic");

    /* renamed from: b0  reason: collision with root package name */
    public static final e f34696b0 = j("audio", "aac");

    /* renamed from: c0  reason: collision with root package name */
    public static final e f34698c0 = j("audio", "vorbis");

    /* renamed from: d0  reason: collision with root package name */
    public static final e f34700d0 = j("audio", "x-ms-wma");

    /* renamed from: e0  reason: collision with root package name */
    public static final e f34702e0 = j("audio", "x-ms-wax");

    /* renamed from: f0  reason: collision with root package name */
    public static final e f34704f0 = j("audio", "vnd.rn-realaudio");

    /* renamed from: g0  reason: collision with root package name */
    public static final e f34707g0 = j("audio", "vnd.wave");

    /* renamed from: h0  reason: collision with root package name */
    public static final e f34710h0 = j("video", "mp4");

    /* renamed from: i0  reason: collision with root package name */
    public static final e f34713i0 = j("video", "mpeg");

    /* renamed from: j0  reason: collision with root package name */
    public static final e f34716j0 = j("video", "ogg");

    /* renamed from: k0  reason: collision with root package name */
    public static final e f34719k0 = j("video", "quicktime");

    /* renamed from: l0  reason: collision with root package name */
    public static final e f34722l0 = j("video", "webm");

    /* renamed from: m0  reason: collision with root package name */
    public static final e f34725m0 = j("video", "x-ms-wmv");

    /* renamed from: n0  reason: collision with root package name */
    public static final e f34728n0 = j("video", "x-flv");

    /* renamed from: o0  reason: collision with root package name */
    public static final e f34731o0 = j("video", "3gpp");

    /* renamed from: p0  reason: collision with root package name */
    public static final e f34734p0 = j("video", "3gpp2");

    /* renamed from: q0  reason: collision with root package name */
    public static final e f34737q0 = k("application", "xml");

    /* renamed from: r0  reason: collision with root package name */
    public static final e f34740r0 = k("application", "atom+xml");

    /* renamed from: s0  reason: collision with root package name */
    public static final e f34742s0 = j("application", "x-bzip2");

    /* renamed from: t0  reason: collision with root package name */
    public static final e f34744t0 = k("application", "dart");

    /* renamed from: u0  reason: collision with root package name */
    public static final e f34746u0 = j("application", "vnd.apple.pkpass");

    /* renamed from: v0  reason: collision with root package name */
    public static final e f34748v0 = j("application", "vnd.ms-fontobject");

    /* renamed from: w0  reason: collision with root package name */
    public static final e f34750w0 = j("application", "epub+zip");

    /* renamed from: x0  reason: collision with root package name */
    public static final e f34752x0 = j("application", "x-www-form-urlencoded");

    /* renamed from: y0  reason: collision with root package name */
    public static final e f34754y0 = j("application", "pkcs12");

    /* renamed from: z0  reason: collision with root package name */
    public static final e f34756z0 = j("application", "binary");
    public static final e A0 = j("application", "x-gzip");
    public static final e B0 = j("application", "hal+json");
    public static final e C0 = k("application", "javascript");
    public static final e D0 = j("application", "jose");
    public static final e E0 = j("application", "jose+json");
    public static final e F0 = k("application", "json");
    public static final e G0 = k("application", "manifest+json");
    public static final e H0 = j("application", "vnd.google-earth.kml+xml");
    public static final e I0 = j("application", "vnd.google-earth.kmz");
    public static final e J0 = j("application", "mbox");
    public static final e K0 = j("application", "x-apple-aspen-config");
    public static final e L0 = j("application", "vnd.ms-excel");
    public static final e M0 = j("application", "vnd.ms-outlook");
    public static final e N0 = j("application", "vnd.ms-powerpoint");
    public static final e O0 = j("application", "msword");
    public static final e P0 = j("application", "wasm");
    public static final e Q0 = j("application", "x-nacl");
    public static final e R0 = j("application", "x-pnacl");
    public static final e S0 = j("application", "octet-stream");
    public static final e T0 = j("application", "ogg");
    public static final e U0 = j("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final e V0 = j("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final e W0 = j("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final e X0 = j("application", "vnd.oasis.opendocument.graphics");
    public static final e Y0 = j("application", "vnd.oasis.opendocument.presentation");
    public static final e Z0 = j("application", "vnd.oasis.opendocument.spreadsheet");

    /* renamed from: a1  reason: collision with root package name */
    public static final e f34695a1 = j("application", "vnd.oasis.opendocument.text");

    /* renamed from: b1  reason: collision with root package name */
    public static final e f34697b1 = j("application", "pdf");

    /* renamed from: c1  reason: collision with root package name */
    public static final e f34699c1 = j("application", "postscript");

    /* renamed from: d1  reason: collision with root package name */
    public static final e f34701d1 = j("application", "protobuf");

    /* renamed from: e1  reason: collision with root package name */
    public static final e f34703e1 = k("application", "rdf+xml");

    /* renamed from: f1  reason: collision with root package name */
    public static final e f34705f1 = k("application", "rtf");

    /* renamed from: g1  reason: collision with root package name */
    public static final e f34708g1 = j("application", "font-sfnt");

    /* renamed from: h1  reason: collision with root package name */
    public static final e f34711h1 = j("application", "x-shockwave-flash");

    /* renamed from: i1  reason: collision with root package name */
    public static final e f34714i1 = j("application", "vnd.sketchup.skp");

    /* renamed from: j1  reason: collision with root package name */
    public static final e f34717j1 = k("application", "soap+xml");

    /* renamed from: k1  reason: collision with root package name */
    public static final e f34720k1 = j("application", "x-tar");

    /* renamed from: l1  reason: collision with root package name */
    public static final e f34723l1 = j("application", "font-woff");

    /* renamed from: m1  reason: collision with root package name */
    public static final e f34726m1 = j("application", "font-woff2");

    /* renamed from: n1  reason: collision with root package name */
    public static final e f34729n1 = k("application", "xhtml+xml");

    /* renamed from: o1  reason: collision with root package name */
    public static final e f34732o1 = k("application", "xrd+xml");

    /* renamed from: p1  reason: collision with root package name */
    public static final e f34735p1 = j("application", "zip");

    /* renamed from: q1  reason: collision with root package name */
    private static final u.d f34738q1 = u.p("; ").u("=");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaType.java */
    /* loaded from: classes2.dex */
    public class a implements q<Collection<String>, ImmutableMultiset<String>> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public ImmutableMultiset<String> apply(Collection<String> collection) {
            return ImmutableMultiset.copyOf(collection);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaType.java */
    /* loaded from: classes2.dex */
    public class b implements q<String, String> {
        b() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public String apply(String str) {
            return e.f34712i.C(str) ? str : e.o(str);
        }
    }

    /* compiled from: MediaType.java */
    /* loaded from: classes2.dex */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f34765a;

        /* renamed from: b  reason: collision with root package name */
        int f34766b = 0;

        c(String str) {
            this.f34765a = str;
        }

        char a(char c10) {
            a0.g0(e());
            a0.g0(f() == c10);
            this.f34766b++;
            return c10;
        }

        char b(com.google.common.base.d dVar) {
            a0.g0(e());
            char f10 = f();
            a0.g0(dVar.B(f10));
            this.f34766b++;
            return f10;
        }

        String c(com.google.common.base.d dVar) {
            int i4 = this.f34766b;
            String d4 = d(dVar);
            a0.g0(this.f34766b != i4);
            return d4;
        }

        String d(com.google.common.base.d dVar) {
            a0.g0(e());
            int i4 = this.f34766b;
            this.f34766b = dVar.F().o(this.f34765a, i4);
            return e() ? this.f34765a.substring(i4, this.f34766b) : this.f34765a.substring(i4);
        }

        boolean e() {
            int i4 = this.f34766b;
            return i4 >= 0 && i4 < this.f34765a.length();
        }

        char f() {
            a0.g0(e());
            return this.f34765a.charAt(this.f34766b);
        }
    }

    private e(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.f34757a = str;
        this.f34758b = str2;
        this.f34759c = immutableListMultimap;
    }

    private static e c(e eVar) {
        f34739r.put(eVar, eVar);
        return eVar;
    }

    private String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f34757a);
        sb.append(com.fasterxml.jackson.core.e.f13819f);
        sb.append(this.f34758b);
        if (!this.f34759c.isEmpty()) {
            sb.append("; ");
            f34738q1.d(sb, j3.E(this.f34759c, new b()).entries());
        }
        return sb.toString();
    }

    public static e f(String str, String str2) {
        e g4 = g(str, str2, ImmutableListMultimap.of());
        g4.f34762f = Optional.absent();
        return g4;
    }

    private static e g(String str, String str2, h3<String, String> h3Var) {
        a0.E(str);
        a0.E(str2);
        a0.E(h3Var);
        String s9 = s(str);
        String s10 = s(str2);
        a0.e(!f34736q.equals(s9) || f34736q.equals(s10), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.a builder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : h3Var.entries()) {
            String s11 = s(entry.getKey());
            builder.f(s11, r(s11, entry.getValue()));
        }
        e eVar = new e(s9, s10, builder.a());
        return (e) v.a(f34739r.get(eVar), eVar);
    }

    static e h(String str) {
        return f("application", str);
    }

    static e i(String str) {
        return f("audio", str);
    }

    private static e j(String str, String str2) {
        e c10 = c(new e(str, str2, ImmutableListMultimap.of()));
        c10.f34762f = Optional.absent();
        return c10;
    }

    private static e k(String str, String str2) {
        e c10 = c(new e(str, str2, f34709h));
        c10.f34762f = Optional.of(com.google.common.base.e.f32190c);
        return c10;
    }

    static e l(String str) {
        return f("image", str);
    }

    static e m(String str) {
        return f("text", str);
    }

    static e n(String str) {
        return f("video", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String o(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append('\"');
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                sb.append('\\');
            }
            sb.append(charAt);
        }
        sb.append('\"');
        return sb.toString();
    }

    private static String r(String str, String str2) {
        return f34706g.equals(str) ? com.google.common.base.c.g(str2) : str2;
    }

    private static String s(String str) {
        a0.d(f34712i.C(str));
        return com.google.common.base.c.g(str);
    }

    private Map<String, ImmutableMultiset<String>> u() {
        return f3.B0(this.f34759c.asMap(), new a());
    }

    public static e v(String str) {
        String c10;
        a0.E(str);
        c cVar = new c(str);
        try {
            com.google.common.base.d dVar = f34712i;
            String c11 = cVar.c(dVar);
            cVar.a(com.fasterxml.jackson.core.e.f13819f);
            String c12 = cVar.c(dVar);
            ImmutableListMultimap.a builder = ImmutableListMultimap.builder();
            while (cVar.e()) {
                com.google.common.base.d dVar2 = f34718k;
                cVar.d(dVar2);
                cVar.a(';');
                cVar.d(dVar2);
                com.google.common.base.d dVar3 = f34712i;
                String c13 = cVar.c(dVar3);
                cVar.a('=');
                if ('\"' == cVar.f()) {
                    cVar.a('\"');
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != cVar.f()) {
                        if ('\\' == cVar.f()) {
                            cVar.a('\\');
                            sb.append(cVar.b(com.google.common.base.d.f()));
                        } else {
                            sb.append(cVar.c(f34715j));
                        }
                    }
                    c10 = sb.toString();
                    cVar.a('\"');
                } else {
                    c10 = cVar.c(dVar3);
                }
                builder.f(c13, c10);
            }
            return g(c11, c12, builder.a());
        } catch (IllegalStateException e4) {
            throw new IllegalArgumentException("Could not parse '" + str + "'", e4);
        }
    }

    public e A(h3<String, String> h3Var) {
        return g(this.f34757a, this.f34758b, h3Var);
    }

    public e B(String str, Iterable<String> iterable) {
        a0.E(str);
        a0.E(iterable);
        String s9 = s(str);
        ImmutableListMultimap.a builder = ImmutableListMultimap.builder();
        k5<Map.Entry<String, String>> it = this.f34759c.entries().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            if (!s9.equals(key)) {
                builder.f(key, next.getValue());
            }
        }
        for (String str2 : iterable) {
            builder.f(s9, r(s9, str2));
        }
        e eVar = new e(this.f34757a, this.f34758b, builder.a());
        if (!s9.equals(f34706g)) {
            eVar.f34762f = this.f34762f;
        }
        return (e) v.a(f34739r.get(eVar), eVar);
    }

    public e C() {
        return this.f34759c.isEmpty() ? this : f(this.f34757a, this.f34758b);
    }

    public Optional<Charset> d() {
        Optional<Charset> optional = this.f34762f;
        if (optional == null) {
            Optional<Charset> absent = Optional.absent();
            k5<String> it = this.f34759c.get((ImmutableListMultimap<String, String>) f34706g).iterator();
            String str = null;
            optional = absent;
            while (it.hasNext()) {
                String next = it.next();
                if (str == null) {
                    optional = Optional.of(Charset.forName(next));
                    str = next;
                } else if (!str.equals(next)) {
                    throw new IllegalStateException("Multiple charset values defined: " + str + ", " + next);
                }
            }
            this.f34762f = optional;
        }
        return optional;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f34757a.equals(eVar.f34757a) && this.f34758b.equals(eVar.f34758b) && u().equals(eVar.u());
        }
        return false;
    }

    public int hashCode() {
        int i4 = this.f34761e;
        if (i4 == 0) {
            int b10 = w.b(this.f34757a, this.f34758b, u());
            this.f34761e = b10;
            return b10;
        }
        return i4;
    }

    public boolean p() {
        return f34736q.equals(this.f34757a) || f34736q.equals(this.f34758b);
    }

    public boolean q(e eVar) {
        return (eVar.f34757a.equals(f34736q) || eVar.f34757a.equals(this.f34757a)) && (eVar.f34758b.equals(f34736q) || eVar.f34758b.equals(this.f34758b)) && this.f34759c.entries().containsAll(eVar.f34759c.entries());
    }

    public ImmutableListMultimap<String, String> t() {
        return this.f34759c;
    }

    public String toString() {
        String str = this.f34760d;
        if (str == null) {
            String e4 = e();
            this.f34760d = e4;
            return e4;
        }
        return str;
    }

    public String w() {
        return this.f34758b;
    }

    public String x() {
        return this.f34757a;
    }

    public e y(Charset charset) {
        a0.E(charset);
        e z9 = z(f34706g, charset.name());
        z9.f34762f = Optional.of(charset);
        return z9;
    }

    public e z(String str, String str2) {
        return B(str, ImmutableSet.of(str2));
    }
}
