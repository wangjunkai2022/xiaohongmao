package io.sentry;

import io.sentry.protocol.TransactionNameSource;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import m8.a;

/* compiled from: Baggage.java */
@a.b
/* loaded from: classes4.dex */
public final class d {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    static final String f83092e = "UTF-8";
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    static final Integer f83093f = 8192;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    static final Integer f83094g = 64;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    static final String f83095h = "sentry-";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    final Map<String, String> f83096a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    final String f83097b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f83098c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    final o0 f83099d;

    /* compiled from: Baggage.java */
    @a.c
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83100a = "sentry-trace_id";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83101b = "sentry-public_key";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83102c = "sentry-release";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83103d = "sentry-user_id";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83104e = "sentry-environment";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83105f = "sentry-user_segment";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83106g = "sentry-transaction";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83107h = "sentry-sample_rate";
    }

    @a.c
    public d(@m8.g o0 o0Var) {
        this(new HashMap(), null, true, o0Var);
    }

    private static String a(@m8.g String str) throws UnsupportedEncodingException {
        return URLDecoder.decode(str, "UTF-8");
    }

    private String b(@m8.g String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }

    @m8.g
    public static d d(@m8.h String str) {
        return f(str, false, i0.d0().A().getLogger());
    }

    @a.c
    @m8.g
    public static d e(String str, @m8.g o0 o0Var) {
        return f(str, false, o0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    @m8.a.c
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static io.sentry.d f(@m8.h java.lang.String r16, boolean r17, @m8.g io.sentry.o0 r18) {
        /*
            r1 = r16
            r2 = r18
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.lang.String r5 = ","
            r6 = 1
            if (r1 == 0) goto L7a
            r7 = 0
            r0 = -1
            java.lang.String[] r8 = r1.split(r5, r0)     // Catch: java.lang.Throwable -> L6c
            int r9 = r8.length     // Catch: java.lang.Throwable -> L6c
            r10 = 0
            r11 = 1
        L1c:
            if (r10 >= r9) goto L79
            r12 = r8[r10]     // Catch: java.lang.Throwable -> L6a
            java.lang.String r0 = r12.trim()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r13 = "sentry-"
            boolean r0 = r0.startsWith(r13)     // Catch: java.lang.Throwable -> L6a
            if (r0 == 0) goto L5e
            java.lang.String r0 = "="
            int r0 = r12.indexOf(r0)     // Catch: java.lang.Throwable -> L51
            java.lang.String r13 = r12.substring(r7, r0)     // Catch: java.lang.Throwable -> L51
            java.lang.String r13 = r13.trim()     // Catch: java.lang.Throwable -> L51
            java.lang.String r13 = a(r13)     // Catch: java.lang.Throwable -> L51
            int r0 = r0 + 1
            java.lang.String r0 = r12.substring(r0)     // Catch: java.lang.Throwable -> L51
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Throwable -> L51
            java.lang.String r0 = a(r0)     // Catch: java.lang.Throwable -> L51
            r3.put(r13, r0)     // Catch: java.lang.Throwable -> L51
            r11 = 0
            goto L67
        L51:
            r0 = move-exception
            io.sentry.SentryLevel r13 = io.sentry.SentryLevel.ERROR     // Catch: java.lang.Throwable -> L6a
            java.lang.String r14 = "Unable to decode baggage key value pair %s"
            java.lang.Object[] r15 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L6a
            r15[r7] = r12     // Catch: java.lang.Throwable -> L6a
            r2.a(r13, r0, r14, r15)     // Catch: java.lang.Throwable -> L6a
            goto L67
        L5e:
            if (r17 == 0) goto L67
            java.lang.String r0 = r12.trim()     // Catch: java.lang.Throwable -> L6a
            r4.add(r0)     // Catch: java.lang.Throwable -> L6a
        L67:
            int r10 = r10 + 1
            goto L1c
        L6a:
            r0 = move-exception
            goto L6e
        L6c:
            r0 = move-exception
            r11 = 1
        L6e:
            io.sentry.SentryLevel r8 = io.sentry.SentryLevel.ERROR
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r6[r7] = r1
            java.lang.String r1 = "Unable to decode baggage header %s"
            r2.a(r8, r0, r1, r6)
        L79:
            r6 = r11
        L7a:
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L82
            r0 = 0
            goto L86
        L82:
            java.lang.String r0 = io.sentry.c.a(r5, r4)
        L86:
            io.sentry.d r1 = new io.sentry.d
            r1.<init>(r3, r0, r6, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.d.f(java.lang.String, boolean, io.sentry.o0):io.sentry.d");
    }

    @m8.g
    public static d g(@m8.h List<String> list) {
        return i(list, false, i0.d0().A().getLogger());
    }

    @a.c
    @m8.g
    public static d h(@m8.h List<String> list, @m8.g o0 o0Var) {
        return i(list, false, o0Var);
    }

    @a.c
    @m8.g
    public static d i(@m8.h List<String> list, boolean z9, @m8.g o0 o0Var) {
        if (list != null) {
            return f(c.a(",", list), z9, o0Var);
        }
        return f(null, z9, o0Var);
    }

    @m8.h
    private static String p(@m8.g io.sentry.protocol.w wVar) {
        if (wVar.m() != null) {
            return wVar.m();
        }
        Map<String, String> h4 = wVar.h();
        if (h4 != null) {
            return h4.get("segment");
        }
        return null;
    }

    private static boolean v(@m8.h TransactionNameSource transactionNameSource) {
        return (transactionNameSource == null || TransactionNameSource.URL.equals(transactionNameSource)) ? false : true;
    }

    @m8.h
    private static Double x(@m8.h o5 o5Var) {
        if (o5Var == null) {
            return null;
        }
        return o5Var.c();
    }

    @m8.h
    private static String y(@m8.h Double d4) {
        if (io.sentry.util.p.f(d4, false)) {
            return new DecimalFormat("#.################", DecimalFormatSymbols.getInstance(Locale.ROOT)).format(d4);
        }
        return null;
    }

    @a.c
    public void A(@m8.h String str) {
        z(a.f83104e, str);
    }

    @a.c
    public void B(@m8.h String str) {
        z(a.f83101b, str);
    }

    @a.c
    public void C(@m8.h String str) {
        z(a.f83102c, str);
    }

    @a.c
    public void D(@m8.h String str) {
        z(a.f83107h, str);
    }

    @a.c
    public void E(@m8.h String str) {
        z(a.f83100a, str);
    }

    @a.c
    public void F(@m8.h String str) {
        z(a.f83106g, str);
    }

    @a.c
    public void G(@m8.h String str) {
        z(a.f83103d, str);
    }

    @a.c
    public void H(@m8.h String str) {
        z(a.f83105f, str);
    }

    @a.c
    public void I(@m8.g w0 w0Var, @m8.h io.sentry.protocol.w wVar, @m8.g SentryOptions sentryOptions, @m8.h o5 o5Var) {
        E(w0Var.E().j().toString());
        B(new q(sentryOptions.getDsn()).c());
        C(sentryOptions.getRelease());
        A(sentryOptions.getEnvironment());
        H(wVar != null ? p(wVar) : null);
        F(v(w0Var.p()) ? w0Var.getName() : null);
        D(y(x(o5Var)));
    }

    @m8.g
    public String J(@m8.h String str) {
        String str2;
        int i4;
        StringBuilder sb = new StringBuilder();
        if (str == null || str.isEmpty()) {
            str2 = "";
            i4 = 0;
        } else {
            sb.append(str);
            i4 = io.sentry.util.q.d(str, ',') + 1;
            str2 = ",";
        }
        for (String str3 : new TreeSet(this.f83096a.keySet())) {
            String str4 = this.f83096a.get(str3);
            if (str4 != null) {
                Integer num = f83094g;
                if (i4 >= num.intValue()) {
                    this.f83099d.c(SentryLevel.ERROR, "Not adding baggage value %s as the total number of list members would exceed the maximum of %s.", str3, num);
                } else {
                    try {
                        String str5 = str2 + b(str3) + "=" + b(str4);
                        int length = sb.length() + str5.length();
                        Integer num2 = f83093f;
                        if (length > num2.intValue()) {
                            this.f83099d.c(SentryLevel.ERROR, "Not adding baggage value %s as the total header value length would exceed the maximum of %s.", str3, num2);
                        } else {
                            i4++;
                            sb.append(str5);
                            str2 = ",";
                        }
                    } catch (Throwable th) {
                        this.f83099d.a(SentryLevel.ERROR, th, "Unable to encode baggage key value pair (key=%s,value=%s).", str3, str4);
                    }
                }
            }
        }
        return sb.toString();
    }

    @a.c
    @m8.h
    public m5 K() {
        String r9 = r();
        String l10 = l();
        if (r9 == null || l10 == null) {
            return null;
        }
        return new m5(new io.sentry.protocol.n(r9), l10, m(), k(), t(), u(), s(), n());
    }

    @a.c
    public void c() {
        this.f83098c = false;
    }

    @a.c
    @m8.h
    public String j(@m8.h String str) {
        if (str == null) {
            return null;
        }
        return this.f83096a.get(str);
    }

    @a.c
    @m8.h
    public String k() {
        return j(a.f83104e);
    }

    @a.c
    @m8.h
    public String l() {
        return j(a.f83101b);
    }

    @a.c
    @m8.h
    public String m() {
        return j(a.f83102c);
    }

    @a.c
    @m8.h
    public String n() {
        return j(a.f83107h);
    }

    @a.c
    @m8.h
    public Double o() {
        String n9 = n();
        if (n9 != null) {
            try {
                double parseDouble = Double.parseDouble(n9);
                if (io.sentry.util.p.f(Double.valueOf(parseDouble), false)) {
                    return Double.valueOf(parseDouble);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @m8.h
    public String q() {
        return this.f83097b;
    }

    @a.c
    @m8.h
    public String r() {
        return j(a.f83100a);
    }

    @a.c
    @m8.h
    public String s() {
        return j(a.f83106g);
    }

    @a.c
    @m8.h
    public String t() {
        return j(a.f83103d);
    }

    @a.c
    @m8.h
    public String u() {
        return j(a.f83105f);
    }

    @a.c
    public boolean w() {
        return this.f83098c;
    }

    @a.c
    public void z(@m8.g String str, @m8.h String str2) {
        if (this.f83098c) {
            this.f83096a.put(str, str2);
        }
    }

    @a.c
    public d(@m8.g Map<String, String> map, @m8.h String str, boolean z9, @m8.g o0 o0Var) {
        this.f83096a = map;
        this.f83099d = o0Var;
        this.f83098c = z9;
        this.f83097b = str;
    }
}
