package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Map;

/* compiled from: DefaultBandwidthMeter.java */
/* loaded from: classes2.dex */
public final class r implements e, p0 {
    private static final int A = 2;
    private static final int B = 3;
    private static final int C = 4;
    private static final int D = 5;
    @Nullable
    private static r E = null;
    private static final int F = 2000;
    private static final int G = 524288;

    /* renamed from: p  reason: collision with root package name */
    public static final ImmutableListMultimap<String, Integer> f27319p = k();

    /* renamed from: q  reason: collision with root package name */
    public static final ImmutableList<Long> f27320q = ImmutableList.of(6200000L, 3900000L, 2300000L, 1300000L, 620000L);

    /* renamed from: r  reason: collision with root package name */
    public static final ImmutableList<Long> f27321r = ImmutableList.of(248000L, 160000L, 142000L, 127000L, 113000L);

    /* renamed from: s  reason: collision with root package name */
    public static final ImmutableList<Long> f27322s = ImmutableList.of(2200000L, 1300000L, 950000L, 760000L, 520000L);

    /* renamed from: t  reason: collision with root package name */
    public static final ImmutableList<Long> f27323t = ImmutableList.of(4400000L, 2300000L, 1500000L, 1100000L, 640000L);

    /* renamed from: u  reason: collision with root package name */
    public static final ImmutableList<Long> f27324u = ImmutableList.of(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);

    /* renamed from: v  reason: collision with root package name */
    public static final ImmutableList<Long> f27325v = ImmutableList.of(2600000L, 2200000L, 2000000L, 1500000L, 470000L);

    /* renamed from: w  reason: collision with root package name */
    public static final long f27326w = 1000000;

    /* renamed from: x  reason: collision with root package name */
    public static final int f27327x = 2000;

    /* renamed from: y  reason: collision with root package name */
    private static final int f27328y = 0;

    /* renamed from: z  reason: collision with root package name */
    private static final int f27329z = 1;

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<Integer, Long> f27330a;

    /* renamed from: b  reason: collision with root package name */
    private final e.a.C0188a f27331b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.o0 f27332c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f27333d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f27334e;

    /* renamed from: f  reason: collision with root package name */
    private int f27335f;

    /* renamed from: g  reason: collision with root package name */
    private long f27336g;

    /* renamed from: h  reason: collision with root package name */
    private long f27337h;

    /* renamed from: i  reason: collision with root package name */
    private int f27338i;

    /* renamed from: j  reason: collision with root package name */
    private long f27339j;

    /* renamed from: k  reason: collision with root package name */
    private long f27340k;

    /* renamed from: l  reason: collision with root package name */
    private long f27341l;

    /* renamed from: m  reason: collision with root package name */
    private long f27342m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f27343n;

    /* renamed from: o  reason: collision with root package name */
    private int f27344o;

    /* compiled from: DefaultBandwidthMeter.java */
    /* loaded from: classes2.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f27345a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Integer, Long> f27346b;

        /* renamed from: c  reason: collision with root package name */
        private int f27347c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.util.d f27348d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f27349e;

        public b(Context context) {
            this.f27345a = context == null ? null : context.getApplicationContext();
            this.f27346b = c(z0.U(context));
            this.f27347c = 2000;
            this.f27348d = com.google.android.exoplayer2.util.d.f27523a;
            this.f27349e = true;
        }

        private static ImmutableList<Integer> b(String str) {
            ImmutableList<Integer> immutableList = r.f27319p.get((ImmutableListMultimap<String, Integer>) str);
            return immutableList.isEmpty() ? ImmutableList.of(2, 2, 2, 2, 2, 2) : immutableList;
        }

        private static Map<Integer, Long> c(String str) {
            ImmutableList<Integer> b10 = b(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            ImmutableList<Long> immutableList = r.f27320q;
            hashMap.put(2, immutableList.get(b10.get(0).intValue()));
            hashMap.put(3, r.f27321r.get(b10.get(1).intValue()));
            hashMap.put(4, r.f27322s.get(b10.get(2).intValue()));
            hashMap.put(5, r.f27323t.get(b10.get(3).intValue()));
            hashMap.put(10, r.f27324u.get(b10.get(4).intValue()));
            hashMap.put(9, r.f27325v.get(b10.get(5).intValue()));
            hashMap.put(7, immutableList.get(b10.get(0).intValue()));
            return hashMap;
        }

        public r a() {
            return new r(this.f27345a, this.f27346b, this.f27347c, this.f27348d, this.f27349e);
        }

        public b d(com.google.android.exoplayer2.util.d dVar) {
            this.f27348d = dVar;
            return this;
        }

        public b e(int i4, long j4) {
            this.f27346b.put(Integer.valueOf(i4), Long.valueOf(j4));
            return this;
        }

        public b f(long j4) {
            for (Integer num : this.f27346b.keySet()) {
                e(num.intValue(), j4);
            }
            return this;
        }

        public b g(String str) {
            this.f27346b = c(com.google.common.base.c.j(str));
            return this;
        }

        public b h(boolean z9) {
            this.f27349e = z9;
            return this;
        }

        public b i(int i4) {
            this.f27347c = i4;
            return this;
        }
    }

    private static ImmutableListMultimap<String, Integer> k() {
        return ImmutableListMultimap.builder().k("AD", 1, 2, 0, 0, 2, 2).k("AE", 1, 4, 4, 4, 2, 2).k("AF", 4, 4, 3, 4, 2, 2).k("AG", 4, 2, 1, 4, 2, 2).k("AI", 1, 2, 2, 2, 2, 2).k("AL", 1, 1, 1, 1, 2, 2).k("AM", 2, 2, 1, 3, 2, 2).k("AO", 3, 4, 3, 1, 2, 2).k("AR", 2, 4, 2, 1, 2, 2).k("AS", 2, 2, 3, 3, 2, 2).k("AT", 0, 1, 0, 0, 0, 2).k("AU", 0, 2, 0, 1, 1, 2).k("AW", 1, 2, 0, 4, 2, 2).k("AX", 0, 2, 2, 2, 2, 2).k("AZ", 3, 3, 3, 4, 4, 2).k("BA", 1, 1, 0, 1, 2, 2).k("BB", 0, 2, 0, 0, 2, 2).k("BD", 2, 0, 3, 3, 2, 2).k("BE", 0, 0, 2, 3, 2, 2).k("BF", 4, 4, 4, 2, 2, 2).k("BG", 0, 1, 0, 0, 2, 2).k("BH", 1, 0, 2, 4, 2, 2).k("BI", 4, 4, 4, 4, 2, 2).k("BJ", 4, 4, 4, 4, 2, 2).k("BL", 1, 2, 2, 2, 2, 2).k("BM", 0, 2, 0, 0, 2, 2).k("BN", 3, 2, 1, 0, 2, 2).k("BO", 1, 2, 4, 2, 2, 2).k("BQ", 1, 2, 1, 2, 2, 2).k("BR", 2, 4, 3, 2, 2, 2).k("BS", 2, 2, 1, 3, 2, 2).k("BT", 3, 0, 3, 2, 2, 2).k("BW", 3, 4, 1, 1, 2, 2).k("BY", 1, 1, 1, 2, 2, 2).k("BZ", 2, 2, 2, 2, 2, 2).k("CA", 0, 3, 1, 2, 4, 2).k("CD", 4, 2, 2, 1, 2, 2).k("CF", 4, 2, 3, 2, 2, 2).k("CG", 3, 4, 2, 2, 2, 2).k("CH", 0, 0, 0, 0, 1, 2).k("CI", 3, 3, 3, 3, 2, 2).k("CK", 2, 2, 3, 0, 2, 2).k("CL", 1, 1, 2, 2, 2, 2).k("CM", 3, 4, 3, 2, 2, 2).k("CN", 2, 2, 2, 1, 3, 2).k("CO", 2, 3, 4, 2, 2, 2).k("CR", 2, 3, 4, 4, 2, 2).k("CU", 4, 4, 2, 2, 2, 2).k("CV", 2, 3, 1, 0, 2, 2).k("CW", 1, 2, 0, 0, 2, 2).k("CY", 1, 1, 0, 0, 2, 2).k("CZ", 0, 1, 0, 0, 1, 2).k("DE", 0, 0, 1, 1, 0, 2).k("DJ", 4, 0, 4, 4, 2, 2).k("DK", 0, 0, 1, 0, 0, 2).k("DM", 1, 2, 2, 2, 2, 2).k("DO", 3, 4, 4, 4, 2, 2).k("DZ", 3, 3, 4, 4, 2, 4).k("EC", 2, 4, 3, 1, 2, 2).k("EE", 0, 1, 0, 0, 2, 2).k("EG", 3, 4, 3, 3, 2, 2).k("EH", 2, 2, 2, 2, 2, 2).k("ER", 4, 2, 2, 2, 2, 2).k("ES", 0, 1, 1, 1, 2, 2).k("ET", 4, 4, 4, 1, 2, 2).k("FI", 0, 0, 0, 0, 0, 2).k("FJ", 3, 0, 2, 3, 2, 2).k("FK", 4, 2, 2, 2, 2, 2).k("FM", 3, 2, 4, 4, 2, 2).k("FO", 1, 2, 0, 1, 2, 2).k("FR", 1, 1, 2, 0, 1, 2).k("GA", 3, 4, 1, 1, 2, 2).k("GB", 0, 0, 1, 1, 1, 2).k("GD", 1, 2, 2, 2, 2, 2).k("GE", 1, 1, 1, 2, 2, 2).k("GF", 2, 2, 2, 3, 2, 2).k("GG", 1, 2, 0, 0, 2, 2).k("GH", 3, 1, 3, 2, 2, 2).k("GI", 0, 2, 0, 0, 2, 2).k("GL", 1, 2, 0, 0, 2, 2).k("GM", 4, 3, 2, 4, 2, 2).k("GN", 4, 3, 4, 2, 2, 2).k("GP", 2, 1, 2, 3, 2, 2).k("GQ", 4, 2, 2, 4, 2, 2).k("GR", 1, 2, 0, 0, 2, 2).k("GT", 3, 2, 3, 1, 2, 2).k("GU", 1, 2, 3, 4, 2, 2).k("GW", 4, 4, 4, 4, 2, 2).k("GY", 3, 3, 3, 4, 2, 2).k("HK", 0, 1, 2, 3, 2, 0).k("HN", 3, 1, 3, 3, 2, 2).k("HR", 1, 1, 0, 0, 3, 2).k("HT", 4, 4, 4, 4, 2, 2).k("HU", 0, 0, 0, 0, 0, 2).k("ID", 3, 2, 3, 3, 2, 2).k("IE", 0, 0, 1, 1, 3, 2).k("IL", 1, 0, 2, 3, 4, 2).k("IM", 0, 2, 0, 1, 2, 2).k("IN", 2, 1, 3, 3, 2, 2).k("IO", 4, 2, 2, 4, 2, 2).k("IQ", 3, 3, 4, 4, 2, 2).k("IR", 3, 2, 3, 2, 2, 2).k("IS", 0, 2, 0, 0, 2, 2).k("IT", 0, 4, 0, 1, 2, 2).k("JE", 2, 2, 1, 2, 2, 2).k("JM", 3, 3, 4, 4, 2, 2).k("JO", 2, 2, 1, 1, 2, 2).k("JP", 0, 0, 0, 0, 2, 1).k("KE", 3, 4, 2, 2, 2, 2).k("KG", 2, 0, 1, 1, 2, 2).k("KH", 1, 0, 4, 3, 2, 2).k("KI", 4, 2, 4, 3, 2, 2).k("KM", 4, 3, 2, 3, 2, 2).k("KN", 1, 2, 2, 2, 2, 2).k("KP", 4, 2, 2, 2, 2, 2).k("KR", 0, 0, 1, 3, 1, 2).k("KW", 1, 3, 1, 1, 1, 2).k("KY", 1, 2, 0, 2, 2, 2).k("KZ", 2, 2, 2, 3, 2, 2).k("LA", 1, 2, 1, 1, 2, 2).k("LB", 3, 2, 0, 0, 2, 2).k("LC", 1, 2, 0, 0, 2, 2).k("LI", 0, 2, 2, 2, 2, 2).k("LK", 2, 0, 2, 3, 2, 2).k("LR", 3, 4, 4, 3, 2, 2).k("LS", 3, 3, 2, 3, 2, 2).k("LT", 0, 0, 0, 0, 2, 2).k("LU", 1, 0, 1, 1, 2, 2).k("LV", 0, 0, 0, 0, 2, 2).k("LY", 4, 2, 4, 3, 2, 2).k("MA", 3, 2, 2, 1, 2, 2).k("MC", 0, 2, 0, 0, 2, 2).k("MD", 1, 2, 0, 0, 2, 2).k("ME", 1, 2, 0, 1, 2, 2).k("MF", 2, 2, 1, 1, 2, 2).k("MG", 3, 4, 2, 2, 2, 2).k("MH", 4, 2, 2, 4, 2, 2).k("MK", 1, 1, 0, 0, 2, 2).k("ML", 4, 4, 2, 2, 2, 2).k("MM", 2, 3, 3, 3, 2, 2).k("MN", 2, 4, 2, 2, 2, 2).k("MO", 0, 2, 4, 4, 2, 2).k("MP", 0, 2, 2, 2, 2, 2).k("MQ", 2, 2, 2, 3, 2, 2).k("MR", 3, 0, 4, 3, 2, 2).k("MS", 1, 2, 2, 2, 2, 2).k("MT", 0, 2, 0, 0, 2, 2).k("MU", 2, 1, 1, 2, 2, 2).k("MV", 4, 3, 2, 4, 2, 2).k("MW", 4, 2, 1, 0, 2, 2).k("MX", 2, 4, 4, 4, 4, 2).k("MY", 1, 0, 3, 2, 2, 2).k("MZ", 3, 3, 2, 1, 2, 2).k("NA", 4, 3, 3, 2, 2, 2).k("NC", 3, 0, 4, 4, 2, 2).k("NE", 4, 4, 4, 4, 2, 2).k("NF", 2, 2, 2, 2, 2, 2).k("NG", 3, 3, 2, 3, 2, 2).k("NI", 2, 1, 4, 4, 2, 2).k("NL", 0, 2, 3, 2, 0, 2).k("NO", 0, 1, 2, 0, 0, 2).k("NP", 2, 0, 4, 2, 2, 2).k("NR", 3, 2, 3, 1, 2, 2).k("NU", 4, 2, 2, 2, 2, 2).k("NZ", 0, 2, 1, 2, 4, 2).k("OM", 2, 2, 1, 3, 3, 2).k("PA", 1, 3, 3, 3, 2, 2).k("PE", 2, 3, 4, 4, 2, 2).k("PF", 2, 2, 2, 1, 2, 2).k("PG", 4, 4, 3, 2, 2, 2).k("PH", 2, 1, 3, 3, 3, 2).k("PK", 3, 2, 3, 3, 2, 2).k("PL", 1, 0, 1, 2, 3, 2).k("PM", 0, 2, 2, 2, 2, 2).k("PR", 2, 1, 2, 2, 4, 3).k("PS", 3, 3, 2, 2, 2, 2).k("PT", 0, 1, 1, 0, 2, 2).k("PW", 1, 2, 4, 1, 2, 2).k("PY", 2, 0, 3, 2, 2, 2).k("QA", 2, 3, 1, 2, 3, 2).k("RE", 1, 0, 2, 2, 2, 2).k("RO", 0, 1, 0, 1, 0, 2).k("RS", 1, 2, 0, 0, 2, 2).k("RU", 0, 1, 0, 1, 4, 2).k("RW", 3, 3, 3, 1, 2, 2).k("SA", 2, 2, 2, 1, 1, 2).k("SB", 4, 2, 3, 2, 2, 2).k("SC", 4, 2, 1, 3, 2, 2).k("SD", 4, 4, 4, 4, 2, 2).k("SE", 0, 0, 0, 0, 0, 2).k("SG", 1, 0, 1, 2, 3, 2).k("SH", 4, 2, 2, 2, 2, 2).k("SI", 0, 0, 0, 0, 2, 2).k("SJ", 2, 2, 2, 2, 2, 2).k("SK", 0, 1, 0, 0, 2, 2).k("SL", 4, 3, 4, 0, 2, 2).k("SM", 0, 2, 2, 2, 2, 2).k("SN", 4, 4, 4, 4, 2, 2).k("SO", 3, 3, 3, 4, 2, 2).k("SR", 3, 2, 2, 2, 2, 2).k("SS", 4, 4, 3, 3, 2, 2).k("ST", 2, 2, 1, 2, 2, 2).k("SV", 2, 1, 4, 3, 2, 2).k("SX", 2, 2, 1, 0, 2, 2).k("SY", 4, 3, 3, 2, 2, 2).k("SZ", 3, 3, 2, 4, 2, 2).k("TC", 2, 2, 2, 0, 2, 2).k("TD", 4, 3, 4, 4, 2, 2).k("TG", 3, 2, 2, 4, 2, 2).k("TH", 0, 3, 2, 3, 2, 2).k("TJ", 4, 4, 4, 4, 2, 2).k("TL", 4, 0, 4, 4, 2, 2).k("TM", 4, 2, 4, 3, 2, 2).k("TN", 2, 1, 1, 2, 2, 2).k("TO", 3, 3, 4, 3, 2, 2).k("TR", 1, 2, 1, 1, 2, 2).k("TT", 1, 4, 0, 1, 2, 2).k("TV", 3, 2, 2, 4, 2, 2).k("TW", 0, 0, 0, 0, 1, 0).k("TZ", 3, 3, 3, 2, 2, 2).k("UA", 0, 3, 1, 1, 2, 2).k("UG", 3, 2, 3, 3, 2, 2).k("US", 1, 1, 2, 2, 4, 2).k("UY", 2, 2, 1, 1, 2, 2).k("UZ", 2, 1, 3, 4, 2, 2).k("VC", 1, 2, 2, 2, 2, 2).k("VE", 4, 4, 4, 4, 2, 2).k("VG", 2, 2, 1, 1, 2, 2).k("VI", 1, 2, 1, 2, 2, 2).k("VN", 0, 1, 3, 4, 2, 2).k("VU", 4, 0, 3, 1, 2, 2).k("WF", 4, 2, 2, 4, 2, 2).k("WS", 3, 1, 3, 1, 2, 2).k("XK", 0, 1, 1, 0, 2, 2).k("YE", 4, 4, 4, 3, 2, 2).k("YT", 4, 2, 2, 3, 2, 2).k("ZA", 3, 3, 2, 1, 2, 2).k("ZM", 3, 2, 3, 3, 2, 2).k("ZW", 3, 2, 4, 3, 2, 2).a();
    }

    private long l(int i4) {
        Long l10 = this.f27330a.get(Integer.valueOf(i4));
        if (l10 == null) {
            l10 = this.f27330a.get(0);
        }
        if (l10 == null) {
            l10 = 1000000L;
        }
        return l10.longValue();
    }

    public static synchronized r m(Context context) {
        r rVar;
        synchronized (r.class) {
            if (E == null) {
                E = new b(context).a();
            }
            rVar = E;
        }
        return rVar;
    }

    private static boolean n(o oVar, boolean z9) {
        return z9 && !oVar.d(8);
    }

    private void o(int i4, long j4, long j10) {
        if (i4 == 0 && j4 == 0 && j10 == this.f27342m) {
            return;
        }
        this.f27342m = j10;
        this.f27331b.c(i4, j4, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(int i4) {
        int i10 = this.f27338i;
        if (i10 == 0 || this.f27334e) {
            if (this.f27343n) {
                i4 = this.f27344o;
            }
            if (i10 == i4) {
                return;
            }
            this.f27338i = i4;
            if (i4 != 1 && i4 != 0 && i4 != 8) {
                this.f27341l = l(i4);
                long b10 = this.f27333d.b();
                o(this.f27335f > 0 ? (int) (b10 - this.f27336g) : 0, this.f27337h, this.f27341l);
                this.f27336g = b10;
                this.f27337h = 0L;
                this.f27340k = 0L;
                this.f27339j = 0L;
                this.f27332c.i();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public /* synthetic */ long a() {
        return c.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.p0
    public synchronized void b(m mVar, o oVar, boolean z9) {
        if (n(oVar, z9)) {
            com.google.android.exoplayer2.util.a.i(this.f27335f > 0);
            long b10 = this.f27333d.b();
            int i4 = (int) (b10 - this.f27336g);
            this.f27339j += i4;
            long j4 = this.f27340k;
            long j10 = this.f27337h;
            this.f27340k = j4 + j10;
            if (i4 > 0) {
                this.f27332c.c((int) Math.sqrt(j10), (((float) j10) * 8000.0f) / i4);
                if (this.f27339j >= k2.f23783i1 || this.f27340k >= 524288) {
                    this.f27341l = this.f27332c.f(0.5f);
                }
                o(i4, this.f27337h, this.f27341l);
                this.f27336g = b10;
                this.f27337h = 0L;
            }
            this.f27335f--;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public p0 c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void d(e.a aVar) {
        this.f27331b.e(aVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public synchronized long e() {
        return this.f27341l;
    }

    @Override // com.google.android.exoplayer2.upstream.p0
    public synchronized void f(m mVar, o oVar, boolean z9, int i4) {
        if (n(oVar, z9)) {
            this.f27337h += i4;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void g(Handler handler, e.a aVar) {
        com.google.android.exoplayer2.util.a.g(handler);
        com.google.android.exoplayer2.util.a.g(aVar);
        this.f27331b.b(handler, aVar);
    }

    @Override // com.google.android.exoplayer2.upstream.p0
    public synchronized void h(m mVar, o oVar, boolean z9) {
        if (n(oVar, z9)) {
            if (this.f27335f == 0) {
                this.f27336g = this.f27333d.b();
            }
            this.f27335f++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.p0
    public void i(m mVar, o oVar, boolean z9) {
    }

    public synchronized void q(int i4) {
        this.f27344o = i4;
        this.f27343n = true;
        p(i4);
    }

    @Deprecated
    public r() {
        this(null, ImmutableMap.of(), 2000, com.google.android.exoplayer2.util.d.f27523a, false);
    }

    private r(@Nullable Context context, Map<Integer, Long> map, int i4, com.google.android.exoplayer2.util.d dVar, boolean z9) {
        this.f27330a = ImmutableMap.copyOf((Map) map);
        this.f27331b = new e.a.C0188a();
        this.f27332c = new com.google.android.exoplayer2.util.o0(i4);
        this.f27333d = dVar;
        this.f27334e = z9;
        if (context != null) {
            com.google.android.exoplayer2.util.d0 d4 = com.google.android.exoplayer2.util.d0.d(context);
            int f10 = d4.f();
            this.f27338i = f10;
            this.f27341l = l(f10);
            d4.i(new d0.b() { // from class: com.google.android.exoplayer2.upstream.q
                @Override // com.google.android.exoplayer2.util.d0.b
                public final void a(int i10) {
                    r.this.p(i10);
                }
            });
            return;
        }
        this.f27338i = 0;
        this.f27341l = l(0);
    }
}
