package master.flame.danmaku.danmaku.renderer.android;

import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;

/* compiled from: DanmakusRetainer.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private e f87407a = null;

    /* renamed from: b  reason: collision with root package name */
    private e f87408b = null;

    /* renamed from: c  reason: collision with root package name */
    private e f87409c = null;

    /* renamed from: d  reason: collision with root package name */
    private e f87410d = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DanmakusRetainer.java */
    /* renamed from: master.flame.danmaku.danmaku.renderer.android.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0786b extends d {

        /* renamed from: d  reason: collision with root package name */
        protected a f87411d;

        /* renamed from: e  reason: collision with root package name */
        protected master.flame.danmaku.danmaku.model.android.e f87412e;

        /* compiled from: DanmakusRetainer.java */
        /* renamed from: master.flame.danmaku.danmaku.renderer.android.b$b$a */
        /* loaded from: classes4.dex */
        protected class a extends m.b<master.flame.danmaku.danmaku.model.d, f> {

            /* renamed from: e  reason: collision with root package name */
            public n f87413e;

            /* renamed from: f  reason: collision with root package name */
            int f87414f = 0;

            /* renamed from: g  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87415g = null;

            /* renamed from: h  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87416h = null;

            /* renamed from: i  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87417i = null;

            /* renamed from: j  reason: collision with root package name */
            boolean f87418j = false;

            /* renamed from: k  reason: collision with root package name */
            float f87419k;

            protected a() {
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            public void c() {
                this.f87414f = 0;
                this.f87416h = null;
                this.f87415g = null;
                this.f87418j = false;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (C0786b.this.f87422b) {
                    return 1;
                }
                this.f87414f++;
                if (dVar == this.f87417i) {
                    this.f87415g = null;
                    this.f87418j = false;
                    return 1;
                }
                if (this.f87416h == null) {
                    this.f87416h = dVar;
                    if (dVar.d() != this.f87413e.getHeight()) {
                        return 1;
                    }
                }
                if (this.f87419k < this.f87413e.r()) {
                    this.f87415g = null;
                    return 1;
                }
                n nVar = this.f87413e;
                master.flame.danmaku.danmaku.model.d dVar2 = this.f87417i;
                boolean i4 = g8.a.i(nVar, dVar, dVar2, dVar2.f(), this.f87417i.l().f87304a);
                this.f87418j = i4;
                if (!i4) {
                    this.f87415g = dVar;
                    return 1;
                }
                this.f87419k = (dVar.m() - this.f87413e.o()) - this.f87417i.f87294q;
                return 0;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: f */
            public f d() {
                f fVar = new f();
                fVar.f87435a = this.f87414f;
                fVar.f87437c = this.f87416h;
                fVar.f87440f = this.f87415g;
                fVar.f87443i = this.f87418j;
                return fVar;
            }
        }

        private C0786b() {
            super();
            this.f87411d = new a();
            this.f87412e = new master.flame.danmaku.danmaku.model.android.e(2);
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.c, master.flame.danmaku.danmaku.renderer.android.b.e
        public void a(master.flame.danmaku.danmaku.model.d dVar, n nVar, g gVar) {
            boolean z9;
            boolean z10;
            master.flame.danmaku.danmaku.model.d dVar2;
            master.flame.danmaku.danmaku.model.d dVar3;
            int i4;
            if (dVar.u()) {
                return;
            }
            boolean x9 = dVar.x();
            float m9 = x9 ? dVar.m() : -1.0f;
            int i10 = 1;
            boolean z11 = false;
            boolean z12 = (x9 || this.f87412e.isEmpty()) ? false : true;
            if (m9 < nVar.r()) {
                m9 = nVar.getHeight() - dVar.f87294q;
            }
            master.flame.danmaku.danmaku.model.d dVar4 = null;
            if (x9) {
                i10 = 0;
            } else {
                this.f87422b = false;
                a aVar = this.f87411d;
                aVar.f87419k = m9;
                aVar.f87413e = nVar;
                aVar.f87417i = dVar;
                this.f87412e.a(aVar);
                f d4 = this.f87411d.d();
                float f10 = this.f87411d.f87419k;
                if (d4 != null) {
                    int i11 = d4.f87435a;
                    master.flame.danmaku.danmaku.model.d dVar5 = d4.f87437c;
                    master.flame.danmaku.danmaku.model.d dVar6 = d4.f87440f;
                    boolean z13 = d4.f87442h;
                    i4 = i11;
                    z10 = d4.f87443i;
                    dVar2 = dVar5;
                    dVar3 = dVar6;
                    z9 = z13;
                } else {
                    z9 = x9;
                    z10 = z12;
                    dVar2 = null;
                    dVar3 = null;
                    i4 = 0;
                }
                boolean b10 = b(false, dVar, nVar, f10, dVar2, null);
                if (b10) {
                    m9 = nVar.getHeight() - dVar.f87294q;
                    z11 = b10;
                    x9 = z9;
                    dVar4 = dVar3;
                    z12 = true;
                } else {
                    boolean z14 = f10 >= ((float) nVar.r()) ? false : z10;
                    if (dVar3 != null) {
                        z11 = b10;
                        z12 = z14;
                        x9 = z9;
                        dVar4 = dVar3;
                        i10 = i4 - 1;
                        m9 = f10;
                    } else {
                        z11 = b10;
                        z12 = z14;
                        m9 = f10;
                        i10 = i4;
                        x9 = z9;
                        dVar4 = dVar3;
                    }
                }
            }
            if (gVar == null || !gVar.a(dVar, m9, i10, z12)) {
                if (z11) {
                    clear();
                }
                dVar.A(nVar, dVar.g(), m9);
                if (x9) {
                    return;
                }
                this.f87412e.g(dVar4);
                this.f87412e.i(dVar);
            }
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.d, master.flame.danmaku.danmaku.renderer.android.b.c
        protected boolean b(boolean z9, master.flame.danmaku.danmaku.model.d dVar, n nVar, float f10, master.flame.danmaku.danmaku.model.d dVar2, master.flame.danmaku.danmaku.model.d dVar3) {
            if (f10 >= nVar.r()) {
                return (dVar2 == null || dVar2.d() == ((float) nVar.getHeight())) ? false : true;
            }
            return true;
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.c, master.flame.danmaku.danmaku.renderer.android.b.e
        public void clear() {
            this.f87422b = true;
            this.f87412e.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DanmakusRetainer.java */
    /* loaded from: classes4.dex */
    public static class c implements e {

        /* renamed from: a  reason: collision with root package name */
        protected master.flame.danmaku.danmaku.model.android.e f87421a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f87422b;

        /* renamed from: c  reason: collision with root package name */
        protected a f87423c;

        /* compiled from: DanmakusRetainer.java */
        /* loaded from: classes4.dex */
        protected class a extends m.b<master.flame.danmaku.danmaku.model.d, f> {

            /* renamed from: e  reason: collision with root package name */
            public n f87424e;

            /* renamed from: f  reason: collision with root package name */
            int f87425f = 0;

            /* renamed from: g  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87426g = null;

            /* renamed from: h  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87427h = null;

            /* renamed from: i  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87428i = null;

            /* renamed from: j  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87429j = null;

            /* renamed from: k  reason: collision with root package name */
            public master.flame.danmaku.danmaku.model.d f87430k = null;

            /* renamed from: l  reason: collision with root package name */
            boolean f87431l = false;

            /* renamed from: m  reason: collision with root package name */
            boolean f87432m = false;

            /* renamed from: n  reason: collision with root package name */
            boolean f87433n = false;

            protected a() {
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            public void c() {
                this.f87425f = 0;
                this.f87429j = null;
                this.f87428i = null;
                this.f87427h = null;
                this.f87426g = null;
                this.f87433n = false;
                this.f87432m = false;
                this.f87431l = false;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: e */
            public int a(master.flame.danmaku.danmaku.model.d dVar) {
                if (c.this.f87422b) {
                    return 1;
                }
                this.f87425f++;
                master.flame.danmaku.danmaku.model.d dVar2 = this.f87430k;
                if (dVar == dVar2) {
                    this.f87426g = dVar;
                    this.f87428i = null;
                    this.f87432m = true;
                    this.f87433n = false;
                    return 1;
                }
                if (this.f87427h == null) {
                    this.f87427h = dVar;
                }
                if (dVar2.f87294q + dVar.m() > this.f87424e.getHeight()) {
                    this.f87431l = true;
                    return 1;
                }
                master.flame.danmaku.danmaku.model.d dVar3 = this.f87429j;
                if (dVar3 == null) {
                    this.f87429j = dVar;
                } else if (dVar3.i() >= dVar.i()) {
                    this.f87429j = dVar;
                }
                n nVar = this.f87424e;
                master.flame.danmaku.danmaku.model.d dVar4 = this.f87430k;
                boolean i4 = g8.a.i(nVar, dVar, dVar4, dVar4.f(), this.f87430k.l().f87304a);
                this.f87433n = i4;
                if (!i4) {
                    this.f87426g = dVar;
                    return 1;
                }
                this.f87428i = dVar;
                return 0;
            }

            @Override // master.flame.danmaku.danmaku.model.m.b
            /* renamed from: f */
            public f d() {
                f fVar = new f();
                fVar.f87435a = this.f87425f;
                fVar.f87437c = this.f87427h;
                fVar.f87436b = this.f87426g;
                fVar.f87438d = this.f87428i;
                fVar.f87439e = this.f87429j;
                fVar.f87441g = this.f87431l;
                fVar.f87442h = this.f87432m;
                fVar.f87443i = this.f87433n;
                return fVar;
            }
        }

        private c() {
            this.f87421a = new master.flame.danmaku.danmaku.model.android.e(1);
            this.f87422b = false;
            this.f87423c = new a();
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
        @Override // master.flame.danmaku.danmaku.renderer.android.b.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(master.flame.danmaku.danmaku.model.d r20, master.flame.danmaku.danmaku.model.n r21, master.flame.danmaku.danmaku.renderer.android.b.g r22) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.danmaku.renderer.android.b.c.a(master.flame.danmaku.danmaku.model.d, master.flame.danmaku.danmaku.model.n, master.flame.danmaku.danmaku.renderer.android.b$g):void");
        }

        protected boolean b(boolean z9, master.flame.danmaku.danmaku.model.d dVar, n nVar, float f10, master.flame.danmaku.danmaku.model.d dVar2, master.flame.danmaku.danmaku.model.d dVar3) {
            if (f10 >= nVar.r()) {
                return (dVar2 != null && dVar2.m() > 0.0f) || f10 + dVar.f87294q > ((float) nVar.getHeight());
            }
            return true;
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.e
        public void clear() {
            this.f87422b = true;
            this.f87421a.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DanmakusRetainer.java */
    /* loaded from: classes4.dex */
    public static class d extends c {
        private d() {
            super();
        }

        @Override // master.flame.danmaku.danmaku.renderer.android.b.c
        protected boolean b(boolean z9, master.flame.danmaku.danmaku.model.d dVar, n nVar, float f10, master.flame.danmaku.danmaku.model.d dVar2, master.flame.danmaku.danmaku.model.d dVar3) {
            return f10 + dVar.f87294q > ((float) nVar.getHeight());
        }
    }

    /* compiled from: DanmakusRetainer.java */
    /* loaded from: classes4.dex */
    public interface e {
        void a(master.flame.danmaku.danmaku.model.d dVar, n nVar, g gVar);

        void clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DanmakusRetainer.java */
    /* loaded from: classes4.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        public int f87435a;

        /* renamed from: b  reason: collision with root package name */
        public master.flame.danmaku.danmaku.model.d f87436b;

        /* renamed from: c  reason: collision with root package name */
        public master.flame.danmaku.danmaku.model.d f87437c;

        /* renamed from: d  reason: collision with root package name */
        public master.flame.danmaku.danmaku.model.d f87438d;

        /* renamed from: e  reason: collision with root package name */
        public master.flame.danmaku.danmaku.model.d f87439e;

        /* renamed from: f  reason: collision with root package name */
        public master.flame.danmaku.danmaku.model.d f87440f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f87441g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f87442h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f87443i;

        private f() {
            this.f87435a = 0;
            this.f87436b = null;
            this.f87437c = null;
            this.f87438d = null;
            this.f87439e = null;
            this.f87440f = null;
            this.f87441g = false;
            this.f87442h = false;
            this.f87443i = false;
        }
    }

    /* compiled from: DanmakusRetainer.java */
    /* loaded from: classes4.dex */
    public interface g {
        boolean a(master.flame.danmaku.danmaku.model.d dVar, float f10, int i4, boolean z9);
    }

    public b(boolean z9) {
        a(z9);
    }

    public void a(boolean z9) {
        this.f87407a = z9 ? new C0786b() : new c();
        this.f87408b = z9 ? new C0786b() : new c();
        if (this.f87409c == null) {
            this.f87409c = new d();
        }
        if (this.f87410d == null) {
            this.f87410d = new C0786b();
        }
    }

    public void b() {
        e eVar = this.f87407a;
        if (eVar != null) {
            eVar.clear();
        }
        e eVar2 = this.f87408b;
        if (eVar2 != null) {
            eVar2.clear();
        }
        e eVar3 = this.f87409c;
        if (eVar3 != null) {
            eVar3.clear();
        }
        e eVar4 = this.f87410d;
        if (eVar4 != null) {
            eVar4.clear();
        }
    }

    public void c(master.flame.danmaku.danmaku.model.d dVar, n nVar, g gVar) {
        int n9 = dVar.n();
        if (n9 == 1) {
            this.f87407a.a(dVar, nVar, gVar);
        } else if (n9 == 4) {
            this.f87410d.a(dVar, nVar, gVar);
        } else if (n9 == 5) {
            this.f87409c.a(dVar, nVar, gVar);
        } else if (n9 == 6) {
            this.f87408b.a(dVar, nVar, gVar);
        } else if (n9 != 7) {
        } else {
            dVar.A(nVar, 0.0f, 0.0f);
        }
    }

    public void d() {
        b();
    }
}
