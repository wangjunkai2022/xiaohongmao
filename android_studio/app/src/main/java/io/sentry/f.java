package io.sentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.ksyun.media.streamer.logstats.StatsConstant;
import io.sentry.SentryLevel;
import io.sentry.protocol.j;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: Breadcrumb.java */
/* loaded from: classes4.dex */
public final class f implements o1, m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Date f83179a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83180b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83181c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f83182d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83183e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private SentryLevel f83184f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83185g;

    /* compiled from: Breadcrumb.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<f> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Map] */
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public f a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            Date c10 = k.c();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            String str = null;
            String str2 = null;
            String str3 = null;
            SentryLevel sentryLevel = null;
            ConcurrentHashMap concurrentHashMap2 = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c11 = 65535;
                switch (I.hashCode()) {
                    case 3076010:
                        if (I.equals("data")) {
                            c11 = 0;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c11 = 1;
                            break;
                        }
                        break;
                    case 50511102:
                        if (I.equals("category")) {
                            c11 = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (I.equals("timestamp")) {
                            c11 = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (I.equals("level")) {
                            c11 = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (I.equals("message")) {
                            c11 = 5;
                            break;
                        }
                        break;
                }
                switch (c11) {
                    case 0:
                        ?? e4 = io.sentry.util.a.e((Map) i1Var.C0());
                        if (e4 == 0) {
                            break;
                        } else {
                            concurrentHashMap = e4;
                            break;
                        }
                    case 1:
                        str2 = i1Var.E0();
                        break;
                    case 2:
                        str3 = i1Var.E0();
                        break;
                    case 3:
                        Date u02 = i1Var.u0(o0Var);
                        if (u02 == null) {
                            break;
                        } else {
                            c10 = u02;
                            break;
                        }
                    case 4:
                        try {
                            sentryLevel = new SentryLevel.a().a(i1Var, o0Var);
                            break;
                        } catch (Exception e10) {
                            o0Var.a(SentryLevel.ERROR, e10, "Error when deserializing SentryLevel", new Object[0]);
                            break;
                        }
                    case 5:
                        str = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap2 == null) {
                            concurrentHashMap2 = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap2, I);
                        break;
                }
            }
            f fVar = new f(c10);
            fVar.f83180b = str;
            fVar.f83181c = str2;
            fVar.f83182d = concurrentHashMap;
            fVar.f83183e = str3;
            fVar.f83184f = sentryLevel;
            fVar.setUnknown(concurrentHashMap2);
            i1Var.p();
            return fVar;
        }
    }

    /* compiled from: Breadcrumb.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83186a = "timestamp";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83187b = "message";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83188c = "type";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83189d = "data";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83190e = "category";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83191f = "level";
    }

    public f(@m8.g Date date) {
        this.f83182d = new ConcurrentHashMap();
        this.f83179a = date;
    }

    @m8.g
    public static f A(@m8.g String str, @m8.g String str2) {
        f fVar = new f();
        fVar.y(StatsConstant.BW_EST_STRATEGY_NORMAL);
        fVar.u("ui." + str);
        fVar.x(str2);
        return fVar;
    }

    @m8.g
    public static f B(@m8.g String str, @m8.g String str2) {
        f fVar = new f();
        fVar.y("user");
        fVar.u(str);
        fVar.x(str2);
        return fVar;
    }

    @m8.g
    public static f C(@m8.g String str, @m8.h String str2, @m8.h String str3) {
        return E(str, str2, str3, Collections.emptyMap());
    }

    @m8.g
    public static f D(@m8.g String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @m8.g Map<String, Object> map) {
        f fVar = new f();
        fVar.y("user");
        fVar.u("ui." + str);
        if (str2 != null) {
            fVar.v("view.id", str2);
        }
        if (str3 != null) {
            fVar.v("view.class", str3);
        }
        if (str4 != null) {
            fVar.v("view.tag", str4);
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            fVar.j().put(entry.getKey(), entry.getValue());
        }
        fVar.w(SentryLevel.INFO);
        return fVar;
    }

    @m8.g
    public static f E(@m8.g String str, @m8.h String str2, @m8.h String str3, @m8.g Map<String, Object> map) {
        return D(str, str2, str3, null, map);
    }

    @m8.g
    public static f f(@m8.g String str) {
        f fVar = new f();
        fVar.y(com.bumptech.glide.integration.webp.a.f8238c);
        fVar.x(str);
        fVar.w(SentryLevel.DEBUG);
        return fVar;
    }

    @m8.g
    public static f g(@m8.g String str) {
        f fVar = new f();
        fVar.y(com.qennnsad.aknkaksd.data.websocket.b.f47825n);
        fVar.x(str);
        fVar.w(SentryLevel.ERROR);
        return fVar;
    }

    @m8.g
    public static f o(@m8.g String str, @m8.g String str2) {
        f fVar = new f();
        fVar.y("http");
        fVar.u("http");
        fVar.v("url", str);
        fVar.v("method", str2.toUpperCase(Locale.ROOT));
        return fVar;
    }

    @m8.g
    public static f p(@m8.g String str, @m8.g String str2, @m8.h Integer num) {
        f o9 = o(str, str2);
        if (num != null) {
            o9.v(j.b.f83736c, num);
        }
        return o9;
    }

    @m8.g
    public static f q(@m8.g String str) {
        f fVar = new f();
        fVar.y("info");
        fVar.x(str);
        fVar.w(SentryLevel.INFO);
        return fVar;
    }

    @m8.g
    public static f r(@m8.g String str, @m8.g String str2) {
        f fVar = new f();
        fVar.u(NotificationCompat.CATEGORY_NAVIGATION);
        fVar.y(NotificationCompat.CATEGORY_NAVIGATION);
        fVar.v(TypedValues.Transition.S_FROM, str);
        fVar.v(TypedValues.Transition.S_TO, str2);
        return fVar;
    }

    @m8.g
    public static f s(@m8.g String str) {
        f fVar = new f();
        fVar.y(s2.d.f93273b);
        fVar.x(str);
        return fVar;
    }

    @m8.g
    public static f z(@m8.g String str) {
        f fVar = new f();
        fVar.y(StatsConstant.BW_EST_STRATEGY_NORMAL);
        fVar.u("sentry.transaction");
        fVar.x(str);
        return fVar;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83185g;
    }

    @m8.h
    public String h() {
        return this.f83183e;
    }

    @m8.h
    public Object i(@m8.g String str) {
        return this.f83182d.get(str);
    }

    @a.c
    @m8.g
    public Map<String, Object> j() {
        return this.f83182d;
    }

    @m8.h
    public SentryLevel k() {
        return this.f83184f;
    }

    @m8.h
    public String l() {
        return this.f83180b;
    }

    @m8.g
    public Date m() {
        return (Date) this.f83179a.clone();
    }

    @m8.h
    public String n() {
        return this.f83181c;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        k1Var.A("timestamp").q0(o0Var, this.f83179a);
        if (this.f83180b != null) {
            k1Var.A("message").l0(this.f83180b);
        }
        if (this.f83181c != null) {
            k1Var.A("type").l0(this.f83181c);
        }
        k1Var.A("data").q0(o0Var, this.f83182d);
        if (this.f83183e != null) {
            k1Var.A("category").l0(this.f83183e);
        }
        if (this.f83184f != null) {
            k1Var.A("level").q0(o0Var, this.f83184f);
        }
        Map<String, Object> map = this.f83185g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83185g.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83185g = map;
    }

    public void t(@m8.g String str) {
        this.f83182d.remove(str);
    }

    public void u(@m8.h String str) {
        this.f83183e = str;
    }

    public void v(@m8.g String str, @m8.g Object obj) {
        this.f83182d.put(str, obj);
    }

    public void w(@m8.h SentryLevel sentryLevel) {
        this.f83184f = sentryLevel;
    }

    public void x(@m8.h String str) {
        this.f83180b = str;
    }

    public void y(@m8.h String str) {
        this.f83181c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@m8.g f fVar) {
        this.f83182d = new ConcurrentHashMap();
        this.f83179a = fVar.f83179a;
        this.f83180b = fVar.f83180b;
        this.f83181c = fVar.f83181c;
        this.f83183e = fVar.f83183e;
        Map<String, Object> e4 = io.sentry.util.a.e(fVar.f83182d);
        if (e4 != null) {
            this.f83182d = e4;
        }
        this.f83185g = io.sentry.util.a.e(fVar.f83185g);
        this.f83184f = fVar.f83184f;
    }

    public f() {
        this(k.c());
    }

    public f(@m8.h String str) {
        this();
        this.f83180b = str;
    }
}
