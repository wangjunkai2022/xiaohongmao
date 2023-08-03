package master.flame.danmaku.controller;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Choreographer;
import com.google.android.exoplayer2.k2;
import f8.a;
import java.util.LinkedList;
import master.flame.danmaku.controller.h;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;
import tv.cjump.jni.DeviceUtils;

/* compiled from: DrawHandler.java */
/* loaded from: classes4.dex */
public class c extends Handler {
    public static final int D = 1;
    public static final int E = 2;
    public static final int F = 3;
    public static final int G = 4;
    public static final int H = 5;
    private static final int I = 6;
    private static final int J = 7;
    private static final int K = 8;
    private static final int L = 9;
    private static final int M = 10;
    private static final int N = 11;
    private static final int O = 12;
    private static final int P = 13;
    private static final int Q = 14;
    private static final long R = 10000000;
    private static final int S = 500;
    private boolean A;
    private boolean B;
    private boolean C;

    /* renamed from: a  reason: collision with root package name */
    private DanmakuContext f87063a;

    /* renamed from: b  reason: collision with root package name */
    private e f87064b;

    /* renamed from: c  reason: collision with root package name */
    private long f87065c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f87066d;

    /* renamed from: e  reason: collision with root package name */
    private long f87067e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f87068f;

    /* renamed from: g  reason: collision with root package name */
    private d f87069g;

    /* renamed from: h  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.f f87070h;

    /* renamed from: i  reason: collision with root package name */
    private master.flame.danmaku.danmaku.parser.a f87071i;

    /* renamed from: j  reason: collision with root package name */
    public h f87072j;

    /* renamed from: k  reason: collision with root package name */
    private g f87073k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f87074l;

    /* renamed from: m  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.b f87075m;

    /* renamed from: n  reason: collision with root package name */
    private final a.c f87076n;

    /* renamed from: o  reason: collision with root package name */
    private LinkedList<Long> f87077o;

    /* renamed from: p  reason: collision with root package name */
    private i f87078p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f87079q;

    /* renamed from: r  reason: collision with root package name */
    private long f87080r;

    /* renamed from: s  reason: collision with root package name */
    private long f87081s;

    /* renamed from: t  reason: collision with root package name */
    private long f87082t;

    /* renamed from: u  reason: collision with root package name */
    private long f87083u;

    /* renamed from: v  reason: collision with root package name */
    private long f87084v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f87085w;

    /* renamed from: x  reason: collision with root package name */
    private long f87086x;

    /* renamed from: y  reason: collision with root package name */
    private long f87087y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f87088z;

    /* compiled from: DrawHandler.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f87065c = 0L;
            c.this.f87068f = true;
            if (c.this.f87069g != null) {
                c.this.f87069g.v();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawHandler.java */
    /* loaded from: classes4.dex */
    public class b extends i {
        b(String str) {
            super(str);
        }

        @Override // master.flame.danmaku.controller.i, java.lang.Thread, java.lang.Runnable
        public void run() {
            long b10 = g8.c.b();
            while (!a() && !c.this.f87066d) {
                long b11 = g8.c.b();
                if (c.this.f87082t - (g8.c.b() - b10) > 1 && !c.this.C) {
                    g8.c.a(1L);
                } else {
                    long e02 = c.this.e0(b11);
                    if (e02 < 0 && !c.this.C) {
                        g8.c.a(60 - e02);
                    } else {
                        long a10 = c.this.f87073k.a();
                        if (a10 > c.this.f87081s) {
                            c.this.f87070h.a(a10);
                            c.this.f87077o.clear();
                        }
                        if (!c.this.f87074l) {
                            c.this.j0(c.R);
                        } else if (c.this.f87076n.f67786p && c.this.B) {
                            long j4 = c.this.f87076n.f67785o - c.this.f87070h.f87304a;
                            if (j4 > 500) {
                                c.this.N();
                                c.this.j0(j4 - 10);
                            }
                        }
                    }
                    b10 = b11;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawHandler.java */
    /* renamed from: master.flame.danmaku.controller.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0781c implements h.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f87091a;

        C0781c(Runnable runnable) {
            this.f87091a = runnable;
        }

        @Override // master.flame.danmaku.controller.h.a
        public void a(master.flame.danmaku.danmaku.model.d dVar) {
            if (c.this.f87069g != null) {
                c.this.f87069g.w(dVar);
            }
        }

        @Override // master.flame.danmaku.controller.h.a
        public void b(master.flame.danmaku.danmaku.model.d dVar) {
            if (dVar.y()) {
                return;
            }
            long b10 = dVar.b() - c.this.D();
            if (b10 < c.this.f87063a.A.f87237f && (c.this.A || c.this.f87076n.f67786p)) {
                c.this.N();
            } else if (b10 <= 0 || b10 > c.this.f87063a.A.f87237f) {
            } else {
                c.this.sendEmptyMessageDelayed(11, b10);
            }
        }

        @Override // master.flame.danmaku.controller.h.a
        public void c() {
            c.this.I();
            this.f87091a.run();
        }

        @Override // master.flame.danmaku.controller.h.a
        public void d() {
            if (c.this.f87069g != null) {
                c.this.f87069g.o();
            }
        }

        @Override // master.flame.danmaku.controller.h.a
        public void e() {
            c.this.U();
        }
    }

    /* compiled from: DrawHandler.java */
    /* loaded from: classes4.dex */
    public interface d {
        void o();

        void q(master.flame.danmaku.danmaku.model.f fVar);

        void v();

        void w(master.flame.danmaku.danmaku.model.d dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrawHandler.java */
    @TargetApi(16)
    /* loaded from: classes4.dex */
    public class e implements Choreographer.FrameCallback {
        private e() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j4) {
            c.this.sendEmptyMessage(2);
        }

        /* synthetic */ e(c cVar, a aVar) {
            this();
        }
    }

    public c(Looper looper, g gVar, boolean z9) {
        super(looper);
        this.f87065c = 0L;
        this.f87066d = true;
        this.f87070h = new master.flame.danmaku.danmaku.model.f();
        this.f87074l = true;
        this.f87076n = new a.c();
        this.f87077o = new LinkedList<>();
        this.f87080r = 30L;
        this.f87081s = 60L;
        this.f87082t = 16L;
        this.B = true ^ DeviceUtils.g();
        v(gVar);
        if (z9) {
            d0(null);
        } else {
            H(false);
        }
        this.f87074l = z9;
    }

    private synchronized long B() {
        int size = this.f87077o.size();
        if (size <= 0) {
            return 0L;
        }
        Long peekFirst = this.f87077o.peekFirst();
        Long peekLast = this.f87077o.peekLast();
        if (peekFirst != null && peekLast != null) {
            return (peekLast.longValue() - peekFirst.longValue()) / size;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        long max = Math.max(33L, ((float) 16) * 2.5f);
        this.f87080r = max;
        this.f87081s = ((float) max) * 2.5f;
        long max2 = Math.max(16L, 15L);
        this.f87082t = max2;
        this.f87083u = max2 + 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.A) {
            h hVar = this.f87072j;
            if (hVar != null) {
                hVar.h();
            }
            if (this.f87079q) {
                synchronized (this) {
                    this.f87077o.clear();
                }
                synchronized (this.f87072j) {
                    this.f87072j.notifyAll();
                }
            } else {
                this.f87077o.clear();
                removeMessages(2);
                sendEmptyMessage(2);
            }
            this.A = false;
        }
    }

    private void Q(Runnable runnable) {
        if (this.f87072j == null) {
            this.f87072j = x(this.f87073k.f(), this.f87070h, this.f87073k.getContext(), this.f87073k.getViewWidth(), this.f87073k.getViewHeight(), this.f87073k.isHardwareAccelerated(), new C0781c(runnable));
        } else {
            runnable.run();
        }
    }

    private synchronized void S() {
        i iVar = this.f87078p;
        this.f87078p = null;
        if (iVar != null) {
            synchronized (this.f87072j) {
                this.f87072j.notifyAll();
            }
            iVar.b();
            try {
                iVar.join(k2.f23783i1);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    private synchronized void T() {
        this.f87077o.addLast(Long.valueOf(g8.c.b()));
        if (this.f87077o.size() > 500) {
            this.f87077o.removeFirst();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        if (this.f87066d && this.f87074l) {
            removeMessages(12);
            sendEmptyMessageDelayed(12, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long e0(long j4) {
        long j10 = 0;
        if (!this.f87085w && !this.f87088z) {
            this.f87088z = true;
            long j11 = j4 - this.f87067e;
            if (this.C) {
                d dVar = this.f87069g;
                if (dVar != null) {
                    dVar.q(this.f87070h);
                    j10 = this.f87070h.b();
                }
            } else if (this.f87074l && !this.f87076n.f67786p && !this.A) {
                long j12 = j11 - this.f87070h.f87304a;
                long max = Math.max(this.f87082t, B());
                if (j12 <= k2.f23783i1) {
                    long j13 = this.f87076n.f67783m;
                    long j14 = this.f87080r;
                    if (j13 <= j14 && max <= j14) {
                        long j15 = this.f87082t;
                        long min = Math.min(this.f87080r, Math.max(j15, max + (j12 / j15)));
                        long j16 = this.f87084v;
                        long j17 = min - j16;
                        if (j17 > 3 && j17 < 8 && j16 >= this.f87082t && j16 <= this.f87080r) {
                            min = j16;
                        }
                        long j18 = j12 - min;
                        this.f87084v = min;
                        j12 = min;
                        j10 = j18;
                    }
                }
                this.f87087y = j10;
                this.f87070h.a(j12);
                d dVar2 = this.f87069g;
                if (dVar2 != null) {
                    dVar2.q(this.f87070h);
                }
                j10 = j12;
            } else {
                this.f87070h.c(j11);
                this.f87087y = 0L;
                d dVar3 = this.f87069g;
                if (dVar3 != null) {
                    dVar3.q(this.f87070h);
                }
            }
            this.f87088z = false;
        }
        return j10;
    }

    private void f0() {
        if (this.A) {
            e0(g8.c.b());
        }
    }

    @TargetApi(16)
    private void g0() {
        if (this.f87066d) {
            return;
        }
        Choreographer.getInstance().postFrameCallback(this.f87064b);
        if (e0(g8.c.b()) < 0) {
            removeMessages(2);
            return;
        }
        long a10 = this.f87073k.a();
        removeMessages(2);
        if (a10 > this.f87081s) {
            this.f87070h.a(a10);
            this.f87077o.clear();
        }
        if (!this.f87074l) {
            j0(R);
            return;
        }
        a.c cVar = this.f87076n;
        if (cVar.f67786p && this.B) {
            long j4 = cVar.f67785o - this.f87070h.f87304a;
            if (j4 > 500) {
                j0(j4 - 10);
            }
        }
    }

    private void h0() {
        if (this.f87066d) {
            return;
        }
        long e02 = e0(g8.c.b());
        if (e02 < 0 && !this.C) {
            removeMessages(2);
            sendEmptyMessageDelayed(2, 60 - e02);
            return;
        }
        long a10 = this.f87073k.a();
        removeMessages(2);
        if (a10 > this.f87081s) {
            this.f87070h.a(a10);
            this.f87077o.clear();
        }
        if (!this.f87074l) {
            j0(R);
            return;
        }
        a.c cVar = this.f87076n;
        if (cVar.f67786p && this.B) {
            long j4 = cVar.f67785o - this.f87070h.f87304a;
            if (j4 > 500) {
                j0(j4 - 10);
                return;
            }
        }
        long j10 = this.f87082t;
        if (a10 < j10) {
            sendEmptyMessageDelayed(2, j10 - a10);
        } else {
            sendEmptyMessage(2);
        }
    }

    private void i0() {
        if (this.f87078p != null) {
            return;
        }
        b bVar = new b("DFM Update");
        this.f87078p = bVar;
        bVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(long j4) {
        if (L() || !K() || this.f87085w) {
            return;
        }
        this.f87076n.f67787q = g8.c.b();
        this.A = true;
        if (!this.f87079q) {
            if (j4 == R) {
                removeMessages(11);
                removeMessages(2);
                return;
            }
            removeMessages(11);
            removeMessages(2);
            sendEmptyMessageDelayed(11, j4);
        } else if (this.f87078p == null) {
        } else {
            try {
                synchronized (this.f87072j) {
                    if (j4 == R) {
                        this.f87072j.wait();
                    } else {
                        this.f87072j.wait(j4);
                    }
                    sendEmptyMessage(11);
                }
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    private void v(g gVar) {
        this.f87073k = gVar;
    }

    private h x(boolean z9, master.flame.danmaku.danmaku.model.f fVar, Context context, int i4, int i10, boolean z10, h.a aVar) {
        master.flame.danmaku.danmaku.model.b h4 = this.f87063a.h();
        this.f87075m = h4;
        h4.h(i4, i10);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f87075m.d(displayMetrics.density, displayMetrics.densityDpi, displayMetrics.scaledDensity);
        this.f87075m.a(this.f87063a.f87143c);
        this.f87075m.q(z10);
        h aVar2 = z9 ? new master.flame.danmaku.controller.a(fVar, this.f87063a, aVar) : new master.flame.danmaku.controller.e(fVar, this.f87063a, aVar);
        aVar2.j(this.f87071i);
        aVar2.a();
        obtainMessage(10, Boolean.FALSE).sendToTarget();
        return aVar2;
    }

    public void A() {
        removeMessages(14);
        obtainMessage(14).sendToTarget();
    }

    public DanmakuContext C() {
        return this.f87063a;
    }

    public long D() {
        long j4;
        long j10;
        if (this.f87068f) {
            if (this.f87085w) {
                return this.f87086x;
            }
            if (!this.f87066d && this.A) {
                j4 = g8.c.b();
                j10 = this.f87067e;
            } else {
                j4 = this.f87070h.f87304a;
                j10 = this.f87087y;
            }
            return j4 - j10;
        }
        return 0L;
    }

    public m E() {
        h hVar = this.f87072j;
        if (hVar != null) {
            return hVar.g(D());
        }
        return null;
    }

    public n F() {
        return this.f87075m;
    }

    public boolean G() {
        return this.f87074l;
    }

    public long H(boolean z9) {
        if (!this.f87074l) {
            return this.f87070h.f87304a;
        }
        this.f87074l = false;
        removeMessages(8);
        removeMessages(9);
        obtainMessage(9, Boolean.valueOf(z9)).sendToTarget();
        return this.f87070h.f87304a;
    }

    public void J(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        h hVar = this.f87072j;
        if (hVar != null && dVar != null) {
            hVar.c(dVar, z9);
        }
        U();
    }

    public boolean K() {
        return this.f87068f;
    }

    public boolean L() {
        return this.f87066d;
    }

    public void M(int i4, int i10) {
        master.flame.danmaku.danmaku.model.b bVar = this.f87075m;
        if (bVar == null) {
            return;
        }
        if (bVar.getWidth() == i4 && this.f87075m.getHeight() == i10) {
            return;
        }
        this.f87075m.h(i4, i10);
        obtainMessage(10, Boolean.TRUE).sendToTarget();
    }

    public void O() {
        removeMessages(3);
        f0();
        sendEmptyMessage(7);
    }

    public void P() {
        this.f87068f = false;
        if (this.f87063a.D == 0) {
            this.f87064b = new e(this, null);
        }
        this.f87079q = this.f87063a.D == 1;
        sendEmptyMessage(5);
    }

    public void R() {
        this.f87066d = true;
        sendEmptyMessage(6);
    }

    public void V(boolean z9) {
        h hVar = this.f87072j;
        if (hVar != null) {
            hVar.d(z9);
        }
    }

    public void W() {
        h hVar = this.f87072j;
        if (hVar != null) {
            hVar.e();
        }
    }

    public void X() {
        removeMessages(7);
        sendEmptyMessage(3);
    }

    public void Y(Long l10) {
        this.f87085w = true;
        this.f87086x = l10.longValue();
        removeMessages(2);
        removeMessages(3);
        removeMessages(4);
        obtainMessage(4, l10).sendToTarget();
    }

    public void Z(d dVar) {
        this.f87069g = dVar;
    }

    public void a0(DanmakuContext danmakuContext) {
        this.f87063a = danmakuContext;
    }

    public void b0(boolean z9) {
        this.B = z9;
    }

    public void c0(master.flame.danmaku.danmaku.parser.a aVar) {
        this.f87071i = aVar;
        master.flame.danmaku.danmaku.model.f c10 = aVar.c();
        if (c10 != null) {
            this.f87070h = c10;
        }
    }

    public void d0(Long l10) {
        if (this.f87074l) {
            return;
        }
        this.f87074l = true;
        removeMessages(8);
        removeMessages(9);
        obtainMessage(8, l10).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01bf  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleMessage(android.os.Message r12) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.c.handleMessage(android.os.Message):void");
    }

    public void u(master.flame.danmaku.danmaku.model.d dVar) {
        if (this.f87072j != null) {
            dVar.I = this.f87063a.f87165y;
            dVar.I(this.f87070h);
            this.f87072j.b(dVar);
            obtainMessage(11).sendToTarget();
        }
    }

    public void w() {
        obtainMessage(13).sendToTarget();
    }

    public a.c y(Canvas canvas) {
        master.flame.danmaku.danmaku.model.a aVar;
        boolean d4;
        if (this.f87072j == null) {
            return this.f87076n;
        }
        if (!this.A && (aVar = this.f87063a.f87153m) != null && ((d4 = aVar.d()) || !this.f87066d)) {
            int a10 = aVar.a();
            if (a10 == 2) {
                long j4 = this.f87070h.f87304a;
                long c10 = aVar.c();
                long j10 = c10 - j4;
                if (Math.abs(j10) > aVar.b()) {
                    if (d4 && this.f87066d) {
                        X();
                    }
                    this.f87072j.q(j4, c10, j10);
                    this.f87070h.c(c10);
                    this.f87067e -= j10;
                    this.f87087y = 0L;
                }
            } else if (a10 == 1 && d4 && !this.f87066d) {
                O();
            }
        }
        this.f87075m.z(canvas);
        this.f87076n.f(this.f87072j.n(this.f87075m));
        T();
        return this.f87076n;
    }

    public void z(boolean z9) {
        this.C = z9;
    }
}
