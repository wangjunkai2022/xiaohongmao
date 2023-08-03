package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.upstream.f0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(18)
/* loaded from: classes2.dex */
public class DefaultDrmSession implements DrmSession {
    private static final String C = "DefaultDrmSession";
    private static final int D = 0;
    private static final int E = 1;
    private static final int F = 60;
    @Nullable
    private b0.b A;
    @Nullable
    private b0.h B;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f21655f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f21656g;

    /* renamed from: h  reason: collision with root package name */
    private final a f21657h;

    /* renamed from: i  reason: collision with root package name */
    private final b f21658i;

    /* renamed from: j  reason: collision with root package name */
    private final int f21659j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f21660k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f21661l;

    /* renamed from: m  reason: collision with root package name */
    private final HashMap<String, String> f21662m;

    /* renamed from: n  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i<s.a> f21663n;

    /* renamed from: o  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.f0 f21664o;

    /* renamed from: p  reason: collision with root package name */
    final k0 f21665p;

    /* renamed from: q  reason: collision with root package name */
    final UUID f21666q;

    /* renamed from: r  reason: collision with root package name */
    final e f21667r;

    /* renamed from: s  reason: collision with root package name */
    private int f21668s;

    /* renamed from: t  reason: collision with root package name */
    private int f21669t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private HandlerThread f21670u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private c f21671v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private a0 f21672w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private DrmSession.DrmSessionException f21673x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private byte[] f21674y;

    /* renamed from: z  reason: collision with root package name */
    private byte[] f21675z;

    /* loaded from: classes2.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(DefaultDrmSession defaultDrmSession);

        void b();

        void c(Exception exc);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i4);

        void b(DefaultDrmSession defaultDrmSession, int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public class c extends Handler {
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private boolean f21676a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            IOException unexpectedDrmSessionException;
            d dVar = (d) message.obj;
            if (dVar.f21679b) {
                int i4 = dVar.f21682e + 1;
                dVar.f21682e = i4;
                if (i4 > DefaultDrmSession.this.f21664o.d(3)) {
                    return false;
                }
                com.google.android.exoplayer2.source.o oVar = new com.google.android.exoplayer2.source.o(dVar.f21678a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f21680c, mediaDrmCallbackException.bytesLoaded);
                com.google.android.exoplayer2.source.s sVar = new com.google.android.exoplayer2.source.s(3);
                if (mediaDrmCallbackException.getCause() instanceof IOException) {
                    unexpectedDrmSessionException = (IOException) mediaDrmCallbackException.getCause();
                } else {
                    unexpectedDrmSessionException = new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause());
                }
                long a10 = DefaultDrmSession.this.f21664o.a(new f0.a(oVar, sVar, unexpectedDrmSessionException, dVar.f21682e));
                if (a10 == com.google.android.exoplayer2.i.f23649b) {
                    return false;
                }
                synchronized (this) {
                    if (this.f21676a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), a10);
                    return true;
                }
            }
            return false;
        }

        void b(int i4, Object obj, boolean z9) {
            obtainMessage(i4, new d(com.google.android.exoplayer2.source.o.a(), z9, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f21676a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i4 = message.what;
                if (i4 == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    bArr = defaultDrmSession.f21665p.a(defaultDrmSession.f21666q, (b0.h) dVar.f21681d);
                } else if (i4 == 1) {
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    bArr = defaultDrmSession2.f21665p.b(defaultDrmSession2.f21666q, (b0.b) dVar.f21681d);
                } else {
                    throw new RuntimeException();
                }
            } catch (MediaDrmCallbackException e4) {
                boolean a10 = a(message, e4);
                bArr = e4;
                if (a10) {
                    return;
                }
            } catch (Exception e10) {
                com.google.android.exoplayer2.util.w.o(DefaultDrmSession.C, "Key/provisioning request produced an unexpected exception. Not retrying.", e10);
                bArr = e10;
            }
            DefaultDrmSession.this.f21664o.f(dVar.f21678a);
            synchronized (this) {
                if (!this.f21676a) {
                    DefaultDrmSession.this.f21667r.obtainMessage(message.what, Pair.create(dVar.f21681d, bArr)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f21678a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21679b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21680c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f21681d;

        /* renamed from: e  reason: collision with root package name */
        public int f21682e;

        public d(long j4, boolean z9, long j10, Object obj) {
            this.f21678a = j4;
            this.f21679b = z9;
            this.f21680c = j10;
            this.f21681d = obj;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i4 = message.what;
            if (i4 == 0) {
                DefaultDrmSession.this.B(obj, obj2);
            } else if (i4 != 1) {
            } else {
                DefaultDrmSession.this.v(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, b0 b0Var, a aVar, b bVar, @Nullable List<DrmInitData.SchemeData> list, int i4, boolean z9, boolean z10, @Nullable byte[] bArr, HashMap<String, String> hashMap, k0 k0Var, Looper looper, com.google.android.exoplayer2.upstream.f0 f0Var) {
        if (i4 == 1 || i4 == 3) {
            com.google.android.exoplayer2.util.a.g(bArr);
        }
        this.f21666q = uuid;
        this.f21657h = aVar;
        this.f21658i = bVar;
        this.f21656g = b0Var;
        this.f21659j = i4;
        this.f21660k = z9;
        this.f21661l = z10;
        if (bArr != null) {
            this.f21675z = bArr;
            this.f21655f = null;
        } else {
            this.f21655f = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.g(list));
        }
        this.f21662m = hashMap;
        this.f21665p = k0Var;
        this.f21663n = new com.google.android.exoplayer2.util.i<>();
        this.f21664o = f0Var;
        this.f21668s = 2;
        this.f21667r = new e(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Object obj, Object obj2) {
        if (obj == this.B) {
            if (this.f21668s == 2 || r()) {
                this.B = null;
                if (obj2 instanceof Exception) {
                    this.f21657h.c((Exception) obj2);
                    return;
                }
                try {
                    this.f21656g.k((byte[]) obj2);
                    this.f21657h.b();
                } catch (Exception e4) {
                    this.f21657h.c(e4);
                }
            }
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean C() {
        if (r()) {
            return true;
        }
        try {
            byte[] f10 = this.f21656g.f();
            this.f21674y = f10;
            this.f21672w = this.f21656g.c(f10);
            this.f21668s = 3;
            n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.b
                @Override // com.google.android.exoplayer2.util.h
                public final void accept(Object obj) {
                    ((s.a) obj).k(r1);
                }
            });
            com.google.android.exoplayer2.util.a.g(this.f21674y);
            return true;
        } catch (NotProvisionedException unused) {
            this.f21657h.a(this);
            return false;
        } catch (Exception e4) {
            u(e4);
            return false;
        }
    }

    private void D(byte[] bArr, int i4, boolean z9) {
        try {
            this.A = this.f21656g.q(bArr, this.f21655f, i4, this.f21662m);
            ((c) z0.k(this.f21671v)).b(1, com.google.android.exoplayer2.util.a.g(this.A), z9);
        } catch (Exception e4) {
            w(e4);
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    private boolean F() {
        try {
            this.f21656g.g(this.f21674y, this.f21675z);
            return true;
        } catch (Exception e4) {
            u(e4);
            return false;
        }
    }

    private void n(com.google.android.exoplayer2.util.h<s.a> hVar) {
        for (s.a aVar : this.f21663n.elementSet()) {
            hVar.accept(aVar);
        }
    }

    @RequiresNonNull({"sessionId"})
    private void o(boolean z9) {
        if (this.f21661l) {
            return;
        }
        byte[] bArr = (byte[]) z0.k(this.f21674y);
        int i4 = this.f21659j;
        if (i4 != 0 && i4 != 1) {
            if (i4 == 2) {
                if (this.f21675z == null || F()) {
                    D(bArr, 2, z9);
                }
            } else if (i4 != 3) {
            } else {
                com.google.android.exoplayer2.util.a.g(this.f21675z);
                com.google.android.exoplayer2.util.a.g(this.f21674y);
                D(this.f21675z, 3, z9);
            }
        } else if (this.f21675z == null) {
            D(bArr, 1, z9);
        } else if (this.f21668s == 4 || F()) {
            long p9 = p();
            if (this.f21659j != 0 || p9 > 60) {
                if (p9 <= 0) {
                    u(new KeysExpiredException());
                    return;
                }
                this.f21668s = 4;
                n(f.f21763a);
                return;
            }
            StringBuilder sb = new StringBuilder(88);
            sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
            sb.append(p9);
            com.google.android.exoplayer2.util.w.b(C, sb.toString());
            D(bArr, 2, z9);
        }
    }

    private long p() {
        if (com.google.android.exoplayer2.i.L1.equals(this.f21666q)) {
            Pair pair = (Pair) com.google.android.exoplayer2.util.a.g(n0.b(this));
            return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
        }
        return Long.MAX_VALUE;
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean r() {
        int i4 = this.f21668s;
        return i4 == 3 || i4 == 4;
    }

    private void u(final Exception exc) {
        this.f21673x = new DrmSession.DrmSessionException(exc);
        com.google.android.exoplayer2.util.w.e(C, "DRM session error", exc);
        n(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.drm.c
            @Override // com.google.android.exoplayer2.util.h
            public final void accept(Object obj) {
                ((s.a) obj).l(exc);
            }
        });
        if (this.f21668s != 4) {
            this.f21668s = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Object obj, Object obj2) {
        if (obj == this.A && r()) {
            this.A = null;
            if (obj2 instanceof Exception) {
                w((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f21659j == 3) {
                    this.f21656g.p((byte[]) z0.k(this.f21675z), bArr);
                    n(com.google.android.exoplayer2.drm.e.f21760a);
                    return;
                }
                byte[] p9 = this.f21656g.p(this.f21674y, bArr);
                int i4 = this.f21659j;
                if ((i4 == 2 || (i4 == 0 && this.f21675z != null)) && p9 != null && p9.length != 0) {
                    this.f21675z = p9;
                }
                this.f21668s = 4;
                n(com.google.android.exoplayer2.drm.d.f21757a);
            } catch (Exception e4) {
                w(e4);
            }
        }
    }

    private void w(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f21657h.a(this);
        } else {
            u(exc);
        }
    }

    private void x() {
        if (this.f21659j == 0 && this.f21668s == 4) {
            z0.k(this.f21674y);
            o(false);
        }
    }

    public void A(Exception exc) {
        u(exc);
    }

    public void E() {
        this.B = this.f21656g.d();
        ((c) z0.k(this.f21671v)).b(0, com.google.android.exoplayer2.util.a.g(this.B), true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException e() {
        if (this.f21668s == 1) {
            return this.f21673x;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void f(@Nullable s.a aVar) {
        com.google.android.exoplayer2.util.a.i(this.f21669t >= 0);
        if (aVar != null) {
            this.f21663n.a(aVar);
        }
        int i4 = this.f21669t + 1;
        this.f21669t = i4;
        if (i4 == 1) {
            com.google.android.exoplayer2.util.a.i(this.f21668s == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f21670u = handlerThread;
            handlerThread.start();
            this.f21671v = new c(this.f21670u.getLooper());
            if (C()) {
                o(true);
            }
        } else if (aVar != null && r() && this.f21663n.count(aVar) == 1) {
            aVar.k(this.f21668s);
        }
        this.f21658i.a(this, this.f21669t);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void g(@Nullable s.a aVar) {
        com.google.android.exoplayer2.util.a.i(this.f21669t > 0);
        int i4 = this.f21669t - 1;
        this.f21669t = i4;
        if (i4 == 0) {
            this.f21668s = 0;
            ((e) z0.k(this.f21667r)).removeCallbacksAndMessages(null);
            ((c) z0.k(this.f21671v)).c();
            this.f21671v = null;
            ((HandlerThread) z0.k(this.f21670u)).quit();
            this.f21670u = null;
            this.f21672w = null;
            this.f21673x = null;
            this.A = null;
            this.B = null;
            byte[] bArr = this.f21674y;
            if (bArr != null) {
                this.f21656g.n(bArr);
                this.f21674y = null;
            }
        }
        if (aVar != null) {
            this.f21663n.b(aVar);
            if (this.f21663n.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f21658i.b(this, this.f21669t);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f21668s;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID h() {
        return this.f21666q;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean i() {
        return this.f21660k;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final a0 j() {
        return this.f21672w;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public byte[] k() {
        return this.f21675z;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> l() {
        byte[] bArr = this.f21674y;
        if (bArr == null) {
            return null;
        }
        return this.f21656g.b(bArr);
    }

    public boolean q(byte[] bArr) {
        return Arrays.equals(this.f21674y, bArr);
    }

    public void y(int i4) {
        if (i4 != 2) {
            return;
        }
        x();
    }

    public void z() {
        if (C()) {
            o(true);
        }
    }
}
