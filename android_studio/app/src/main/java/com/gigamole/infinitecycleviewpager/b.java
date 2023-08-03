package com.gigamole.infinitecycleviewpager;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.gigamole.infinitecycleviewpager.c;
import com.gigamole.infinitecycleviewpager.f;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InfiniteCycleManager.java */
/* loaded from: classes2.dex */
public class b implements c.a {
    private static final int I = 3;
    private static final int J = 1;
    protected static final int K = 2;
    protected static final int L = 0;
    protected static final boolean M = false;
    protected static final boolean N = true;
    private static final float O = 0.55f;
    private static final float P = 0.8f;
    private static final int Q = 30;
    private static final int R = 50;
    private static final boolean S = true;
    private static final int T = 500;
    private boolean A;
    private int B;
    private Interpolator C;
    private boolean D;
    private boolean E;
    private final Handler F;
    private final Runnable G;
    protected final ViewPager.OnPageChangeListener H;

    /* renamed from: a  reason: collision with root package name */
    private Context f16188a;

    /* renamed from: b  reason: collision with root package name */
    private com.gigamole.infinitecycleviewpager.g f16189b;

    /* renamed from: c  reason: collision with root package name */
    private View f16190c;

    /* renamed from: d  reason: collision with root package name */
    private com.gigamole.infinitecycleviewpager.c f16191d;

    /* renamed from: e  reason: collision with root package name */
    private f f16192e;

    /* renamed from: f  reason: collision with root package name */
    private f f16193f;

    /* renamed from: g  reason: collision with root package name */
    private float f16194g;

    /* renamed from: h  reason: collision with root package name */
    private float f16195h;

    /* renamed from: i  reason: collision with root package name */
    private int f16196i;

    /* renamed from: j  reason: collision with root package name */
    private int f16197j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f16198k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f16199l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f16200m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16201n;

    /* renamed from: o  reason: collision with root package name */
    private final Rect f16202o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f16203p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f16204q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f16205r;

    /* renamed from: s  reason: collision with root package name */
    private int f16206s;

    /* renamed from: t  reason: collision with root package name */
    private com.gigamole.infinitecycleviewpager.e f16207t;

    /* renamed from: u  reason: collision with root package name */
    private float f16208u;

    /* renamed from: v  reason: collision with root package name */
    private float f16209v;

    /* renamed from: w  reason: collision with root package name */
    private float f16210w;

    /* renamed from: x  reason: collision with root package name */
    private float f16211x;

    /* renamed from: y  reason: collision with root package name */
    private float f16212y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f16213z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.D) {
                b.this.f16189b.setCurrentItem(b.this.d0() + (b.this.E ? 1 : -1));
                b.this.F.postDelayed(this, b.this.B);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InfiniteCycleManager.java */
    /* renamed from: com.gigamole.infinitecycleviewpager.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0126b implements Runnable {
        RunnableC0126b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.g0();
            b.this.f16205r = false;
        }
    }

    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    class c extends ViewPager.SimpleOnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i4) {
            b.this.f16206s = i4;
        }

        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i4, float f10, int i10) {
            b.this.f16196i = 0;
            if (b.this.f16206s != 2 || b.this.f16203p) {
                if (b.this.f16193f == f.IDLE && f10 > 0.0f) {
                    b bVar = b.this;
                    bVar.f16195h = bVar.f16189b.getCurrentItem();
                    b bVar2 = b.this;
                    bVar2.f16193f = ((float) i4) == bVar2.f16195h ? f.GOING_LEFT : f.GOING_RIGHT;
                }
                boolean z9 = ((float) i4) == b.this.f16195h;
                f fVar = b.this.f16193f;
                f fVar2 = f.GOING_LEFT;
                if (fVar == fVar2 && !z9) {
                    b.this.f16193f = f.GOING_RIGHT;
                } else if (b.this.f16193f == f.GOING_RIGHT && z9) {
                    b.this.f16193f = fVar2;
                }
            }
            if (b.this.f16194g <= f10) {
                b.this.f16192e = f.GOING_LEFT;
            } else {
                b.this.f16192e = f.GOING_RIGHT;
            }
            b.this.f16194g = f10;
            if (b.this.i0(f10)) {
                f10 = 0.0f;
            }
            if (f10 == 0.0f) {
                b.this.T();
                b bVar3 = b.this;
                f fVar3 = f.IDLE;
                bVar3.f16192e = fVar3;
                b.this.f16193f = fVar3;
                b.this.f16200m = false;
                b.this.f16201n = false;
                b.this.f16198k = false;
                b.this.f16199l = false;
                b.this.f16203p = false;
            }
        }
    }

    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16217a;

        static {
            int[] iArr = new int[f.values().length];
            f16217a = iArr;
            try {
                iArr[f.GOING_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16217a[f.GOING_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    public class e implements ViewPager.PageTransformer {
        protected e() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:158:0x03db, code lost:
            if (r22 == 0.0f) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:172:0x040e, code lost:
            if (r22 <= 0.0f) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:181:0x042b, code lost:
            if (r20.f16218a.f16189b.getChildCount() > 3) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:188:0x0440, code lost:
            if (r22 < 0.5f) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:203:0x0474, code lost:
            if (r22 < 0.5f) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:213:0x0494, code lost:
            if (r20.f16218a.f16189b.getChildCount() > 3) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:220:0x04aa, code lost:
            if (r22 <= 0.0f) goto L48;
         */
        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void transformPage(android.view.View r21, float r22) {
            /*
                Method dump skipped, instructions count: 1231
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.b.e.transformPage(android.view.View, float):void");
        }
    }

    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    private enum f {
        IDLE,
        GOING_LEFT,
        GOING_RIGHT
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InfiniteCycleManager.java */
    /* loaded from: classes2.dex */
    public final class g implements Interpolator {

        /* renamed from: b  reason: collision with root package name */
        private static final float f16223b = 0.5f;

        private g() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return (float) ((Math.pow(2.0d, (-10.0f) * f10) * Math.sin(((f10 - 0.125f) * 6.283185307179586d) / 0.5d)) + 1.0d);
        }

        /* synthetic */ g(b bVar, a aVar) {
            this();
        }
    }

    public b(Context context, com.gigamole.infinitecycleviewpager.g gVar, AttributeSet attributeSet) {
        f fVar = f.IDLE;
        this.f16192e = fVar;
        this.f16193f = fVar;
        this.f16202o = new Rect();
        this.f16213z = false;
        this.F = new Handler();
        this.G = new a();
        c cVar = new c();
        this.H = cVar;
        this.f16188a = context;
        this.A = gVar instanceof VerticalViewPager;
        this.f16189b = gVar;
        this.f16190c = (View) gVar;
        gVar.setPageTransformer(false, X());
        this.f16189b.addOnPageChangeListener(cVar);
        this.f16189b.setClipChildren(false);
        this.f16189b.setDrawingCacheEnabled(false);
        this.f16189b.setWillNotCacheDrawing(true);
        this.f16189b.setPageMargin(0);
        this.f16189b.setOffscreenPageLimit(2);
        this.f16189b.setOverScrollMode(2);
        s0();
        p0(attributeSet);
    }

    private void S(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f16202o.set(this.f16190c.getLeft(), this.f16190c.getTop(), this.f16190c.getRight(), this.f16190c.getBottom());
        } else if (motionEvent.getAction() != 2 || this.f16202o.contains(this.f16190c.getLeft() + ((int) motionEvent.getX()), this.f16190c.getTop() + ((int) motionEvent.getY()))) {
        } else {
            motionEvent.setAction(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(View view) {
        if (view.getLayerType() != 0) {
            view.setLayerType(0, null);
        }
    }

    static /* synthetic */ int f(b bVar) {
        int i4 = bVar.f16196i;
        bVar.f16196i = i4 + 1;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i0(float f10) {
        return Math.abs(f10) < 1.0E-4f;
    }

    private void r0() {
        this.f16212y = (this.f16211x - this.f16210w) * 0.5f;
    }

    private void s0() {
        Class cls;
        String str;
        if (this.f16189b == null) {
            return;
        }
        try {
            if (this.A) {
                cls = VerticalViewPager.class;
                str = "j";
            } else {
                cls = ViewPager.class;
                str = "mScroller";
            }
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            com.gigamole.infinitecycleviewpager.d dVar = new com.gigamole.infinitecycleviewpager.d(this.f16188a, this.C);
            dVar.a(this.B);
            declaredField.set(this.f16189b, dVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void A0(float f10) {
        this.f16208u = f10;
    }

    public void B0(com.gigamole.infinitecycleviewpager.e eVar) {
        this.f16207t = eVar;
    }

    public void C0(int i4) {
        this.B = i4;
        s0();
    }

    public void D0(boolean z9) {
        if (this.D && z9 == this.E) {
            return;
        }
        this.D = true;
        this.E = z9;
        this.F.removeCallbacks(this.G);
        this.F.post(this.G);
    }

    public void E0() {
        if (this.D) {
            this.D = false;
            this.F.removeCallbacks(this.G);
        }
    }

    public float V() {
        return this.f16209v;
    }

    public com.gigamole.infinitecycleviewpager.c W() {
        return this.f16191d;
    }

    public e X() {
        return new e();
    }

    public Interpolator Y() {
        return this.C;
    }

    public float Z() {
        return this.f16211x;
    }

    @Override // com.gigamole.infinitecycleviewpager.c.a
    public void a() {
        this.f16205r = true;
    }

    public float a0() {
        return this.f16210w;
    }

    public float b0() {
        return this.f16208u;
    }

    public com.gigamole.infinitecycleviewpager.e c0() {
        return this.f16207t;
    }

    public int d0() {
        if (this.f16189b.getAdapter() != null && this.f16189b.getAdapter().getCount() >= 3) {
            return this.f16191d.b(this.f16189b.getCurrentItem());
        }
        return this.f16189b.getCurrentItem();
    }

    public int e0() {
        return this.B;
    }

    public int f0() {
        return this.f16206s;
    }

    public void g0() {
        if (this.f16189b.getAdapter() == null || this.f16189b.getAdapter().getCount() == 0 || this.f16189b.getChildCount() == 0 || !this.f16189b.beginFakeDrag()) {
            return;
        }
        this.f16189b.fakeDragBy(0.0f);
        this.f16189b.endFakeDrag();
    }

    public boolean h0() {
        return this.f16213z;
    }

    public boolean j0() {
        return this.A;
    }

    public void k0() {
        com.gigamole.infinitecycleviewpager.c cVar = this.f16191d;
        if (cVar == null) {
            this.f16189b.getAdapter().notifyDataSetChanged();
            this.f16205r = true;
        } else {
            cVar.notifyDataSetChanged();
        }
        o0();
    }

    public boolean l0(MotionEvent motionEvent) {
        return m0(motionEvent);
    }

    public boolean m0(MotionEvent motionEvent) {
        boolean z9 = false;
        if (this.f16189b.getAdapter() != null && this.f16189b.getAdapter().getCount() != 0 && !this.D && !this.f16203p && !this.f16189b.isFakeDragging()) {
            z9 = true;
            if (motionEvent.getPointerCount() > 1 || !this.f16189b.hasWindowFocus()) {
                motionEvent.setAction(1);
            }
            S(motionEvent);
        }
        return z9;
    }

    public void n0(boolean z9) {
        if (z9) {
            g0();
        }
    }

    public void o0() {
        this.f16189b.post(new RunnableC0126b());
    }

    public void p0(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = this.f16188a.obtainStyledAttributes(attributeSet, this.A ? f.l.R3 : f.l.N0);
        try {
            A0(obtainStyledAttributes.getDimension(this.A ? f.l.X3 : f.l.T0, 30.0f));
            u0(obtainStyledAttributes.getDimension(this.A ? f.l.S3 : f.l.O0, 50.0f));
            z0(obtainStyledAttributes.getFloat(this.A ? f.l.W3 : f.l.S0, O));
            x0(obtainStyledAttributes.getFloat(this.A ? f.l.U3 : f.l.Q0, P));
            y0(obtainStyledAttributes.getBoolean(this.A ? f.l.V3 : f.l.R0, true));
            C0(obtainStyledAttributes.getInteger(this.A ? f.l.Y3 : f.l.U0, 500));
            Interpolator interpolator = null;
            try {
                int resourceId = obtainStyledAttributes.getResourceId(this.A ? f.l.T3 : f.l.P0, 0);
                if (resourceId != 0) {
                    interpolator = AnimationUtils.loadInterpolator(this.f16188a, resourceId);
                }
            } catch (Resources.NotFoundException e4) {
                e4.printStackTrace();
            }
            w0(interpolator);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void q0() {
        this.f16204q = true;
        this.f16189b.setCurrentItem(0);
        o0();
    }

    public PagerAdapter t0(PagerAdapter pagerAdapter) {
        if (pagerAdapter != null && pagerAdapter.getCount() >= 3) {
            this.f16197j = pagerAdapter.getCount();
            com.gigamole.infinitecycleviewpager.c cVar = new com.gigamole.infinitecycleviewpager.c(pagerAdapter);
            this.f16191d = cVar;
            cVar.c(this);
            return this.f16191d;
        }
        com.gigamole.infinitecycleviewpager.c cVar2 = this.f16191d;
        if (cVar2 != null) {
            cVar2.c(null);
            this.f16191d = null;
        }
        return pagerAdapter;
    }

    public void u0(float f10) {
        this.f16209v = f10;
    }

    public int v0(int i4) {
        this.f16203p = true;
        if (this.f16189b.getAdapter() == null || this.f16189b.getAdapter().getCount() < 3) {
            return i4;
        }
        int count = this.f16189b.getAdapter().getCount();
        if (this.f16204q) {
            this.f16204q = false;
            return ((this.f16191d.getCount() / 2) / count) * count;
        }
        return (this.f16189b.getCurrentItem() + Math.min(count, i4)) - d0();
    }

    public void w0(Interpolator interpolator) {
        if (interpolator == null) {
            interpolator = new g(this, null);
        }
        this.C = interpolator;
        s0();
    }

    public void x0(float f10) {
        this.f16211x = f10;
        r0();
    }

    public void y0(boolean z9) {
        this.f16213z = z9;
    }

    public void z0(float f10) {
        this.f16210w = f10;
        r0();
    }
}
