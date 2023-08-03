package master.flame.danmaku.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import f8.a;
import master.flame.danmaku.controller.h;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.k;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.o;
import tv.cjump.jni.NativeBitmapFactory;

/* compiled from: CacheManagingDrawTask.java */
/* loaded from: classes4.dex */
public class a extends e {
    private static final int C = 3;
    private final Object A;
    private int B;

    /* renamed from: x  reason: collision with root package name */
    private int f86963x;

    /* renamed from: y  reason: collision with root package name */
    private b f86964y;

    /* renamed from: z  reason: collision with root package name */
    private master.flame.danmaku.danmaku.model.f f86965z;

    /* compiled from: CacheManagingDrawTask.java */
    /* renamed from: master.flame.danmaku.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0775a implements Runnable {
        RunnableC0775a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f87103g.e();
        }
    }

    /* compiled from: CacheManagingDrawTask.java */
    /* loaded from: classes4.dex */
    public class b implements k {

        /* renamed from: k  reason: collision with root package name */
        private static final String f86967k = "CacheManager";

        /* renamed from: l  reason: collision with root package name */
        public static final byte f86968l = 0;

        /* renamed from: m  reason: collision with root package name */
        public static final byte f86969m = 1;

        /* renamed from: n  reason: collision with root package name */
        public static final byte f86970n = 2;

        /* renamed from: a  reason: collision with root package name */
        public HandlerThread f86971a;

        /* renamed from: b  reason: collision with root package name */
        master.flame.danmaku.danmaku.model.android.e f86972b = new master.flame.danmaku.danmaku.model.android.e();

        /* renamed from: c  reason: collision with root package name */
        master.flame.danmaku.danmaku.model.android.h f86973c;

        /* renamed from: d  reason: collision with root package name */
        master.flame.danmaku.danmaku.model.objectpool.b<master.flame.danmaku.danmaku.model.android.f> f86974d;

        /* renamed from: e  reason: collision with root package name */
        private int f86975e;

        /* renamed from: f  reason: collision with root package name */
        private int f86976f;

        /* renamed from: g  reason: collision with root package name */
        private int f86977g;

        /* renamed from: h  reason: collision with root package name */
        private f f86978h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f86979i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CacheManagingDrawTask.java */
        /* renamed from: master.flame.danmaku.controller.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class C0776a extends m.c<master.flame.danmaku.danmaku.model.d> {
            C0776a() {
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                b.this.t(true, dVar, null);
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CacheManagingDrawTask.java */
        /* renamed from: master.flame.danmaku.controller.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class C0777b extends m.c<master.flame.danmaku.danmaku.model.d> {
            C0777b() {
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (dVar.u()) {
                    b.this.t(true, dVar, null);
                    return 2;
                }
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CacheManagingDrawTask.java */
        /* loaded from: classes4.dex */
        public class c extends m.c<master.flame.danmaku.danmaku.model.d> {
            c() {
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (dVar.y()) {
                    o<?> oVar = dVar.f87302y;
                    if (a.this.f87099c.B.f87219c != -1 || oVar == null || oVar.f() || oVar.size() / a.this.f86963x >= a.this.f87099c.B.f87220d) {
                        if (!b.this.f86979i) {
                            synchronized (a.this.A) {
                                try {
                                    try {
                                        a.this.A.wait(30L);
                                    } catch (InterruptedException e4) {
                                        e4.printStackTrace();
                                        return 1;
                                    }
                                } finally {
                                }
                            }
                        }
                        b.this.t(false, dVar, null);
                        return 2;
                    }
                    return 0;
                }
                return 1;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CacheManagingDrawTask.java */
        /* loaded from: classes4.dex */
        public class d extends m.b<master.flame.danmaku.danmaku.model.d, master.flame.danmaku.danmaku.model.d> {

            /* renamed from: e  reason: collision with root package name */
            int f86984e = 0;

            /* renamed from: f  reason: collision with root package name */
            master.flame.danmaku.danmaku.model.d f86985f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ int f86986g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ master.flame.danmaku.danmaku.model.d f86987h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ boolean f86988i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ int f86989j;

            d(int i4, master.flame.danmaku.danmaku.model.d dVar, boolean z9, int i10) {
                this.f86986g = i4;
                this.f86987h = dVar;
                this.f86988i = z9;
                this.f86989j = i10;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                int i4 = this.f86984e;
                this.f86984e = i4 + 1;
                if (i4 >= this.f86986g) {
                    return 1;
                }
                o<?> e4 = dVar.e();
                if (e4 != null && e4.get() != null) {
                    float f10 = dVar.f87293p;
                    master.flame.danmaku.danmaku.model.d dVar2 = this.f86987h;
                    if (f10 == dVar2.f87293p && dVar.f87294q == dVar2.f87294q && dVar.f87288k == dVar2.f87288k && dVar.f87290m == dVar2.f87290m && dVar.f87284g == dVar2.f87284g && dVar.f87280c.equals(dVar2.f87280c) && dVar.f87283f == this.f86987h.f87283f) {
                        this.f86985f = dVar;
                        return 1;
                    } else if (this.f86988i) {
                        return 0;
                    } else {
                        if (!dVar.y()) {
                            return 1;
                        }
                        if (e4.f()) {
                            return 0;
                        }
                        float h4 = e4.h() - this.f86987h.f87293p;
                        float b10 = e4.b() - this.f86987h.f87294q;
                        if (h4 >= 0.0f) {
                            int i10 = this.f86989j;
                            if (h4 <= i10 && b10 >= 0.0f && b10 <= i10) {
                                this.f86985f = dVar;
                                return 1;
                            }
                        }
                    }
                }
                return 0;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: f */
            public master.flame.danmaku.danmaku.model.d d() {
                return this.f86985f;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CacheManagingDrawTask.java */
        /* loaded from: classes4.dex */
        public class e extends m.c<master.flame.danmaku.danmaku.model.d> {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ int f86991e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ boolean f86992f;

            e(int i4, boolean z9) {
                this.f86991e = i4;
                this.f86992f = z9;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (!b.this.f86979i && b.this.f86976f + this.f86991e > b.this.f86975e) {
                    if (!dVar.y() && !dVar.p()) {
                        return this.f86992f ? 1 : 0;
                    }
                    b.this.t(false, dVar, null);
                    return 2;
                }
                return 1;
            }
        }

        /* compiled from: CacheManagingDrawTask.java */
        /* loaded from: classes4.dex */
        public class f extends Handler {

            /* renamed from: f  reason: collision with root package name */
            private static final int f86994f = 1;

            /* renamed from: g  reason: collision with root package name */
            public static final int f86995g = 2;

            /* renamed from: h  reason: collision with root package name */
            public static final int f86996h = 3;

            /* renamed from: i  reason: collision with root package name */
            public static final int f86997i = 4;

            /* renamed from: j  reason: collision with root package name */
            public static final int f86998j = 5;

            /* renamed from: k  reason: collision with root package name */
            public static final int f86999k = 6;

            /* renamed from: l  reason: collision with root package name */
            public static final int f87000l = 7;

            /* renamed from: m  reason: collision with root package name */
            public static final int f87001m = 8;

            /* renamed from: n  reason: collision with root package name */
            public static final int f87002n = 9;

            /* renamed from: o  reason: collision with root package name */
            public static final int f87003o = 16;

            /* renamed from: p  reason: collision with root package name */
            public static final int f87004p = 17;

            /* renamed from: q  reason: collision with root package name */
            public static final int f87005q = 18;

            /* renamed from: a  reason: collision with root package name */
            private boolean f87006a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f87007b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f87008c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f87009d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: CacheManagingDrawTask.java */
            /* renamed from: master.flame.danmaku.controller.a$b$f$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public class C0778a extends m.c<master.flame.danmaku.danmaku.model.d> {
                C0778a() {
                }

                @Override // master.flame.danmaku.danmaku.model.m.b
                /* renamed from: e */
                public int a(master.flame.danmaku.danmaku.model.d dVar) {
                    if (f.this.f87006a || f.this.f87009d) {
                        return 1;
                    }
                    if (!dVar.o()) {
                        DanmakuContext danmakuContext = a.this.f87099c;
                        danmakuContext.f87166z.b(dVar, 0, 0, null, true, danmakuContext);
                    }
                    if (dVar.p()) {
                        return 0;
                    }
                    if (!dVar.s()) {
                        dVar.B(a.this.f87100d, true);
                    }
                    if (!dVar.w()) {
                        dVar.C(a.this.f87100d, true);
                    }
                    return 0;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: CacheManagingDrawTask.java */
            /* renamed from: master.flame.danmaku.controller.a$b$f$b  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public class C0779b extends m.c<master.flame.danmaku.danmaku.model.d> {

                /* renamed from: e  reason: collision with root package name */
                int f87012e = 0;

                /* renamed from: f  reason: collision with root package name */
                int f87013f = 0;

                /* renamed from: g  reason: collision with root package name */
                final /* synthetic */ master.flame.danmaku.danmaku.model.d f87014g;

                /* renamed from: h  reason: collision with root package name */
                final /* synthetic */ boolean f87015h;

                /* renamed from: i  reason: collision with root package name */
                final /* synthetic */ int f87016i;

                /* renamed from: j  reason: collision with root package name */
                final /* synthetic */ long f87017j;

                /* renamed from: k  reason: collision with root package name */
                final /* synthetic */ long f87018k;

                /* renamed from: l  reason: collision with root package name */
                final /* synthetic */ long f87019l;

                C0779b(master.flame.danmaku.danmaku.model.d dVar, boolean z9, int i4, long j4, long j10, long j11) {
                    this.f87014g = dVar;
                    this.f87015h = z9;
                    this.f87016i = i4;
                    this.f87017j = j4;
                    this.f87018k = j10;
                    this.f87019l = j11;
                }

                @Override // master.flame.danmaku.danmaku.model.m.b
                /* renamed from: e */
                public int a(master.flame.danmaku.danmaku.model.d dVar) {
                    b bVar;
                    if (f.this.f87006a || f.this.f87009d || this.f87014g.b() < a.this.f87105i.f87304a) {
                        return 1;
                    }
                    o<?> e4 = dVar.e();
                    if (e4 == null || e4.get() == null) {
                        if (this.f87015h || (!dVar.y() && dVar.u())) {
                            if (!dVar.o()) {
                                DanmakuContext danmakuContext = a.this.f87099c;
                                danmakuContext.f87166z.b(dVar, this.f87012e, this.f87016i, null, true, danmakuContext);
                            }
                            if (dVar.f87292o == 0 && dVar.p()) {
                                return 0;
                            }
                            if (dVar.n() == 1) {
                                int b10 = (int) ((dVar.b() - this.f87017j) / a.this.f87099c.A.f87237f);
                                if (this.f87013f == b10) {
                                    this.f87012e++;
                                } else {
                                    this.f87012e = 0;
                                    this.f87013f = b10;
                                }
                            }
                            if (!this.f87015h && !f.this.f87007b) {
                                try {
                                    synchronized (a.this.A) {
                                        a.this.A.wait(this.f87018k);
                                    }
                                } catch (InterruptedException e10) {
                                    e10.printStackTrace();
                                    return 1;
                                }
                            }
                            f.this.g(dVar, false);
                            if (!this.f87015h) {
                                master.flame.danmaku.danmaku.model.android.d dVar2 = a.this.f87099c.A;
                                if (g8.c.b() - this.f87019l >= bVar.f86977g * master.flame.danmaku.danmaku.model.android.d.f87228p) {
                                    return 1;
                                }
                            }
                            return 0;
                        }
                        return 0;
                    }
                    return 0;
                }
            }

            public f(Looper looper) {
                super(looper);
            }

            private final void e(master.flame.danmaku.danmaku.model.d dVar) {
                if (dVar.y()) {
                    return;
                }
                if (dVar.b() <= a.this.f86965z.f87304a + a.this.f87099c.A.f87237f || dVar.f87303z) {
                    if (dVar.f87292o == 0 && dVar.p()) {
                        return;
                    }
                    o<?> e4 = dVar.e();
                    if (e4 == null || e4.get() == null) {
                        g(dVar, true);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public byte g(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
                if (!dVar.s()) {
                    dVar.B(a.this.f87100d, true);
                }
                master.flame.danmaku.danmaku.model.android.f fVar = null;
                try {
                    b bVar = b.this;
                    master.flame.danmaku.danmaku.model.d w9 = bVar.w(dVar, true, a.this.f87099c.B.f87222f);
                    master.flame.danmaku.danmaku.model.android.f fVar2 = w9 != null ? (master.flame.danmaku.danmaku.model.android.f) w9.f87302y : null;
                    try {
                        if (fVar2 != null) {
                            fVar2.k();
                            dVar.f87302y = fVar2;
                            a.this.f86964y.D(dVar, 0, z9);
                            return (byte) 0;
                        }
                        b bVar2 = b.this;
                        master.flame.danmaku.danmaku.model.d w10 = bVar2.w(dVar, false, a.this.f87099c.B.f87223g);
                        if (w10 != null) {
                            fVar2 = (master.flame.danmaku.danmaku.model.android.f) w10.f87302y;
                        }
                        if (fVar2 != null) {
                            w10.f87302y = null;
                            a aVar = a.this;
                            dVar.f87302y = g8.a.a(dVar, aVar.f87100d, fVar2, aVar.f87099c.B.f87217a);
                            a.this.f86964y.D(dVar, 0, z9);
                            return (byte) 0;
                        }
                        int f10 = g8.a.f((int) dVar.f87293p, (int) dVar.f87294q, a.this.f87099c.B.f87217a / 8);
                        if (f10 * 2 > a.this.f86963x) {
                            return (byte) 1;
                        }
                        if (!z9 && b.this.f86976f + f10 > b.this.f86975e) {
                            a.this.f86964y.q(f10, false);
                            return (byte) 1;
                        }
                        master.flame.danmaku.danmaku.model.android.f acquire = b.this.f86974d.acquire();
                        a aVar2 = a.this;
                        master.flame.danmaku.danmaku.model.android.f a10 = g8.a.a(dVar, aVar2.f87100d, acquire, aVar2.f87099c.B.f87217a);
                        dVar.f87302y = a10;
                        boolean D = a.this.f86964y.D(dVar, b.this.K(dVar), z9);
                        if (!D) {
                            o(dVar, a10);
                        }
                        return (!D ? 1 : 0) == 1 ? (byte) 1 : (byte) 0;
                    } catch (Exception unused) {
                        fVar = fVar2;
                        o(dVar, fVar);
                        return (byte) 1;
                    } catch (OutOfMemoryError unused2) {
                        fVar = fVar2;
                        o(dVar, fVar);
                        return (byte) 1;
                    }
                } catch (Exception unused3) {
                } catch (OutOfMemoryError unused4) {
                }
            }

            private long i() {
                long j4 = a.this.f86965z.f87304a;
                b bVar = b.this;
                a aVar = a.this;
                long j10 = aVar.f87105i.f87304a;
                DanmakuContext danmakuContext = aVar.f87099c;
                if (j4 <= j10 - danmakuContext.A.f87237f) {
                    if (danmakuContext.B.f87219c != -1) {
                        bVar.v();
                    }
                    a.this.f86965z.c(a.this.f87105i.f87304a);
                    sendEmptyMessage(3);
                    return 0L;
                }
                float y9 = bVar.y();
                master.flame.danmaku.danmaku.model.d first = b.this.f86972b.first();
                long b10 = first != null ? first.b() - a.this.f87105i.f87304a : 0L;
                a aVar2 = a.this;
                long j11 = aVar2.f87099c.A.f87237f;
                long j12 = 2 * j11;
                if (y9 < 0.6f && b10 > j11) {
                    aVar2.f86965z.c(a.this.f87105i.f87304a);
                    removeMessages(3);
                    sendEmptyMessage(3);
                    return 0L;
                } else if (y9 > 0.4f && b10 < (-j12)) {
                    removeMessages(4);
                    sendEmptyMessage(4);
                    return 0L;
                } else if (y9 >= 0.9f) {
                    return 0L;
                } else {
                    long j13 = aVar2.f86965z.f87304a - a.this.f87105i.f87304a;
                    if (first != null && first.y()) {
                        a aVar3 = a.this;
                        if (j13 < (-aVar3.f87099c.A.f87237f)) {
                            aVar3.f86965z.c(a.this.f87105i.f87304a);
                            sendEmptyMessage(8);
                            sendEmptyMessage(3);
                            return 0L;
                        }
                    }
                    if (j13 > j12) {
                        return 0L;
                    }
                    removeMessages(3);
                    sendEmptyMessage(3);
                    return 0L;
                }
            }

            private void m() {
                m mVar;
                try {
                    a aVar = a.this;
                    long j4 = aVar.f87105i.f87304a;
                    long j10 = aVar.f87099c.A.f87237f;
                    mVar = aVar.f87101e.d(j4 - j10, (2 * j10) + j4);
                } catch (Exception unused) {
                    mVar = null;
                }
                if (mVar == null || mVar.isEmpty()) {
                    return;
                }
                mVar.h(new C0778a());
            }

            /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
                r19.f87010e.f86980j.f86965z.c(r12);
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
                return 0;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private long n(boolean r20) {
                /*
                    Method dump skipped, instructions count: 229
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.a.b.f.n(boolean):long");
            }

            private void o(master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.android.f fVar) {
                if (fVar == null) {
                    fVar = (master.flame.danmaku.danmaku.model.android.f) dVar.f87302y;
                }
                dVar.f87302y = null;
                if (fVar == null) {
                    return;
                }
                fVar.destroy();
                b.this.f86974d.a(fVar);
            }

            public void f() {
                sendEmptyMessage(1);
                sendEmptyMessageDelayed(4, a.this.f87099c.A.f87237f);
            }

            public boolean h(master.flame.danmaku.danmaku.model.d dVar) {
                master.flame.danmaku.danmaku.model.android.f fVar;
                master.flame.danmaku.danmaku.model.android.f acquire;
                if (!dVar.s()) {
                    dVar.B(a.this.f87100d, true);
                }
                try {
                    acquire = b.this.f86974d.acquire();
                } catch (Exception unused) {
                    fVar = null;
                } catch (OutOfMemoryError unused2) {
                    fVar = null;
                }
                try {
                    a aVar = a.this;
                    fVar = g8.a.a(dVar, aVar.f87100d, acquire, aVar.f87099c.B.f87217a);
                    dVar.f87302y = fVar;
                    return true;
                } catch (Exception unused3) {
                    if (fVar != null) {
                        b.this.f86974d.a(fVar);
                    }
                    dVar.f87302y = null;
                    return false;
                } catch (OutOfMemoryError unused4) {
                    if (fVar != null) {
                        b.this.f86974d.a(fVar);
                    }
                    dVar.f87302y = null;
                    return false;
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                switch (i4) {
                    case 1:
                        b.this.v();
                        for (int i10 = 0; i10 < 300; i10++) {
                            b.this.f86974d.a(new master.flame.danmaku.danmaku.model.android.f());
                        }
                        break;
                    case 2:
                        e((master.flame.danmaku.danmaku.model.d) message.obj);
                        return;
                    case 3:
                        removeMessages(3);
                        a aVar = a.this;
                        boolean z9 = !(aVar.f87103g == null || aVar.f87110n) || this.f87008c;
                        n(z9);
                        if (z9) {
                            this.f87008c = false;
                        }
                        a aVar2 = a.this;
                        h.a aVar3 = aVar2.f87103g;
                        if (aVar3 == null || aVar2.f87110n) {
                            return;
                        }
                        aVar3.c();
                        a.this.f87110n = true;
                        return;
                    case 4:
                        b.this.r();
                        return;
                    case 5:
                        Long l10 = (Long) message.obj;
                        if (l10 != null) {
                            long longValue = l10.longValue();
                            long j4 = a.this.f86965z.f87304a;
                            a.this.f86965z.c(longValue);
                            this.f87008c = true;
                            long x9 = b.this.x();
                            if (longValue <= j4) {
                                b bVar = b.this;
                                if (x9 - longValue <= a.this.f87099c.A.f87237f) {
                                    bVar.r();
                                    n(true);
                                    r();
                                    return;
                                }
                            }
                            b.this.v();
                            n(true);
                            r();
                            return;
                        }
                        return;
                    case 6:
                        removeCallbacksAndMessages(null);
                        this.f87006a = true;
                        b.this.u();
                        b.this.p();
                        getLooper().quit();
                        return;
                    case 7:
                        b.this.u();
                        master.flame.danmaku.danmaku.model.f fVar = a.this.f86965z;
                        a aVar4 = a.this;
                        fVar.c(aVar4.f87105i.f87304a - aVar4.f87099c.A.f87237f);
                        this.f87008c = true;
                        return;
                    case 8:
                        b.this.v();
                        a.this.f86965z.c(a.this.f87105i.f87304a);
                        return;
                    case 9:
                        b.this.v();
                        a.this.f86965z.c(a.this.f87105i.f87304a);
                        a.this.h();
                        return;
                    default:
                        switch (i4) {
                            case 16:
                                break;
                            case 17:
                                master.flame.danmaku.danmaku.model.d dVar = (master.flame.danmaku.danmaku.model.d) message.obj;
                                if (dVar != null) {
                                    o<?> e4 = dVar.e();
                                    if (!((dVar.J & 1) != 0) && e4 != null && e4.get() != null && !e4.f()) {
                                        a aVar5 = a.this;
                                        dVar.f87302y = g8.a.a(dVar, aVar5.f87100d, (master.flame.danmaku.danmaku.model.android.f) dVar.f87302y, aVar5.f87099c.B.f87217a);
                                        b.this.D(dVar, 0, true);
                                        return;
                                    } else if (dVar.f87303z) {
                                        b.this.o(dVar);
                                        h(dVar);
                                        return;
                                    } else {
                                        if (e4 != null && e4.f()) {
                                            e4.destroy();
                                        }
                                        b.this.t(true, dVar, null);
                                        e(dVar);
                                        return;
                                    }
                                }
                                return;
                            case 18:
                                this.f87009d = false;
                                return;
                            default:
                                return;
                        }
                }
                long i11 = i();
                if (i11 <= 0) {
                    i11 = a.this.f87099c.A.f87237f / 2;
                }
                sendEmptyMessageDelayed(16, i11);
            }

            public boolean j() {
                return this.f87006a;
            }

            public void k(boolean z9) {
                this.f87007b = !z9;
            }

            public void l() {
                this.f87006a = true;
                sendEmptyMessage(6);
            }

            public void p(long j4) {
                removeMessages(3);
                this.f87008c = true;
                sendEmptyMessage(18);
                a.this.f86965z.c(a.this.f87105i.f87304a + j4);
                sendEmptyMessage(3);
            }

            public void q() {
                this.f87009d = true;
            }

            public void r() {
                sendEmptyMessage(18);
                this.f87006a = false;
                removeMessages(16);
                sendEmptyMessage(16);
                sendEmptyMessageDelayed(4, a.this.f87099c.A.f87237f);
            }
        }

        public b(int i4, int i10) {
            master.flame.danmaku.danmaku.model.android.h hVar = new master.flame.danmaku.danmaku.model.android.h();
            this.f86973c = hVar;
            this.f86974d = master.flame.danmaku.danmaku.model.objectpool.e.a(hVar, 800);
            this.f86979i = false;
            this.f86976f = 0;
            this.f86975e = i4;
            this.f86977g = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean D(master.flame.danmaku.danmaku.model.d dVar, int i4, boolean z9) {
            if (i4 > 0) {
                q(i4, z9);
            }
            this.f86972b.i(dVar);
            this.f86976f += i4;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long o(master.flame.danmaku.danmaku.model.d dVar) {
            o<?> oVar = dVar.f87302y;
            if (oVar == null) {
                return 0L;
            }
            if (oVar.f()) {
                oVar.e();
                dVar.f87302y = null;
                return 0L;
            }
            long K = K(dVar);
            oVar.destroy();
            dVar.f87302y = null;
            return K;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p() {
            while (true) {
                master.flame.danmaku.danmaku.model.android.f acquire = this.f86974d.acquire();
                if (acquire == null) {
                    return;
                }
                acquire.destroy();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(int i4, boolean z9) {
            this.f86972b.h(new e(i4, z9));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            this.f86972b.h(new c());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u() {
            master.flame.danmaku.danmaku.model.android.e eVar = this.f86972b;
            if (eVar != null) {
                eVar.h(new C0776a());
                this.f86972b.clear();
            }
            this.f86976f = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v() {
            master.flame.danmaku.danmaku.model.android.e eVar = this.f86972b;
            if (eVar != null) {
                eVar.h(new C0777b());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public master.flame.danmaku.danmaku.model.d w(master.flame.danmaku.danmaku.model.d dVar, boolean z9, int i4) {
            d dVar2 = new d(i4, dVar, z9, (!z9 ? a.this.f87100d.b() * 2 : 0) + a.this.f87099c.B.f87221e);
            this.f86972b.h(dVar2);
            return dVar2.d();
        }

        public boolean A() {
            return this.f86976f + 5120 >= this.f86975e;
        }

        public void B(int i4) {
            f fVar = this.f86978h;
            if (fVar != null) {
                fVar.k(i4 == 1);
            }
        }

        public void C(Runnable runnable) {
            f fVar = this.f86978h;
            if (fVar == null) {
                return;
            }
            fVar.post(runnable);
        }

        public void E(long j4) {
            f fVar = this.f86978h;
            if (fVar != null) {
                fVar.p(j4);
            }
        }

        public void F() {
            f fVar = this.f86978h;
            if (fVar == null) {
                return;
            }
            fVar.removeMessages(3);
            this.f86978h.removeMessages(18);
            this.f86978h.q();
            this.f86978h.removeMessages(7);
            this.f86978h.sendEmptyMessage(7);
        }

        public void G() {
            f fVar = this.f86978h;
            if (fVar == null) {
                return;
            }
            fVar.removeMessages(4);
            this.f86978h.sendEmptyMessage(4);
        }

        public void H() {
            f fVar = this.f86978h;
            if (fVar == null) {
                return;
            }
            fVar.removeMessages(9);
            this.f86978h.sendEmptyMessage(9);
        }

        public void I() {
            f fVar = this.f86978h;
            if (fVar != null) {
                fVar.r();
            } else {
                n();
            }
        }

        public void J(long j4) {
            f fVar = this.f86978h;
            if (fVar == null) {
                return;
            }
            fVar.q();
            this.f86978h.removeMessages(3);
            this.f86978h.obtainMessage(5, Long.valueOf(j4)).sendToTarget();
        }

        protected int K(master.flame.danmaku.danmaku.model.d dVar) {
            o<?> oVar = dVar.f87302y;
            if (oVar == null || oVar.f()) {
                return 0;
            }
            return dVar.f87302y.size();
        }

        @Override // master.flame.danmaku.danmaku.model.k
        public void b(master.flame.danmaku.danmaku.model.d dVar) {
            f fVar = this.f86978h;
            if (fVar != null) {
                if (dVar.f87303z && dVar.A) {
                    if (dVar.y()) {
                        return;
                    }
                    this.f86978h.h(dVar);
                    return;
                }
                fVar.obtainMessage(2, dVar).sendToTarget();
            }
        }

        public void n() {
            this.f86979i = false;
            if (this.f86971a == null) {
                HandlerThread handlerThread = new HandlerThread("DFM Cache-Building Thread");
                this.f86971a = handlerThread;
                handlerThread.start();
            }
            if (this.f86978h == null) {
                this.f86978h = new f(this.f86971a.getLooper());
            }
            this.f86978h.f();
        }

        public void s() {
            this.f86979i = true;
            synchronized (a.this.A) {
                a.this.A.notifyAll();
            }
            f fVar = this.f86978h;
            if (fVar != null) {
                fVar.removeCallbacksAndMessages(null);
                this.f86978h.l();
                this.f86978h = null;
            }
            HandlerThread handlerThread = this.f86971a;
            if (handlerThread != null) {
                try {
                    handlerThread.join();
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                this.f86971a.quit();
                this.f86971a = null;
            }
        }

        protected void t(boolean z9, master.flame.danmaku.danmaku.model.d dVar, master.flame.danmaku.danmaku.model.d dVar2) {
            o<?> e4 = dVar.e();
            if (e4 != null) {
                long o9 = o(dVar);
                if (dVar.y()) {
                    a.this.f87099c.h().w().g(dVar);
                }
                if (o9 <= 0) {
                    return;
                }
                this.f86976f = (int) (this.f86976f - o9);
                this.f86974d.a((master.flame.danmaku.danmaku.model.android.f) e4);
            }
        }

        public long x() {
            master.flame.danmaku.danmaku.model.d first;
            master.flame.danmaku.danmaku.model.android.e eVar = this.f86972b;
            if (eVar == null || eVar.size() <= 0 || (first = this.f86972b.first()) == null) {
                return 0L;
            }
            return first.b();
        }

        public float y() {
            int i4 = this.f86975e;
            if (i4 == 0) {
                return 0.0f;
            }
            return this.f86976f / i4;
        }

        public void z(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
            f fVar = this.f86978h;
            if (fVar != null) {
                fVar.q();
                this.f86978h.obtainMessage(17, dVar).sendToTarget();
                this.f86978h.sendEmptyMessage(18);
                E(0L);
            }
        }
    }

    public a(master.flame.danmaku.danmaku.model.f fVar, DanmakuContext danmakuContext, h.a aVar) {
        super(fVar, danmakuContext, aVar);
        this.f86963x = 2;
        this.A = new Object();
        NativeBitmapFactory.g();
        int max = (int) Math.max(4194304.0f, ((float) Runtime.getRuntime().maxMemory()) * danmakuContext.B.f87218b);
        this.f86963x = max;
        b bVar = new b(max, 3);
        this.f86964y = bVar;
        this.f87104h.c(bVar);
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void a() {
        master.flame.danmaku.danmaku.parser.a aVar = this.f87102f;
        if (aVar == null) {
            return;
        }
        w(aVar);
        this.f86964y.n();
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void b(master.flame.danmaku.danmaku.model.d dVar) {
        super.b(dVar);
        b bVar = this.f86964y;
        if (bVar == null) {
            return;
        }
        bVar.b(dVar);
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        super.c(dVar, z9);
        b bVar = this.f86964y;
        if (bVar == null) {
            return;
        }
        bVar.z(dVar, z9);
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void d(boolean z9) {
        super.d(z9);
        b bVar = this.f86964y;
        if (bVar != null) {
            bVar.F();
        }
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void f(int i4) {
        super.f(i4);
        b bVar = this.f86964y;
        if (bVar != null) {
            bVar.B(i4);
        }
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void i(long j4) {
        super.i(j4);
        if (this.f86964y == null) {
            start();
        }
        this.f86964y.J(j4);
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void k() {
        super.k();
        reset();
        this.f87104h.c(null);
        b bVar = this.f86964y;
        if (bVar != null) {
            bVar.s();
            this.f86964y = null;
        }
        NativeBitmapFactory.i();
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public a.c n(master.flame.danmaku.danmaku.model.b bVar) {
        b bVar2;
        a.c n9 = super.n(bVar);
        synchronized (this.A) {
            this.A.notify();
        }
        if (n9 != null && (bVar2 = this.f86964y) != null && n9.f67781k - n9.f67782l < -20) {
            bVar2.G();
            this.f86964y.E(-this.f87099c.A.f87237f);
        }
        return n9;
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void q(long j4, long j10, long j11) {
        super.q(j4, j10, j11);
        b bVar = this.f86964y;
        if (bVar != null) {
            bVar.J(j10);
        }
    }

    @Override // master.flame.danmaku.controller.e, master.flame.danmaku.controller.h
    public void start() {
        super.start();
        NativeBitmapFactory.g();
        b bVar = this.f86964y;
        if (bVar == null) {
            b bVar2 = new b(this.f86963x, 3);
            this.f86964y = bVar2;
            bVar2.n();
            this.f87104h.c(this.f86964y);
            return;
        }
        bVar.I();
    }

    @Override // master.flame.danmaku.controller.e
    protected void v(master.flame.danmaku.danmaku.model.f fVar) {
        this.f87105i = fVar;
        master.flame.danmaku.danmaku.model.f fVar2 = new master.flame.danmaku.danmaku.model.f();
        this.f86965z = fVar2;
        fVar2.c(fVar.f87304a);
    }

    @Override // master.flame.danmaku.controller.e
    public boolean x(DanmakuContext danmakuContext, DanmakuContext.DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        b bVar;
        b bVar2;
        if (!super.u(danmakuContext, danmakuConfigTag, objArr)) {
            if (DanmakuContext.DanmakuConfigTag.SCROLL_SPEED_FACTOR.equals(danmakuConfigTag)) {
                this.f87100d.a(this.f87099c.f87143c);
                h();
            } else if (danmakuConfigTag.isVisibilityRelatedTag()) {
                if (objArr != null && objArr.length > 0 && objArr[0] != null && ((!(objArr[0] instanceof Boolean) || ((Boolean) objArr[0]).booleanValue()) && (bVar2 = this.f86964y) != null)) {
                    bVar2.E(0L);
                }
                h();
            } else if (!DanmakuContext.DanmakuConfigTag.TRANSPARENCY.equals(danmakuConfigTag) && !DanmakuContext.DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag) && !DanmakuContext.DanmakuConfigTag.DANMAKU_STYLE.equals(danmakuConfigTag)) {
                b bVar3 = this.f86964y;
                if (bVar3 != null) {
                    bVar3.H();
                    this.f86964y.E(0L);
                }
            } else {
                if (DanmakuContext.DanmakuConfigTag.SCALE_TEXTSIZE.equals(danmakuConfigTag)) {
                    this.f87100d.a(this.f87099c.f87143c);
                }
                b bVar4 = this.f86964y;
                if (bVar4 != null) {
                    bVar4.F();
                    this.f86964y.E(-this.f87099c.A.f87237f);
                }
            }
        }
        if (this.f87103g == null || (bVar = this.f86964y) == null) {
            return true;
        }
        bVar.C(new RunnableC0775a());
        return true;
    }

    @Override // master.flame.danmaku.controller.e
    protected void y(master.flame.danmaku.danmaku.model.d dVar) {
        super.y(dVar);
        b bVar = this.f86964y;
        if (bVar != null) {
            int i4 = this.B + 1;
            this.B = i4;
            if (i4 > 5) {
                bVar.G();
                this.B = 0;
                return;
            }
            return;
        }
        o<?> e4 = dVar.e();
        if (e4 != null) {
            if (e4.f()) {
                e4.e();
            } else {
                e4.destroy();
            }
            dVar.f87302y = null;
        }
    }
}
