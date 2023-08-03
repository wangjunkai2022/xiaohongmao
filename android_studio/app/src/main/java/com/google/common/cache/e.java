package com.google.common.cache;

import com.google.common.base.a0;
import com.google.common.base.f0;
import com.google.common.base.v;
import com.google.common.base.w;
import com.google.common.cache.j;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: CacheBuilderSpec.java */
@h3.c
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: o  reason: collision with root package name */
    private static final f0 f32377o = f0.h(',').q();

    /* renamed from: p  reason: collision with root package name */
    private static final f0 f32378p = f0.h('=').q();

    /* renamed from: q  reason: collision with root package name */
    private static final ImmutableMap<String, m> f32379q;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    Integer f32380a;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    Long f32381b;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    Long f32382c;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    Integer f32383d;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    j.t f32384e;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: f  reason: collision with root package name */
    j.t f32385f;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: g  reason: collision with root package name */
    Boolean f32386g;
    @h3.d

    /* renamed from: h  reason: collision with root package name */
    long f32387h;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: i  reason: collision with root package name */
    TimeUnit f32388i;
    @h3.d

    /* renamed from: j  reason: collision with root package name */
    long f32389j;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: k  reason: collision with root package name */
    TimeUnit f32390k;
    @h3.d

    /* renamed from: l  reason: collision with root package name */
    long f32391l;
    @h3.d
    @MonotonicNonNullDecl

    /* renamed from: m  reason: collision with root package name */
    TimeUnit f32392m;

    /* renamed from: n  reason: collision with root package name */
    private final String f32393n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32394a;

        static {
            int[] iArr = new int[j.t.values().length];
            f32394a = iArr;
            try {
                iArr[j.t.f32541c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32394a[j.t.f32540b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class b extends d {
        b() {
        }

        @Override // com.google.common.cache.e.d
        protected void b(e eVar, long j4, TimeUnit timeUnit) {
            a0.e(eVar.f32390k == null, "expireAfterAccess already set");
            eVar.f32389j = j4;
            eVar.f32390k = timeUnit;
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class c extends f {
        c() {
        }

        @Override // com.google.common.cache.e.f
        protected void b(e eVar, int i4) {
            Integer num = eVar.f32383d;
            a0.u(num == null, "concurrency level was already set to ", num);
            eVar.f32383d = Integer.valueOf(i4);
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static abstract class d implements m {
        d() {
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, String str2) {
            TimeUnit timeUnit;
            a0.u((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                char charAt = str2.charAt(str2.length() - 1);
                if (charAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (charAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (charAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else if (charAt == 's') {
                    timeUnit = TimeUnit.SECONDS;
                } else {
                    throw new IllegalArgumentException(e.d("key %s invalid format.  was %s, must end with one of [dDhHmMsS]", str, str2));
                }
                b(eVar, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2));
            }
        }

        protected abstract void b(e eVar, long j4, TimeUnit timeUnit);
    }

    /* compiled from: CacheBuilderSpec.java */
    /* renamed from: com.google.common.cache.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0210e extends f {
        C0210e() {
        }

        @Override // com.google.common.cache.e.f
        protected void b(e eVar, int i4) {
            Integer num = eVar.f32380a;
            a0.u(num == null, "initial capacity was already set to ", num);
            eVar.f32380a = Integer.valueOf(i4);
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static abstract class f implements m {
        f() {
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, String str2) {
            a0.u((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                b(eVar, Integer.parseInt(str2));
            } catch (NumberFormatException e4) {
                throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2), e4);
            }
        }

        protected abstract void b(e eVar, int i4);
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class g implements m {

        /* renamed from: a  reason: collision with root package name */
        private final j.t f32395a;

        public g(j.t tVar) {
            this.f32395a = tVar;
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, @NullableDecl String str2) {
            a0.u(str2 == null, "key %s does not take values", str);
            j.t tVar = eVar.f32384e;
            a0.y(tVar == null, "%s was already set to %s", str, tVar);
            eVar.f32384e = this.f32395a;
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static abstract class h implements m {
        h() {
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, String str2) {
            a0.u((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                b(eVar, Long.parseLong(str2));
            } catch (NumberFormatException e4) {
                throw new IllegalArgumentException(e.d("key %s value set to %s, must be integer", str, str2), e4);
            }
        }

        protected abstract void b(e eVar, long j4);
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class i extends h {
        i() {
        }

        @Override // com.google.common.cache.e.h
        protected void b(e eVar, long j4) {
            Long l10 = eVar.f32381b;
            a0.u(l10 == null, "maximum size was already set to ", l10);
            Long l11 = eVar.f32382c;
            a0.u(l11 == null, "maximum weight was already set to ", l11);
            eVar.f32381b = Long.valueOf(j4);
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class j extends h {
        j() {
        }

        @Override // com.google.common.cache.e.h
        protected void b(e eVar, long j4) {
            Long l10 = eVar.f32382c;
            a0.u(l10 == null, "maximum weight was already set to ", l10);
            Long l11 = eVar.f32381b;
            a0.u(l11 == null, "maximum size was already set to ", l11);
            eVar.f32382c = Long.valueOf(j4);
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class k implements m {
        k() {
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, @NullableDecl String str2) {
            a0.e(str2 == null, "recordStats does not take values");
            a0.e(eVar.f32386g == null, "recordStats already set");
            eVar.f32386g = Boolean.TRUE;
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class l extends d {
        l() {
        }

        @Override // com.google.common.cache.e.d
        protected void b(e eVar, long j4, TimeUnit timeUnit) {
            a0.e(eVar.f32392m == null, "refreshAfterWrite already set");
            eVar.f32391l = j4;
            eVar.f32392m = timeUnit;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    public interface m {
        void a(e eVar, String str, @NullableDecl String str2);
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class n implements m {

        /* renamed from: a  reason: collision with root package name */
        private final j.t f32396a;

        public n(j.t tVar) {
            this.f32396a = tVar;
        }

        @Override // com.google.common.cache.e.m
        public void a(e eVar, String str, @NullableDecl String str2) {
            a0.u(str2 == null, "key %s does not take values", str);
            j.t tVar = eVar.f32385f;
            a0.y(tVar == null, "%s was already set to %s", str, tVar);
            eVar.f32385f = this.f32396a;
        }
    }

    /* compiled from: CacheBuilderSpec.java */
    /* loaded from: classes2.dex */
    static class o extends d {
        o() {
        }

        @Override // com.google.common.cache.e.d
        protected void b(e eVar, long j4, TimeUnit timeUnit) {
            a0.e(eVar.f32388i == null, "expireAfterWrite already set");
            eVar.f32387h = j4;
            eVar.f32388i = timeUnit;
        }
    }

    static {
        ImmutableMap.b d4 = ImmutableMap.builder().d("initialCapacity", new C0210e()).d("maximumSize", new i()).d("maximumWeight", new j()).d("concurrencyLevel", new c());
        j.t tVar = j.t.f32541c;
        f32379q = d4.d("weakKeys", new g(tVar)).d("softValues", new n(j.t.f32540b)).d("weakValues", new n(tVar)).d("recordStats", new k()).d("expireAfterAccess", new b()).d("expireAfterWrite", new o()).d("refreshAfterWrite", new l()).d("refreshInterval", new l()).a();
    }

    private e(String str) {
        this.f32393n = str;
    }

    public static e b() {
        return e("maximumSize=0");
    }

    @NullableDecl
    private static Long c(long j4, @NullableDecl TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static e e(String str) {
        e eVar = new e(str);
        if (!str.isEmpty()) {
            for (String str2 : f32377o.n(str)) {
                ImmutableList copyOf = ImmutableList.copyOf(f32378p.n(str2));
                a0.e(!copyOf.isEmpty(), "blank key-value pair");
                a0.u(copyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) copyOf.get(0);
                m mVar = f32379q.get(str3);
                a0.u(mVar != null, "unknown key %s", str3);
                mVar.a(eVar, str3, copyOf.size() == 1 ? null : (String) copyOf.get(1));
            }
        }
        return eVar;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return w.a(this.f32380a, eVar.f32380a) && w.a(this.f32381b, eVar.f32381b) && w.a(this.f32382c, eVar.f32382c) && w.a(this.f32383d, eVar.f32383d) && w.a(this.f32384e, eVar.f32384e) && w.a(this.f32385f, eVar.f32385f) && w.a(this.f32386g, eVar.f32386g) && w.a(c(this.f32387h, this.f32388i), c(eVar.f32387h, eVar.f32388i)) && w.a(c(this.f32389j, this.f32390k), c(eVar.f32389j, eVar.f32390k)) && w.a(c(this.f32391l, this.f32392m), c(eVar.f32391l, eVar.f32392m));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.common.cache.d<Object, Object> f() {
        com.google.common.cache.d<Object, Object> D = com.google.common.cache.d.D();
        Integer num = this.f32380a;
        if (num != null) {
            D.x(num.intValue());
        }
        Long l10 = this.f32381b;
        if (l10 != null) {
            D.B(l10.longValue());
        }
        Long l11 = this.f32382c;
        if (l11 != null) {
            D.C(l11.longValue());
        }
        Integer num2 = this.f32383d;
        if (num2 != null) {
            D.e(num2.intValue());
        }
        j.t tVar = this.f32384e;
        if (tVar != null) {
            if (a.f32394a[tVar.ordinal()] == 1) {
                D.M();
            } else {
                throw new AssertionError();
            }
        }
        j.t tVar2 = this.f32385f;
        if (tVar2 != null) {
            int i4 = a.f32394a[tVar2.ordinal()];
            if (i4 == 1) {
                D.N();
            } else if (i4 == 2) {
                D.J();
            } else {
                throw new AssertionError();
            }
        }
        Boolean bool = this.f32386g;
        if (bool != null && bool.booleanValue()) {
            D.E();
        }
        TimeUnit timeUnit = this.f32388i;
        if (timeUnit != null) {
            D.g(this.f32387h, timeUnit);
        }
        TimeUnit timeUnit2 = this.f32390k;
        if (timeUnit2 != null) {
            D.f(this.f32389j, timeUnit2);
        }
        TimeUnit timeUnit3 = this.f32392m;
        if (timeUnit3 != null) {
            D.F(this.f32391l, timeUnit3);
        }
        return D;
    }

    public String g() {
        return this.f32393n;
    }

    public int hashCode() {
        return w.b(this.f32380a, this.f32381b, this.f32382c, this.f32383d, this.f32384e, this.f32385f, this.f32386g, c(this.f32387h, this.f32388i), c(this.f32389j, this.f32390k), c(this.f32391l, this.f32392m));
    }

    public String toString() {
        return v.c(this).p(g()).toString();
    }
}
