package com.google.android.exoplayer2.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;

/* compiled from: VideoFrameReleaseHelper.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: q  reason: collision with root package name */
    private static final String f27948q = "VideoFrameReleaseHelper";

    /* renamed from: r  reason: collision with root package name */
    private static final long f27949r = 5000000000L;

    /* renamed from: s  reason: collision with root package name */
    private static final float f27950s = 0.02f;

    /* renamed from: t  reason: collision with root package name */
    private static final float f27951t = 1.0f;

    /* renamed from: u  reason: collision with root package name */
    private static final int f27952u = 30;

    /* renamed from: v  reason: collision with root package name */
    private static final long f27953v = 500;

    /* renamed from: w  reason: collision with root package name */
    private static final long f27954w = 20000000;

    /* renamed from: x  reason: collision with root package name */
    private static final long f27955x = 80;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.video.d f27956a = new com.google.android.exoplayer2.video.d();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final a f27957b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final d f27958c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27959d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Surface f27960e;

    /* renamed from: f  reason: collision with root package name */
    private float f27961f;

    /* renamed from: g  reason: collision with root package name */
    private float f27962g;

    /* renamed from: h  reason: collision with root package name */
    private float f27963h;

    /* renamed from: i  reason: collision with root package name */
    private float f27964i;

    /* renamed from: j  reason: collision with root package name */
    private long f27965j;

    /* renamed from: k  reason: collision with root package name */
    private long f27966k;

    /* renamed from: l  reason: collision with root package name */
    private long f27967l;

    /* renamed from: m  reason: collision with root package name */
    private long f27968m;

    /* renamed from: n  reason: collision with root package name */
    private long f27969n;

    /* renamed from: o  reason: collision with root package name */
    private long f27970o;

    /* renamed from: p  reason: collision with root package name */
    private long f27971p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes2.dex */
    public interface a {

        /* compiled from: VideoFrameReleaseHelper.java */
        /* renamed from: com.google.android.exoplayer2.video.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0190a {
            void a(@Nullable Display display);
        }

        void a();

        void b(InterfaceC0190a interfaceC0190a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes2.dex */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f27972a;

        private b(WindowManager windowManager) {
            this.f27972a = windowManager;
        }

        @Nullable
        public static a c(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new b(windowManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.l.a
        public void a() {
        }

        @Override // com.google.android.exoplayer2.video.l.a
        public void b(a.InterfaceC0190a interfaceC0190a) {
            interfaceC0190a.a(this.f27972a.getDefaultDisplay());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoFrameReleaseHelper.java */
    @RequiresApi(17)
    /* loaded from: classes2.dex */
    public static final class c implements a, DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f27973a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private a.InterfaceC0190a f27974b;

        private c(DisplayManager displayManager) {
            this.f27973a = displayManager;
        }

        private Display c() {
            return this.f27973a.getDisplay(0);
        }

        @Nullable
        public static a d(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new c(displayManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.l.a
        public void a() {
            this.f27973a.unregisterDisplayListener(this);
            this.f27974b = null;
        }

        @Override // com.google.android.exoplayer2.video.l.a
        public void b(a.InterfaceC0190a interfaceC0190a) {
            this.f27974b = interfaceC0190a;
            this.f27973a.registerDisplayListener(this, z0.z());
            interfaceC0190a.a(c());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i4) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i4) {
            a.InterfaceC0190a interfaceC0190a = this.f27974b;
            if (interfaceC0190a == null || i4 != 0) {
                return;
            }
            interfaceC0190a.a(c());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i4) {
        }
    }

    /* compiled from: VideoFrameReleaseHelper.java */
    /* loaded from: classes2.dex */
    private static final class d implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final int f27975f = 0;

        /* renamed from: g  reason: collision with root package name */
        private static final int f27976g = 1;

        /* renamed from: h  reason: collision with root package name */
        private static final int f27977h = 2;

        /* renamed from: i  reason: collision with root package name */
        private static final d f27978i = new d();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f27979a = com.google.android.exoplayer2.i.f23649b;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f27980b;

        /* renamed from: c  reason: collision with root package name */
        private final HandlerThread f27981c;

        /* renamed from: d  reason: collision with root package name */
        private Choreographer f27982d;

        /* renamed from: e  reason: collision with root package name */
        private int f27983e;

        private d() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f27981c = handlerThread;
            handlerThread.start();
            Handler y9 = z0.y(handlerThread.getLooper(), this);
            this.f27980b = y9;
            y9.sendEmptyMessage(0);
        }

        private void b() {
            int i4 = this.f27983e + 1;
            this.f27983e = i4;
            if (i4 == 1) {
                ((Choreographer) com.google.android.exoplayer2.util.a.g(this.f27982d)).postFrameCallback(this);
            }
        }

        private void c() {
            this.f27982d = Choreographer.getInstance();
        }

        public static d d() {
            return f27978i;
        }

        private void f() {
            int i4 = this.f27983e - 1;
            this.f27983e = i4;
            if (i4 == 0) {
                ((Choreographer) com.google.android.exoplayer2.util.a.g(this.f27982d)).removeFrameCallback(this);
                this.f27979a = com.google.android.exoplayer2.i.f23649b;
            }
        }

        public void a() {
            this.f27980b.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j4) {
            this.f27979a = j4;
            ((Choreographer) com.google.android.exoplayer2.util.a.g(this.f27982d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f27980b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i4 = message.what;
            if (i4 == 0) {
                c();
                return true;
            } else if (i4 == 1) {
                b();
                return true;
            } else if (i4 != 2) {
                return false;
            } else {
                f();
                return true;
            }
        }
    }

    public l(@Nullable Context context) {
        a f10 = f(context);
        this.f27957b = f10;
        this.f27958c = f10 != null ? d.d() : null;
        this.f27965j = com.google.android.exoplayer2.i.f23649b;
        this.f27966k = com.google.android.exoplayer2.i.f23649b;
        this.f27961f = -1.0f;
        this.f27964i = 1.0f;
    }

    private static boolean c(long j4, long j10) {
        return Math.abs(j4 - j10) <= f27954w;
    }

    private void d() {
        Surface surface;
        if (z0.f27743a < 30 || (surface = this.f27960e) == null || this.f27963h == 0.0f) {
            return;
        }
        this.f27963h = 0.0f;
        q(surface, 0.0f);
    }

    private static long e(long j4, long j10, long j11) {
        long j12;
        long j13 = j10 + (((j4 - j10) / j11) * j11);
        if (j4 <= j13) {
            j12 = j13 - j11;
        } else {
            j13 = j11 + j13;
            j12 = j13;
        }
        return j13 - j4 < j4 - j12 ? j13 : j12;
    }

    @Nullable
    private static a f(@Nullable Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            a d4 = z0.f27743a >= 17 ? c.d(applicationContext) : null;
            return d4 == null ? b.c(applicationContext) : d4;
        }
        return null;
    }

    private void p() {
        this.f27967l = 0L;
        this.f27970o = -1L;
        this.f27968m = -1L;
    }

    @RequiresApi(30)
    private static void q(Surface surface, float f10) {
        try {
            surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
        } catch (IllegalStateException e4) {
            com.google.android.exoplayer2.util.w.e(f27948q, "Failed to call Surface.setFrameRate", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f27965j = refreshRate;
            this.f27966k = (refreshRate * f27955x) / 100;
            return;
        }
        com.google.android.exoplayer2.util.w.n(f27948q, "Unable to query display refresh rate");
        this.f27965j = com.google.android.exoplayer2.i.f23649b;
        this.f27966k = com.google.android.exoplayer2.i.f23649b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005c, code lost:
        if (java.lang.Math.abs(r0 - r8.f27962g) >= (r8.f27956a.e() && (r8.f27956a.d() > com.google.android.exoplayer2.video.l.f27949r ? 1 : (r8.f27956a.d() == com.google.android.exoplayer2.video.l.f27949r ? 0 : -1)) >= 0 ? com.google.android.exoplayer2.video.l.f27950s : 1.0f)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
        if (r8.f27956a.c() >= 30) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void s() {
        /*
            r8 = this;
            int r0 = com.google.android.exoplayer2.util.z0.f27743a
            r1 = 30
            if (r0 < r1) goto L73
            android.view.Surface r0 = r8.f27960e
            if (r0 != 0) goto Lc
            goto L73
        Lc:
            com.google.android.exoplayer2.video.d r0 = r8.f27956a
            boolean r0 = r0.e()
            if (r0 == 0) goto L1b
            com.google.android.exoplayer2.video.d r0 = r8.f27956a
            float r0 = r0.b()
            goto L1d
        L1b:
            float r0 = r8.f27961f
        L1d:
            float r2 = r8.f27962g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 0
            r5 = 1
            int r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r6 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            com.google.android.exoplayer2.video.d r1 = r8.f27956a
            boolean r1 = r1.e()
            if (r1 == 0) goto L49
            com.google.android.exoplayer2.video.d r1 = r8.f27956a
            long r1 = r1.d()
            r6 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 < 0) goto L49
            r1 = 1
            goto L4a
        L49:
            r1 = 0
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r8.f27962g
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6c
        L5f:
            r5 = 0
            goto L6c
        L61:
            if (r6 == 0) goto L64
            goto L6c
        L64:
            com.google.android.exoplayer2.video.d r2 = r8.f27956a
            int r2 = r2.c()
            if (r2 < r1) goto L5f
        L6c:
            if (r5 == 0) goto L73
            r8.f27962g = r0
            r8.t(r4)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.l.s():void");
    }

    private void t(boolean z9) {
        Surface surface;
        if (z0.f27743a < 30 || (surface = this.f27960e) == null) {
            return;
        }
        float f10 = 0.0f;
        if (this.f27959d) {
            float f11 = this.f27962g;
            if (f11 != -1.0f) {
                f10 = this.f27964i * f11;
            }
        }
        if (z9 || this.f27963h != f10) {
            this.f27963h = f10;
            q(surface, f10);
        }
    }

    public long b(long j4) {
        long j10;
        d dVar;
        if (this.f27970o != -1 && this.f27956a.e()) {
            long a10 = this.f27971p + (((float) (this.f27956a.a() * (this.f27967l - this.f27970o))) / this.f27964i);
            if (!c(j4, a10)) {
                p();
            } else {
                j10 = a10;
                this.f27968m = this.f27967l;
                this.f27969n = j10;
                dVar = this.f27958c;
                if (dVar != null || this.f27965j == com.google.android.exoplayer2.i.f23649b) {
                    return j10;
                }
                long j11 = dVar.f27979a;
                return j11 == com.google.android.exoplayer2.i.f23649b ? j10 : e(j10, j11, this.f27965j) - this.f27966k;
            }
        }
        j10 = j4;
        this.f27968m = this.f27967l;
        this.f27969n = j10;
        dVar = this.f27958c;
        if (dVar != null) {
        }
        return j10;
    }

    public void g() {
        a aVar = this.f27957b;
        if (aVar != null) {
            aVar.a();
            ((d) com.google.android.exoplayer2.util.a.g(this.f27958c)).e();
        }
    }

    public void h() {
        if (this.f27957b != null) {
            ((d) com.google.android.exoplayer2.util.a.g(this.f27958c)).a();
            this.f27957b.b(new a.InterfaceC0190a() { // from class: com.google.android.exoplayer2.video.k
                @Override // com.google.android.exoplayer2.video.l.a.InterfaceC0190a
                public final void a(Display display) {
                    l.this.r(display);
                }
            });
        }
    }

    public void i(float f10) {
        this.f27961f = f10;
        this.f27956a.g();
        s();
    }

    public void j(long j4) {
        long j10 = this.f27968m;
        if (j10 != -1) {
            this.f27970o = j10;
            this.f27971p = this.f27969n;
        }
        this.f27967l++;
        this.f27956a.f(j4 * 1000);
        s();
    }

    public void k(float f10) {
        this.f27964i = f10;
        p();
        t(false);
    }

    public void l() {
        p();
    }

    public void m() {
        this.f27959d = true;
        p();
        t(false);
    }

    public void n() {
        this.f27959d = false;
        d();
    }

    public void o(@Nullable Surface surface) {
        if (surface instanceof DummySurface) {
            surface = null;
        }
        if (this.f27960e == surface) {
            return;
        }
        d();
        this.f27960e = surface;
        t(true);
    }
}
