package f8;

import master.flame.danmaku.danmaku.model.android.e;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.f;
import master.flame.danmaku.danmaku.model.k;
import master.flame.danmaku.danmaku.model.m;
import master.flame.danmaku.danmaku.model.n;

/* compiled from: IRenderer.java */
/* loaded from: classes4.dex */
public interface a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f67764a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f67765b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f67766c = 2;

    /* compiled from: IRenderer.java */
    /* renamed from: f8.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0528a {

        /* renamed from: a  reason: collision with root package name */
        public final float[] f67767a = new float[4];

        /* renamed from: b  reason: collision with root package name */
        private int f67768b;

        /* renamed from: c  reason: collision with root package name */
        private int f67769c;

        public void a() {
            c(this.f67769c, this.f67768b, 0.0f, 0.0f);
        }

        public void b() {
            c(0.0f, 0.0f, this.f67769c, this.f67768b);
        }

        public void c(float f10, float f11, float f12, float f13) {
            float[] fArr = this.f67767a;
            fArr[0] = f10;
            fArr[1] = f11;
            fArr[2] = f12;
            fArr[3] = f13;
        }

        public void d(int i4, int i10) {
            this.f67769c = i4;
            this.f67768b = i10;
        }
    }

    /* compiled from: IRenderer.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(d dVar);
    }

    /* compiled from: IRenderer.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: v  reason: collision with root package name */
        public static final int f67770v = -1;

        /* renamed from: a  reason: collision with root package name */
        public boolean f67771a;

        /* renamed from: c  reason: collision with root package name */
        public int f67773c;

        /* renamed from: d  reason: collision with root package name */
        public int f67774d;

        /* renamed from: e  reason: collision with root package name */
        public d f67775e;

        /* renamed from: f  reason: collision with root package name */
        public int f67776f;

        /* renamed from: g  reason: collision with root package name */
        public int f67777g;

        /* renamed from: h  reason: collision with root package name */
        public int f67778h;

        /* renamed from: i  reason: collision with root package name */
        public int f67779i;

        /* renamed from: j  reason: collision with root package name */
        public int f67780j;

        /* renamed from: k  reason: collision with root package name */
        public int f67781k;

        /* renamed from: l  reason: collision with root package name */
        public int f67782l;

        /* renamed from: m  reason: collision with root package name */
        public long f67783m;

        /* renamed from: n  reason: collision with root package name */
        public long f67784n;

        /* renamed from: o  reason: collision with root package name */
        public long f67785o;

        /* renamed from: p  reason: collision with root package name */
        public boolean f67786p;

        /* renamed from: q  reason: collision with root package name */
        public long f67787q;

        /* renamed from: r  reason: collision with root package name */
        public long f67788r;

        /* renamed from: s  reason: collision with root package name */
        public long f67789s;

        /* renamed from: u  reason: collision with root package name */
        private boolean f67791u;

        /* renamed from: b  reason: collision with root package name */
        public f f67772b = new f();

        /* renamed from: t  reason: collision with root package name */
        private m f67790t = new e(4);

        public int a(int i4, int i10) {
            if (i4 == 1) {
                int i11 = this.f67776f + i10;
                this.f67776f = i11;
                return i11;
            } else if (i4 == 4) {
                int i12 = this.f67779i + i10;
                this.f67779i = i12;
                return i12;
            } else if (i4 == 5) {
                int i13 = this.f67778h + i10;
                this.f67778h = i13;
                return i13;
            } else if (i4 == 6) {
                int i14 = this.f67777g + i10;
                this.f67777g = i14;
                return i14;
            } else if (i4 != 7) {
                return 0;
            } else {
                int i15 = this.f67780j + i10;
                this.f67780j = i15;
                return i15;
            }
        }

        public int b(int i4) {
            int i10 = this.f67781k + i4;
            this.f67781k = i10;
            return i10;
        }

        public void c(d dVar) {
            if (this.f67791u) {
                return;
            }
            this.f67790t.i(dVar);
        }

        public m d() {
            m mVar;
            this.f67791u = true;
            synchronized (this) {
                mVar = this.f67790t;
                this.f67790t = new e(4);
            }
            this.f67791u = false;
            return mVar;
        }

        public void e() {
            this.f67782l = this.f67781k;
            this.f67781k = 0;
            this.f67780j = 0;
            this.f67779i = 0;
            this.f67778h = 0;
            this.f67777g = 0;
            this.f67776f = 0;
            this.f67783m = 0L;
            this.f67785o = 0L;
            this.f67784n = 0L;
            this.f67787q = 0L;
            this.f67786p = false;
            synchronized (this) {
                this.f67790t.clear();
            }
        }

        public void f(c cVar) {
            if (cVar == null) {
                return;
            }
            this.f67782l = cVar.f67782l;
            this.f67776f = cVar.f67776f;
            this.f67777g = cVar.f67777g;
            this.f67778h = cVar.f67778h;
            this.f67779i = cVar.f67779i;
            this.f67780j = cVar.f67780j;
            this.f67781k = cVar.f67781k;
            this.f67783m = cVar.f67783m;
            this.f67784n = cVar.f67784n;
            this.f67785o = cVar.f67785o;
            this.f67786p = cVar.f67786p;
            this.f67787q = cVar.f67787q;
            this.f67788r = cVar.f67788r;
            this.f67789s = cVar.f67789s;
        }
    }

    void a(n nVar, m mVar, long j4, c cVar);

    void b(boolean z9);

    void c(k kVar);

    void clear();

    void d(boolean z9);

    void e();

    void f();

    void g(b bVar);

    void release();
}
