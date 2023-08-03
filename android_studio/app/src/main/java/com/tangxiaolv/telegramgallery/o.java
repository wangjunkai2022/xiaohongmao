package com.tangxiaolv.telegramgallery;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.tangxiaolv.telegramgallery.Actionbar.a;
import com.tangxiaolv.telegramgallery.Components.AspectRatioFrameLayout;
import com.tangxiaolv.telegramgallery.Components.d;
import com.tangxiaolv.telegramgallery.TL.k;
import com.tangxiaolv.telegramgallery.Utils.g;
import com.tangxiaolv.telegramgallery.Utils.h;
import com.tangxiaolv.telegramgallery.q;
import java.io.File;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: PhotoViewer.java */
/* loaded from: classes3.dex */
public class o implements h.c, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    private static Paint A3 = null;
    private static volatile o B3 = null;

    /* renamed from: x3  reason: collision with root package name */
    private static final int f56821x3 = 4;

    /* renamed from: y3  reason: collision with root package name */
    private static final int f56822y3 = 1;

    /* renamed from: z3  reason: collision with root package name */
    private static DecelerateInterpolator f56823z3;
    private AspectRatioFrameLayout A;
    private TextureView B;
    private ImageView C;
    private boolean D;
    private boolean E;
    private boolean F;
    private float F2;
    private float G;
    private float G2;
    private long H;
    private float H2;
    private float J2;
    private float K2;
    private float L2;
    private c0 M;
    private float M2;
    private c0 N;
    private int N2;
    private long O2;
    private int P;
    private AnimatorSet P2;
    private AnimatorSet Q2;
    private GestureDetector R2;
    private int T;
    private int T1;
    private float T2;
    private com.tangxiaolv.telegramgallery.TL.d U;
    private int V1;
    private float V2;
    private c0 W;
    private float W2;
    private float X2;
    private float Y2;
    private float Z2;

    /* renamed from: a  reason: collision with root package name */
    private int f56824a;

    /* renamed from: a3  reason: collision with root package name */
    private float f56825a3;

    /* renamed from: b  reason: collision with root package name */
    private b0 f56826b;

    /* renamed from: b1  reason: collision with root package name */
    private String f56827b1;

    /* renamed from: b2  reason: collision with root package name */
    private boolean f56828b2;

    /* renamed from: b3  reason: collision with root package name */
    private float f56829b3;

    /* renamed from: c  reason: collision with root package name */
    private boolean f56830c;

    /* renamed from: c3  reason: collision with root package name */
    private float f56831c3;

    /* renamed from: d  reason: collision with root package name */
    private GalleryActivity f56832d;

    /* renamed from: d3  reason: collision with root package name */
    private float f56833d3;

    /* renamed from: e  reason: collision with root package name */
    private Context f56834e;

    /* renamed from: e3  reason: collision with root package name */
    private float f56835e3;

    /* renamed from: f  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.a f56836f;

    /* renamed from: g2  reason: collision with root package name */
    private boolean f56840g2;

    /* renamed from: h  reason: collision with root package name */
    private WindowManager.LayoutParams f56842h;

    /* renamed from: i  reason: collision with root package name */
    private z f56844i;

    /* renamed from: j  reason: collision with root package name */
    private a0 f56846j;

    /* renamed from: k  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.c f56848k;

    /* renamed from: l  reason: collision with root package name */
    private FrameLayout f56850l;

    /* renamed from: n  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.b f56854n;

    /* renamed from: o  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.h f56856o;

    /* renamed from: p  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.h f56858p;

    /* renamed from: p1  reason: collision with root package name */
    private int f56859p1;

    /* renamed from: p2  reason: collision with root package name */
    private boolean f56860p2;

    /* renamed from: r  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.d f56864r;

    /* renamed from: s  reason: collision with root package name */
    private View f56866s;

    /* renamed from: t  reason: collision with root package name */
    private AnimatorSet f56868t;

    /* renamed from: u  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.d f56870u;

    /* renamed from: v  reason: collision with root package name */
    private AlertDialog f56872v;

    /* renamed from: x  reason: collision with root package name */
    private boolean f56876x;

    /* renamed from: x1  reason: collision with root package name */
    private long f56877x1;

    /* renamed from: y1  reason: collision with root package name */
    private long f56880y1;

    /* renamed from: y2  reason: collision with root package name */
    private boolean f56881y2;

    /* renamed from: z  reason: collision with root package name */
    private AnimatedFileDrawable f56882z;

    /* renamed from: g  reason: collision with root package name */
    private boolean f56838g = true;

    /* renamed from: m  reason: collision with root package name */
    private x f56852m = new x(ViewCompat.MEASURED_STATE_MASK);

    /* renamed from: q  reason: collision with root package name */
    private e0[] f56862q = new e0[3];

    /* renamed from: w  reason: collision with root package name */
    private boolean f56874w = true;

    /* renamed from: y  reason: collision with root package name */
    private int f56879y = 0;
    private float[][] I = (float[][]) Array.newInstance(float.class, 2, 8);
    private int J = 0;
    private long K = 0;
    private Runnable L = null;
    private boolean O = false;
    private com.tangxiaolv.telegramgallery.k Q = new com.tangxiaolv.telegramgallery.k();
    private com.tangxiaolv.telegramgallery.k R = new com.tangxiaolv.telegramgallery.k();
    private com.tangxiaolv.telegramgallery.k S = new com.tangxiaolv.telegramgallery.k();
    private String[] V = new String[3];

    /* renamed from: g1  reason: collision with root package name */
    private Bitmap f56839g1 = null;

    /* renamed from: x2  reason: collision with root package name */
    private boolean[] f56878x2 = {false, true};
    private boolean E2 = false;
    private float I2 = 1.0f;
    private DecelerateInterpolator S2 = new DecelerateInterpolator(1.5f);
    private float U2 = 1.0f;

    /* renamed from: f3  reason: collision with root package name */
    private boolean f56837f3 = true;

    /* renamed from: g3  reason: collision with root package name */
    private boolean f56841g3 = false;

    /* renamed from: h3  reason: collision with root package name */
    private boolean f56843h3 = false;

    /* renamed from: i3  reason: collision with root package name */
    private boolean f56845i3 = false;

    /* renamed from: j3  reason: collision with root package name */
    private boolean f56847j3 = false;

    /* renamed from: k3  reason: collision with root package name */
    private boolean f56849k3 = false;

    /* renamed from: l3  reason: collision with root package name */
    private boolean f56851l3 = true;

    /* renamed from: m3  reason: collision with root package name */
    private boolean f56853m3 = false;

    /* renamed from: n3  reason: collision with root package name */
    private boolean f56855n3 = false;

    /* renamed from: o3  reason: collision with root package name */
    private int f56857o3 = 0;

    /* renamed from: p3  reason: collision with root package name */
    private VelocityTracker f56861p3 = null;

    /* renamed from: q3  reason: collision with root package name */
    private Scroller f56863q3 = null;

    /* renamed from: r3  reason: collision with root package name */
    private ArrayList<com.tangxiaolv.telegramgallery.TL.d> f56865r3 = new ArrayList<>();

    /* renamed from: s3  reason: collision with root package name */
    private ArrayList<com.tangxiaolv.telegramgallery.TL.k> f56867s3 = new ArrayList<>();

    /* renamed from: t3  reason: collision with root package name */
    private ArrayList<Integer> f56869t3 = new ArrayList<>();

    /* renamed from: u3  reason: collision with root package name */
    private ArrayList<Object> f56871u3 = new ArrayList<>();

    /* renamed from: v3  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.TL.d f56873v3 = null;

    /* renamed from: w3  reason: collision with root package name */
    private final int f56875w3 = com.tangxiaolv.telegramgallery.Utils.a.g(30.0f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class a extends com.tangxiaolv.telegramgallery.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56883a;

        /* compiled from: PhotoViewer.java */
        /* renamed from: com.tangxiaolv.telegramgallery.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0492a extends com.tangxiaolv.telegramgallery.a {
            C0492a() {
            }

            @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                o.this.P2 = null;
                a aVar = a.this;
                o.this.P = aVar.f56883a;
                o.this.L2 = 1.0f;
                o.this.J2 = 0.0f;
                o.this.K2 = 0.0f;
                o.this.I2 = 1.0f;
                o oVar = o.this;
                oVar.e1(oVar.I2);
                o.this.f56844i.invalidate();
            }

            @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                o.this.f56858p.setVisibility(0);
                o.this.f56870u.setVisibility(0);
            }
        }

        a(int i4) {
            this.f56883a = i4;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            o.this.Q2 = null;
            o.this.f56856o.setVisibility(8);
            o.this.f56836f.setVisibility(8);
            if (o.this.f56879y == 0) {
                o.this.f56854n.setVisibility(8);
            }
            Bitmap g4 = o.this.R.g();
            if (g4 != null) {
                o.this.f56870u.g(g4, o.this.R.x(), o.this.f56879y != 1);
                int j4 = o.this.R.j();
                float f10 = j4;
                float A0 = o.this.A0() / f10;
                float i4 = o.this.R.i();
                float y02 = o.this.y0() / i4;
                float B0 = o.this.B0(1) / f10;
                float z02 = o.this.z0(1) / i4;
                if (A0 > y02) {
                    A0 = y02;
                }
                if (B0 > z02) {
                    B0 = z02;
                }
                o.this.L2 = B0 / A0;
                o.this.J2 = 0.0f;
                o.this.K2 = -com.tangxiaolv.telegramgallery.Utils.a.g(24.0f);
                o.this.O2 = System.currentTimeMillis();
                o.this.f56853m3 = true;
            }
            o.this.P2 = new AnimatorSet();
            o.this.P2.playTogether(ObjectAnimator.ofFloat(o.this.f56858p, "translationY", com.tangxiaolv.telegramgallery.Utils.a.g(48.0f), 0.0f), ObjectAnimator.ofFloat(o.this, "animationValue", 0.0f, 1.0f), ObjectAnimator.ofFloat(o.this.f56870u, "alpha", 0.0f, 1.0f));
            o.this.P2.setDuration(200L);
            o.this.P2.addListener(new C0492a());
            o.this.P2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class a0 extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private boolean f56886a;

        /* renamed from: b  reason: collision with root package name */
        private Runnable f56887b;

        public a0(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.f56886a = true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.f56886a = false;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
            super.onLayout(z9, i4, i10, i11, i12);
            o.E0().M0(z9, i4, i10, i11, i12);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i4, int i10) {
            super.onMeasure(i4, i10);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return o.E0().R0(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class b extends com.tangxiaolv.telegramgallery.a {
        b() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (o.this.f56868t == null || !o.this.f56868t.equals(animator)) {
                return;
            }
            o.this.f56836f.setVisibility(8);
            if (o.this.f56874w) {
                o.this.f56850l.setVisibility(8);
            }
            o.this.f56868t = null;
        }
    }

    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public interface b0 {
        boolean a(int i4);

        void b();

        void c();

        int d();

        void e(com.tangxiaolv.telegramgallery.TL.d dVar, int i4);

        void f(int i4);

        boolean g();

        void i(int i4);

        Bitmap j(com.tangxiaolv.telegramgallery.TL.d dVar, int i4);

        boolean k();

        boolean l();

        void m(int i4);

        int n(int i4);

        c0 o(com.tangxiaolv.telegramgallery.TL.d dVar, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f56890a;

        c(List list) {
            this.f56890a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.this.f56844i == null || o.this.f56846j == null) {
                return;
            }
            o.this.f56844i.setLayerType(0, null);
            o.this.J = 0;
            o.this.K = 0L;
            o.this.X0();
            o.this.f56844i.invalidate();
            o.this.f56848k.setVisibility(8);
            if (o.this.M != null) {
                o.this.M.f56892a.q0(true, true);
            }
            if (o.this.N != null) {
                o.this.N.f56892a.q0(false, true);
            }
            if (this.f56890a != null) {
                o.this.f56842h.flags = 0;
                o.this.f56842h.softInputMode = 32;
                ((WindowManager) o.this.f56832d.getSystemService("window")).updateViewLayout(o.this.f56846j, o.this.f56842h);
                o.this.f56846j.setFocusable(true);
                o.this.f56844i.setFocusable(true);
            }
        }
    }

    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public static class c0 {

        /* renamed from: a  reason: collision with root package name */
        public com.tangxiaolv.telegramgallery.k f56892a;

        /* renamed from: b  reason: collision with root package name */
        public int f56893b;

        /* renamed from: c  reason: collision with root package name */
        public int f56894c;

        /* renamed from: d  reason: collision with root package name */
        public View f56895d;

        /* renamed from: e  reason: collision with root package name */
        public Bitmap f56896e;

        /* renamed from: f  reason: collision with root package name */
        public int f56897f;

        /* renamed from: g  reason: collision with root package name */
        public int f56898g;

        /* renamed from: h  reason: collision with root package name */
        public int f56899h;

        /* renamed from: i  reason: collision with root package name */
        public int f56900i;

        /* renamed from: j  reason: collision with root package name */
        public int f56901j;

        /* renamed from: k  reason: collision with root package name */
        public int f56902k;

        /* renamed from: l  reason: collision with root package name */
        public float f56903l = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class d extends com.tangxiaolv.telegramgallery.a {

        /* compiled from: PhotoViewer.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.tangxiaolv.telegramgallery.Utils.h.b().h(false);
                if (o.this.L != null) {
                    o.this.L.run();
                    o.this.L = null;
                }
            }
        }

        d() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            com.tangxiaolv.telegramgallery.Utils.a.D(new a());
        }
    }

    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public static class d0 extends y {
        public void h() {
        }

        public void p(int i4, boolean z9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimatorSet f56906a;

        e(AnimatorSet animatorSet) {
            this.f56906a = animatorSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tangxiaolv.telegramgallery.Utils.h.b().g(new int[]{com.tangxiaolv.telegramgallery.Utils.h.f56681j, com.tangxiaolv.telegramgallery.Utils.h.f56682k, com.tangxiaolv.telegramgallery.Utils.h.f56685n, com.tangxiaolv.telegramgallery.Utils.h.f56684m, com.tangxiaolv.telegramgallery.Utils.h.f56686o});
            com.tangxiaolv.telegramgallery.Utils.h.b().h(true);
            this.f56906a.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class e0 {

        /* renamed from: i  reason: collision with root package name */
        private View f56916i;

        /* renamed from: a  reason: collision with root package name */
        private long f56908a = 0;

        /* renamed from: b  reason: collision with root package name */
        private float f56909b = 0.0f;

        /* renamed from: c  reason: collision with root package name */
        private float f56910c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        private float f56911d = 0.0f;

        /* renamed from: e  reason: collision with root package name */
        private long f56912e = 0;

        /* renamed from: f  reason: collision with root package name */
        private float f56913f = 0.0f;

        /* renamed from: g  reason: collision with root package name */
        private RectF f56914g = new RectF();

        /* renamed from: h  reason: collision with root package name */
        private int f56915h = -1;

        /* renamed from: j  reason: collision with root package name */
        private int f56917j = com.tangxiaolv.telegramgallery.Utils.a.g(64.0f);

        /* renamed from: k  reason: collision with root package name */
        private int f56918k = -2;

        /* renamed from: l  reason: collision with root package name */
        private float f56919l = 1.0f;

        /* renamed from: m  reason: collision with root package name */
        private float f56920m = 1.0f;

        /* renamed from: n  reason: collision with root package name */
        private float f56921n = 1.0f;

        public e0(Context context, View view) {
            this.f56916i = null;
            if (o.f56823z3 == null) {
                DecelerateInterpolator unused = o.f56823z3 = new DecelerateInterpolator(1.5f);
                Paint unused2 = o.A3 = new Paint(1);
                o.A3.setStyle(Paint.Style.STROKE);
                o.A3.setStrokeCap(Paint.Cap.ROUND);
                o.A3.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(3.0f));
                o.A3.setColor(-1);
            }
            this.f56916i = view;
        }

        private void g() {
            long currentTimeMillis = System.currentTimeMillis();
            long j4 = currentTimeMillis - this.f56908a;
            this.f56908a = currentTimeMillis;
            if (this.f56913f != 1.0f) {
                this.f56909b += ((float) (360 * j4)) / 3000.0f;
                float f10 = this.f56910c;
                float f11 = this.f56911d;
                float f12 = f10 - f11;
                if (f12 > 0.0f) {
                    long j10 = this.f56912e + j4;
                    this.f56912e = j10;
                    if (j10 >= 300) {
                        this.f56913f = f10;
                        this.f56911d = f10;
                        this.f56912e = 0L;
                    } else {
                        this.f56913f = f11 + (f12 * o.f56823z3.getInterpolation(((float) this.f56912e) / 300.0f));
                    }
                }
                this.f56916i.invalidate();
            }
            if (this.f56913f < 1.0f || this.f56918k == -2) {
                return;
            }
            float f13 = this.f56919l - (((float) j4) / 200.0f);
            this.f56919l = f13;
            if (f13 <= 0.0f) {
                this.f56919l = 0.0f;
                this.f56918k = -2;
            }
            this.f56916i.invalidate();
        }

        public void b(Canvas canvas) {
            int i4;
            int i10 = (int) (this.f56917j * this.f56921n);
            int A0 = (o.this.A0() - i10) / 2;
            int y02 = (o.this.y0() - i10) / 2;
            int i11 = this.f56915h;
            if (i11 == 0 || i11 == 1 || (i4 = this.f56918k) == 0 || i4 == 1) {
                int g4 = com.tangxiaolv.telegramgallery.Utils.a.g(4.0f);
                if (this.f56918k != -2) {
                    o.A3.setAlpha((int) (this.f56919l * 255.0f * this.f56920m));
                } else {
                    o.A3.setAlpha((int) (this.f56920m * 255.0f));
                }
                this.f56914g.set(A0 + g4, y02 + g4, (A0 + i10) - g4, (y02 + i10) - g4);
                canvas.drawArc(this.f56914g, this.f56909b - 90.0f, Math.max(4.0f, this.f56913f * 360.0f), false, o.A3);
                g();
            }
        }

        public void c(float f10) {
            this.f56920m = f10;
        }

        public void d(int i4, boolean z9) {
            int i10;
            this.f56908a = System.currentTimeMillis();
            if (z9 && (i10 = this.f56915h) != i4) {
                this.f56918k = i10;
                this.f56919l = 1.0f;
            } else {
                this.f56918k = -2;
            }
            this.f56915h = i4;
            this.f56916i.invalidate();
        }

        public void e(float f10, boolean z9) {
            if (!z9) {
                this.f56913f = f10;
                this.f56911d = f10;
            } else {
                this.f56911d = this.f56913f;
            }
            this.f56910c = f10;
            this.f56912e = 0L;
        }

        public void f(float f10) {
            this.f56921n = f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f56923a;

        f(c0 c0Var) {
            this.f56923a = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.O = false;
            this.f56923a.f56892a.q0(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f56925a;

        g(c0 c0Var) {
            this.f56925a = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f56844i.setLayerType(0, null);
            o.this.J = 0;
            o.this.O0(this.f56925a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class h extends com.tangxiaolv.telegramgallery.a {

        /* compiled from: PhotoViewer.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (o.this.L != null) {
                    o.this.L.run();
                    o.this.L = null;
                }
            }
        }

        h() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            com.tangxiaolv.telegramgallery.Utils.a.D(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f56929a;

        i(c0 c0Var) {
            this.f56929a = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.this.f56844i == null) {
                return;
            }
            o.this.f56844i.setLayerType(0, null);
            o.this.J = 0;
            o.this.O0(this.f56929a);
            o.this.f56844i.setScaleX(1.0f);
            o.this.f56844i.setScaleY(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class j extends com.tangxiaolv.telegramgallery.a {
        j() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (o.this.L != null) {
                o.this.L.run();
                o.this.L = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class k extends a0 {
        k(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                o.E0().t0(true, false);
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f56848k.setImageBitmap(null);
            try {
                if (o.this.f56846j.getParent() != null) {
                    ((WindowManager) o.this.f56832d.getSystemService("window")).removeView(o.this.f56846j);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56934a;

        m(int i4) {
            this.f56934a = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.U0(this.f56934a + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class n extends com.tangxiaolv.telegramgallery.a {
        n() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            o.this.P2 = null;
            o.this.f56844i.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* renamed from: com.tangxiaolv.telegramgallery.o$o  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0493o implements Runnable {
        RunnableC0493o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.this.f56854n.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) o.this.f56854n.getLayoutParams();
                int rotation = ((WindowManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("window")).getDefaultDisplay().getRotation();
                layoutParams.topMargin = com.tangxiaolv.telegramgallery.Utils.a.g((rotation == 3 || rotation == 1) ? 58.0f : 68.0f);
                o.this.f56854n.setLayoutParams(layoutParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class p extends a.e {
        p() {
        }

        @Override // com.tangxiaolv.telegramgallery.Actionbar.a.e
        public boolean a() {
            if (o.this.U != null) {
                if (com.tangxiaolv.telegramgallery.Utils.d.G(o.this.U, o.this.f56859p1 != 0).exists()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.tangxiaolv.telegramgallery.Actionbar.a.e
        public void b(int i4) {
            if (i4 == -1) {
                o.this.t0(true, false);
            } else if (i4 == 4) {
                o.this.f56832d.R(o.this.f56827b1);
            } else if (i4 != 1 || o.this.f56826b == null) {
            } else {
                if (o.this.f56826b instanceof d0) {
                    d0 d0Var = (d0) o.this.f56826b;
                    d0Var.p(o.this.T, !o.this.f56854n.c());
                    o.this.f56854n.d(o.this.T + 1, !o.this.f56854n.c(), true);
                    o.this.f56856o.a(d0Var.d(), true);
                    return;
                }
                o.this.f56826b.f(o.this.T);
                if (o.this.f56826b.k()) {
                    int n9 = o.this.f56826b.n(o.this.T);
                    if (-1 == n9 && !o.this.f56854n.c()) {
                        String str = com.tangxiaolv.telegramgallery.m.G;
                        String format = String.format(com.tangxiaolv.telegramgallery.e.f56717a.getString(q.o.f58202i), Integer.valueOf(com.tangxiaolv.telegramgallery.m.F));
                        if (!TextUtils.isEmpty(str)) {
                            format = com.tangxiaolv.telegramgallery.m.G;
                        }
                        com.tangxiaolv.telegramgallery.Utils.a.J(format);
                    }
                    o.this.f56854n.d(n9, o.this.f56826b.a(o.this.T), true);
                    o.this.f1();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f56826b != null) {
                if (o.this.f56826b.d() != 0 || o.this.f56826b.g()) {
                    o.this.f56826b.m(o.this.T);
                    o.this.t0(false, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.P == 1) {
                o.this.f56870u.c();
            }
            o.this.b1(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.P == 1) {
                o.this.f56870u.c();
                if (o.this.P2 != null) {
                    return;
                }
            }
            o.this.o0();
            o.this.b1(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.R.k0(o.this.R.x() - 90, false);
            o.this.f56870u.setOrientation(o.this.R.x());
            o.this.f56844i.invalidate();
        }
    }

    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    class u implements DialogInterface.OnDismissListener {
        u() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            o.this.f56872v = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class v extends com.tangxiaolv.telegramgallery.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56944a;

        /* compiled from: PhotoViewer.java */
        /* loaded from: classes3.dex */
        class a extends com.tangxiaolv.telegramgallery.a {
            a() {
            }

            @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                o.this.f56856o.setVisibility(0);
                o.this.f56836f.setVisibility(0);
                if (o.this.f56879y == 0) {
                    o.this.f56854n.setVisibility(0);
                }
            }
        }

        v(int i4) {
            this.f56944a = i4;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (o.this.P == 1) {
                o.this.f56858p.setVisibility(8);
                o.this.f56870u.setVisibility(8);
            }
            o.this.P2 = null;
            o.this.P = this.f56944a;
            o.this.L2 = 1.0f;
            o.this.J2 = 0.0f;
            o.this.K2 = 0.0f;
            o.this.I2 = 1.0f;
            o oVar = o.this;
            oVar.e1(oVar.I2);
            o.this.f56844i.invalidate();
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(o.this.f56856o, "translationY", 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(o.this.f56836f, "translationY", 0.0f));
            if (o.this.f56879y == 0) {
                arrayList.add(ObjectAnimator.ofFloat(o.this.f56854n, "alpha", 1.0f));
            }
            animatorSet.playTogether(arrayList);
            animatorSet.setDuration(200L);
            animatorSet.addListener(new a());
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class w implements d.b {
        w() {
        }

        @Override // com.tangxiaolv.telegramgallery.Components.d.b
        public Bitmap a() {
            return o.this.R.g();
        }

        @Override // com.tangxiaolv.telegramgallery.Components.d.b
        public void b(float f10, float f11, float f12, boolean z9) {
            if (z9) {
                o.this.m0(f12, f10, f11, true);
                return;
            }
            o.this.G2 = f10;
            o.this.H2 = f11;
            o.this.I2 = f12;
            o.this.f56844i.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class x extends ColorDrawable {

        /* renamed from: a  reason: collision with root package name */
        private Runnable f56948a;

        public x(int i4) {
            super(i4);
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Runnable runnable;
            super.draw(canvas);
            if (getAlpha() == 0 || (runnable = this.f56948a) == null) {
                return;
            }
            runnable.run();
            this.f56948a = null;
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        public void setAlpha(int i4) {
            super.setAlpha(i4);
        }
    }

    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public static class y implements b0 {
        @Override // com.tangxiaolv.telegramgallery.o.b0
        public boolean a(int i4) {
            return false;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void b() {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void c() {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public int d() {
            return 0;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void e(com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void f(int i4) {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public boolean g() {
            return false;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void i(int i4) {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public Bitmap j(com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
            return null;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public boolean k() {
            return true;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public boolean l() {
            return true;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public void m(int i4) {
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public int n(int i4) {
            return -1;
        }

        @Override // com.tangxiaolv.telegramgallery.o.b0
        public c0 o(com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewer.java */
    /* loaded from: classes3.dex */
    public class z extends com.tangxiaolv.telegramgallery.Components.i {
        public z(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j4) {
            return view != o.this.A && super.drawChild(canvas, view, j4);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            o.E0().L0(canvas);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0061  */
        @Override // com.tangxiaolv.telegramgallery.Components.i, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        protected void onLayout(boolean r9, int r10, int r11, int r12, int r13) {
            /*
                r8 = this;
                int r9 = r8.getChildCount()
                r0 = 0
            L5:
                if (r0 >= r9) goto L76
                android.view.View r1 = r8.getChildAt(r0)
                int r2 = r1.getVisibility()
                r3 = 8
                if (r2 != r3) goto L14
                goto L73
            L14:
                android.view.ViewGroup$LayoutParams r2 = r1.getLayoutParams()
                android.widget.FrameLayout$LayoutParams r2 = (android.widget.FrameLayout.LayoutParams) r2
                int r3 = r1.getMeasuredWidth()
                int r4 = r1.getMeasuredHeight()
                int r5 = r2.gravity
                r6 = -1
                if (r5 != r6) goto L29
                r5 = 51
            L29:
                r6 = r5 & 7
                r5 = r5 & 112(0x70, float:1.57E-43)
                r6 = r6 & 7
                r7 = 1
                if (r6 == r7) goto L3d
                r7 = 5
                if (r6 == r7) goto L38
                int r6 = r2.leftMargin
                goto L48
            L38:
                int r6 = r12 - r3
                int r7 = r2.rightMargin
                goto L47
            L3d:
                int r6 = r12 - r10
                int r6 = r6 - r3
                int r6 = r6 / 2
                int r7 = r2.leftMargin
                int r6 = r6 + r7
                int r7 = r2.rightMargin
            L47:
                int r6 = r6 - r7
            L48:
                r7 = 16
                if (r5 == r7) goto L61
                r7 = 48
                if (r5 == r7) goto L5e
                r7 = 80
                if (r5 == r7) goto L57
                int r2 = r2.topMargin
                goto L6e
            L57:
                int r5 = r13 + 0
                int r5 = r5 - r11
                int r5 = r5 - r4
                int r2 = r2.bottomMargin
                goto L6c
            L5e:
                int r2 = r2.topMargin
                goto L6e
            L61:
                int r5 = r13 + 0
                int r5 = r5 - r11
                int r5 = r5 - r4
                int r5 = r5 / 2
                int r7 = r2.topMargin
                int r5 = r5 + r7
                int r2 = r2.bottomMargin
            L6c:
                int r2 = r5 - r2
            L6e:
                int r3 = r3 + r6
                int r4 = r4 + r2
                r1.layout(r6, r2, r3, r4)
            L73:
                int r0 = r0 + 1
                goto L5
            L76:
                r8.c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.z.onLayout(boolean, int, int, int, int):void");
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i4, int i10) {
            int size = View.MeasureSpec.getSize(i4);
            int size2 = View.MeasureSpec.getSize(i10);
            if (size2 > com.tangxiaolv.telegramgallery.Utils.a.f56375d.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b) {
                size2 = com.tangxiaolv.telegramgallery.Utils.a.f56375d.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b;
            }
            setMeasuredDimension(size, size2);
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    measureChildWithMargins(childAt, i4, 0, i10, 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A0() {
        return B0(this.P);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int B0(int i4) {
        int width = this.f56844i.getWidth();
        return i4 != 0 ? width - com.tangxiaolv.telegramgallery.Utils.a.g(28.0f) : width;
    }

    private com.tangxiaolv.telegramgallery.TL.d C0(int i4, int[] iArr) {
        if (i4 >= 0 && !this.f56865r3.isEmpty() && i4 < this.f56865r3.size()) {
            iArr[0] = this.f56869t3.get(i4).intValue();
            return this.f56865r3.get(i4);
        }
        return null;
    }

    private String D0(int i4) {
        String str;
        if (i4 < 0) {
            return null;
        }
        if (!this.f56865r3.isEmpty()) {
            if (this.f56865r3.isEmpty() || i4 >= this.f56865r3.size()) {
                return null;
            }
            com.tangxiaolv.telegramgallery.TL.d dVar = this.f56865r3.get(i4);
            return dVar.f56288d + "_" + dVar.f56289e + ".jpg";
        } else if (this.f56871u3.isEmpty() || i4 >= this.f56871u3.size()) {
            return null;
        } else {
            Object obj = this.f56871u3.get(i4);
            if (obj instanceof g.l) {
                g.l lVar = (g.l) obj;
                com.tangxiaolv.telegramgallery.TL.b bVar = lVar.f56676m;
                if (bVar != null) {
                    return com.tangxiaolv.telegramgallery.Utils.d.v(bVar);
                }
                if (lVar.f56671h != 1 && (str = lVar.f56667d) != null && str.length() > 0) {
                    File file = new File(lVar.f56667d);
                    if (file.exists()) {
                        return file.getName();
                    }
                    lVar.f56667d = "";
                }
                return com.tangxiaolv.telegramgallery.Utils.i.a(lVar.f56665b) + "." + com.tangxiaolv.telegramgallery.Utils.e.Q(lVar.f56665b, "jpg");
            }
        }
        return null;
    }

    public static o E0() {
        o oVar = B3;
        if (oVar == null) {
            synchronized (o.class) {
                oVar = B3;
                if (oVar == null) {
                    oVar = new o();
                    B3 = oVar;
                }
            }
        }
        return oVar;
    }

    private void F0() {
        float A0 = this.I2 != 1.0f ? ((A0() - this.R.r()) / 2) * this.I2 : 0.0f;
        this.f56857o3 = 1;
        m0(this.I2, ((this.f56829b3 - A0()) - A0) - (this.f56875w3 / 2), this.H2, false);
    }

    private void G0() {
        float A0 = this.I2 != 1.0f ? ((A0() - this.R.r()) / 2) * this.I2 : 0.0f;
        this.f56857o3 = 2;
        m0(this.I2, this.f56831c3 + A0() + A0 + (this.f56875w3 / 2), this.H2, false);
    }

    private void K0(boolean z9) {
        String str = this.V[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:165:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01bc  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void L0(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 1114
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.L0(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"DrawAllocation"})
    public void M0(boolean z9, int i4, int i10, int i11, int i12) {
        if (z9) {
            this.I2 = 1.0f;
            this.G2 = 0.0f;
            this.H2 = 0.0f;
            e1(1.0f);
            com.tangxiaolv.telegramgallery.Components.b bVar = this.f56854n;
            if (bVar != null) {
                bVar.post(new RunnableC0493o());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0(c0 c0Var) {
        this.f56830c = false;
        this.O = true;
        this.U = null;
        this.f56827b1 = null;
        this.f56839g1 = null;
        AnimatedFileDrawable animatedFileDrawable = this.f56882z;
        if (animatedFileDrawable != null) {
            animatedFileDrawable.I(null);
            this.f56882z = null;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            e0[] e0VarArr = this.f56862q;
            if (e0VarArr[i4] != null) {
                e0VarArr[i4].d(-1, false);
            }
        }
        this.R.e0(null);
        this.Q.e0(null);
        this.S.e0(null);
        this.f56844i.post(new l());
        b0 b0Var = this.f56826b;
        if (b0Var != null) {
            b0Var.c();
        }
        this.f56826b = null;
        this.O = false;
        if (c0Var != null) {
            c0Var.f56892a.q0(true, true);
        }
    }

    private void P0(com.tangxiaolv.telegramgallery.TL.d dVar, List<Object> list, int i4, c0 c0Var) {
        int i10 = com.tangxiaolv.telegramgallery.Actionbar.f.f56040j;
        com.tangxiaolv.telegramgallery.Actionbar.f.f56040j = i10 + 1;
        this.f56824a = i10;
        this.U = null;
        this.f56827b1 = null;
        this.T = -1;
        String[] strArr = this.V;
        strArr[0] = null;
        strArr[1] = null;
        strArr[2] = null;
        this.f56859p1 = 0;
        this.T1 = 0;
        this.V1 = 0;
        this.P = 0;
        this.f56828b2 = true;
        this.f56840g2 = false;
        this.f56860p2 = false;
        boolean[] zArr = this.f56878x2;
        zArr[0] = false;
        zArr[1] = this.f56880y1 == 0;
        this.f56881y2 = false;
        this.f56874w = true;
        this.f56865r3.clear();
        this.f56869t3.clear();
        this.f56867s3.clear();
        this.f56871u3.clear();
        this.f56873v3 = null;
        this.f56844i.setPadding(0, 0, 0, 0);
        this.f56839g1 = c0Var != null ? c0Var.f56896e : null;
        this.f56850l.setVisibility(0);
        this.f56836f.setTranslationY(0.0f);
        this.f56856o.setTranslationY(0.0f);
        this.f56854n.setAlpha(1.0f);
        this.f56856o.setAlpha(1.0f);
        this.f56854n.setVisibility(this.f56876x ? 0 : 8);
        this.f56856o.setVisibility(this.f56876x ? 0 : 8);
        this.f56864r.setVisibility(8);
        this.f56858p.setVisibility(8);
        com.tangxiaolv.telegramgallery.Components.d dVar2 = this.f56870u;
        if (dVar2 != null) {
            dVar2.setVisibility(8);
        }
        for (int i11 = 0; i11 < 3; i11++) {
            e0[] e0VarArr = this.f56862q;
            if (e0VarArr[i11] != null) {
                e0VarArr[i11].d(-1, false);
            }
        }
        if (dVar != null) {
            this.f56859p1 = c0Var.f56897f;
            this.f56865r3.add(dVar);
            this.f56869t3.add(Integer.valueOf(c0Var.f56899h));
            this.f56867s3.add(new k.b());
            W0(0, true);
            this.f56873v3 = dVar;
        } else if (list != null) {
            if (this.f56879y == 0) {
                this.f56854n.setVisibility(0);
            }
            this.f56871u3.addAll(list);
            W0(i4, true);
            this.f56856o.setVisibility(0);
            this.f56850l.setVisibility(8);
            this.f56874w = false;
            this.f56871u3.get(i4);
            this.f56864r.setVisibility(0);
            f1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02ed, code lost:
        if (r13 > r3) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02fc, code lost:
        if (r0 > r3) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c2, code lost:
        if (r2 > r3) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x03d3, code lost:
        if (r2 > r3) goto L205;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0252  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean R0(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.R0(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U0(int i4) {
        z zVar;
        if (i4 >= 6 || (zVar = this.f56844i) == null) {
            return;
        }
        zVar.invalidate();
        com.tangxiaolv.telegramgallery.Utils.a.E(new m(i4), 100L);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void W0(int r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.W0(int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0() {
        if (this.J == 0) {
            Y0(this.R, this.T);
            Y0(this.S, this.T + 1);
            Y0(this.Q, this.T - 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.graphics.drawable.BitmapDrawable] */
    /* JADX WARN: Type inference failed for: r2v17, types: [android.graphics.drawable.BitmapDrawable] */
    /* JADX WARN: Type inference failed for: r4v19, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.graphics.drawable.Drawable] */
    private void Y0(com.tangxiaolv.telegramgallery.k kVar, int i4) {
        com.tangxiaolv.telegramgallery.TL.b bVar;
        String str;
        String str2;
        int i10;
        com.tangxiaolv.telegramgallery.TL.b bVar2;
        kVar.k0(0, false);
        if (!this.f56871u3.isEmpty()) {
            if (i4 >= 0 && i4 < this.f56871u3.size()) {
                Object obj = this.f56871u3.get(i4);
                int o9 = (int) (com.tangxiaolv.telegramgallery.Utils.a.o() / com.tangxiaolv.telegramgallery.Utils.a.f56374c);
                Bitmap bitmap = this.f56839g1;
                if (bitmap == null || kVar != this.R) {
                    bitmap = null;
                }
                if (bitmap == null) {
                    bitmap = this.f56826b.j(null, i4);
                }
                if (obj instanceof g.k) {
                    g.k kVar2 = (g.k) obj;
                    String str3 = kVar2.f56661h;
                    if (str3 == null) {
                        kVar.k0(kVar2.f56659f, false);
                        str3 = kVar2.f56658e;
                    }
                    str2 = String.format(Locale.US, "%d_%d", Integer.valueOf(o9), Integer.valueOf(o9));
                    i10 = 0;
                    str = str3;
                    bVar = null;
                } else if (obj instanceof g.l) {
                    g.l lVar = (g.l) obj;
                    String str4 = lVar.f56674k;
                    if (str4 != null) {
                        bVar2 = null;
                        i10 = 0;
                    } else {
                        com.tangxiaolv.telegramgallery.TL.b bVar3 = lVar.f56676m;
                        if (bVar3 != null) {
                            i10 = bVar3.f56254i;
                            bVar2 = bVar3;
                            str4 = null;
                        } else {
                            str4 = lVar.f56665b;
                            i10 = lVar.f56670g;
                            bVar2 = null;
                        }
                    }
                    str2 = "d";
                    com.tangxiaolv.telegramgallery.TL.b bVar4 = bVar2;
                    str = str4;
                    bVar = bVar4;
                } else {
                    bVar = null;
                    str = null;
                    str2 = null;
                    i10 = 0;
                }
                if (bVar != null) {
                    kVar.c0(bVar, null, "d", bitmap != null ? new BitmapDrawable((Resources) null, bitmap) : null, bitmap == null ? bVar.f56255j.f56347d : null, String.format(Locale.US, "%d_%d", Integer.valueOf(o9), Integer.valueOf(o9)), i10, null, false);
                    return;
                } else {
                    kVar.d0(str, str2, bitmap != null ? new BitmapDrawable((Resources) null, bitmap) : null, null, i10);
                    return;
                }
            }
            kVar.e0(null);
            return;
        }
        int[] iArr = new int[1];
        com.tangxiaolv.telegramgallery.TL.d C0 = C0(i4, iArr);
        if (C0 != null) {
            kVar.j0(false);
            Bitmap bitmap2 = this.f56839g1;
            if (bitmap2 == null || kVar != this.R) {
                bitmap2 = null;
            }
            if (iArr[0] == 0) {
                iArr[0] = -1;
            }
            kVar.c0(C0, null, null, bitmap2 != null ? new BitmapDrawable((Resources) null, bitmap2) : null, null, "b", iArr[0], null, this.f56859p1 != 0);
            return;
        }
        kVar.j0(false);
        if (iArr[0] == 0) {
            kVar.e0(null);
        } else {
            kVar.f0(this.f56832d.getResources().getDrawable(q.h.N2));
        }
    }

    private void a1(AlertDialog.Builder builder) {
        if (this.f56832d == null) {
            return;
        }
        try {
            AlertDialog alertDialog = this.f56872v;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f56872v = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            AlertDialog show = builder.show();
            this.f56872v = show;
            show.setCanceledOnTouchOutside(true);
            this.f56872v.setOnDismissListener(new u());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(int i4) {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar;
        if (this.P != i4 && this.R.g() != null && this.Q2 == null && this.P2 == null && this.f56862q[0].f56915h == -1) {
            if (i4 != 0) {
                if (i4 == 1) {
                    if (this.f56870u == null) {
                        com.tangxiaolv.telegramgallery.Components.d dVar = new com.tangxiaolv.telegramgallery.Components.d(this.f56834e);
                        this.f56870u = dVar;
                        dVar.setVisibility(8);
                        this.f56844i.addView(this.f56870u, com.tangxiaolv.telegramgallery.Utils.f.b(-1, -1.0f, 51, 0.0f, 0.0f, 0.0f, 48.0f));
                        this.f56870u.setDelegate(new w());
                    }
                    this.f56858p.f56221c.setText(q.o.f58198h);
                    this.Q2 = new AnimatorSet();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(ObjectAnimator.ofFloat(this.f56856o, "translationY", 0.0f, com.tangxiaolv.telegramgallery.Utils.a.g(96.0f)));
                    arrayList.add(ObjectAnimator.ofFloat(this.f56836f, "translationY", 0.0f, -aVar.getHeight()));
                    if (this.f56879y == 0) {
                        arrayList.add(ObjectAnimator.ofFloat(this.f56854n, "alpha", 1.0f, 0.0f));
                    }
                    this.Q2.playTogether(arrayList);
                    this.Q2.setDuration(200L);
                    this.Q2.addListener(new a(i4));
                    this.Q2.start();
                    return;
                }
                return;
            }
            if (this.R.g() != null) {
                int j4 = this.R.j();
                float f10 = j4;
                float A0 = A0() / f10;
                float i10 = this.R.i();
                float y02 = y0() / i10;
                float B0 = B0(0) / f10;
                float z02 = z0(0) / i10;
                if (A0 > y02) {
                    A0 = y02;
                }
                if (B0 > z02) {
                    B0 = z02;
                }
                this.L2 = B0 / A0;
                this.J2 = 0.0f;
                int i11 = this.P;
                if (i11 == 1) {
                    this.K2 = com.tangxiaolv.telegramgallery.Utils.a.g(24.0f);
                } else if (i11 == 2) {
                    this.K2 = com.tangxiaolv.telegramgallery.Utils.a.g(62.0f);
                }
                this.O2 = System.currentTimeMillis();
                this.f56853m3 = true;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.P2 = animatorSet;
            if (this.P == 1) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.f56858p, "translationY", com.tangxiaolv.telegramgallery.Utils.a.g(48.0f)), ObjectAnimator.ofFloat(this, "animationValue", 0.0f, 1.0f), ObjectAnimator.ofFloat(this.f56870u, "alpha", 0.0f));
            }
            this.P2.setDuration(200L);
            this.P2.addListener(new v(i4));
            this.P2.start();
        }
    }

    private void c1(boolean z9, boolean z10) {
        if (z9) {
            this.f56836f.setVisibility(0);
            if (this.f56874w) {
                this.f56850l.setVisibility(0);
            }
        }
        this.f56838g = z9;
        this.f56836f.setEnabled(z9);
        this.f56850l.setEnabled(z9);
        if (z10) {
            ArrayList arrayList = new ArrayList();
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56836f;
            float[] fArr = new float[1];
            fArr[0] = z9 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(aVar, "alpha", fArr));
            FrameLayout frameLayout = this.f56850l;
            float[] fArr2 = new float[1];
            fArr2[0] = z9 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout, "alpha", fArr2));
            AnimatorSet animatorSet = new AnimatorSet();
            this.f56868t = animatorSet;
            animatorSet.playTogether(arrayList);
            if (!z9) {
                this.f56868t.addListener(new b());
            }
            this.f56868t.setDuration(200L);
            this.f56868t.start();
            return;
        }
        this.f56836f.setAlpha(z9 ? 1.0f : 0.0f);
        this.f56850l.setAlpha(z9 ? 1.0f : 0.0f);
        if (z9) {
            return;
        }
        this.f56836f.setVisibility(8);
        if (this.f56874w) {
            this.f56850l.setVisibility(8);
        }
    }

    private void d1(boolean z9) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        com.tangxiaolv.telegramgallery.Components.h hVar = this.f56856o;
        float[] fArr = new float[1];
        fArr[0] = z9 ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(hVar, "alpha", fArr));
        if (this.f56879y == 0) {
            com.tangxiaolv.telegramgallery.Components.b bVar = this.f56854n;
            float[] fArr2 = new float[1];
            fArr2[0] = z9 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(bVar, "alpha", fArr2));
        }
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(200L);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1(float f10) {
        int r9 = ((int) ((this.R.r() * f10) - A0())) / 2;
        int p9 = ((int) ((this.R.p() * f10) - y0())) / 2;
        if (r9 > 0) {
            this.f56829b3 = -r9;
            this.f56831c3 = r9;
        } else {
            this.f56831c3 = 0.0f;
            this.f56829b3 = 0.0f;
        }
        if (p9 > 0) {
            this.f56833d3 = -p9;
            this.f56835e3 = p9;
        } else {
            this.f56835e3 = 0.0f;
            this.f56833d3 = 0.0f;
        }
        if (this.P == 1) {
            this.f56831c3 += this.f56870u.getLimitX();
            this.f56835e3 += this.f56870u.getLimitY();
            this.f56829b3 -= this.f56870u.getLimitWidth();
            this.f56833d3 -= this.f56870u.getLimitHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f1() {
        b0 b0Var = this.f56826b;
        if (b0Var == null) {
            return;
        }
        this.f56856o.a(b0Var.d(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(float f10, float f11, float f12, boolean z9) {
        n0(f10, f11, f12, z9, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    private void n0(float f10, float f11, float f12, boolean z9, int i4) {
        if (this.I2 == f10 && this.G2 == f11 && this.H2 == f12) {
            return;
        }
        this.f56853m3 = z9;
        this.L2 = f10;
        this.J2 = f11;
        this.K2 = f12;
        this.O2 = System.currentTimeMillis();
        AnimatorSet animatorSet = new AnimatorSet();
        this.P2 = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, "animationValue", 0.0f, 1.0f));
        this.P2.setInterpolator(this.S2);
        this.P2.setDuration(i4);
        this.P2.addListener(new n());
        this.P2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        p0(null);
    }

    private boolean q0() {
        if (this.J != 0 && Math.abs(this.K - System.currentTimeMillis()) >= 500) {
            Runnable runnable = this.L;
            if (runnable != null) {
                runnable.run();
                this.L = null;
            }
            this.J = 0;
        }
        return this.J != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r2 > r3) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        if (r2 > r3) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void r0(boolean r6) {
        /*
            r5 = this;
            float r0 = r5.G2
            float r1 = r5.H2
            float r2 = r5.I2
            r5.e1(r2)
            float r2 = r5.G2
            float r3 = r5.f56829b3
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L13
        L11:
            r0 = r3
            goto L1a
        L13:
            float r3 = r5.f56831c3
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L1a
            goto L11
        L1a:
            float r2 = r5.H2
            float r3 = r5.f56833d3
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L24
        L22:
            r1 = r3
            goto L2b
        L24:
            float r3 = r5.f56835e3
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L2b
            goto L22
        L2b:
            float r2 = r5.I2
            r5.m0(r2, r0, r1, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.r0(boolean):void");
    }

    private void s0(int i4, boolean z9) {
        if (this.V[i4] != null) {
            int i10 = this.T;
            boolean z10 = true;
            if (i4 == 1) {
                i10++;
            } else if (i4 == 2) {
                i10--;
            }
            File file = null;
            if (this.U != null) {
                file = com.tangxiaolv.telegramgallery.Utils.d.G(this.f56865r3.get(i10), this.f56859p1 != 0);
            } else if (this.f56827b1 != null) {
                file = new File(com.tangxiaolv.telegramgallery.Utils.d.D().z(3), this.V[i4]);
                if (!file.exists()) {
                    file = new File(com.tangxiaolv.telegramgallery.Utils.d.D().z(4), this.V[i4]);
                }
            }
            if (file != null && file.exists()) {
                this.f56862q[i4].d(-1, z9);
            } else {
                this.f56862q[i4].d(0, z9);
                Float P = com.tangxiaolv.telegramgallery.Utils.e.T().P(this.V[i4]);
                if (P == null) {
                    P = Float.valueOf(0.0f);
                }
                this.f56862q[i4].e(P.floatValue(), false);
            }
            if (i4 == 0) {
                if (this.f56871u3.isEmpty() && (this.V[0] == null || this.f56862q[0].f56915h == 0)) {
                    z10 = false;
                }
                this.f56837f3 = z10;
                return;
            }
            return;
        }
        this.f56862q[i4].d(-1, z9);
    }

    private int v0() {
        if (this.P != 0) {
            return com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        }
        return 0;
    }

    private int w0() {
        if (this.P != 0) {
            return com.tangxiaolv.telegramgallery.Utils.a.g(14.0f);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int y0() {
        return z0(this.P);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int z0(int i4) {
        int g4;
        int i10 = com.tangxiaolv.telegramgallery.Utils.a.f56375d.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b;
        if (i4 == 1) {
            g4 = com.tangxiaolv.telegramgallery.Utils.a.g(76.0f);
        } else if (i4 != 2) {
            return i10;
        } else {
            g4 = com.tangxiaolv.telegramgallery.Utils.a.g(154.0f);
        }
        return i10 - g4;
    }

    public boolean H0(com.tangxiaolv.telegramgallery.TL.d dVar) {
        com.tangxiaolv.telegramgallery.TL.d dVar2;
        return this.f56830c && !this.O && dVar != null && (dVar2 = this.U) != null && dVar.f56289e == dVar2.f56289e && dVar.f56288d == dVar2.f56288d && dVar.f56287c == dVar2.f56287c;
    }

    public boolean I0(String str) {
        String str2;
        return (!this.f56830c || this.O || str == null || (str2 = this.f56827b1) == null || !str.equals(str2)) ? false : true;
    }

    public boolean J0() {
        return this.f56830c && this.f56826b != null;
    }

    public void N0() {
        if (this.f56882z != null) {
            t0(false, false);
        }
    }

    public void Q0() {
        U0(0);
    }

    public void S0(com.tangxiaolv.telegramgallery.TL.d dVar, List<Object> list, int i4, b0 b0Var, long j4, long j10) {
        if (this.f56832d == null || this.f56830c) {
            return;
        }
        if (b0Var == null && q0()) {
            return;
        }
        if (dVar == null && list == null) {
            return;
        }
        c0 o9 = b0Var.o(dVar, i4);
        if (o9 == null && list == null) {
            return;
        }
        WindowManager windowManager = (WindowManager) this.f56832d.getSystemService("window");
        if (this.f56846j.f56886a) {
            try {
                windowManager.removeView(this.f56846j);
            } catch (Exception unused) {
            }
        }
        try {
            WindowManager.LayoutParams layoutParams = this.f56842h;
            layoutParams.type = 99;
            layoutParams.flags = 8;
            layoutParams.softInputMode = 0;
            this.f56846j.setFocusable(false);
            this.f56844i.setFocusable(false);
            windowManager.addView(this.f56846j, this.f56842h);
            this.f56836f.setTitle(this.f56834e.getString(q.o.f58226o, 1, 1));
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.C);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.B);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.A);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56685n);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56684m);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56686o);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56694w);
            this.f56826b = b0Var;
            this.f56880y1 = j10;
            this.f56877x1 = j4;
            if (this.f56861p3 == null) {
                this.f56861p3 = VelocityTracker.obtain();
            }
            this.f56830c = true;
            c1(true, false);
            if (o9 != null) {
                this.O = true;
                this.J = 1;
                P0(dVar, list, i4, o9);
                Rect l10 = o9.f56892a.l();
                int x9 = o9.f56892a.x();
                this.f56848k.setVisibility(0);
                this.f56848k.setRadius(o9.f56900i);
                this.f56848k.setOrientation(x9);
                this.f56848k.setNeedRadius(o9.f56900i != 0);
                this.f56848k.setImageBitmap(o9.f56896e);
                this.f56848k.setAlpha(1.0f);
                this.f56848k.setPivotX(0.0f);
                this.f56848k.setPivotY(0.0f);
                this.f56848k.setScaleX(o9.f56903l);
                this.f56848k.setScaleY(o9.f56903l);
                this.f56848k.setTranslationX(o9.f56893b + (l10.left * o9.f56903l));
                this.f56848k.setTranslationY(o9.f56894c + (l10.top * o9.f56903l));
                ViewGroup.LayoutParams layoutParams2 = this.f56848k.getLayoutParams();
                layoutParams2.width = l10.right - l10.left;
                layoutParams2.height = l10.bottom - l10.top;
                this.f56848k.setLayoutParams(layoutParams2);
                Point point = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
                int i10 = layoutParams2.width;
                float f10 = point.x / i10;
                int i11 = layoutParams2.height;
                float f11 = (point.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b) / i11;
                if (f10 > f11) {
                    f10 = f11;
                }
                Point point2 = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
                float f12 = (point2.x - (i10 * f10)) / 2.0f;
                float f13 = ((point2.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b) - (i11 * f10)) / 2.0f;
                int abs = Math.abs(l10.left - o9.f56892a.s());
                int abs2 = Math.abs(l10.top - o9.f56892a.u());
                int[] iArr = new int[2];
                o9.f56895d.getLocationInWindow(iArr);
                int i12 = o9.f56894c;
                int i13 = l10.top;
                int i14 = ((iArr[1] - com.tangxiaolv.telegramgallery.Utils.a.f56373b) - (i12 + i13)) + o9.f56902k;
                if (i14 < 0) {
                    i14 = 0;
                }
                int height = (((i12 + i13) + layoutParams2.height) - ((iArr[1] + o9.f56895d.getHeight()) - com.tangxiaolv.telegramgallery.Utils.a.f56373b)) + o9.f56901j;
                if (height < 0) {
                    height = 0;
                }
                int max = Math.max(i14, abs2);
                int max2 = Math.max(height, abs2);
                this.I[0][0] = this.f56848k.getScaleX();
                this.I[0][1] = this.f56848k.getScaleY();
                this.I[0][2] = this.f56848k.getTranslationX();
                this.I[0][3] = this.f56848k.getTranslationY();
                float[][] fArr = this.I;
                float[] fArr2 = fArr[0];
                float f14 = o9.f56903l;
                fArr2[4] = abs * f14;
                fArr[0][5] = max * f14;
                fArr[0][6] = max2 * f14;
                fArr[0][7] = this.f56848k.getRadius();
                float[][] fArr3 = this.I;
                fArr3[1][0] = f10;
                fArr3[1][1] = f10;
                fArr3[1][2] = f12;
                fArr3[1][3] = f13;
                fArr3[1][4] = 0.0f;
                fArr3[1][5] = 0.0f;
                fArr3[1][6] = 0.0f;
                fArr3[1][7] = 0.0f;
                this.f56848k.setAnimationProgress(0.0f);
                this.f56852m.setAlpha(0);
                this.f56844i.setAlpha(0.0f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.f56848k, "animationProgress", 0.0f, 1.0f), ObjectAnimator.ofInt(this.f56852m, "alpha", 0, 255), ObjectAnimator.ofFloat(this.f56844i, "alpha", 0.0f, 1.0f));
                this.L = new c(list);
                animatorSet.setDuration(200L);
                animatorSet.addListener(new d());
                this.K = System.currentTimeMillis();
                com.tangxiaolv.telegramgallery.Utils.a.D(new e(animatorSet));
                this.f56844i.setLayerType(2, null);
                this.f56852m.f56948a = new f(o9);
                return;
            }
            if (list != null) {
                WindowManager.LayoutParams layoutParams3 = this.f56842h;
                layoutParams3.flags = 0;
                layoutParams3.softInputMode = 32;
                windowManager.updateViewLayout(this.f56846j, layoutParams3);
                this.f56846j.setFocusable(true);
                this.f56844i.setFocusable(true);
            }
            this.f56852m.setAlpha(255);
            this.f56844i.setAlpha(1.0f);
            P0(dVar, list, i4, o9);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void T0(List<Object> list, boolean z9, int i4, int i10, b0 b0Var) {
        this.f56876x = z9;
        this.f56879y = i10;
        com.tangxiaolv.telegramgallery.Components.h hVar = this.f56856o;
        if (hVar != null) {
            hVar.f56221c.setText(q.o.f58262x);
        }
        S0(null, list, i4, b0Var, 0L, 0L);
    }

    public void V0(float f10) {
        this.M2 = f10;
        this.f56844i.invalidate();
    }

    public void Z0(GalleryActivity galleryActivity) {
        if (this.f56832d == galleryActivity) {
            return;
        }
        this.f56832d = galleryActivity;
        this.f56834e = new ContextThemeWrapper(this.f56832d, q.p.f58306c9);
        this.f56863q3 = new Scroller(galleryActivity);
        k kVar = new k(galleryActivity);
        this.f56846j = kVar;
        kVar.setBackgroundDrawable(this.f56852m);
        this.f56846j.setFocusable(false);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f56846j.setFitsSystemWindows(true);
        }
        com.tangxiaolv.telegramgallery.Components.c cVar = new com.tangxiaolv.telegramgallery.Components.c(galleryActivity);
        this.f56848k = cVar;
        cVar.setAnimationValues(this.I);
        this.f56846j.addView(this.f56848k, com.tangxiaolv.telegramgallery.Utils.f.a(40, 40.0f));
        z zVar = new z(galleryActivity);
        this.f56844i = zVar;
        zVar.setFocusable(false);
        this.f56846j.addView(this.f56844i, com.tangxiaolv.telegramgallery.Utils.f.c(-1, -1, 51));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f56842h = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 48;
        layoutParams.type = 99;
        layoutParams.flags = 8;
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = new com.tangxiaolv.telegramgallery.Actionbar.a(galleryActivity);
        this.f56836f = aVar;
        aVar.setBackgroundColor(com.tangxiaolv.telegramgallery.r.f(this.f56844i.getContext()));
        this.f56836f.setOccupyStatusBar(false);
        this.f56836f.setItemsBackgroundColor(com.tangxiaolv.telegramgallery.r.e(this.f56834e));
        this.f56836f.setBackButtonImage(q.h.f57730r1);
        this.f56836f.setTitle(this.f56834e.getString(q.o.f58226o, 1, 1));
        this.f56844i.addView(this.f56836f, com.tangxiaolv.telegramgallery.Utils.f.a(-1, -2.0f));
        this.f56836f.setActionBarMenuOnItemClick(new p());
        com.tangxiaolv.telegramgallery.Actionbar.c m9 = this.f56836f.m();
        this.f56864r = m9.g(4, q.h.K2, com.tangxiaolv.telegramgallery.Utils.a.g(56.0f));
        com.tangxiaolv.telegramgallery.Components.b bVar = new com.tangxiaolv.telegramgallery.Components.b(this.f56844i.getContext(), q.h.U2, com.tangxiaolv.telegramgallery.r.e(this.f56834e));
        this.f56854n = bVar;
        bVar.setDrawBackground(true);
        this.f56854n.setSize(32);
        this.f56854n.setCheckOffset(com.tangxiaolv.telegramgallery.Utils.a.g(1.0f));
        this.f56854n.setColor(com.tangxiaolv.telegramgallery.r.d(this.f56844i.getContext()));
        LinearLayout.LayoutParams d4 = com.tangxiaolv.telegramgallery.Utils.f.d(32, 32);
        d4.gravity = 16;
        d4.setMargins(0, 0, com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), 0);
        this.f56854n.setLayoutParams(d4);
        this.f56866s = m9.a(1, this.f56854n);
        FrameLayout frameLayout = new FrameLayout(this.f56834e);
        this.f56850l = frameLayout;
        frameLayout.setBackgroundColor(2130706432);
        this.f56844i.addView(this.f56850l, com.tangxiaolv.telegramgallery.Utils.f.c(-1, 48, 83));
        this.f56862q[0] = new e0(this.f56844i.getContext(), this.f56844i);
        this.f56862q[0].d(0, false);
        this.f56862q[1] = new e0(this.f56844i.getContext(), this.f56844i);
        this.f56862q[1].d(0, false);
        this.f56862q[2] = new e0(this.f56844i.getContext(), this.f56844i);
        this.f56862q[2].d(0, false);
        com.tangxiaolv.telegramgallery.Components.h hVar = new com.tangxiaolv.telegramgallery.Components.h(this.f56834e);
        this.f56856o = hVar;
        hVar.setBackgroundColor(2130706432);
        com.tangxiaolv.telegramgallery.Components.h hVar2 = this.f56856o;
        hVar2.f56223e = -1;
        this.f56844i.addView(hVar2, com.tangxiaolv.telegramgallery.Utils.f.c(-1, 48, 83));
        this.f56856o.f56220b.setVisibility(8);
        this.f56856o.f56219a.setOnClickListener(new q());
        com.tangxiaolv.telegramgallery.Components.h hVar3 = new com.tangxiaolv.telegramgallery.Components.h(this.f56834e);
        this.f56858p = hVar3;
        hVar3.setBackgroundColor(2130706432);
        com.tangxiaolv.telegramgallery.Components.h hVar4 = this.f56858p;
        hVar4.f56223e = -1;
        hVar4.a(0, false);
        this.f56858p.setVisibility(8);
        this.f56844i.addView(this.f56858p, com.tangxiaolv.telegramgallery.Utils.f.c(-1, 48, 83));
        this.f56858p.f56220b.setOnClickListener(new r());
        this.f56858p.f56219a.setOnClickListener(new s());
        ImageView imageView = new ImageView(this.f56834e);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(q.h.f57667e3);
        imageView.setBackgroundDrawable(com.tangxiaolv.telegramgallery.r.b(com.tangxiaolv.telegramgallery.r.f58815a));
        this.f56858p.addView(imageView, com.tangxiaolv.telegramgallery.Utils.f.c(48, 48, 17));
        imageView.setOnClickListener(new t());
        GestureDetector gestureDetector = new GestureDetector(this.f56844i.getContext(), this);
        this.R2 = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
        this.R.l0(this.f56844i);
        this.R.V((byte) 2);
        this.R.i0(true);
        this.Q.l0(this.f56844i);
        this.Q.V((byte) 2);
        this.Q.i0(true);
        this.S.l0(this.f56844i);
        this.S.V((byte) 2);
        this.S.i0(true);
    }

    @Override // com.tangxiaolv.telegramgallery.Utils.h.c
    public void h(int i4, Object... objArr) {
        ArrayList<com.tangxiaolv.telegramgallery.TL.l> arrayList;
        com.tangxiaolv.telegramgallery.TL.l x9;
        int i10 = 0;
        if (i4 == com.tangxiaolv.telegramgallery.Utils.h.C) {
            String str = (String) objArr[0];
            while (i10 < 3) {
                String[] strArr = this.V;
                if (strArr[i10] != null && strArr[i10].equals(str)) {
                    this.f56862q[i10].e(1.0f, true);
                    s0(i10, true);
                    return;
                }
                i10++;
            }
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.B) {
            String str2 = (String) objArr[0];
            for (int i11 = 0; i11 < 3; i11++) {
                String[] strArr2 = this.V;
                if (strArr2[i11] != null && strArr2[i11].equals(str2)) {
                    this.f56862q[i11].e(1.0f, true);
                    s0(i11, true);
                    if (i11 == 0) {
                        K0(false);
                        return;
                    }
                    return;
                }
            }
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.A) {
            String str3 = (String) objArr[0];
            while (i10 < 3) {
                String[] strArr3 = this.V;
                if (strArr3[i10] != null && strArr3[i10].equals(str3)) {
                    this.f56862q[i10].e(((Float) objArr[1]).floatValue(), true);
                }
                i10++;
            }
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56686o) {
            int intValue = ((Integer) objArr[4]).intValue();
            if (this.f56859p1 == ((Integer) objArr[0]).intValue() && this.f56824a == intValue) {
                ((Boolean) objArr[3]).booleanValue();
                ArrayList arrayList2 = (ArrayList) objArr[5];
                if (arrayList2.isEmpty()) {
                    return;
                }
                this.f56865r3.clear();
                this.f56869t3.clear();
                this.f56867s3.clear();
                int i12 = -1;
                for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                    com.tangxiaolv.telegramgallery.TL.k kVar = (com.tangxiaolv.telegramgallery.TL.k) arrayList2.get(i13);
                    if (kVar != null && !(kVar instanceof k.b) && (arrayList = kVar.f56341i) != null && (x9 = com.tangxiaolv.telegramgallery.Utils.d.x(arrayList, 640)) != null) {
                        if (i12 == -1 && this.U != null) {
                            int i14 = 0;
                            while (true) {
                                if (i14 >= kVar.f56341i.size()) {
                                    break;
                                }
                                com.tangxiaolv.telegramgallery.TL.d dVar = kVar.f56341i.get(i14).f56347d;
                                int i15 = dVar.f56289e;
                                com.tangxiaolv.telegramgallery.TL.d dVar2 = this.U;
                                if (i15 == dVar2.f56289e && dVar.f56288d == dVar2.f56288d) {
                                    i12 = this.f56865r3.size();
                                    break;
                                }
                                i14++;
                            }
                        }
                        this.f56865r3.add(x9.f56347d);
                        this.f56869t3.add(Integer.valueOf(x9.f56350g));
                        this.f56867s3.add(kVar);
                    }
                }
                this.f56840g2 = false;
                this.T = -1;
                if (i12 != -1) {
                    W0(i12, true);
                    return;
                }
                this.f56867s3.add(0, new k.b());
                this.f56865r3.add(0, this.U);
                this.f56869t3.add(0, 0);
                W0(0, true);
            }
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56685n) {
            long longValue = ((Long) objArr[0]).longValue();
            long j4 = this.f56877x1;
            if (longValue == j4 || longValue == this.f56880y1) {
                if (longValue == j4) {
                    this.T1 = ((Integer) objArr[1]).intValue();
                } else if (longValue == this.f56880y1) {
                    this.V1 = ((Integer) objArr[1]).intValue();
                }
                if (this.f56840g2 && this.f56828b2) {
                    this.f56828b2 = false;
                    this.f56860p2 = true;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0084, code lost:
        if (r0 > r10) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0093, code lost:
        if (r2 > r10) goto L20;
     */
    @Override // android.view.GestureDetector.OnDoubleTapListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onDoubleTap(android.view.MotionEvent r10) {
        /*
            r9 = this;
            boolean r0 = r9.f56837f3
            r1 = 0
            if (r0 == 0) goto L9f
            float r0 = r9.I2
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L1c
            float r4 = r9.H2
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 != 0) goto L9f
            float r4 = r9.G2
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 == 0) goto L1c
            goto L9f
        L1c:
            long r4 = r9.O2
            r6 = 0
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 != 0) goto L9f
            int r4 = r9.J
            if (r4 == 0) goto L2a
            goto L9f
        L2a:
            r1 = 1
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L9a
            float r0 = r10.getX()
            int r2 = r9.A0()
            int r2 = r2 / 2
            float r2 = (float) r2
            float r0 = r0 - r2
            float r2 = r10.getX()
            int r3 = r9.A0()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r2 = r2 - r3
            float r3 = r9.G2
            float r2 = r2 - r3
            float r3 = r9.I2
            r4 = 1077936128(0x40400000, float:3.0)
            float r3 = r4 / r3
            float r2 = r2 * r3
            float r0 = r0 - r2
            float r2 = r10.getY()
            int r3 = r9.y0()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r2 = r2 - r3
            float r10 = r10.getY()
            int r3 = r9.y0()
            int r3 = r3 / 2
            float r3 = (float) r3
            float r10 = r10 - r3
            float r3 = r9.H2
            float r10 = r10 - r3
            float r3 = r9.I2
            float r3 = r4 / r3
            float r10 = r10 * r3
            float r2 = r2 - r10
            r9.e1(r4)
            float r10 = r9.f56829b3
            int r3 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r3 >= 0) goto L80
        L7e:
            r0 = r10
            goto L87
        L80:
            float r10 = r9.f56831c3
            int r3 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r3 <= 0) goto L87
            goto L7e
        L87:
            float r10 = r9.f56833d3
            int r3 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r3 >= 0) goto L8f
        L8d:
            r2 = r10
            goto L96
        L8f:
            float r10 = r9.f56835e3
            int r3 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r3 <= 0) goto L96
            goto L8d
        L96:
            r9.m0(r4, r0, r2, r1)
            goto L9d
        L9a:
            r9.m0(r2, r3, r3, r1)
        L9d:
            r9.f56847j3 = r1
        L9f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.o.onDoubleTap(android.view.MotionEvent):boolean");
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        if (this.I2 != 1.0f) {
            this.f56863q3.abortAnimation();
            this.f56863q3.fling(Math.round(this.G2), Math.round(this.H2), Math.round(f10), Math.round(f11), (int) this.f56829b3, (int) this.f56831c3, (int) this.f56833d3, (int) this.f56835e3);
            this.f56844i.postInvalidate();
            return false;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        int i4;
        if (this.f56855n3) {
            return false;
        }
        if (this.f56874w) {
            AspectRatioFrameLayout aspectRatioFrameLayout = this.A;
            boolean z9 = aspectRatioFrameLayout != null && aspectRatioFrameLayout.getVisibility() == 0;
            e0[] e0VarArr = this.f56862q;
            if (e0VarArr[0] != null && this.f56844i != null && !z9 && (i4 = e0VarArr[0].f56915h) > 0 && i4 <= 3) {
                float x9 = motionEvent.getX();
                float y9 = motionEvent.getY();
                if (x9 >= (A0() - com.tangxiaolv.telegramgallery.Utils.a.g(100.0f)) / 2.0f && x9 <= (A0() + com.tangxiaolv.telegramgallery.Utils.a.g(100.0f)) / 2.0f && y9 >= (y0() - com.tangxiaolv.telegramgallery.Utils.a.g(100.0f)) / 2.0f && y9 <= (y0() + com.tangxiaolv.telegramgallery.Utils.a.g(100.0f)) / 2.0f) {
                    K0(true);
                    s0(0, true);
                    return true;
                }
            }
            c1(!this.f56838g, true);
        } else if (this.f56879y == 0) {
            this.f56854n.performClick();
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public void p0(Bitmap bitmap) {
        b0 b0Var;
        if (this.P == 1) {
            bitmap = this.f56870u.getBitmap();
        }
        if (bitmap != null) {
            com.tangxiaolv.telegramgallery.TL.l g02 = com.tangxiaolv.telegramgallery.Utils.e.g0(bitmap, com.tangxiaolv.telegramgallery.Utils.a.o(), com.tangxiaolv.telegramgallery.Utils.a.o(), 80, false, 101, 101);
            if (g02 != null) {
                Object obj = this.f56871u3.get(this.T);
                if (obj instanceof g.k) {
                    g.k kVar = (g.k) obj;
                    kVar.f56661h = com.tangxiaolv.telegramgallery.Utils.d.G(g02, true).toString();
                    kVar.f56660g = com.tangxiaolv.telegramgallery.Utils.d.G(g02, true).toString();
                } else if (obj instanceof g.l) {
                    g.l lVar = (g.l) obj;
                    lVar.f56674k = com.tangxiaolv.telegramgallery.Utils.d.G(g02, true).toString();
                    g02 = com.tangxiaolv.telegramgallery.Utils.e.g0(bitmap, com.tangxiaolv.telegramgallery.Utils.a.g(120.0f), com.tangxiaolv.telegramgallery.Utils.a.g(120.0f), 70, false, 101, 101);
                    if (g02 != null) {
                        lVar.f56673j = com.tangxiaolv.telegramgallery.Utils.d.G(g02, true).toString();
                    }
                }
                if (this.f56879y == 0 && (b0Var = this.f56826b) != null) {
                    b0Var.i(this.T);
                    if (!this.f56826b.a(this.T)) {
                        this.f56826b.f(this.T);
                        this.f56854n.e(this.f56826b.a(this.T), true);
                        f1();
                    }
                }
                if (this.P == 1) {
                    float rectSizeX = this.f56870u.getRectSizeX() / A0();
                    float rectSizeY = this.f56870u.getRectSizeY() / y0();
                    if (rectSizeX <= rectSizeY) {
                        rectSizeX = rectSizeY;
                    }
                    this.I2 = rectSizeX;
                    this.G2 = (this.f56870u.getRectX() + (this.f56870u.getRectSizeX() / 2.0f)) - (A0() / 2);
                    this.H2 = (this.f56870u.getRectY() + (this.f56870u.getRectSizeY() / 2.0f)) - (y0() / 2);
                    this.f56853m3 = true;
                }
                this.R.l0(null);
                this.R.k0(0, true);
                this.R.e0(bitmap);
                this.R.l0(this.f56844i);
                if (g02 != null) {
                    GalleryActivity.M(g02.f56352i);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.view.View, android.graphics.drawable.Drawable, com.tangxiaolv.telegramgallery.AnimatedFileDrawable] */
    public void t0(boolean z9, boolean z10) {
        ?? r22;
        Rect rect;
        int i4;
        if (!z10 && (i4 = this.P) != 0) {
            if (i4 == 1) {
                this.f56870u.c();
            }
            b1(0);
            return;
        }
        try {
            AlertDialog alertDialog = this.f56872v;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f56872v = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int i10 = this.P;
        if (i10 != 0) {
            if (i10 == 1) {
                this.f56858p.setVisibility(8);
                this.f56870u.setVisibility(8);
            }
            this.P = 0;
        }
        if (this.f56832d == null || !this.f56830c || q0() || this.f56826b == null) {
            return;
        }
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.C);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.B);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.A);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56685n);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56684m);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56686o);
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56694w);
        this.f56838g = false;
        VelocityTracker velocityTracker = this.f56861p3;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f56861p3 = null;
        }
        c0 o9 = this.f56826b.o(this.U, this.T);
        if (z9) {
            this.J = 1;
            this.f56848k.setVisibility(0);
            this.f56844i.invalidate();
            AnimatorSet animatorSet = new AnimatorSet();
            ViewGroup.LayoutParams layoutParams = this.f56848k.getLayoutParams();
            this.f56848k.setOrientation(this.R.x());
            if (o9 != null) {
                this.f56848k.setNeedRadius(o9.f56900i != 0);
                rect = o9.f56892a.l();
                layoutParams.width = rect.right - rect.left;
                layoutParams.height = rect.bottom - rect.top;
                this.f56848k.setImageBitmap(o9.f56896e);
            } else {
                this.f56848k.setNeedRadius(false);
                layoutParams.width = this.R.r();
                layoutParams.height = this.R.p();
                this.f56848k.setImageBitmap(this.R.g());
                rect = null;
            }
            this.f56848k.setLayoutParams(layoutParams);
            Point point = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
            int i11 = layoutParams.width;
            float f10 = point.x / i11;
            int i12 = layoutParams.height;
            float f11 = (point.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b) / i12;
            if (f10 > f11) {
                f10 = f11;
            }
            float f12 = i11;
            float f13 = this.I2;
            Point point2 = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
            float f14 = point2.x;
            float f15 = point2.y - com.tangxiaolv.telegramgallery.Utils.a.f56373b;
            this.f56848k.setTranslationX(((f14 - ((f12 * f13) * f10)) / 2.0f) + this.G2);
            this.f56848k.setTranslationY(((f15 - ((i12 * f13) * f10)) / 2.0f) + this.H2);
            this.f56848k.setScaleX(this.I2 * f10);
            this.f56848k.setScaleY(this.I2 * f10);
            if (o9 != null) {
                o9.f56892a.q0(false, true);
                int abs = Math.abs(rect.left - o9.f56892a.s());
                int abs2 = Math.abs(rect.top - o9.f56892a.u());
                int[] iArr = new int[2];
                o9.f56895d.getLocationInWindow(iArr);
                int i13 = iArr[1] - com.tangxiaolv.telegramgallery.Utils.a.f56373b;
                int i14 = o9.f56894c;
                int i15 = rect.top;
                int i16 = (i13 - (i14 + i15)) + o9.f56902k;
                if (i16 < 0) {
                    i16 = 0;
                }
                int height = (((i14 + i15) + (rect.bottom - i15)) - ((iArr[1] + o9.f56895d.getHeight()) - com.tangxiaolv.telegramgallery.Utils.a.f56373b)) + o9.f56901j;
                if (height < 0) {
                    height = 0;
                }
                int max = Math.max(i16, abs2);
                int max2 = Math.max(height, abs2);
                this.I[0][0] = this.f56848k.getScaleX();
                this.I[0][1] = this.f56848k.getScaleY();
                this.I[0][2] = this.f56848k.getTranslationX();
                this.I[0][3] = this.f56848k.getTranslationY();
                float[][] fArr = this.I;
                fArr[0][4] = 0.0f;
                fArr[0][5] = 0.0f;
                fArr[0][6] = 0.0f;
                fArr[0][7] = 0.0f;
                float[] fArr2 = fArr[1];
                float f16 = o9.f56903l;
                fArr2[0] = f16;
                fArr[1][1] = f16;
                fArr[1][2] = o9.f56893b + (rect.left * f16);
                fArr[1][3] = o9.f56894c + (rect.top * f16);
                fArr[1][4] = abs * f16;
                fArr[1][5] = max * f16;
                fArr[1][6] = max2 * f16;
                fArr[1][7] = o9.f56900i;
                animatorSet.playTogether(ObjectAnimator.ofFloat(this.f56848k, "animationProgress", 0.0f, 1.0f), ObjectAnimator.ofInt(this.f56852m, "alpha", 0), ObjectAnimator.ofFloat(this.f56844i, "alpha", 0.0f));
            } else {
                Animator[] animatorArr = new Animator[4];
                animatorArr[0] = ObjectAnimator.ofInt(this.f56852m, "alpha", 0);
                animatorArr[1] = ObjectAnimator.ofFloat(this.f56848k, "alpha", 0.0f);
                com.tangxiaolv.telegramgallery.Components.c cVar = this.f56848k;
                float[] fArr3 = new float[1];
                fArr3[0] = this.H2 >= 0.0f ? com.tangxiaolv.telegramgallery.Utils.a.f56375d.y : -com.tangxiaolv.telegramgallery.Utils.a.f56375d.y;
                animatorArr[2] = ObjectAnimator.ofFloat(cVar, "translationY", fArr3);
                animatorArr[3] = ObjectAnimator.ofFloat(this.f56844i, "alpha", 0.0f);
                animatorSet.playTogether(animatorArr);
            }
            this.L = new g(o9);
            animatorSet.setDuration(200L);
            animatorSet.addListener(new h());
            this.K = System.currentTimeMillis();
            this.f56844i.setLayerType(2, null);
            animatorSet.start();
            r22 = 0;
        } else {
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.f56844i, "scaleX", 0.9f), ObjectAnimator.ofFloat(this.f56844i, "scaleY", 0.9f), ObjectAnimator.ofInt(this.f56852m, "alpha", 0), ObjectAnimator.ofFloat(this.f56844i, "alpha", 0.0f));
            this.J = 2;
            this.L = new i(o9);
            animatorSet2.setDuration(200L);
            animatorSet2.addListener(new j());
            this.K = System.currentTimeMillis();
            r22 = 0;
            this.f56844i.setLayerType(2, null);
            animatorSet2.start();
        }
        AnimatedFileDrawable animatedFileDrawable = this.f56882z;
        if (animatedFileDrawable != 0) {
            animatedFileDrawable.I(r22);
            this.f56882z = r22;
            this.R.f0(r22);
        }
    }

    public void u0() {
        a0 a0Var;
        if (this.f56832d == null || (a0Var = this.f56846j) == null) {
            return;
        }
        try {
            if (a0Var.getParent() != null) {
                ((WindowManager) this.f56832d.getSystemService("window")).removeViewImmediate(this.f56846j);
            }
            this.f56846j = null;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f56832d = null;
        B3 = null;
    }

    public float x0() {
        return this.M2;
    }
}
