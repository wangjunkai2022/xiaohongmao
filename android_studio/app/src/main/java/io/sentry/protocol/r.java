package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import io.sentry.o1;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SentryStackFrame.java */
/* loaded from: classes4.dex */
public final class r implements o1, m1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private List<String> f83805a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private List<String> f83806b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f83807c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f83808d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f83809e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f83810f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f83811g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Integer f83812h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Integer f83813i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private String f83814j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private String f83815k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Boolean f83816l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private String f83817m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private Boolean f83818n;
    @m8.h

    /* renamed from: o  reason: collision with root package name */
    private String f83819o;
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private String f83820p;
    @m8.h

    /* renamed from: q  reason: collision with root package name */
    private String f83821q;
    @m8.h

    /* renamed from: r  reason: collision with root package name */
    private String f83822r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private Map<String, Object> f83823s;
    @m8.h

    /* renamed from: t  reason: collision with root package name */
    private String f83824t;

    /* compiled from: SentryStackFrame.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<r> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public r a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            r rVar = new r();
            i1Var.b();
            ConcurrentHashMap concurrentHashMap = null;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1443345323:
                        if (I.equals("image_addr")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1184392185:
                        if (I.equals(b.f83832h)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1113875953:
                        if (I.equals(b.f83839o)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1102671691:
                        if (I.equals(b.f83828d)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (I.equals("module")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (I.equals(b.f83834j)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -807062458:
                        if (I.equals(b.f83833i)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -734768633:
                        if (I.equals("filename")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -330260936:
                        if (I.equals(b.f83837m)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 94842689:
                        if (I.equals(b.f83829e)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 410194178:
                        if (I.equals(b.f83838n)) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case 1116694660:
                        if (I.equals(b.f83831g)) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case 1380938712:
                        if (I.equals(b.f83826b)) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case 1713445842:
                        if (I.equals(b.f83830f)) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case 1874684019:
                        if (I.equals("platform")) {
                            c10 = 14;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        rVar.f83820p = i1Var.E0();
                        break;
                    case 1:
                        rVar.f83816l = i1Var.t0();
                        break;
                    case 2:
                        rVar.f83824t = i1Var.E0();
                        break;
                    case 3:
                        rVar.f83812h = i1Var.y0();
                        break;
                    case 4:
                        rVar.f83811g = i1Var.E0();
                        break;
                    case 5:
                        rVar.f83818n = i1Var.t0();
                        break;
                    case 6:
                        rVar.f83817m = i1Var.E0();
                        break;
                    case 7:
                        rVar.f83809e = i1Var.E0();
                        break;
                    case '\b':
                        rVar.f83821q = i1Var.E0();
                        break;
                    case '\t':
                        rVar.f83813i = i1Var.y0();
                        break;
                    case '\n':
                        rVar.f83822r = i1Var.E0();
                        break;
                    case 11:
                        rVar.f83815k = i1Var.E0();
                        break;
                    case '\f':
                        rVar.f83810f = i1Var.E0();
                        break;
                    case '\r':
                        rVar.f83814j = i1Var.E0();
                        break;
                    case 14:
                        rVar.f83819o = i1Var.E0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        i1Var.G0(o0Var, concurrentHashMap, I);
                        break;
                }
            }
            rVar.setUnknown(concurrentHashMap);
            i1Var.p();
            return rVar;
        }
    }

    /* compiled from: SentryStackFrame.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83825a = "filename";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83826b = "function";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83827c = "module";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83828d = "lineno";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83829e = "colno";

        /* renamed from: f  reason: collision with root package name */
        public static final String f83830f = "abs_path";

        /* renamed from: g  reason: collision with root package name */
        public static final String f83831g = "context_line";

        /* renamed from: h  reason: collision with root package name */
        public static final String f83832h = "in_app";

        /* renamed from: i  reason: collision with root package name */
        public static final String f83833i = "package";

        /* renamed from: j  reason: collision with root package name */
        public static final String f83834j = "native";

        /* renamed from: k  reason: collision with root package name */
        public static final String f83835k = "platform";

        /* renamed from: l  reason: collision with root package name */
        public static final String f83836l = "image_addr";

        /* renamed from: m  reason: collision with root package name */
        public static final String f83837m = "symbol_addr";

        /* renamed from: n  reason: collision with root package name */
        public static final String f83838n = "instruction_addr";

        /* renamed from: o  reason: collision with root package name */
        public static final String f83839o = "raw_function";
    }

    @m8.h
    public String A() {
        return this.f83819o;
    }

    @m8.h
    public List<String> B() {
        return this.f83806b;
    }

    @m8.h
    public List<String> C() {
        return this.f83805a;
    }

    @m8.h
    public String D() {
        return this.f83824t;
    }

    @m8.h
    public String E() {
        return this.f83821q;
    }

    @m8.h
    public Map<String, String> F() {
        return this.f83807c;
    }

    @m8.h
    public Boolean G() {
        return this.f83816l;
    }

    @m8.h
    public Boolean H() {
        return this.f83818n;
    }

    public void I(@m8.h String str) {
        this.f83814j = str;
    }

    public void J(@m8.h Integer num) {
        this.f83813i = num;
    }

    public void K(@m8.h String str) {
        this.f83815k = str;
    }

    public void L(@m8.h String str) {
        this.f83809e = str;
    }

    public void M(@m8.h List<Integer> list) {
        this.f83808d = list;
    }

    public void N(@m8.h String str) {
        this.f83810f = str;
    }

    public void O(@m8.h String str) {
        this.f83820p = str;
    }

    public void P(@m8.h Boolean bool) {
        this.f83816l = bool;
    }

    public void Q(@m8.h String str) {
        this.f83822r = str;
    }

    public void R(@m8.h Integer num) {
        this.f83812h = num;
    }

    public void S(@m8.h String str) {
        this.f83811g = str;
    }

    public void T(@m8.h Boolean bool) {
        this.f83818n = bool;
    }

    public void U(@m8.h String str) {
        this.f83817m = str;
    }

    public void V(@m8.h String str) {
        this.f83819o = str;
    }

    public void W(@m8.h List<String> list) {
        this.f83806b = list;
    }

    public void X(@m8.h List<String> list) {
        this.f83805a = list;
    }

    public void Y(@m8.h String str) {
        this.f83824t = str;
    }

    public void Z(@m8.h String str) {
        this.f83821q = str;
    }

    public void a0(@m8.h Map<String, String> map) {
        this.f83807c = map;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83823s;
    }

    @m8.h
    public String p() {
        return this.f83814j;
    }

    @m8.h
    public Integer q() {
        return this.f83813i;
    }

    @m8.h
    public String r() {
        return this.f83815k;
    }

    @m8.h
    public String s() {
        return this.f83809e;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83809e != null) {
            k1Var.A("filename").l0(this.f83809e);
        }
        if (this.f83810f != null) {
            k1Var.A(b.f83826b).l0(this.f83810f);
        }
        if (this.f83811g != null) {
            k1Var.A("module").l0(this.f83811g);
        }
        if (this.f83812h != null) {
            k1Var.A(b.f83828d).h0(this.f83812h);
        }
        if (this.f83813i != null) {
            k1Var.A(b.f83829e).h0(this.f83813i);
        }
        if (this.f83814j != null) {
            k1Var.A(b.f83830f).l0(this.f83814j);
        }
        if (this.f83815k != null) {
            k1Var.A(b.f83831g).l0(this.f83815k);
        }
        if (this.f83816l != null) {
            k1Var.A(b.f83832h).g0(this.f83816l);
        }
        if (this.f83817m != null) {
            k1Var.A(b.f83833i).l0(this.f83817m);
        }
        if (this.f83818n != null) {
            k1Var.A(b.f83834j).g0(this.f83818n);
        }
        if (this.f83819o != null) {
            k1Var.A("platform").l0(this.f83819o);
        }
        if (this.f83820p != null) {
            k1Var.A("image_addr").l0(this.f83820p);
        }
        if (this.f83821q != null) {
            k1Var.A(b.f83837m).l0(this.f83821q);
        }
        if (this.f83822r != null) {
            k1Var.A(b.f83838n).l0(this.f83822r);
        }
        if (this.f83824t != null) {
            k1Var.A(b.f83839o).l0(this.f83824t);
        }
        Map<String, Object> map = this.f83823s;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83823s.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83823s = map;
    }

    @m8.h
    public List<Integer> t() {
        return this.f83808d;
    }

    @m8.h
    public String u() {
        return this.f83810f;
    }

    @m8.h
    public String v() {
        return this.f83820p;
    }

    @m8.h
    public String w() {
        return this.f83822r;
    }

    @m8.h
    public Integer x() {
        return this.f83812h;
    }

    @m8.h
    public String y() {
        return this.f83811g;
    }

    @m8.h
    public String z() {
        return this.f83817m;
    }
}
