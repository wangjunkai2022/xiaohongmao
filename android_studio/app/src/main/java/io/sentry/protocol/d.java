package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Gpu.java */
/* loaded from: classes4.dex */
public final class d implements o1, m1 {

    /* renamed from: k  reason: collision with root package name */
    public static final String f83645k = "gpu";
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83646a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Integer f83647b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83648c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83649d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Integer f83650e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f83651f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Boolean f83652g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private String f83653h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private String f83654i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private Map<String, Object> f83655j;

    /* compiled from: Gpu.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<d> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public d a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            d dVar = new d();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1421884745:
                        if (I.equals(b.f83664i)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1085970574:
                        if (I.equals(b.f83658c)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1009234244:
                        if (I.equals(b.f83662g)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3355:
                        if (I.equals("id")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 59480866:
                        if (I.equals(b.f83659d)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 351608024:
                        if (I.equals("version")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 967446079:
                        if (I.equals(b.f83661f)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (I.equals("memory_size")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        dVar.f83654i = i1Var.E0();
                        break;
                    case 1:
                        dVar.f83648c = i1Var.E0();
                        break;
                    case 2:
                        dVar.f83652g = i1Var.t0();
                        break;
                    case 3:
                        dVar.f83647b = i1Var.y0();
                        break;
                    case 4:
                        dVar.f83646a = i1Var.E0();
                        break;
                    case 5:
                        dVar.f83649d = i1Var.E0();
                        break;
                    case 6:
                        dVar.f83653h = i1Var.E0();
                        break;
                    case 7:
                        dVar.f83651f = i1Var.E0();
                        break;
                    case '\b':
                        dVar.f83650e = i1Var.y0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            dVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return dVar;
        }
    }

    /* compiled from: Gpu.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83656a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83657b = "id";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83658c = "vendor_id";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83659d = "vendor_name";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83660e = "memory_size";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83661f = "api_type";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83662g = "multi_threaded_rendering";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83663h = "version";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83664i = "npot_support";
    }

    public d() {
    }

    public void A(@m8.h String str) {
        this.f83653h = str;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83655j;
    }

    @m8.h
    public String j() {
        return this.f83651f;
    }

    @m8.h
    public Integer k() {
        return this.f83647b;
    }

    @m8.h
    public Integer l() {
        return this.f83650e;
    }

    @m8.h
    public String m() {
        return this.f83646a;
    }

    @m8.h
    public String n() {
        return this.f83654i;
    }

    @m8.h
    public String o() {
        return this.f83648c;
    }

    @m8.h
    public String p() {
        return this.f83649d;
    }

    @m8.h
    public String q() {
        return this.f83653h;
    }

    @m8.h
    public Boolean r() {
        return this.f83652g;
    }

    public void s(@m8.h String str) {
        this.f83651f = str;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83646a != null) {
            k1Var.A("name").l0(this.f83646a);
        }
        if (this.f83647b != null) {
            k1Var.A("id").h0(this.f83647b);
        }
        if (this.f83648c != null) {
            k1Var.A(b.f83658c).l0(this.f83648c);
        }
        if (this.f83649d != null) {
            k1Var.A(b.f83659d).l0(this.f83649d);
        }
        if (this.f83650e != null) {
            k1Var.A("memory_size").h0(this.f83650e);
        }
        if (this.f83651f != null) {
            k1Var.A(b.f83661f).l0(this.f83651f);
        }
        if (this.f83652g != null) {
            k1Var.A(b.f83662g).g0(this.f83652g);
        }
        if (this.f83653h != null) {
            k1Var.A("version").l0(this.f83653h);
        }
        if (this.f83654i != null) {
            k1Var.A(b.f83664i).l0(this.f83654i);
        }
        Map<String, Object> map = this.f83655j;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83655j.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83655j = map;
    }

    public void t(Integer num) {
        this.f83647b = num;
    }

    public void u(@m8.h Integer num) {
        this.f83650e = num;
    }

    public void v(@m8.h Boolean bool) {
        this.f83652g = bool;
    }

    public void w(String str) {
        this.f83646a = str;
    }

    public void x(@m8.h String str) {
        this.f83654i = str;
    }

    public void y(@m8.h String str) {
        this.f83648c = str;
    }

    public void z(@m8.h String str) {
        this.f83649d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@m8.g d dVar) {
        this.f83646a = dVar.f83646a;
        this.f83647b = dVar.f83647b;
        this.f83648c = dVar.f83648c;
        this.f83649d = dVar.f83649d;
        this.f83650e = dVar.f83650e;
        this.f83651f = dVar.f83651f;
        this.f83652g = dVar.f83652g;
        this.f83653h = dVar.f83653h;
        this.f83654i = dVar.f83654i;
        this.f83655j = io.sentry.util.a.e(dVar.f83655j);
    }
}
