package io.sentry;

import io.sentry.SentryItemType;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import m8.a;

/* compiled from: SentryEnvelopeItemHeader.java */
@a.c
/* loaded from: classes4.dex */
public final class g4 implements m1, o1 {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final String f83230a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f83231b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryItemType f83232c;

    /* renamed from: d  reason: collision with root package name */
    private final int f83233d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final Callable<Integer> f83234e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final String f83235f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f83236g;

    /* compiled from: SentryEnvelopeItemHeader.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<g4> {
        private Exception c(String str, o0 o0Var) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            o0Var.b(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public g4 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            i1Var.b();
            HashMap hashMap = null;
            SentryItemType sentryItemType = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            int i4 = 0;
            while (i1Var.X() == JsonToken.NAME) {
                String I = i1Var.I();
                I.hashCode();
                char c10 = 65535;
                switch (I.hashCode()) {
                    case -1106363674:
                        if (I.equals(b.f83241e)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -734768633:
                        if (I.equals("filename")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -672977706:
                        if (I.equals(b.f83240d)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (I.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 831846208:
                        if (I.equals(b.f83237a)) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        i4 = i1Var.G();
                        break;
                    case 1:
                        str2 = i1Var.E0();
                        break;
                    case 2:
                        str3 = i1Var.E0();
                        break;
                    case 3:
                        sentryItemType = (SentryItemType) i1Var.D0(o0Var, new SentryItemType.a());
                        break;
                    case 4:
                        str = i1Var.E0();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        i1Var.G0(o0Var, hashMap, I);
                        break;
                }
            }
            if (sentryItemType != null) {
                g4 g4Var = new g4(sentryItemType, i4, str, str2, str3);
                g4Var.setUnknown(hashMap);
                i1Var.p();
                return g4Var;
            }
            throw c("type", o0Var);
        }
    }

    /* compiled from: SentryEnvelopeItemHeader.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String f83237a = "content_type";

        /* renamed from: b  reason: collision with root package name */
        public static final String f83238b = "filename";

        /* renamed from: c  reason: collision with root package name */
        public static final String f83239c = "type";

        /* renamed from: d  reason: collision with root package name */
        public static final String f83240d = "attachment_type";

        /* renamed from: e  reason: collision with root package name */
        public static final String f83241e = "length";
    }

    @a.c
    public g4(@m8.g SentryItemType sentryItemType, int i4, @m8.h String str, @m8.h String str2, @m8.h String str3) {
        this.f83232c = (SentryItemType) io.sentry.util.l.c(sentryItemType, "type is required");
        this.f83230a = str;
        this.f83233d = i4;
        this.f83231b = str2;
        this.f83234e = null;
        this.f83235f = str3;
    }

    @m8.h
    public String a() {
        return this.f83235f;
    }

    @m8.h
    public String b() {
        return this.f83230a;
    }

    @m8.h
    public String c() {
        return this.f83231b;
    }

    public int d() {
        Callable<Integer> callable = this.f83234e;
        if (callable != null) {
            try {
                return callable.call().intValue();
            } catch (Throwable unused) {
                return -1;
            }
        }
        return this.f83233d;
    }

    @m8.g
    public SentryItemType e() {
        return this.f83232c;
    }

    @Override // io.sentry.o1
    @m8.h
    public Map<String, Object> getUnknown() {
        return this.f83236g;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.h();
        if (this.f83230a != null) {
            k1Var.A(b.f83237a).l0(this.f83230a);
        }
        if (this.f83231b != null) {
            k1Var.A("filename").l0(this.f83231b);
        }
        k1Var.A("type").q0(o0Var, this.f83232c);
        if (this.f83235f != null) {
            k1Var.A(b.f83240d).l0(this.f83235f);
        }
        k1Var.A(b.f83241e).d0(d());
        Map<String, Object> map = this.f83236g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f83236g.get(str);
                k1Var.A(str);
                k1Var.q0(o0Var, obj);
            }
        }
        k1Var.p();
    }

    @Override // io.sentry.o1
    public void setUnknown(@m8.h Map<String, Object> map) {
        this.f83236g = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(@m8.g SentryItemType sentryItemType, @m8.h Callable<Integer> callable, @m8.h String str, @m8.h String str2, @m8.h String str3) {
        this.f83232c = (SentryItemType) io.sentry.util.l.c(sentryItemType, "type is required");
        this.f83230a = str;
        this.f83233d = -1;
        this.f83231b = str2;
        this.f83234e = callable;
        this.f83235f = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(@m8.g SentryItemType sentryItemType, @m8.h Callable<Integer> callable, @m8.h String str, @m8.h String str2) {
        this(sentryItemType, callable, str, str2, (String) null);
    }
}
