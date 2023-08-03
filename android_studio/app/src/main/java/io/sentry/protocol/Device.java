package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class Device implements o1, m1 {
    public static final String G = "device";
    @m8.h
    private String A;
    @m8.h
    @Deprecated
    private String B;
    @m8.h
    private String C;
    @m8.h
    private String D;
    @m8.h
    private Float E;
    @m8.h
    private Map<String, Object> F;
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private String f83564a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private String f83565b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private String f83566c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f83567d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83568e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f83569f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String[] f83570g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Float f83571h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Boolean f83572i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private Boolean f83573j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private DeviceOrientation f83574k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Boolean f83575l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private Long f83576m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private Long f83577n;
    @m8.h

    /* renamed from: o  reason: collision with root package name */
    private Long f83578o;
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private Boolean f83579p;
    @m8.h

    /* renamed from: q  reason: collision with root package name */
    private Long f83580q;
    @m8.h

    /* renamed from: r  reason: collision with root package name */
    private Long f83581r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private Long f83582s;
    @m8.h

    /* renamed from: t  reason: collision with root package name */
    private Long f83583t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private Integer f83584u;
    @m8.h

    /* renamed from: v  reason: collision with root package name */
    private Integer f83585v;
    @m8.h

    /* renamed from: w  reason: collision with root package name */
    private Float f83586w;
    @m8.h

    /* renamed from: x  reason: collision with root package name */
    private Integer f83587x;
    @m8.h

    /* renamed from: y  reason: collision with root package name */
    private Date f83588y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private TimeZone f83589z;

    /* loaded from: classes4.dex */
    public enum DeviceOrientation implements m1 {
        PORTRAIT,
        LANDSCAPE;

        /* loaded from: classes4.dex */
        public static final class a implements c1<DeviceOrientation> {
            @Override // io.sentry.c1
            @m8.g
            /* renamed from: b */
            public DeviceOrientation a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
                return DeviceOrientation.valueOf(i1Var.M().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.m1
        public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
            k1Var.l0(toString().toLowerCase(Locale.ROOT));
        }
    }

    /* loaded from: classes4.dex */
    public static final class a implements c1<Device> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public Device a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            Device device = new Device();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -2076227591:
                        if (I.equals(b.f83615z)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -2012489734:
                        if (I.equals(b.f83614y)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1981332476:
                        if (I.equals(b.f83601l)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1969347631:
                        if (I.equals(b.f83591b)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1613589672:
                        if (I.equals("language")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -1439500848:
                        if (I.equals(b.f83600k)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -1410521534:
                        if (I.equals(b.D)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -1281860764:
                        if (I.equals(b.f83593d)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -1097462182:
                        if (I.equals(b.E)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -1012222381:
                        if (I.equals(b.f83599j)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case -877252910:
                        if (I.equals(b.f83597h)) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case -619038223:
                        if (I.equals(b.f83595f)) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case -568274923:
                        if (I.equals(b.f83612w)) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case -417046774:
                        if (I.equals(b.f83613x)) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case -136523212:
                        if (I.equals(b.f83603n)) {
                            c10 = 14;
                            break;
                        }
                        break;
                    case 3355:
                        if (I.equals("id")) {
                            c10 = 15;
                            break;
                        }
                        break;
                    case 3373707:
                        if (I.equals("name")) {
                            c10 = 16;
                            break;
                        }
                        break;
                    case 59142220:
                        if (I.equals(b.f83605p)) {
                            c10 = 17;
                            break;
                        }
                        break;
                    case 93076189:
                        if (I.equals(b.f83596g)) {
                            c10 = 18;
                            break;
                        }
                        break;
                    case 93997959:
                        if (I.equals(b.f83592c)) {
                            c10 = 19;
                            break;
                        }
                        break;
                    case 104069929:
                        if (I.equals(b.f83594e)) {
                            c10 = 20;
                            break;
                        }
                        break;
                    case 731866107:
                        if (I.equals(b.C)) {
                            c10 = 21;
                            break;
                        }
                        break;
                    case 817830969:
                        if (I.equals(b.f83610u)) {
                            c10 = 22;
                            break;
                        }
                        break;
                    case 823882553:
                        if (I.equals(b.f83608s)) {
                            c10 = 23;
                            break;
                        }
                        break;
                    case 897428293:
                        if (I.equals(b.f83606q)) {
                            c10 = 24;
                            break;
                        }
                        break;
                    case 1331465768:
                        if (I.equals(b.f83604o)) {
                            c10 = 25;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (I.equals("memory_size")) {
                            c10 = 26;
                            break;
                        }
                        break;
                    case 1436115569:
                        if (I.equals(b.f83598i)) {
                            c10 = 27;
                            break;
                        }
                        break;
                    case 1450613660:
                        if (I.equals(b.f83609t)) {
                            c10 = 28;
                            break;
                        }
                        break;
                    case 1524159400:
                        if (I.equals(b.f83607r)) {
                            c10 = 29;
                            break;
                        }
                        break;
                    case 1556284978:
                        if (I.equals(b.f83611v)) {
                            c10 = 30;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        device.f83589z = i1Var.F0(o0Var);
                        break;
                    case 1:
                        if (i1Var.X() != JsonToken.STRING) {
                            break;
                        } else {
                            device.f83588y = i1Var.u0(o0Var);
                            break;
                        }
                    case 2:
                        device.f83575l = i1Var.t0();
                        break;
                    case 3:
                        device.f83565b = i1Var.E0();
                        break;
                    case 4:
                        device.B = i1Var.E0();
                        break;
                    case 5:
                        device.f83574k = (DeviceOrientation) i1Var.D0(o0Var, new DeviceOrientation.a());
                        break;
                    case 6:
                        device.E = i1Var.x0();
                        break;
                    case 7:
                        device.f83567d = i1Var.E0();
                        break;
                    case '\b':
                        device.C = i1Var.E0();
                        break;
                    case '\t':
                        device.f83573j = i1Var.t0();
                        break;
                    case '\n':
                        device.f83571h = i1Var.x0();
                        break;
                    case 11:
                        device.f83569f = i1Var.E0();
                        break;
                    case '\f':
                        device.f83586w = i1Var.x0();
                        break;
                    case '\r':
                        device.f83587x = i1Var.y0();
                        break;
                    case 14:
                        device.f83577n = i1Var.A0();
                        break;
                    case 15:
                        device.A = i1Var.E0();
                        break;
                    case 16:
                        device.f83564a = i1Var.E0();
                        break;
                    case 17:
                        device.f83579p = i1Var.t0();
                        break;
                    case 18:
                        List list = (List) i1Var.C0();
                        if (list == null) {
                            break;
                        } else {
                            String[] strArr = new String[list.size()];
                            list.toArray(strArr);
                            device.f83570g = strArr;
                            break;
                        }
                    case 19:
                        device.f83566c = i1Var.E0();
                        break;
                    case 20:
                        device.f83568e = i1Var.E0();
                        break;
                    case 21:
                        device.D = i1Var.E0();
                        break;
                    case 22:
                        device.f83584u = i1Var.y0();
                        break;
                    case 23:
                        device.f83582s = i1Var.A0();
                        break;
                    case 24:
                        device.f83580q = i1Var.A0();
                        break;
                    case 25:
                        device.f83578o = i1Var.A0();
                        break;
                    case 26:
                        device.f83576m = i1Var.A0();
                        break;
                    case 27:
                        device.f83572i = i1Var.t0();
                        break;
                    case 28:
                        device.f83583t = i1Var.A0();
                        break;
                    case 29:
                        device.f83581r = i1Var.A0();
                        break;
                    case 30:
                        device.f83585v = i1Var.y0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            device.setUnknown(concurrentHashMap);
            i1Var.p();
            return device;
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {
        public static final String A = "id";
        public static final String B = "language";
        public static final String C = "connection_type";
        public static final String D = "battery_temperature";
        public static final String E = "locale";

        /* renamed from: a  reason: collision with root package name */
        public static final String f83590a = "name";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83591b = "manufacturer";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83592c = "brand";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83593d = "family";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83594e = "model";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83595f = "model_id";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83596g = "archs";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83597h = "battery_level";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83598i = "charging";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83599j = "online";

        /* renamed from: k  reason: collision with root package name */
        public static final String f83600k = "orientation";

        /* renamed from: l  reason: collision with root package name */
        public static final String f83601l = "simulator";

        /* renamed from: m  reason: collision with root package name */
        public static final String f83602m = "memory_size";

        /* renamed from: n  reason: collision with root package name */
        public static final String f83603n = "free_memory";

        /* renamed from: o  reason: collision with root package name */
        public static final String f83604o = "usable_memory";

        /* renamed from: p  reason: collision with root package name */
        public static final String f83605p = "low_memory";

        /* renamed from: q  reason: collision with root package name */
        public static final String f83606q = "storage_size";

        /* renamed from: r  reason: collision with root package name */
        public static final String f83607r = "free_storage";

        /* renamed from: s  reason: collision with root package name */
        public static final String f83608s = "external_storage_size";

        /* renamed from: t  reason: collision with root package name */
        public static final String f83609t = "external_free_storage";

        /* renamed from: u  reason: collision with root package name */
        public static final String f83610u = "screen_width_pixels";

        /* renamed from: v  reason: collision with root package name */
        public static final String f83611v = "screen_height_pixels";

        /* renamed from: w  reason: collision with root package name */
        public static final String f83612w = "screen_density";

        /* renamed from: x  reason: collision with root package name */
        public static final String f83613x = "screen_dpi";

        /* renamed from: y  reason: collision with root package name */
        public static final String f83614y = "boot_time";

        /* renamed from: z  reason: collision with root package name */
        public static final String f83615z = "timezone";
    }

    public Device() {
    }

    public void A0(@m8.h String str) {
        this.f83565b = str;
    }

    public void B0(@m8.h Long l10) {
        this.f83576m = l10;
    }

    public void C0(@m8.h String str) {
        this.f83568e = str;
    }

    public void D0(@m8.h String str) {
        this.f83569f = str;
    }

    public void E0(@m8.h String str) {
        this.f83564a = str;
    }

    @m8.h
    public String[] F() {
        return this.f83570g;
    }

    public void F0(@m8.h Boolean bool) {
        this.f83573j = bool;
    }

    @m8.h
    public Float G() {
        return this.f83571h;
    }

    public void G0(@m8.h DeviceOrientation deviceOrientation) {
        this.f83574k = deviceOrientation;
    }

    @m8.h
    public Float H() {
        return this.E;
    }

    public void H0(@m8.h Float f10) {
        this.f83586w = f10;
    }

    @m8.h
    public Date I() {
        Date date = this.f83588y;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void I0(@m8.h Integer num) {
        this.f83587x = num;
    }

    @m8.h
    public String J() {
        return this.f83566c;
    }

    public void J0(@m8.h Integer num) {
        this.f83585v = num;
    }

    @m8.h
    public String K() {
        return this.D;
    }

    public void K0(@m8.h Integer num) {
        this.f83584u = num;
    }

    @m8.h
    public Long L() {
        return this.f83583t;
    }

    public void L0(@m8.h Boolean bool) {
        this.f83575l = bool;
    }

    @m8.h
    public Long M() {
        return this.f83582s;
    }

    public void M0(@m8.h Long l10) {
        this.f83580q = l10;
    }

    @m8.h
    public String N() {
        return this.f83567d;
    }

    public void N0(@m8.h TimeZone timeZone) {
        this.f83589z = timeZone;
    }

    @m8.h
    public Long O() {
        return this.f83577n;
    }

    public void O0(@m8.h Long l10) {
        this.f83578o = l10;
    }

    @m8.h
    public Long P() {
        return this.f83581r;
    }

    @m8.h
    public String Q() {
        return this.A;
    }

    @m8.h
    public String R() {
        return this.B;
    }

    @m8.h
    public String S() {
        return this.C;
    }

    @m8.h
    public String T() {
        return this.f83565b;
    }

    @m8.h
    public Long U() {
        return this.f83576m;
    }

    @m8.h
    public String V() {
        return this.f83568e;
    }

    @m8.h
    public String W() {
        return this.f83569f;
    }

    @m8.h
    public String X() {
        return this.f83564a;
    }

    @m8.h
    public DeviceOrientation Y() {
        return this.f83574k;
    }

    @m8.h
    public Float Z() {
        return this.f83586w;
    }

    @m8.h
    public Integer a0() {
        return this.f83587x;
    }

    @m8.h
    public Integer b0() {
        return this.f83585v;
    }

    @m8.h
    public Integer c0() {
        return this.f83584u;
    }

    @m8.h
    public Long d0() {
        return this.f83580q;
    }

    @m8.h
    public TimeZone e0() {
        return this.f83589z;
    }

    @m8.h
    public Long f0() {
        return this.f83578o;
    }

    @m8.h
    public Boolean g0() {
        return this.f83572i;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.F;
    }

    @m8.h
    public Boolean h0() {
        return this.f83579p;
    }

    @m8.h
    public Boolean i0() {
        return this.f83573j;
    }

    @m8.h
    public Boolean j0() {
        return this.f83575l;
    }

    public void k0(@m8.h String[] strArr) {
        this.f83570g = strArr;
    }

    public void l0(@m8.h Float f10) {
        this.f83571h = f10;
    }

    public void m0(@m8.h Float f10) {
        this.E = f10;
    }

    public void n0(@m8.h Date date) {
        this.f83588y = date;
    }

    public void o0(@m8.h String str) {
        this.f83566c = str;
    }

    public void p0(@m8.h Boolean bool) {
        this.f83572i = bool;
    }

    public void q0(@m8.h String str) {
        this.D = str;
    }

    public void r0(@m8.h Long l10) {
        this.f83583t = l10;
    }

    public void s0(@m8.h Long l10) {
        this.f83582s = l10;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83564a != null) {
            k1Var.A("name").l0(this.f83564a);
        }
        if (this.f83565b != null) {
            k1Var.A(b.f83591b).l0(this.f83565b);
        }
        if (this.f83566c != null) {
            k1Var.A(b.f83592c).l0(this.f83566c);
        }
        if (this.f83567d != null) {
            k1Var.A(b.f83593d).l0(this.f83567d);
        }
        if (this.f83568e != null) {
            k1Var.A(b.f83594e).l0(this.f83568e);
        }
        if (this.f83569f != null) {
            k1Var.A(b.f83595f).l0(this.f83569f);
        }
        if (this.f83570g != null) {
            k1Var.A(b.f83596g).q0(o0Var, this.f83570g);
        }
        if (this.f83571h != null) {
            k1Var.A(b.f83597h).h0(this.f83571h);
        }
        if (this.f83572i != null) {
            k1Var.A(b.f83598i).g0(this.f83572i);
        }
        if (this.f83573j != null) {
            k1Var.A(b.f83599j).g0(this.f83573j);
        }
        if (this.f83574k != null) {
            k1Var.A(b.f83600k).q0(o0Var, this.f83574k);
        }
        if (this.f83575l != null) {
            k1Var.A(b.f83601l).g0(this.f83575l);
        }
        if (this.f83576m != null) {
            k1Var.A("memory_size").h0(this.f83576m);
        }
        if (this.f83577n != null) {
            k1Var.A(b.f83603n).h0(this.f83577n);
        }
        if (this.f83578o != null) {
            k1Var.A(b.f83604o).h0(this.f83578o);
        }
        if (this.f83579p != null) {
            k1Var.A(b.f83605p).g0(this.f83579p);
        }
        if (this.f83580q != null) {
            k1Var.A(b.f83606q).h0(this.f83580q);
        }
        if (this.f83581r != null) {
            k1Var.A(b.f83607r).h0(this.f83581r);
        }
        if (this.f83582s != null) {
            k1Var.A(b.f83608s).h0(this.f83582s);
        }
        if (this.f83583t != null) {
            k1Var.A(b.f83609t).h0(this.f83583t);
        }
        if (this.f83584u != null) {
            k1Var.A(b.f83610u).h0(this.f83584u);
        }
        if (this.f83585v != null) {
            k1Var.A(b.f83611v).h0(this.f83585v);
        }
        if (this.f83586w != null) {
            k1Var.A(b.f83612w).h0(this.f83586w);
        }
        if (this.f83587x != null) {
            k1Var.A(b.f83613x).h0(this.f83587x);
        }
        if (this.f83588y != null) {
            k1Var.A(b.f83614y).q0(o0Var, this.f83588y);
        }
        if (this.f83589z != null) {
            k1Var.A(b.f83615z).q0(o0Var, this.f83589z);
        }
        if (this.A != null) {
            k1Var.A("id").l0(this.A);
        }
        if (this.B != null) {
            k1Var.A("language").l0(this.B);
        }
        if (this.D != null) {
            k1Var.A(b.C).l0(this.D);
        }
        if (this.E != null) {
            k1Var.A(b.D).h0(this.E);
        }
        if (this.C != null) {
            k1Var.A(b.E).l0(this.C);
        }
        Map<String, Object> map = this.F;
        if (map != null) {
            for (String str : map.keySet()) {
                k1Var.A(str).q0(o0Var, this.F.get(str));
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.F = map;
    }

    public void t0(@m8.h String str) {
        this.f83567d = str;
    }

    public void u0(@m8.h Long l10) {
        this.f83577n = l10;
    }

    public void v0(@m8.h Long l10) {
        this.f83581r = l10;
    }

    public void w0(@m8.h String str) {
        this.A = str;
    }

    public void x0(@m8.h String str) {
        this.B = str;
    }

    public void y0(@m8.h String str) {
        this.C = str;
    }

    public void z0(@m8.h Boolean bool) {
        this.f83579p = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Device(@m8.g Device device) {
        this.f83564a = device.f83564a;
        this.f83565b = device.f83565b;
        this.f83566c = device.f83566c;
        this.f83567d = device.f83567d;
        this.f83568e = device.f83568e;
        this.f83569f = device.f83569f;
        this.f83572i = device.f83572i;
        this.f83573j = device.f83573j;
        this.f83574k = device.f83574k;
        this.f83575l = device.f83575l;
        this.f83576m = device.f83576m;
        this.f83577n = device.f83577n;
        this.f83578o = device.f83578o;
        this.f83579p = device.f83579p;
        this.f83580q = device.f83580q;
        this.f83581r = device.f83581r;
        this.f83582s = device.f83582s;
        this.f83583t = device.f83583t;
        this.f83584u = device.f83584u;
        this.f83585v = device.f83585v;
        this.f83586w = device.f83586w;
        this.f83587x = device.f83587x;
        this.f83588y = device.f83588y;
        this.A = device.A;
        this.B = device.B;
        this.D = device.D;
        this.E = device.E;
        this.f83571h = device.f83571h;
        String[] strArr = device.f83570g;
        this.f83570g = strArr != null ? (String[]) strArr.clone() : null;
        this.C = device.C;
        TimeZone timeZone = device.f83589z;
        this.f83589z = timeZone != null ? (TimeZone) timeZone.clone() : null;
        this.F = io.sentry.util.a.e(device.F);
    }
}
