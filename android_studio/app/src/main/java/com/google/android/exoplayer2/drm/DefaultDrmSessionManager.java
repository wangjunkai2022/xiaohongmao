package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.k5;
import com.google.common.collect.o4;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@RequiresApi(18)
/* loaded from: classes2.dex */
public class DefaultDrmSessionManager implements u {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = 2;
    public static final int D = 3;
    public static final int E = 3;
    public static final long F = 300000;
    private static final String G = "DefaultDrmSessionMgr";

    /* renamed from: z  reason: collision with root package name */
    public static final String f21684z = "PRCustomData";

    /* renamed from: c  reason: collision with root package name */
    private final UUID f21685c;

    /* renamed from: d  reason: collision with root package name */
    private final b0.g f21686d;

    /* renamed from: e  reason: collision with root package name */
    private final k0 f21687e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, String> f21688f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f21689g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f21690h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f21691i;

    /* renamed from: j  reason: collision with root package name */
    private final g f21692j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f21693k;

    /* renamed from: l  reason: collision with root package name */
    private final h f21694l;

    /* renamed from: m  reason: collision with root package name */
    private final long f21695m;

    /* renamed from: n  reason: collision with root package name */
    private final List<DefaultDrmSession> f21696n;

    /* renamed from: o  reason: collision with root package name */
    private final Set<f> f21697o;

    /* renamed from: p  reason: collision with root package name */
    private final Set<DefaultDrmSession> f21698p;

    /* renamed from: q  reason: collision with root package name */
    private int f21699q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b0 f21700r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DefaultDrmSession f21701s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DefaultDrmSession f21702t;

    /* renamed from: u  reason: collision with root package name */
    private Looper f21703u;

    /* renamed from: v  reason: collision with root package name */
    private Handler f21704v;

    /* renamed from: w  reason: collision with root package name */
    private int f21705w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private byte[] f21706x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    volatile d f21707y;

    /* loaded from: classes2.dex */
    public static final class MissingSchemeDataException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private MissingSchemeDataException(java.util.UUID r3) {
            /*
                r2 = this;
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r0 = r3.length()
                int r0 = r0 + 29
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.String r0 = "Media does not support uuid: "
                r1.append(r0)
                r1.append(r3)
                java.lang.String r3 = r1.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MissingSchemeDataException.<init>(java.util.UUID):void");
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f21711d;

        /* renamed from: f  reason: collision with root package name */
        private boolean f21713f;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<String, String> f21708a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private UUID f21709b = com.google.android.exoplayer2.i.L1;

        /* renamed from: c  reason: collision with root package name */
        private b0.g f21710c = h0.f21771k;

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.f0 f21714g = new com.google.android.exoplayer2.upstream.w();

        /* renamed from: e  reason: collision with root package name */
        private int[] f21712e = new int[0];

        /* renamed from: h  reason: collision with root package name */
        private long f21715h = 300000;

        public DefaultDrmSessionManager a(k0 k0Var) {
            return new DefaultDrmSessionManager(this.f21709b, this.f21710c, k0Var, this.f21708a, this.f21711d, this.f21712e, this.f21713f, this.f21714g, this.f21715h);
        }

        public b b(@Nullable Map<String, String> map) {
            this.f21708a.clear();
            if (map != null) {
                this.f21708a.putAll(map);
            }
            return this;
        }

        public b c(com.google.android.exoplayer2.upstream.f0 f0Var) {
            this.f21714g = (com.google.android.exoplayer2.upstream.f0) com.google.android.exoplayer2.util.a.g(f0Var);
            return this;
        }

        public b d(boolean z9) {
            this.f21711d = z9;
            return this;
        }

        public b e(boolean z9) {
            this.f21713f = z9;
            return this;
        }

        public b f(long j4) {
            com.google.android.exoplayer2.util.a.a(j4 > 0 || j4 == com.google.android.exoplayer2.i.f23649b);
            this.f21715h = j4;
            return this;
        }

        public b g(int... iArr) {
            for (int i4 : iArr) {
                boolean z9 = true;
                if (i4 != 2 && i4 != 1) {
                    z9 = false;
                }
                com.google.android.exoplayer2.util.a.a(z9);
            }
            this.f21712e = (int[]) iArr.clone();
            return this;
        }

        public b h(UUID uuid, b0.g gVar) {
            this.f21709b = (UUID) com.google.android.exoplayer2.util.a.g(uuid);
            this.f21710c = (b0.g) com.google.android.exoplayer2.util.a.g(gVar);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private class c implements b0.d {
        private c() {
        }

        @Override // com.google.android.exoplayer2.drm.b0.d
        public void a(b0 b0Var, @Nullable byte[] bArr, int i4, int i10, @Nullable byte[] bArr2) {
            ((d) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21707y)).obtainMessage(i4, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f21696n) {
                if (defaultDrmSession.q(bArr)) {
                    defaultDrmSession.y(message.what);
                    return;
                }
            }
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface e {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f implements u.b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final s.a f21718b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private DrmSession f21719c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f21720d;

        public f(@Nullable s.a aVar) {
            this.f21718b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Format format) {
            if (DefaultDrmSessionManager.this.f21699q == 0 || this.f21720d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f21719c = defaultDrmSessionManager.s((Looper) com.google.android.exoplayer2.util.a.g(defaultDrmSessionManager.f21703u), this.f21718b, format, false);
            DefaultDrmSessionManager.this.f21697o.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f21720d) {
                return;
            }
            DrmSession drmSession = this.f21719c;
            if (drmSession != null) {
                drmSession.g(this.f21718b);
            }
            DefaultDrmSessionManager.this.f21697o.remove(this);
            this.f21720d = true;
        }

        public void c(final Format format) {
            ((Handler) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21704v)).post(new Runnable() { // from class: com.google.android.exoplayer2.drm.h
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.f.this.d(format);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.u.b
        public void release() {
            z0.Y0((Handler) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21704v), new Runnable() { // from class: com.google.android.exoplayer2.drm.g
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.f.this.e();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class g implements DefaultDrmSession.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<DefaultDrmSession> f21722a = new HashSet();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private DefaultDrmSession f21723b;

        public g(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void a(DefaultDrmSession defaultDrmSession) {
            this.f21722a.add(defaultDrmSession);
            if (this.f21723b != null) {
                return;
            }
            this.f21723b = defaultDrmSession;
            defaultDrmSession.E();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void b() {
            this.f21723b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f21722a);
            this.f21722a.clear();
            k5 it = copyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).z();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void c(Exception exc) {
            this.f21723b = null;
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f21722a);
            this.f21722a.clear();
            k5 it = copyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).A(exc);
            }
        }

        public void d(DefaultDrmSession defaultDrmSession) {
            this.f21722a.remove(defaultDrmSession);
            if (this.f21723b == defaultDrmSession) {
                this.f21723b = null;
                if (this.f21722a.isEmpty()) {
                    return;
                }
                DefaultDrmSession next = this.f21722a.iterator().next();
                this.f21723b = next;
                next.E();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h implements DefaultDrmSession.b {
        private h() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void a(DefaultDrmSession defaultDrmSession, int i4) {
            if (DefaultDrmSessionManager.this.f21695m != com.google.android.exoplayer2.i.f23649b) {
                DefaultDrmSessionManager.this.f21698p.remove(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21704v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void b(final DefaultDrmSession defaultDrmSession, int i4) {
            if (i4 == 1 && DefaultDrmSessionManager.this.f21699q > 0 && DefaultDrmSessionManager.this.f21695m != com.google.android.exoplayer2.i.f23649b) {
                DefaultDrmSessionManager.this.f21698p.add(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21704v)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.g(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f21695m);
            } else if (i4 == 0) {
                DefaultDrmSessionManager.this.f21696n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f21701s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f21701s = null;
                }
                if (DefaultDrmSessionManager.this.f21702t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f21702t = null;
                }
                DefaultDrmSessionManager.this.f21692j.d(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f21695m != com.google.android.exoplayer2.i.f23649b) {
                    ((Handler) com.google.android.exoplayer2.util.a.g(DefaultDrmSessionManager.this.f21704v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f21698p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private void A(Looper looper) {
        if (this.f21707y == null) {
            this.f21707y = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f21700r != null && this.f21699q == 0 && this.f21696n.isEmpty() && this.f21697o.isEmpty()) {
            ((b0) com.google.android.exoplayer2.util.a.g(this.f21700r)).release();
            this.f21700r = null;
        }
    }

    private void C() {
        k5 it = ImmutableSet.copyOf((Collection) this.f21697o).iterator();
        while (it.hasNext()) {
            ((f) it.next()).release();
        }
    }

    private void E(DrmSession drmSession, @Nullable s.a aVar) {
        drmSession.g(aVar);
        if (this.f21695m != com.google.android.exoplayer2.i.f23649b) {
            drmSession.g(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public DrmSession s(Looper looper, @Nullable s.a aVar, Format format, boolean z9) {
        List<DrmInitData.SchemeData> list;
        A(looper);
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData == null) {
            return z(com.google.android.exoplayer2.util.a0.l(format.sampleMimeType), z9);
        }
        DefaultDrmSession defaultDrmSession = null;
        if (this.f21706x == null) {
            list = x((DrmInitData) com.google.android.exoplayer2.util.a.g(drmInitData), this.f21685c, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f21685c);
                com.google.android.exoplayer2.util.w.e(G, "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new z(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (!this.f21689g) {
            defaultDrmSession = this.f21702t;
        } else {
            Iterator<DefaultDrmSession> it = this.f21696n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DefaultDrmSession next = it.next();
                if (z0.c(next.f21655f, list)) {
                    defaultDrmSession = next;
                    break;
                }
            }
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = w(list, false, aVar, z9);
            if (!this.f21689g) {
                this.f21702t = defaultDrmSession;
            }
            this.f21696n.add(defaultDrmSession);
        } else {
            defaultDrmSession.f(aVar);
        }
        return defaultDrmSession;
    }

    private static boolean t(DrmSession drmSession) {
        return drmSession.getState() == 1 && (z0.f27743a < 19 || (((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.g(drmSession.e())).getCause() instanceof ResourceBusyException));
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f21706x != null) {
            return true;
        }
        if (x(drmInitData, this.f21685c, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(com.google.android.exoplayer2.i.J1)) {
                return false;
            }
            String valueOf = String.valueOf(this.f21685c);
            StringBuilder sb = new StringBuilder(valueOf.length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            com.google.android.exoplayer2.util.w.n(G, sb.toString());
        }
        String str = drmInitData.schemeType;
        if (str == null || com.google.android.exoplayer2.i.E1.equals(str)) {
            return true;
        }
        return com.google.android.exoplayer2.i.H1.equals(str) ? z0.f27743a >= 25 : (com.google.android.exoplayer2.i.F1.equals(str) || com.google.android.exoplayer2.i.G1.equals(str)) ? false : true;
    }

    private DefaultDrmSession v(@Nullable List<DrmInitData.SchemeData> list, boolean z9, @Nullable s.a aVar) {
        com.google.android.exoplayer2.util.a.g(this.f21700r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f21685c, this.f21700r, this.f21692j, this.f21694l, list, this.f21705w, this.f21691i | z9, z9, this.f21706x, this.f21688f, this.f21687e, (Looper) com.google.android.exoplayer2.util.a.g(this.f21703u), this.f21693k);
        defaultDrmSession.f(aVar);
        if (this.f21695m != com.google.android.exoplayer2.i.f23649b) {
            defaultDrmSession.f(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(@Nullable List<DrmInitData.SchemeData> list, boolean z9, @Nullable s.a aVar, boolean z10) {
        DefaultDrmSession v9 = v(list, z9, aVar);
        if (t(v9) && !this.f21698p.isEmpty()) {
            k5 it = ImmutableSet.copyOf((Collection) this.f21698p).iterator();
            while (it.hasNext()) {
                ((DrmSession) it.next()).g(null);
            }
            E(v9, aVar);
            v9 = v(list, z9, aVar);
        }
        if (t(v9) && z10 && !this.f21697o.isEmpty()) {
            C();
            E(v9, aVar);
            return v(list, z9, aVar);
        }
        return v9;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z9) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i4 = 0; i4 < drmInitData.schemeDataCount; i4++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i4);
            if ((schemeData.matches(uuid) || (com.google.android.exoplayer2.i.K1.equals(uuid) && schemeData.matches(com.google.android.exoplayer2.i.J1))) && (schemeData.data != null || z9)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @EnsuresNonNull({"this.playbackLooper", "this.playbackHandler"})
    private synchronized void y(Looper looper) {
        Looper looper2 = this.f21703u;
        if (looper2 == null) {
            this.f21703u = looper;
            this.f21704v = new Handler(looper);
        } else {
            com.google.android.exoplayer2.util.a.i(looper2 == looper);
            com.google.android.exoplayer2.util.a.g(this.f21704v);
        }
    }

    @Nullable
    private DrmSession z(int i4, boolean z9) {
        b0 b0Var = (b0) com.google.android.exoplayer2.util.a.g(this.f21700r);
        if ((c0.class.equals(b0Var.a()) && c0.f21753d) || z0.I0(this.f21690h, i4) == -1 || m0.class.equals(b0Var.a())) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f21701s;
        if (defaultDrmSession == null) {
            DefaultDrmSession w9 = w(ImmutableList.of(), true, null, z9);
            this.f21696n.add(w9);
            this.f21701s = w9;
        } else {
            defaultDrmSession.f(null);
        }
        return this.f21701s;
    }

    public void D(int i4, @Nullable byte[] bArr) {
        com.google.android.exoplayer2.util.a.i(this.f21696n.isEmpty());
        if (i4 == 1 || i4 == 3) {
            com.google.android.exoplayer2.util.a.g(bArr);
        }
        this.f21705w = i4;
        this.f21706x = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void a() {
        int i4 = this.f21699q;
        this.f21699q = i4 + 1;
        if (i4 != 0) {
            return;
        }
        if (this.f21700r == null) {
            b0 a10 = this.f21686d.a(this.f21685c);
            this.f21700r = a10;
            a10.i(new c());
        } else if (this.f21695m != com.google.android.exoplayer2.i.f23649b) {
            for (int i10 = 0; i10 < this.f21696n.size(); i10++) {
                this.f21696n.get(i10).f(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.u
    @Nullable
    public DrmSession b(Looper looper, @Nullable s.a aVar, Format format) {
        com.google.android.exoplayer2.util.a.i(this.f21699q > 0);
        y(looper);
        return s(looper, aVar, format, true);
    }

    @Override // com.google.android.exoplayer2.drm.u
    public u.b c(Looper looper, @Nullable s.a aVar, Format format) {
        com.google.android.exoplayer2.util.a.i(this.f21699q > 0);
        y(looper);
        f fVar = new f(aVar);
        fVar.c(format);
        return fVar;
    }

    @Override // com.google.android.exoplayer2.drm.u
    @Nullable
    public Class<? extends a0> d(Format format) {
        Class<? extends a0> a10 = ((b0) com.google.android.exoplayer2.util.a.g(this.f21700r)).a();
        DrmInitData drmInitData = format.drmInitData;
        if (drmInitData != null) {
            return u(drmInitData) ? a10 : m0.class;
        }
        if (z0.I0(this.f21690h, com.google.android.exoplayer2.util.a0.l(format.sampleMimeType)) != -1) {
            return a10;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void release() {
        int i4 = this.f21699q - 1;
        this.f21699q = i4;
        if (i4 != 0) {
            return;
        }
        if (this.f21695m != com.google.android.exoplayer2.i.f23649b) {
            ArrayList arrayList = new ArrayList(this.f21696n);
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                ((DefaultDrmSession) arrayList.get(i10)).g(null);
            }
        }
        C();
        B();
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, b0 b0Var, k0 k0Var, @Nullable HashMap<String, String> hashMap) {
        this(uuid, b0Var, k0Var, hashMap == null ? new HashMap<>() : hashMap, false, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, b0 b0Var, k0 k0Var, @Nullable HashMap<String, String> hashMap, boolean z9) {
        this(uuid, b0Var, k0Var, hashMap == null ? new HashMap<>() : hashMap, z9, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, b0 b0Var, k0 k0Var, @Nullable HashMap<String, String> hashMap, boolean z9, int i4) {
        this(uuid, new b0.a(b0Var), k0Var, hashMap == null ? new HashMap<>() : hashMap, z9, new int[0], false, new com.google.android.exoplayer2.upstream.w(i4), 300000L);
    }

    private DefaultDrmSessionManager(UUID uuid, b0.g gVar, k0 k0Var, HashMap<String, String> hashMap, boolean z9, int[] iArr, boolean z10, com.google.android.exoplayer2.upstream.f0 f0Var, long j4) {
        com.google.android.exoplayer2.util.a.g(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.J1.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f21685c = uuid;
        this.f21686d = gVar;
        this.f21687e = k0Var;
        this.f21688f = hashMap;
        this.f21689g = z9;
        this.f21690h = iArr;
        this.f21691i = z10;
        this.f21693k = f0Var;
        this.f21692j = new g(this);
        this.f21694l = new h();
        this.f21705w = 0;
        this.f21696n = new ArrayList();
        this.f21697o = o4.z();
        this.f21698p = o4.z();
        this.f21695m = j4;
    }
}
