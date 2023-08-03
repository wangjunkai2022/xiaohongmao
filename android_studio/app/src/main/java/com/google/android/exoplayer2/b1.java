package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: MediaItem.java */
/* loaded from: classes2.dex */
public final class b1 implements com.google.android.exoplayer2.h {

    /* renamed from: f  reason: collision with root package name */
    public static final String f21432f = "";

    /* renamed from: g  reason: collision with root package name */
    private static final int f21433g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f21434h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f21435i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f21436j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final h.a<b1> f21437k = a1.f20710a;

    /* renamed from: a  reason: collision with root package name */
    public final String f21438a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final g f21439b;

    /* renamed from: c  reason: collision with root package name */
    public final f f21440c;

    /* renamed from: d  reason: collision with root package name */
    public final f1 f21441d;

    /* renamed from: e  reason: collision with root package name */
    public final d f21442e;

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f21443a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Object f21444b;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f21443a.equals(bVar.f21443a) && com.google.android.exoplayer2.util.z0.c(this.f21444b, bVar.f21444b);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f21443a.hashCode() * 31;
            Object obj = this.f21444b;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        private b(Uri uri, @Nullable Object obj) {
            this.f21443a = uri;
            this.f21444b = obj;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class c {
        private float A;
        private float B;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f21445a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Uri f21446b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f21447c;

        /* renamed from: d  reason: collision with root package name */
        private long f21448d;

        /* renamed from: e  reason: collision with root package name */
        private long f21449e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f21450f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f21451g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f21452h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Uri f21453i;

        /* renamed from: j  reason: collision with root package name */
        private Map<String, String> f21454j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private UUID f21455k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f21456l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f21457m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f21458n;

        /* renamed from: o  reason: collision with root package name */
        private List<Integer> f21459o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private byte[] f21460p;

        /* renamed from: q  reason: collision with root package name */
        private List<StreamKey> f21461q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private String f21462r;

        /* renamed from: s  reason: collision with root package name */
        private List<h> f21463s;
        @Nullable

        /* renamed from: t  reason: collision with root package name */
        private Uri f21464t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private Object f21465u;
        @Nullable

        /* renamed from: v  reason: collision with root package name */
        private Object f21466v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private f1 f21467w;

        /* renamed from: x  reason: collision with root package name */
        private long f21468x;

        /* renamed from: y  reason: collision with root package name */
        private long f21469y;

        /* renamed from: z  reason: collision with root package name */
        private long f21470z;

        public c A(f1 f1Var) {
            this.f21467w = f1Var;
            return this;
        }

        public c B(@Nullable String str) {
            this.f21447c = str;
            return this;
        }

        public c C(@Nullable List<StreamKey> list) {
            List<StreamKey> emptyList;
            if (list != null && !list.isEmpty()) {
                emptyList = Collections.unmodifiableList(new ArrayList(list));
            } else {
                emptyList = Collections.emptyList();
            }
            this.f21461q = emptyList;
            return this;
        }

        public c D(@Nullable List<h> list) {
            List<h> emptyList;
            if (list != null && !list.isEmpty()) {
                emptyList = Collections.unmodifiableList(new ArrayList(list));
            } else {
                emptyList = Collections.emptyList();
            }
            this.f21463s = emptyList;
            return this;
        }

        public c E(@Nullable Object obj) {
            this.f21466v = obj;
            return this;
        }

        public c F(@Nullable Uri uri) {
            this.f21446b = uri;
            return this;
        }

        public c G(@Nullable String str) {
            return F(str == null ? null : Uri.parse(str));
        }

        public b1 a() {
            g gVar;
            com.google.android.exoplayer2.util.a.i(this.f21453i == null || this.f21455k != null);
            Uri uri = this.f21446b;
            if (uri != null) {
                String str = this.f21447c;
                UUID uuid = this.f21455k;
                e eVar = uuid != null ? new e(uuid, this.f21453i, this.f21454j, this.f21456l, this.f21458n, this.f21457m, this.f21459o, this.f21460p) : null;
                Uri uri2 = this.f21464t;
                gVar = new g(uri, str, eVar, uri2 != null ? new b(uri2, this.f21465u) : null, this.f21461q, this.f21462r, this.f21463s, this.f21466v);
            } else {
                gVar = null;
            }
            String str2 = this.f21445a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            d dVar = new d(this.f21448d, this.f21449e, this.f21450f, this.f21451g, this.f21452h);
            f fVar = new f(this.f21468x, this.f21469y, this.f21470z, this.A, this.B);
            f1 f1Var = this.f21467w;
            if (f1Var == null) {
                f1Var = f1.f23565z;
            }
            return new b1(str3, dVar, gVar, fVar, f1Var);
        }

        public c b(@Nullable Uri uri) {
            return c(uri, null);
        }

        public c c(@Nullable Uri uri, @Nullable Object obj) {
            this.f21464t = uri;
            this.f21465u = obj;
            return this;
        }

        public c d(@Nullable String str) {
            return b(str != null ? Uri.parse(str) : null);
        }

        public c e(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 == Long.MIN_VALUE || j4 >= 0);
            this.f21449e = j4;
            return this;
        }

        public c f(boolean z9) {
            this.f21451g = z9;
            return this;
        }

        public c g(boolean z9) {
            this.f21450f = z9;
            return this;
        }

        public c h(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 >= 0);
            this.f21448d = j4;
            return this;
        }

        public c i(boolean z9) {
            this.f21452h = z9;
            return this;
        }

        public c j(@Nullable String str) {
            this.f21462r = str;
            return this;
        }

        public c k(boolean z9) {
            this.f21458n = z9;
            return this;
        }

        public c l(@Nullable byte[] bArr) {
            this.f21460p = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
            return this;
        }

        public c m(@Nullable Map<String, String> map) {
            Map<String, String> emptyMap;
            if (map != null && !map.isEmpty()) {
                emptyMap = Collections.unmodifiableMap(new HashMap(map));
            } else {
                emptyMap = Collections.emptyMap();
            }
            this.f21454j = emptyMap;
            return this;
        }

        public c n(@Nullable Uri uri) {
            this.f21453i = uri;
            return this;
        }

        public c o(@Nullable String str) {
            this.f21453i = str == null ? null : Uri.parse(str);
            return this;
        }

        public c p(boolean z9) {
            this.f21456l = z9;
            return this;
        }

        public c q(boolean z9) {
            this.f21457m = z9;
            return this;
        }

        public c r(boolean z9) {
            s(z9 ? Arrays.asList(2, 1) : Collections.emptyList());
            return this;
        }

        public c s(@Nullable List<Integer> list) {
            List<Integer> emptyList;
            if (list != null && !list.isEmpty()) {
                emptyList = Collections.unmodifiableList(new ArrayList(list));
            } else {
                emptyList = Collections.emptyList();
            }
            this.f21459o = emptyList;
            return this;
        }

        public c t(@Nullable UUID uuid) {
            this.f21455k = uuid;
            return this;
        }

        public c u(long j4) {
            this.f21470z = j4;
            return this;
        }

        public c v(float f10) {
            this.B = f10;
            return this;
        }

        public c w(long j4) {
            this.f21469y = j4;
            return this;
        }

        public c x(float f10) {
            this.A = f10;
            return this;
        }

        public c y(long j4) {
            this.f21468x = j4;
            return this;
        }

        public c z(String str) {
            this.f21445a = (String) com.google.android.exoplayer2.util.a.g(str);
            return this;
        }

        public c() {
            this.f21449e = Long.MIN_VALUE;
            this.f21459o = Collections.emptyList();
            this.f21454j = Collections.emptyMap();
            this.f21461q = Collections.emptyList();
            this.f21463s = Collections.emptyList();
            this.f21468x = i.f23649b;
            this.f21469y = i.f23649b;
            this.f21470z = i.f23649b;
            this.A = -3.4028235E38f;
            this.B = -3.4028235E38f;
        }

        private c(b1 b1Var) {
            this();
            d dVar = b1Var.f21442e;
            this.f21449e = dVar.f21478b;
            this.f21450f = dVar.f21479c;
            this.f21451g = dVar.f21480d;
            this.f21448d = dVar.f21477a;
            this.f21452h = dVar.f21481e;
            this.f21445a = b1Var.f21438a;
            this.f21467w = b1Var.f21441d;
            f fVar = b1Var.f21440c;
            this.f21468x = fVar.f21497a;
            this.f21469y = fVar.f21498b;
            this.f21470z = fVar.f21499c;
            this.A = fVar.f21500d;
            this.B = fVar.f21501e;
            g gVar = b1Var.f21439b;
            if (gVar != null) {
                this.f21462r = gVar.f21507f;
                this.f21447c = gVar.f21503b;
                this.f21446b = gVar.f21502a;
                this.f21461q = gVar.f21506e;
                this.f21463s = gVar.f21508g;
                this.f21466v = gVar.f21509h;
                e eVar = gVar.f21504c;
                if (eVar != null) {
                    this.f21453i = eVar.f21483b;
                    this.f21454j = eVar.f21484c;
                    this.f21456l = eVar.f21485d;
                    this.f21458n = eVar.f21487f;
                    this.f21457m = eVar.f21486e;
                    this.f21459o = eVar.f21488g;
                    this.f21455k = eVar.f21482a;
                    this.f21460p = eVar.a();
                }
                b bVar = gVar.f21505d;
                if (bVar != null) {
                    this.f21464t = bVar.f21443a;
                    this.f21465u = bVar.f21444b;
                }
            }
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class d implements com.google.android.exoplayer2.h {

        /* renamed from: f  reason: collision with root package name */
        private static final int f21471f = 0;

        /* renamed from: g  reason: collision with root package name */
        private static final int f21472g = 1;

        /* renamed from: h  reason: collision with root package name */
        private static final int f21473h = 2;

        /* renamed from: i  reason: collision with root package name */
        private static final int f21474i = 3;

        /* renamed from: j  reason: collision with root package name */
        private static final int f21475j = 4;

        /* renamed from: k  reason: collision with root package name */
        public static final h.a<d> f21476k = c1.f21520a;

        /* renamed from: a  reason: collision with root package name */
        public final long f21477a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21478b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f21479c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f21480d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f21481e;

        private static String b(int i4) {
            return Integer.toString(i4, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d c(Bundle bundle) {
            return new d(bundle.getLong(b(0), 0L), bundle.getLong(b(1), Long.MIN_VALUE), bundle.getBoolean(b(2), false), bundle.getBoolean(b(3), false), bundle.getBoolean(b(4), false));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f21477a == dVar.f21477a && this.f21478b == dVar.f21478b && this.f21479c == dVar.f21479c && this.f21480d == dVar.f21480d && this.f21481e == dVar.f21481e;
            }
            return false;
        }

        public int hashCode() {
            long j4 = this.f21477a;
            long j10 = this.f21478b;
            return (((((((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.f21479c ? 1 : 0)) * 31) + (this.f21480d ? 1 : 0)) * 31) + (this.f21481e ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(b(0), this.f21477a);
            bundle.putLong(b(1), this.f21478b);
            bundle.putBoolean(b(2), this.f21479c);
            bundle.putBoolean(b(3), this.f21480d);
            bundle.putBoolean(b(4), this.f21481e);
            return bundle;
        }

        private d(long j4, long j10, boolean z9, boolean z10, boolean z11) {
            this.f21477a = j4;
            this.f21478b = j10;
            this.f21479c = z9;
            this.f21480d = z10;
            this.f21481e = z11;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f21482a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Uri f21483b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, String> f21484c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f21485d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f21486e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f21487f;

        /* renamed from: g  reason: collision with root package name */
        public final List<Integer> f21488g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final byte[] f21489h;

        @Nullable
        public byte[] a() {
            byte[] bArr = this.f21489h;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                e eVar = (e) obj;
                return this.f21482a.equals(eVar.f21482a) && com.google.android.exoplayer2.util.z0.c(this.f21483b, eVar.f21483b) && com.google.android.exoplayer2.util.z0.c(this.f21484c, eVar.f21484c) && this.f21485d == eVar.f21485d && this.f21487f == eVar.f21487f && this.f21486e == eVar.f21486e && this.f21488g.equals(eVar.f21488g) && Arrays.equals(this.f21489h, eVar.f21489h);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f21482a.hashCode() * 31;
            Uri uri = this.f21483b;
            return ((((((((((((hashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f21484c.hashCode()) * 31) + (this.f21485d ? 1 : 0)) * 31) + (this.f21487f ? 1 : 0)) * 31) + (this.f21486e ? 1 : 0)) * 31) + this.f21488g.hashCode()) * 31) + Arrays.hashCode(this.f21489h);
        }

        private e(UUID uuid, @Nullable Uri uri, Map<String, String> map, boolean z9, boolean z10, boolean z11, List<Integer> list, @Nullable byte[] bArr) {
            com.google.android.exoplayer2.util.a.a((z10 && uri == null) ? false : true);
            this.f21482a = uuid;
            this.f21483b = uri;
            this.f21484c = map;
            this.f21485d = z9;
            this.f21487f = z10;
            this.f21486e = z11;
            this.f21488g = list;
            this.f21489h = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class f implements com.google.android.exoplayer2.h {

        /* renamed from: g  reason: collision with root package name */
        private static final int f21491g = 0;

        /* renamed from: h  reason: collision with root package name */
        private static final int f21492h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f21493i = 2;

        /* renamed from: j  reason: collision with root package name */
        private static final int f21494j = 3;

        /* renamed from: k  reason: collision with root package name */
        private static final int f21495k = 4;

        /* renamed from: a  reason: collision with root package name */
        public final long f21497a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21498b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21499c;

        /* renamed from: d  reason: collision with root package name */
        public final float f21500d;

        /* renamed from: e  reason: collision with root package name */
        public final float f21501e;

        /* renamed from: f  reason: collision with root package name */
        public static final f f21490f = new f(i.f23649b, i.f23649b, i.f23649b, -3.4028235E38f, -3.4028235E38f);

        /* renamed from: l  reason: collision with root package name */
        public static final h.a<f> f21496l = d1.f21551a;

        public f(long j4, long j10, long j11, float f10, float f11) {
            this.f21497a = j4;
            this.f21498b = j10;
            this.f21499c = j11;
            this.f21500d = f10;
            this.f21501e = f11;
        }

        private static String b(int i4) {
            return Integer.toString(i4, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ f c(Bundle bundle) {
            return new f(bundle.getLong(b(0), i.f23649b), bundle.getLong(b(1), i.f23649b), bundle.getLong(b(2), i.f23649b), bundle.getFloat(b(3), -3.4028235E38f), bundle.getFloat(b(4), -3.4028235E38f));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return this.f21497a == fVar.f21497a && this.f21498b == fVar.f21498b && this.f21499c == fVar.f21499c && this.f21500d == fVar.f21500d && this.f21501e == fVar.f21501e;
            }
            return false;
        }

        public int hashCode() {
            long j4 = this.f21497a;
            long j10 = this.f21498b;
            long j11 = this.f21499c;
            int i4 = ((((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            float f10 = this.f21500d;
            int floatToIntBits = (i4 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f21501e;
            return floatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(b(0), this.f21497a);
            bundle.putLong(b(1), this.f21498b);
            bundle.putLong(b(2), this.f21499c);
            bundle.putFloat(b(3), this.f21500d);
            bundle.putFloat(b(4), this.f21501e);
            return bundle;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f21502a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f21503b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final e f21504c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final b f21505d;

        /* renamed from: e  reason: collision with root package name */
        public final List<StreamKey> f21506e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f21507f;

        /* renamed from: g  reason: collision with root package name */
        public final List<h> f21508g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final Object f21509h;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof g) {
                g gVar = (g) obj;
                return this.f21502a.equals(gVar.f21502a) && com.google.android.exoplayer2.util.z0.c(this.f21503b, gVar.f21503b) && com.google.android.exoplayer2.util.z0.c(this.f21504c, gVar.f21504c) && com.google.android.exoplayer2.util.z0.c(this.f21505d, gVar.f21505d) && this.f21506e.equals(gVar.f21506e) && com.google.android.exoplayer2.util.z0.c(this.f21507f, gVar.f21507f) && this.f21508g.equals(gVar.f21508g) && com.google.android.exoplayer2.util.z0.c(this.f21509h, gVar.f21509h);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f21502a.hashCode() * 31;
            String str = this.f21503b;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            e eVar = this.f21504c;
            int hashCode3 = (hashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 31;
            b bVar = this.f21505d;
            int hashCode4 = (((hashCode3 + (bVar == null ? 0 : bVar.hashCode())) * 31) + this.f21506e.hashCode()) * 31;
            String str2 = this.f21507f;
            int hashCode5 = (((hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f21508g.hashCode()) * 31;
            Object obj = this.f21509h;
            return hashCode5 + (obj != null ? obj.hashCode() : 0);
        }

        private g(Uri uri, @Nullable String str, @Nullable e eVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, List<h> list2, @Nullable Object obj) {
            this.f21502a = uri;
            this.f21503b = str;
            this.f21504c = eVar;
            this.f21505d = bVar;
            this.f21506e = list;
            this.f21507f = str2;
            this.f21508g = list2;
            this.f21509h = obj;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes2.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f21510a;

        /* renamed from: b  reason: collision with root package name */
        public final String f21511b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f21512c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21513d;

        /* renamed from: e  reason: collision with root package name */
        public final int f21514e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f21515f;

        public h(Uri uri, String str, @Nullable String str2) {
            this(uri, str, str2, 0);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof h) {
                h hVar = (h) obj;
                return this.f21510a.equals(hVar.f21510a) && this.f21511b.equals(hVar.f21511b) && com.google.android.exoplayer2.util.z0.c(this.f21512c, hVar.f21512c) && this.f21513d == hVar.f21513d && this.f21514e == hVar.f21514e && com.google.android.exoplayer2.util.z0.c(this.f21515f, hVar.f21515f);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((this.f21510a.hashCode() * 31) + this.f21511b.hashCode()) * 31;
            String str = this.f21512c;
            int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f21513d) * 31) + this.f21514e) * 31;
            String str2 = this.f21515f;
            return hashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public h(Uri uri, String str, @Nullable String str2, int i4) {
            this(uri, str, str2, i4, 0, null);
        }

        public h(Uri uri, String str, @Nullable String str2, int i4, int i10, @Nullable String str3) {
            this.f21510a = uri;
            this.f21511b = str;
            this.f21512c = str2;
            this.f21513d = i4;
            this.f21514e = i10;
            this.f21515f = str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b1 c(Bundle bundle) {
        f a10;
        f1 a11;
        d a12;
        String str = (String) com.google.android.exoplayer2.util.a.g(bundle.getString(f(0), ""));
        Bundle bundle2 = bundle.getBundle(f(1));
        if (bundle2 == null) {
            a10 = f.f21490f;
        } else {
            a10 = f.f21496l.a(bundle2);
        }
        f fVar = a10;
        Bundle bundle3 = bundle.getBundle(f(2));
        if (bundle3 == null) {
            a11 = f1.f23565z;
        } else {
            a11 = f1.S.a(bundle3);
        }
        f1 f1Var = a11;
        Bundle bundle4 = bundle.getBundle(f(3));
        if (bundle4 == null) {
            a12 = new d(0L, Long.MIN_VALUE, false, false, false);
        } else {
            a12 = d.f21476k.a(bundle4);
        }
        return new b1(str, a12, null, fVar, f1Var);
    }

    public static b1 d(Uri uri) {
        return new c().F(uri).a();
    }

    public static b1 e(String str) {
        return new c().G(str).a();
    }

    private static String f(int i4) {
        return Integer.toString(i4, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b1) {
            b1 b1Var = (b1) obj;
            return com.google.android.exoplayer2.util.z0.c(this.f21438a, b1Var.f21438a) && this.f21442e.equals(b1Var.f21442e) && com.google.android.exoplayer2.util.z0.c(this.f21439b, b1Var.f21439b) && com.google.android.exoplayer2.util.z0.c(this.f21440c, b1Var.f21440c) && com.google.android.exoplayer2.util.z0.c(this.f21441d, b1Var.f21441d);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f21438a.hashCode() * 31;
        g gVar = this.f21439b;
        return ((((((hashCode + (gVar != null ? gVar.hashCode() : 0)) * 31) + this.f21440c.hashCode()) * 31) + this.f21442e.hashCode()) * 31) + this.f21441d.hashCode();
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(f(0), this.f21438a);
        bundle.putBundle(f(1), this.f21440c.toBundle());
        bundle.putBundle(f(2), this.f21441d.toBundle());
        bundle.putBundle(f(3), this.f21442e.toBundle());
        return bundle;
    }

    private b1(String str, d dVar, @Nullable g gVar, f fVar, f1 f1Var) {
        this.f21438a = str;
        this.f21439b = gVar;
        this.f21440c = fVar;
        this.f21441d = f1Var;
        this.f21442e = dVar;
    }
}
