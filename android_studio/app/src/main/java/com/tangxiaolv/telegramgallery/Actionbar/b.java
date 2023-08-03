package com.tangxiaolv.telegramgallery.Actionbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tangxiaolv.telegramgallery.GalleryActivity;
import com.tangxiaolv.telegramgallery.q;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ActionBarLayout.java */
/* loaded from: classes3.dex */
public class b extends FrameLayout {
    private static Drawable G;
    private static Drawable H;
    private static Paint I;
    private float A;
    private long B;
    private String C;
    private p D;
    protected GalleryActivity E;
    public ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> F;

    /* renamed from: a  reason: collision with root package name */
    private Runnable f55944a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f55945b;

    /* renamed from: c  reason: collision with root package name */
    private q f55946c;

    /* renamed from: d  reason: collision with root package name */
    private q f55947d;

    /* renamed from: e  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.a f55948e;

    /* renamed from: f  reason: collision with root package name */
    private AnimatorSet f55949f;

    /* renamed from: g  reason: collision with root package name */
    private DecelerateInterpolator f55950g;

    /* renamed from: h  reason: collision with root package name */
    private AccelerateDecelerateInterpolator f55951h;

    /* renamed from: i  reason: collision with root package name */
    public float f55952i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55953j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f55954k;

    /* renamed from: l  reason: collision with root package name */
    private int f55955l;

    /* renamed from: m  reason: collision with root package name */
    private int f55956m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f55957n;

    /* renamed from: o  reason: collision with root package name */
    private VelocityTracker f55958o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f55959p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f55960q;

    /* renamed from: r  reason: collision with root package name */
    private long f55961r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f55962s;

    /* renamed from: t  reason: collision with root package name */
    private int f55963t;

    /* renamed from: u  reason: collision with root package name */
    private Runnable f55964u;

    /* renamed from: v  reason: collision with root package name */
    private Runnable f55965v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f55966w;

    /* renamed from: x  reason: collision with root package name */
    private View f55967x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f55968y;

    /* renamed from: z  reason: collision with root package name */
    private Runnable f55969z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.L(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Actionbar.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0478b implements Runnable {
        RunnableC0478b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f55944a != this) {
                return;
            }
            b.this.f0(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55972a;

        c(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
            this.f55972a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b0(this.f55972a);
            b.this.setVisibility(8);
            if (b.this.f55967x != null) {
                b.this.f55967x.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class d extends com.tangxiaolv.telegramgallery.a {
        d() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.L(false);
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.f55961r = System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f55964u.run();
            b.this.f55964u = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f55965v.run();
            b.this.f55965v = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class g extends com.tangxiaolv.telegramgallery.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f55977a;

        g(boolean z9) {
            this.f55977a = z9;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.S(this.f55977a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f55979a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f55980b;

        h(boolean z9, boolean z10) {
            this.f55979a = z9;
            this.f55980b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f55969z != this) {
                return;
            }
            b.this.f55969z = null;
            if (this.f55979a) {
                b.this.f55961r = System.currentTimeMillis();
            }
            long nanoTime = System.nanoTime() / 1000000;
            long j4 = nanoTime - b.this.B;
            if (j4 > 18) {
                j4 = 18;
            }
            b.this.B = nanoTime;
            b.z(b.this, ((float) j4) / 150.0f);
            if (b.this.A > 1.0f) {
                b.this.A = 1.0f;
            }
            float interpolation = b.this.f55950g.getInterpolation(b.this.A);
            if (this.f55980b) {
                b.this.f55946c.setAlpha(interpolation);
                b.this.f55946c.setTranslationX(com.tangxiaolv.telegramgallery.Utils.a.g(48.0f) * (1.0f - interpolation));
            } else {
                b.this.f55947d.setAlpha(1.0f - interpolation);
                b.this.f55947d.setTranslationX(com.tangxiaolv.telegramgallery.Utils.a.g(48.0f) * interpolation);
            }
            if (b.this.A < 1.0f) {
                b.this.f0(this.f55980b, false);
            } else {
                b.this.L(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55982a;

        i(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
            this.f55982a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f55982a.O(true, false);
            this.f55982a.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class j extends com.tangxiaolv.telegramgallery.a {
        j() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.L(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f55985a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55986b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55987c;

        k(boolean z9, com.tangxiaolv.telegramgallery.Actionbar.f fVar, com.tangxiaolv.telegramgallery.Actionbar.f fVar2) {
            this.f55985a = z9;
            this.f55986b = fVar;
            this.f55987c = fVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f55946c.setLayerType(0, null);
            b.this.f55947d.setLayerType(0, null);
            b.this.X(this.f55985a, this.f55986b);
            this.f55987c.O(true, false);
            this.f55987c.D();
            b.this.f55946c.setTranslationX(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.L(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f55944a != this) {
                return;
            }
            b.this.f0(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f55945b != this) {
                return;
            }
            b.this.f55945b = null;
            b.this.f0(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55992a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.Actionbar.f f55993b;

        o(com.tangxiaolv.telegramgallery.Actionbar.f fVar, com.tangxiaolv.telegramgallery.Actionbar.f fVar2) {
            this.f55992a = fVar;
            this.f55993b = fVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f55946c.setLayerType(0, null);
            b.this.f55947d.setLayerType(0, null);
            b.this.G(this.f55992a);
            b.this.f55947d.setTranslationX(0.0f);
            this.f55992a.O(false, false);
            this.f55993b.O(true, true);
            this.f55993b.D();
        }
    }

    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public interface p {
        boolean d(b bVar);

        boolean l(com.tangxiaolv.telegramgallery.Actionbar.f fVar, boolean z9, boolean z10, b bVar);

        boolean s(com.tangxiaolv.telegramgallery.Actionbar.f fVar, b bVar);

        void t(b bVar);

        boolean u();
    }

    /* compiled from: ActionBarLayout.java */
    /* loaded from: classes3.dex */
    public class q extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        private Rect f55995a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f55996b;

        public q(Context context) {
            super(context);
            this.f55995a = new Rect();
            setOrientation(1);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j4) {
            int i4;
            if (view instanceof com.tangxiaolv.telegramgallery.Actionbar.a) {
                return super.drawChild(canvas, view, j4);
            }
            int childCount = getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i10);
                if (childAt == view || !(childAt instanceof com.tangxiaolv.telegramgallery.Actionbar.a) || childAt.getVisibility() != 0) {
                    i10++;
                } else if (((com.tangxiaolv.telegramgallery.Actionbar.a) childAt).getCastShadows()) {
                    i4 = childAt.getMeasuredHeight();
                }
            }
            i4 = 0;
            boolean drawChild = super.drawChild(canvas, view, j4);
            if (i4 != 0 && b.G != null) {
                b.G.setBounds(0, i4, getMeasuredWidth(), b.G.getIntrinsicHeight() + i4);
                b.G.draw(canvas);
            }
            return drawChild;
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
            super.onLayout(z9, i4, i10, i11, i12);
            View rootView = getRootView();
            getWindowVisibleDisplayFrame(this.f55995a);
            int height = (rootView.getHeight() - (this.f55995a.top != 0 ? com.tangxiaolv.telegramgallery.Utils.a.f56373b : 0)) - com.tangxiaolv.telegramgallery.Utils.a.s(rootView);
            Rect rect = this.f55995a;
            this.f55996b = height - (rect.bottom - rect.top) > 0;
            if (b.this.f55944a == null || b.this.f55946c.f55996b || b.this.f55947d.f55996b) {
                return;
            }
            com.tangxiaolv.telegramgallery.Utils.a.c(b.this.f55944a);
            b.this.f55944a.run();
            b.this.f55944a = null;
        }
    }

    public b(Context context) {
        super(context);
        this.f55950g = new DecelerateInterpolator(1.5f);
        this.f55951h = new AccelerateDecelerateInterpolator();
        this.A = 0.0f;
        this.D = null;
        this.E = null;
        this.F = null;
        this.E = (GalleryActivity) context;
        if (H == null) {
            H = getResources().getDrawable(q.h.X1);
            G = getResources().getDrawable(q.h.f57725q1);
            I = new Paint();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        fVar.L();
        fVar.J();
        fVar.W(null);
        this.F.remove(fVar);
        this.f55947d.setVisibility(8);
        bringChildToFront(this.f55946c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(boolean z9) {
        N(false);
        P(false);
        Runnable runnable = this.f55944a;
        if (runnable != null) {
            com.tangxiaolv.telegramgallery.Utils.a.c(runnable);
            this.f55944a = null;
        }
        AnimatorSet animatorSet = this.f55949f;
        if (animatorSet != null) {
            if (z9) {
                animatorSet.cancel();
            }
            this.f55949f = null;
        }
        Runnable runnable2 = this.f55969z;
        if (runnable2 != null) {
            com.tangxiaolv.telegramgallery.Utils.a.c(runnable2);
            this.f55969z = null;
        }
        setAlpha(1.0f);
        this.f55946c.setAlpha(1.0f);
        this.f55946c.setScaleX(1.0f);
        this.f55946c.setScaleY(1.0f);
        this.f55947d.setAlpha(1.0f);
        this.f55947d.setScaleX(1.0f);
        this.f55947d.setScaleY(1.0f);
    }

    private void N(boolean z9) {
        Runnable runnable;
        if (!this.f55960q || (runnable = this.f55964u) == null) {
            return;
        }
        this.f55960q = false;
        this.f55961r = 0L;
        if (z9) {
            new Handler().post(new e());
            return;
        }
        runnable.run();
        this.f55964u = null;
    }

    private void P(boolean z9) {
        Runnable runnable;
        if (!this.f55960q || (runnable = this.f55965v) == null) {
            return;
        }
        this.f55960q = false;
        this.f55961r = 0L;
        if (z9) {
            new Handler().post(new f());
            return;
        }
        runnable.run();
        this.f55965v = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(boolean z9) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (!z9) {
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
            com.tangxiaolv.telegramgallery.Actionbar.f fVar = arrayList.get(arrayList.size() - 1);
            fVar.L();
            fVar.J();
            fVar.W(null);
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList2 = this.F;
            arrayList2.remove(arrayList2.size() - 1);
            q qVar = this.f55946c;
            q qVar2 = this.f55947d;
            this.f55946c = qVar2;
            this.f55947d = qVar;
            bringChildToFront(qVar2);
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList3 = this.F;
            com.tangxiaolv.telegramgallery.Actionbar.f fVar2 = arrayList3.get(arrayList3.size() - 1);
            this.f55948e = fVar2.f56045e;
            fVar2.N();
            fVar2.D();
        } else {
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList4 = this.F;
            com.tangxiaolv.telegramgallery.Actionbar.f fVar3 = arrayList4.get(arrayList4.size() - 2);
            fVar3.L();
            View view = fVar3.f56043c;
            if (view != null && (viewGroup2 = (ViewGroup) view.getParent()) != null) {
                viewGroup2.removeView(fVar3.f56043c);
            }
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar3.f56045e;
            if (aVar != null && aVar.getAddToContainer() && (viewGroup = (ViewGroup) fVar3.f56045e.getParent()) != null) {
                viewGroup.removeView(fVar3.f56045e);
            }
        }
        this.f55947d.setVisibility(8);
        this.f55954k = false;
        this.f55957n = false;
        this.f55946c.setTranslationX(0.0f);
        this.f55947d.setTranslationX(0.0f);
        setInnerTranslationX(0.0f);
    }

    private void T(MotionEvent motionEvent) {
        this.f55953j = false;
        this.f55954k = true;
        this.f55955l = (int) motionEvent.getX();
        this.f55947d.setVisibility(0);
        this.f55959p = false;
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        com.tangxiaolv.telegramgallery.Actionbar.f fVar = arrayList.get(arrayList.size() - 2);
        View view = fVar.f56043c;
        if (view == null) {
            view = fVar.r(this.E);
        } else {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(view);
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar.f56045e;
        if (aVar != null && aVar.getAddToContainer()) {
            ViewGroup viewGroup3 = (ViewGroup) fVar.f56045e.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(fVar.f56045e);
            }
            if (this.f55968y) {
                fVar.f56045e.setOccupyStatusBar(false);
            }
            this.f55947d.addView(fVar.f56045e);
            fVar.f56045e.setTitleOverlayText(this.C);
        }
        this.f55947d.addView(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view.setLayoutParams(layoutParams);
        if (!fVar.f56049i && view.getBackground() == null) {
            view.setBackgroundColor(-1);
        }
        fVar.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(boolean z9, com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (fVar == null) {
            return;
        }
        fVar.L();
        if (z9) {
            fVar.J();
            fVar.W(null);
            this.F.remove(fVar);
        } else {
            View view = fVar.f56043c;
            if (view != null && (viewGroup2 = (ViewGroup) view.getParent()) != null) {
                viewGroup2.removeView(fVar.f56043c);
            }
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar.f56045e;
            if (aVar != null && aVar.getAddToContainer() && (viewGroup = (ViewGroup) fVar.f56045e.getParent()) != null) {
                viewGroup.removeView(fVar.f56045e);
            }
        }
        this.f55947d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        fVar.L();
        fVar.J();
        fVar.W(null);
        this.F.remove(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(boolean z9, boolean z10) {
        if (z10) {
            this.A = 0.0f;
            this.B = System.nanoTime() / 1000000;
            this.f55946c.setLayerType(2, null);
            this.f55947d.setLayerType(2, null);
        }
        h hVar = new h(z10, z9);
        this.f55969z = hVar;
        com.tangxiaolv.telegramgallery.Utils.a.D(hVar);
    }

    static /* synthetic */ float z(b bVar, float f10) {
        float f11 = bVar.A + f10;
        bVar.A = f11;
        return f11;
    }

    public boolean B(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        return C(fVar, -1);
    }

    public boolean C(com.tangxiaolv.telegramgallery.Actionbar.f fVar, int i4) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        p pVar = this.D;
        if ((pVar == null || pVar.s(fVar, this)) && fVar.I()) {
            fVar.W(this);
            if (i4 == -1) {
                if (!this.F.isEmpty()) {
                    ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
                    com.tangxiaolv.telegramgallery.Actionbar.f fVar2 = arrayList.get(arrayList.size() - 1);
                    fVar2.L();
                    com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar2.f56045e;
                    if (aVar != null && (viewGroup2 = (ViewGroup) aVar.getParent()) != null) {
                        viewGroup2.removeView(fVar2.f56045e);
                    }
                    View view = fVar2.f56043c;
                    if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                        viewGroup.removeView(fVar2.f56043c);
                    }
                }
                this.F.add(fVar);
            } else {
                this.F.add(i4, fVar);
            }
            return true;
        }
        return false;
    }

    public boolean D() {
        if (this.f55960q && this.f55961r < System.currentTimeMillis() - 1500) {
            L(true);
        }
        return this.f55960q;
    }

    public void E() {
        this.E = null;
    }

    public void F(boolean z9) {
        p pVar = this.D;
        if ((pVar != null && !pVar.d(this)) || D() || this.F.isEmpty()) {
            return;
        }
        if (this.E.getCurrentFocus() != null) {
            com.tangxiaolv.telegramgallery.Utils.a.t(this.E.getCurrentFocus());
        }
        setInnerTranslationX(0.0f);
        boolean z10 = z9 && this.E.getSharedPreferences("mainconfig", 0).getBoolean("view_animations", true);
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        com.tangxiaolv.telegramgallery.Actionbar.f fVar = arrayList.get(arrayList.size() - 1);
        com.tangxiaolv.telegramgallery.Actionbar.f fVar2 = null;
        if (this.F.size() > 1) {
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList2 = this.F;
            fVar2 = arrayList2.get(arrayList2.size() - 2);
        }
        if (fVar2 != null) {
            q qVar = this.f55946c;
            q qVar2 = this.f55947d;
            this.f55946c = qVar2;
            this.f55947d = qVar;
            qVar2.setVisibility(0);
            fVar2.W(this);
            View view = fVar2.f56043c;
            if (view == null) {
                view = fVar2.r(this.E);
            } else {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            }
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar2.f56045e;
            if (aVar != null && aVar.getAddToContainer()) {
                if (this.f55968y) {
                    fVar2.f56045e.setOccupyStatusBar(false);
                }
                ViewGroup viewGroup2 = (ViewGroup) fVar2.f56045e.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(fVar2.f56045e);
                }
                this.f55946c.addView(fVar2.f56045e);
                fVar2.f56045e.setTitleOverlayText(this.C);
            }
            this.f55946c.addView(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
            fVar2.P(true, true);
            fVar.P(false, false);
            fVar2.N();
            this.f55948e = fVar2.f56045e;
            if (!fVar2.f56049i && view.getBackground() == null) {
                view.setBackgroundColor(-1);
            }
            if (!z10) {
                G(fVar);
            }
            if (z10) {
                this.f55961r = System.currentTimeMillis();
                this.f55960q = true;
                this.f55964u = new o(fVar, fVar2);
                AnimatorSet G2 = fVar.G(false, new a());
                if (G2 == null) {
                    if (!this.f55946c.f55996b && !this.f55947d.f55996b) {
                        f0(false, true);
                        return;
                    }
                    RunnableC0478b runnableC0478b = new RunnableC0478b();
                    this.f55944a = runnableC0478b;
                    com.tangxiaolv.telegramgallery.Utils.a.E(runnableC0478b, 200L);
                    return;
                }
                this.f55949f = G2;
                return;
            }
            fVar.O(false, false);
            fVar2.O(true, true);
            fVar2.D();
        } else if (this.f55966w) {
            this.f55961r = System.currentTimeMillis();
            this.f55960q = true;
            this.f55964u = new c(fVar);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f));
            View view2 = this.f55967x;
            if (view2 != null) {
                arrayList3.add(ObjectAnimator.ofFloat(view2, "alpha", 1.0f, 0.0f));
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f55949f = animatorSet;
            animatorSet.playTogether(arrayList3);
            this.f55949f.setInterpolator(this.f55951h);
            this.f55949f.setDuration(200L);
            this.f55949f.addListener(new d());
            this.f55949f.start();
        } else {
            b0(fVar);
            setVisibility(8);
            View view3 = this.f55967x;
            if (view3 != null) {
                view3.setVisibility(8);
            }
        }
    }

    public void H(Canvas canvas, int i4) {
        Drawable drawable = G;
        if (drawable != null) {
            drawable.setBounds(0, i4, getMeasuredWidth(), G.getIntrinsicHeight() + i4);
            G.draw(canvas);
        }
    }

    public void I(ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList) {
        this.F = arrayList;
        q qVar = new q(this.E);
        this.f55947d = qVar;
        addView(qVar);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f55947d.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.gravity = 51;
        this.f55947d.setLayoutParams(layoutParams);
        q qVar2 = new q(this.E);
        this.f55946c = qVar2;
        addView(qVar2);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f55946c.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        layoutParams2.gravity = 51;
        this.f55946c.setLayoutParams(layoutParams2);
        Iterator<com.tangxiaolv.telegramgallery.Actionbar.f> it = this.F.iterator();
        while (it.hasNext()) {
            it.next().W(this);
        }
    }

    public void J(Object obj) {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f55948e;
        if (aVar != null) {
            aVar.setVisibility(0);
        }
        this.f55962s = false;
    }

    public void K(Object obj) {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f55948e;
        if (aVar != null) {
            aVar.setVisibility(8);
        }
        this.f55962s = true;
    }

    public void M() {
        if (this.f55954k || D() || this.F.isEmpty()) {
            return;
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f55948e;
        if (aVar != null && aVar.f55934r) {
            aVar.i();
            return;
        }
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        if (!arrayList.get(arrayList.size() - 1).C() || this.F.isEmpty()) {
            return;
        }
        F(true);
    }

    public void O() {
        Iterator<com.tangxiaolv.telegramgallery.Actionbar.f> it = this.F.iterator();
        while (it.hasNext()) {
            it.next().K();
        }
    }

    public void Q() {
        if (this.F.isEmpty()) {
            return;
        }
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        arrayList.get(arrayList.size() - 1).L();
    }

    public void R() {
        if (this.f55960q) {
            AnimatorSet animatorSet = this.f55949f;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f55949f = null;
            }
            if (this.f55964u != null) {
                N(false);
            } else if (this.f55965v != null) {
                P(false);
            }
        }
        if (this.F.isEmpty()) {
            return;
        }
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        arrayList.get(arrayList.size() - 1).N();
    }

    public boolean U(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        return W(fVar, false, false, true);
    }

    public boolean V(com.tangxiaolv.telegramgallery.Actionbar.f fVar, boolean z9) {
        return W(fVar, z9, false, true);
    }

    public boolean W(com.tangxiaolv.telegramgallery.Actionbar.f fVar, boolean z9, boolean z10, boolean z11) {
        p pVar;
        com.tangxiaolv.telegramgallery.Actionbar.f fVar2;
        if (this.E == null || D() || (((pVar = this.D) != null && z11 && !pVar.l(fVar, z9, z10, this)) || !fVar.I())) {
            return false;
        }
        if (this.E.getCurrentFocus() != null) {
            com.tangxiaolv.telegramgallery.Utils.a.t(this.E.getCurrentFocus());
        }
        boolean z12 = !z10 && this.E.getSharedPreferences("mainconfig", 0).getBoolean("view_animations", true);
        if (this.F.isEmpty()) {
            fVar2 = null;
        } else {
            ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
            fVar2 = arrayList.get(arrayList.size() - 1);
        }
        fVar.W(this);
        View view = fVar.f56043c;
        if (view == null) {
            view = fVar.r(this.E);
        } else {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar.f56045e;
        if (aVar != null && aVar.getAddToContainer()) {
            if (this.f55968y) {
                fVar.f56045e.setOccupyStatusBar(false);
            }
            ViewGroup viewGroup2 = (ViewGroup) fVar.f56045e.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(fVar.f56045e);
            }
            this.f55947d.addView(fVar.f56045e);
            fVar.f56045e.setTitleOverlayText(this.C);
        }
        this.f55947d.addView(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view.setLayoutParams(layoutParams);
        this.F.add(fVar);
        fVar.N();
        this.f55948e = fVar.f56045e;
        if (!fVar.f56049i && view.getBackground() == null) {
            view.setBackgroundColor(-1);
        }
        q qVar = this.f55946c;
        q qVar2 = this.f55947d;
        this.f55946c = qVar2;
        this.f55947d = qVar;
        qVar2.setVisibility(0);
        setInnerTranslationX(0.0f);
        bringChildToFront(this.f55946c);
        if (!z12) {
            X(z9, fVar2);
            View view2 = this.f55967x;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        if (z12) {
            if (this.f55966w && this.F.size() == 1) {
                X(z9, fVar2);
                this.f55961r = System.currentTimeMillis();
                this.f55960q = true;
                this.f55965v = new i(fVar);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f));
                View view3 = this.f55967x;
                if (view3 != null) {
                    view3.setVisibility(0);
                    arrayList2.add(ObjectAnimator.ofFloat(this.f55967x, "alpha", 0.0f, 1.0f));
                }
                fVar.P(true, false);
                AnimatorSet animatorSet = new AnimatorSet();
                this.f55949f = animatorSet;
                animatorSet.playTogether(arrayList2);
                this.f55949f.setInterpolator(this.f55951h);
                this.f55949f.setDuration(200L);
                this.f55949f.addListener(new j());
                this.f55949f.start();
            } else {
                this.f55961r = System.currentTimeMillis();
                this.f55960q = true;
                this.f55965v = new k(z9, fVar2, fVar);
                fVar.P(true, false);
                AnimatorSet G2 = fVar.G(true, new l());
                if (G2 == null) {
                    this.f55946c.setAlpha(0.0f);
                    this.f55946c.setTranslationX(48.0f);
                    if (!this.f55946c.f55996b && !this.f55947d.f55996b) {
                        if (fVar.A()) {
                            n nVar = new n();
                            this.f55945b = nVar;
                            com.tangxiaolv.telegramgallery.Utils.a.E(nVar, 200L);
                        } else {
                            f0(true, true);
                        }
                    } else {
                        m mVar = new m();
                        this.f55944a = mVar;
                        com.tangxiaolv.telegramgallery.Utils.a.E(mVar, 200L);
                    }
                } else {
                    this.f55946c.setAlpha(1.0f);
                    this.f55946c.setTranslationX(0.0f);
                    this.f55949f = G2;
                }
            }
        } else {
            View view4 = this.f55967x;
            if (view4 != null) {
                view4.setAlpha(1.0f);
                this.f55967x.setVisibility(0);
            }
            fVar.P(true, false);
            fVar.O(true, false);
            fVar.D();
        }
        return true;
    }

    public void Y(boolean z9) {
        for (int i4 = 0; i4 < this.F.size() - (!z9 ? 1 : 0); i4++) {
            this.F.get(i4).p();
            this.F.get(i4).W(this);
        }
        p pVar = this.D;
        if (pVar != null) {
            pVar.t(this);
        }
    }

    public void Z() {
        while (this.F.size() > 0) {
            b0(this.F.get(0));
        }
    }

    public void a0(com.tangxiaolv.telegramgallery.Actionbar.f fVar) {
        if (this.f55966w && this.F.size() == 1 && com.tangxiaolv.telegramgallery.Utils.a.z()) {
            F(true);
        } else {
            b0(fVar);
        }
    }

    public void c0() {
        Runnable runnable = this.f55945b;
        if (runnable == null) {
            return;
        }
        com.tangxiaolv.telegramgallery.Utils.a.c(runnable);
        this.f55945b.run();
        this.f55945b = null;
    }

    public void d0() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (this.F.isEmpty()) {
            return;
        }
        for (int i4 = 0; i4 < this.F.size() - 1; i4++) {
            com.tangxiaolv.telegramgallery.Actionbar.f fVar = this.F.get(i4);
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = fVar.f56045e;
            if (aVar != null && (viewGroup2 = (ViewGroup) aVar.getParent()) != null) {
                viewGroup2.removeView(fVar.f56045e);
            }
            View view = fVar.f56043c;
            if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                fVar.L();
                viewGroup.removeView(fVar.f56043c);
            }
        }
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        com.tangxiaolv.telegramgallery.Actionbar.f fVar2 = arrayList.get(arrayList.size() - 1);
        fVar2.W(this);
        View view2 = fVar2.f56043c;
        if (view2 == null) {
            view2 = fVar2.r(this.E);
        } else {
            ViewGroup viewGroup3 = (ViewGroup) view2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(view2);
            }
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar2 = fVar2.f56045e;
        if (aVar2 != null && aVar2.getAddToContainer()) {
            if (this.f55968y) {
                fVar2.f56045e.setOccupyStatusBar(false);
            }
            ViewGroup viewGroup4 = (ViewGroup) fVar2.f56045e.getParent();
            if (viewGroup4 != null) {
                viewGroup4.removeView(fVar2.f56045e);
            }
            this.f55946c.addView(fVar2.f56045e);
            fVar2.f56045e.setTitleOverlayText(this.C);
        }
        this.f55946c.addView(view2);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        view2.setLayoutParams(layoutParams);
        fVar2.N();
        this.f55948e = fVar2.f56045e;
        if (fVar2.f56049i || view2.getBackground() != null) {
            return;
        }
        view2.setBackgroundColor(-1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
            p pVar = this.D;
            return (pVar != null && pVar.u()) || super.dispatchKeyEventPreIme(keyEvent);
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int paddingRight = ((int) this.f55952i) + getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int paddingLeft2 = getPaddingLeft() + width;
        if (view == this.f55947d) {
            paddingLeft2 = paddingRight;
        } else if (view == this.f55946c) {
            paddingLeft = paddingRight;
        }
        int save = canvas.save();
        if (!this.f55960q) {
            canvas.clipRect(paddingLeft, 0, paddingLeft2, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j4);
        canvas.restoreToCount(save);
        if (paddingRight != 0) {
            if (view == this.f55946c) {
                float max = Math.max(0.0f, Math.min((width - paddingRight) / com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), 1.0f));
                Drawable drawable = H;
                drawable.setBounds(paddingRight - drawable.getIntrinsicWidth(), view.getTop(), paddingRight, view.getBottom());
                H.setAlpha((int) (max * 255.0f));
                H.draw(canvas);
            } else if (view == this.f55947d) {
                float min = Math.min(0.8f, (width - paddingRight) / width);
                I.setColor(((int) ((min >= 0.0f ? min : 0.0f) * 153.0f)) << 24);
                canvas.drawRect(paddingLeft, 0.0f, paddingLeft2, getHeight(), I);
            }
        }
        return drawChild;
    }

    public void e0(Intent intent, int i4) {
        GalleryActivity galleryActivity = this.E;
        if (galleryActivity == null) {
            return;
        }
        if (!this.f55960q) {
            if (intent != null) {
                galleryActivity.startActivityForResult(intent, i4);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.f55949f;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f55949f = null;
        }
        if (this.f55964u != null) {
            N(false);
        } else if (this.f55965v != null) {
            P(false);
        }
        this.f55946c.invalidate();
        if (intent != null) {
            this.E.startActivityForResult(intent, i4);
        }
    }

    public float getInnerTranslationX() {
        return this.f55952i;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.F.isEmpty()) {
            return;
        }
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
        arrayList.get(arrayList.size() - 1).F(configuration);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f55957n || D() || onTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar;
        if (i4 == 82 && !D() && !this.f55954k && (aVar = this.f55948e) != null) {
            aVar.s();
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        q qVar;
        if (D() || this.f55962s || this.f55957n) {
            return false;
        }
        if (this.F.size() > 1) {
            if (motionEvent != null && motionEvent.getAction() == 0 && !this.f55954k && !this.f55953j) {
                ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.F;
                if (!arrayList.get(arrayList.size() - 1).f56048h) {
                    return false;
                }
                this.f55963t = motionEvent.getPointerId(0);
                this.f55953j = true;
                this.f55955l = (int) motionEvent.getX();
                this.f55956m = (int) motionEvent.getY();
                VelocityTracker velocityTracker = this.f55958o;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.f55963t) {
                if (this.f55958o == null) {
                    this.f55958o = VelocityTracker.obtain();
                }
                int max = Math.max(0, (int) (motionEvent.getX() - this.f55955l));
                int abs = Math.abs(((int) motionEvent.getY()) - this.f55956m);
                this.f55958o.addMovement(motionEvent);
                if (this.f55953j && !this.f55954k && max >= com.tangxiaolv.telegramgallery.Utils.a.p(0.4f, true) && Math.abs(max) / 3 > abs) {
                    T(motionEvent);
                } else if (this.f55954k) {
                    if (!this.f55959p) {
                        if (this.E.getCurrentFocus() != null) {
                            com.tangxiaolv.telegramgallery.Utils.a.t(this.E.getCurrentFocus());
                        }
                        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList2 = this.F;
                        arrayList2.get(arrayList2.size() - 1).E();
                        this.f55959p = true;
                    }
                    float f10 = max;
                    this.f55946c.setTranslationX(f10);
                    setInnerTranslationX(f10);
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.f55963t && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.f55958o == null) {
                    this.f55958o = VelocityTracker.obtain();
                }
                this.f55958o.computeCurrentVelocity(1000);
                if (!this.f55954k) {
                    ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList3 = this.F;
                    if (arrayList3.get(arrayList3.size() - 1).f56048h) {
                        float xVelocity = this.f55958o.getXVelocity();
                        float yVelocity = this.f55958o.getYVelocity();
                        if (xVelocity >= 3500.0f && xVelocity > Math.abs(yVelocity)) {
                            T(motionEvent);
                            if (!this.f55959p) {
                                if (((Activity) getContext()).getCurrentFocus() != null) {
                                    com.tangxiaolv.telegramgallery.Utils.a.t(((Activity) getContext()).getCurrentFocus());
                                }
                                this.f55959p = true;
                            }
                        }
                    }
                }
                if (this.f55954k) {
                    float x9 = this.f55946c.getX();
                    AnimatorSet animatorSet = new AnimatorSet();
                    float xVelocity2 = this.f55958o.getXVelocity();
                    boolean z9 = x9 < ((float) this.f55946c.getMeasuredWidth()) / 3.0f && (xVelocity2 < 3500.0f || xVelocity2 < this.f55958o.getYVelocity());
                    if (!z9) {
                        x9 = this.f55946c.getMeasuredWidth() - x9;
                        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f55946c, "translationX", qVar.getMeasuredWidth()), ObjectAnimator.ofFloat(this, "innerTranslationX", this.f55946c.getMeasuredWidth()));
                    } else {
                        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f55946c, "translationX", 0.0f), ObjectAnimator.ofFloat(this, "innerTranslationX", 0.0f));
                    }
                    animatorSet.setDuration(Math.max((int) ((200.0f / this.f55946c.getMeasuredWidth()) * x9), 50));
                    animatorSet.addListener(new g(z9));
                    animatorSet.start();
                    this.f55957n = true;
                } else {
                    this.f55953j = false;
                    this.f55954k = false;
                }
                VelocityTracker velocityTracker2 = this.f55958o;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f55958o = null;
                }
            } else if (motionEvent == null) {
                this.f55953j = false;
                this.f55954k = false;
                VelocityTracker velocityTracker3 = this.f55958o;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f55958o = null;
                }
            }
        }
        return this.f55954k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z9) {
        onTouchEvent(null);
        super.requestDisallowInterceptTouchEvent(z9);
    }

    public void setBackgroundView(View view) {
        this.f55967x = view;
    }

    public void setDelegate(p pVar) {
        this.D = pVar;
    }

    public void setInnerTranslationX(float f10) {
        this.f55952i = f10;
        invalidate();
    }

    public void setRemoveActionBarExtraHeight(boolean z9) {
        this.f55968y = z9;
    }

    public void setTitleOverlayText(String str) {
        this.C = str;
        Iterator<com.tangxiaolv.telegramgallery.Actionbar.f> it = this.F.iterator();
        while (it.hasNext()) {
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = it.next().f56045e;
            if (aVar != null) {
                aVar.setTitleOverlayText(this.C);
            }
        }
    }

    public void setUseAlphaAnimations(boolean z9) {
        this.f55966w = z9;
    }
}
