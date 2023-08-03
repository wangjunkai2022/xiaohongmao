package master.flame.danmaku.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.e;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.f;
import master.flame.danmaku.danmaku.model.g;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;
import master.flame.danmaku.danmaku.model.r;

/* compiled from: FakeDanmakuView.java */
/* loaded from: classes4.dex */
public class b extends DanmakuView implements c.d {
    private c A;
    private int B;
    private int C;
    private float D;
    private f E;
    private long F;
    private long G;
    private long H;
    private Bitmap I;
    private Canvas J;
    private int K;
    private long L;

    /* renamed from: y  reason: collision with root package name */
    private f f87513y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f87514z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FakeDanmakuView.java */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f87515a;

        a(int i4) {
            this.f87515a = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.L(this.f87515a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FakeDanmakuView.java */
    /* renamed from: master.flame.danmaku.ui.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0788b extends master.flame.danmaku.danmaku.parser.a {

        /* renamed from: k  reason: collision with root package name */
        private final master.flame.danmaku.danmaku.parser.a f87517k;

        /* renamed from: l  reason: collision with root package name */
        private final long f87518l;

        /* renamed from: m  reason: collision with root package name */
        private final long f87519m;

        /* renamed from: n  reason: collision with root package name */
        private float f87520n;

        /* renamed from: o  reason: collision with root package name */
        private float f87521o;

        /* renamed from: p  reason: collision with root package name */
        private int f87522p;

        /* compiled from: FakeDanmakuView.java */
        /* renamed from: master.flame.danmaku.ui.widget.b$b$a */
        /* loaded from: classes4.dex */
        class a extends m.b<d, Object> {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ m f87524e;

            a(m mVar) {
                this.f87524e = mVar;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(d dVar) {
                long k10 = dVar.k();
                if (k10 < C0788b.this.f87518l) {
                    return 0;
                }
                if (k10 > C0788b.this.f87519m) {
                    return 1;
                }
                d f10 = ((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87388i.A.f(dVar.n(), ((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87388i);
                if (f10 != null) {
                    f10.G(dVar.k());
                    g8.a.e(f10, dVar.f87280c);
                    f10.f87289l = dVar.f87289l;
                    f10.f87284g = dVar.f87284g;
                    f10.f87287j = dVar.f87287j;
                    if (dVar instanceof r) {
                        r rVar = (r) dVar;
                        f10.f87296s = dVar.f87296s;
                        f10.f87295r = new g(rVar.f());
                        f10.f87285h = rVar.f87359p0;
                        f10.f87286i = rVar.f87286i;
                        ((r) f10).f87353j0 = rVar.f87353j0;
                        ((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87388i.A.i(f10, rVar.X, rVar.Y, rVar.Z, rVar.f87344a0, rVar.f87347d0, rVar.f87348e0, C0788b.this.f87520n, C0788b.this.f87521o);
                        ((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87388i.A.g(f10, rVar.f87354k0, rVar.f87355l0, f10.f());
                        return 0;
                    }
                    f10.I(((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87381b);
                    f10.G = dVar.G;
                    f10.H = dVar.H;
                    f10.I = ((master.flame.danmaku.danmaku.parser.a) C0788b.this).f87388i.f87165y;
                    synchronized (this.f87524e.e()) {
                        this.f87524e.i(f10);
                    }
                }
                return 0;
            }
        }

        public C0788b(master.flame.danmaku.danmaku.parser.a aVar, long j4, long j10) {
            this.f87517k = aVar;
            this.f87518l = j4;
            this.f87519m = j10;
        }

        @Override // master.flame.danmaku.danmaku.parser.a
        protected float d() {
            return (((float) this.f87388i.A.f87237f) * 1.1f) / (((float) (this.f87522p * master.flame.danmaku.danmaku.model.android.d.f87228p)) / 682.0f);
        }

        @Override // master.flame.danmaku.danmaku.parser.a
        protected m f() {
            m a10;
            e eVar = new e();
            try {
                a10 = this.f87517k.a().d(this.f87518l, this.f87519m);
            } catch (Exception unused) {
                a10 = this.f87517k.a();
            }
            if (a10 == null) {
                return eVar;
            }
            a10.h(new a(eVar));
            return eVar;
        }

        @Override // master.flame.danmaku.danmaku.parser.a
        public master.flame.danmaku.danmaku.parser.a j(n nVar) {
            super.j(nVar);
            master.flame.danmaku.danmaku.parser.a aVar = this.f87517k;
            if (aVar != null && aVar.b() != null) {
                this.f87520n = this.f87382c / this.f87517k.b().getWidth();
                this.f87521o = this.f87383d / this.f87517k.b().getHeight();
                if (this.f87522p <= 1) {
                    this.f87522p = nVar.getWidth();
                }
            }
            return this;
        }
    }

    /* compiled from: FakeDanmakuView.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(long j4);

        void b(long j4, Bitmap bitmap);

        void c(int i4, String str);

        void d(DanmakuContext danmakuContext);
    }

    public b(Context context) {
        super(context);
        this.B = 0;
        this.C = 0;
        this.D = 1.0f;
        this.G = 16L;
        this.K = 0;
        this.L = 0L;
    }

    public void L(int i4) {
        int i10 = this.K;
        this.K = i10 + 1;
        if (i10 > 5) {
            release();
            c cVar = this.A;
            if (cVar != null) {
                cVar.c(100, "not prepared");
            }
        } else if (!r()) {
            master.flame.danmaku.controller.c cVar2 = this.f87482c;
            if (cVar2 == null) {
                return;
            }
            cVar2.postDelayed(new a(i4), 1000L);
        } else {
            this.G = 1000 / i4;
            setCallback(this);
            long max = Math.max(0L, this.L - ((getConfig().A.f87237f * 3) / 2));
            this.E = new f(max);
            h(max);
        }
    }

    public void M(int i4, int i10) {
        this.I = Bitmap.createBitmap(i4, i10, Bitmap.Config.ARGB_8888);
        this.J = new Canvas(this.I);
    }

    public void N(long j4, long j10) {
        this.L = j4;
        this.F = Math.max(0L, j4 - 30000);
        this.H = j10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006e, code lost:
        if (r2 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
        r2.c(r10.H);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0075, code lost:
        r0.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0093, code lost:
        if (r2 != null) goto L33;
     */
    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long a() {
        /*
            r10 = this;
            boolean r0 = r10.f87514z
            r1 = 0
            if (r0 == 0) goto L7
            return r1
        L7:
            android.graphics.Canvas r0 = r10.J
            if (r0 != 0) goto Lc
            return r1
        Lc:
            android.graphics.Bitmap r3 = r10.I
            if (r3 == 0) goto Lb1
            boolean r4 = r3.isRecycled()
            if (r4 == 0) goto L18
            goto Lb1
        L18:
            r1 = 0
            r3.eraseColor(r1)
            boolean r2 = r10.f87498s
            if (r2 == 0) goto L26
            master.flame.danmaku.controller.d.a(r0)
            r10.f87498s = r1
            goto L2f
        L26:
            master.flame.danmaku.controller.c r2 = r10.f87482c
            if (r2 == 0) goto L2f
            master.flame.danmaku.controller.c r2 = r10.f87482c
            r2.y(r0)
        L2f:
            master.flame.danmaku.ui.widget.b$c r0 = r10.A
            if (r0 == 0) goto Lac
            master.flame.danmaku.danmaku.model.f r2 = r10.E
            long r4 = r2.f87304a
            long r6 = r10.L     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            long r8 = r10.G     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            long r6 = r6 - r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L63
            float r2 = r10.D     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            r6 = 1065353216(0x3f800000, float:1.0)
            r7 = 1
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 != 0) goto L4b
            r7 = 0
            goto L5b
        L4b:
            int r6 = r10.B     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            float r6 = (float) r6     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            float r6 = r6 * r2
            int r6 = (int) r6     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            int r8 = r10.C     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            float r8 = r8 * r2
            int r2 = (int) r8     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createScaledBitmap(r3, r6, r2, r7)     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
        L5b:
            r0.b(r4, r3)     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
            if (r7 == 0) goto L63
            r3.recycle()     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7b
        L63:
            long r2 = r10.H
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto Lac
            r10.release()
            master.flame.danmaku.danmaku.model.f r2 = r10.f87513y
            if (r2 == 0) goto L75
        L70:
            long r6 = r10.H
            r2.c(r6)
        L75:
            r0.a(r4)
            goto Lac
        L79:
            r1 = move-exception
            goto L96
        L7b:
            r2 = move-exception
            r10.release()     // Catch: java.lang.Throwable -> L79
            r3 = 101(0x65, float:1.42E-43)
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L79
            r0.c(r3, r2)     // Catch: java.lang.Throwable -> L79
            long r2 = r10.H
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto Lac
            r10.release()
            master.flame.danmaku.danmaku.model.f r2 = r10.f87513y
            if (r2 == 0) goto L75
            goto L70
        L96:
            long r2 = r10.H
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 < 0) goto Lab
            r10.release()
            master.flame.danmaku.danmaku.model.f r2 = r10.f87513y
            if (r2 == 0) goto La8
            long r6 = r10.H
            r2.c(r6)
        La8:
            r0.a(r4)
        Lab:
            throw r1
        Lac:
            r10.f87495p = r1
            r0 = 2
            return r0
        Lb1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.ui.widget.b.a():long");
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.g
    public int getViewHeight() {
        return this.C;
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.g
    public int getViewWidth() {
        return this.B;
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, android.view.View, master.flame.danmaku.controller.f
    public boolean isShown() {
        return true;
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.f
    public void l(master.flame.danmaku.danmaku.parser.a aVar, DanmakuContext danmakuContext) {
        C0788b c0788b = new C0788b(aVar, this.F, this.H);
        try {
            DanmakuContext danmakuContext2 = (DanmakuContext) danmakuContext.clone();
            danmakuContext2.z();
            int i4 = master.flame.danmaku.danmaku.model.c.f87276a;
            danmakuContext2.f87142b = i4;
            danmakuContext2.I(danmakuContext.f87142b / i4);
            danmakuContext2.f87165y.f87314c = danmakuContext.f87165y.f87314c;
            danmakuContext2.H(null);
            danmakuContext2.b0();
            danmakuContext2.f87165y.b();
            danmakuContext = danmakuContext2;
        } catch (CloneNotSupportedException e4) {
            e4.printStackTrace();
        }
        danmakuContext.D = (byte) 1;
        c cVar = this.A;
        if (cVar != null) {
            cVar.d(danmakuContext);
        }
        super.l(c0788b, danmakuContext);
        this.f87482c.b0(false);
        this.f87482c.z(true);
    }

    @Override // master.flame.danmaku.controller.c.d
    public void o() {
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, android.view.View
    protected void onDraw(Canvas canvas) {
    }

    @Override // master.flame.danmaku.controller.c.d
    public void q(f fVar) {
        this.f87513y = fVar;
        fVar.c(this.E.f87304a);
        this.E.a(this.G);
        fVar.a(this.G);
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.f
    public void release() {
        this.f87514z = true;
        super.release();
        this.I = null;
    }

    public void setOnFrameAvailableListener(c cVar) {
        this.A = cVar;
    }

    @Override // master.flame.danmaku.ui.widget.DanmakuView, master.flame.danmaku.controller.g
    public boolean u() {
        return true;
    }

    @Override // master.flame.danmaku.controller.c.d
    public void v() {
    }

    @Override // master.flame.danmaku.controller.c.d
    public void w(d dVar) {
    }

    public b(Context context, int i4, int i10, float f10) {
        super(context);
        this.G = 16L;
        this.K = 0;
        this.L = 0L;
        this.B = i4;
        this.C = i10;
        this.D = f10;
        M(i4, i10);
    }
}
