package com.xw.repo;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import z5.b;

/* loaded from: classes3.dex */
public class BubbleSeekBar extends View {
    static final int F2 = -1;
    private long A;
    private boolean B;
    private long C;
    private boolean D;
    private boolean E;
    float E2;
    private int F;
    private int G;
    private int H;
    private float I;
    private float J;
    private float K;
    private float L;
    private float M;
    private boolean N;
    private int O;
    private boolean P;
    private SparseArray<String> Q;
    private float R;
    private boolean S;
    private k T;
    private float T1;
    private float U;
    private float V;
    private float V1;
    private Paint W;

    /* renamed from: a  reason: collision with root package name */
    private float f59866a;

    /* renamed from: b  reason: collision with root package name */
    private float f59867b;

    /* renamed from: b1  reason: collision with root package name */
    private Rect f59868b1;

    /* renamed from: b2  reason: collision with root package name */
    private WindowManager.LayoutParams f59869b2;

    /* renamed from: c  reason: collision with root package name */
    private float f59870c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59871d;

    /* renamed from: e  reason: collision with root package name */
    private int f59872e;

    /* renamed from: f  reason: collision with root package name */
    private int f59873f;

    /* renamed from: g  reason: collision with root package name */
    private int f59874g;

    /* renamed from: g1  reason: collision with root package name */
    private WindowManager f59875g1;

    /* renamed from: g2  reason: collision with root package name */
    private int[] f59876g2;

    /* renamed from: h  reason: collision with root package name */
    private int f59877h;

    /* renamed from: i  reason: collision with root package name */
    private int f59878i;

    /* renamed from: j  reason: collision with root package name */
    private int f59879j;

    /* renamed from: k  reason: collision with root package name */
    private int f59880k;

    /* renamed from: l  reason: collision with root package name */
    private int f59881l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f59882m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f59883n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f59884o;

    /* renamed from: p  reason: collision with root package name */
    private int f59885p;

    /* renamed from: p1  reason: collision with root package name */
    private i f59886p1;

    /* renamed from: p2  reason: collision with root package name */
    private boolean f59887p2;

    /* renamed from: q  reason: collision with root package name */
    private int f59888q;

    /* renamed from: r  reason: collision with root package name */
    private int f59889r;

    /* renamed from: s  reason: collision with root package name */
    private int f59890s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f59891t;

    /* renamed from: u  reason: collision with root package name */
    private int f59892u;

    /* renamed from: v  reason: collision with root package name */
    private int f59893v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f59894w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f59895x;

    /* renamed from: x1  reason: collision with root package name */
    private int f59896x1;

    /* renamed from: x2  reason: collision with root package name */
    private float f59897x2;

    /* renamed from: y  reason: collision with root package name */
    private boolean f59898y;

    /* renamed from: y1  reason: collision with root package name */
    private float f59899y1;

    /* renamed from: y2  reason: collision with root package name */
    private com.xw.repo.a f59900y2;

    /* renamed from: z  reason: collision with root package name */
    private boolean f59901z;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.f59887p2 = false;
            BubbleSeekBar.this.z();
        }
    }

    /* loaded from: classes3.dex */
    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            BubbleSeekBar.this.N = false;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BubbleSeekBar.this.N = false;
            BubbleSeekBar.this.invalidate();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* loaded from: classes3.dex */
        class a extends AnimatorListenerAdapter {
            a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (!BubbleSeekBar.this.B) {
                    BubbleSeekBar.this.I();
                }
                BubbleSeekBar.this.N = false;
                BubbleSeekBar.this.invalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!BubbleSeekBar.this.B) {
                    BubbleSeekBar.this.I();
                }
                BubbleSeekBar.this.N = false;
                BubbleSeekBar.this.invalidate();
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.f59886p1.animate().alpha(BubbleSeekBar.this.B ? 1.0f : 0.0f).setDuration(BubbleSeekBar.this.A).setListener(new a()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BubbleSeekBar.this.K = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f59870c = bubbleSeekBar.C();
            if (!BubbleSeekBar.this.D && BubbleSeekBar.this.f59886p1.getParent() != null) {
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                bubbleSeekBar2.V1 = bubbleSeekBar2.B();
                BubbleSeekBar.this.f59869b2.x = (int) (BubbleSeekBar.this.V1 + 0.5f);
                BubbleSeekBar.this.f59875g1.updateViewLayout(BubbleSeekBar.this.f59886p1, BubbleSeekBar.this.f59869b2);
                BubbleSeekBar.this.f59886p1.a(BubbleSeekBar.this.f59894w ? String.valueOf(BubbleSeekBar.this.getProgressFloat()) : String.valueOf(BubbleSeekBar.this.getProgress()));
            } else {
                BubbleSeekBar.this.O();
            }
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.T != null) {
                k kVar = BubbleSeekBar.this.T;
                BubbleSeekBar bubbleSeekBar3 = BubbleSeekBar.this;
                kVar.a(bubbleSeekBar3, bubbleSeekBar3.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (!BubbleSeekBar.this.D && !BubbleSeekBar.this.B) {
                BubbleSeekBar.this.I();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f59870c = bubbleSeekBar.C();
            BubbleSeekBar.this.N = false;
            BubbleSeekBar.this.f59887p2 = true;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!BubbleSeekBar.this.D && !BubbleSeekBar.this.B) {
                BubbleSeekBar.this.I();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f59870c = bubbleSeekBar.C();
            BubbleSeekBar.this.N = false;
            BubbleSeekBar.this.f59887p2 = true;
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.T != null) {
                k kVar = BubbleSeekBar.this.T;
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                kVar.c(bubbleSeekBar2, bubbleSeekBar2.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BubbleSeekBar.this.f59875g1.addView(BubbleSeekBar.this.f59886p1, BubbleSeekBar.this.f59869b2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.P();
            BubbleSeekBar.this.P = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class i extends View {

        /* renamed from: a  reason: collision with root package name */
        private Paint f59911a;

        /* renamed from: b  reason: collision with root package name */
        private Path f59912b;

        /* renamed from: c  reason: collision with root package name */
        private RectF f59913c;

        /* renamed from: d  reason: collision with root package name */
        private Rect f59914d;

        /* renamed from: e  reason: collision with root package name */
        private String f59915e;

        i(BubbleSeekBar bubbleSeekBar, Context context) {
            this(bubbleSeekBar, context, null);
        }

        void a(String str) {
            if (str == null || this.f59915e.equals(str)) {
                return;
            }
            this.f59915e = str;
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.f59912b.reset();
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() - (BubbleSeekBar.this.f59896x1 / 3.0f);
            this.f59912b.moveTo(measuredWidth, measuredHeight);
            float measuredWidth2 = (float) ((getMeasuredWidth() / 2.0f) - ((Math.sqrt(3.0d) / 2.0d) * BubbleSeekBar.this.f59896x1));
            float f10 = BubbleSeekBar.this.f59896x1 * 1.5f;
            this.f59912b.quadTo(measuredWidth2 - com.xw.repo.b.a(2), f10 - com.xw.repo.b.a(2), measuredWidth2, f10);
            this.f59912b.arcTo(this.f59913c, 150.0f, 240.0f);
            this.f59912b.quadTo(((float) ((getMeasuredWidth() / 2.0f) + ((Math.sqrt(3.0d) / 2.0d) * BubbleSeekBar.this.f59896x1))) + com.xw.repo.b.a(2), f10 - com.xw.repo.b.a(2), measuredWidth, measuredHeight);
            this.f59912b.close();
            this.f59911a.setColor(BubbleSeekBar.this.F);
            canvas.drawPath(this.f59912b, this.f59911a);
            this.f59911a.setTextSize(BubbleSeekBar.this.G);
            this.f59911a.setColor(BubbleSeekBar.this.H);
            Paint paint = this.f59911a;
            String str = this.f59915e;
            paint.getTextBounds(str, 0, str.length(), this.f59914d);
            Paint.FontMetrics fontMetrics = this.f59911a.getFontMetrics();
            float f11 = fontMetrics.descent;
            canvas.drawText(this.f59915e, getMeasuredWidth() / 2.0f, (BubbleSeekBar.this.f59896x1 + ((f11 - fontMetrics.ascent) / 2.0f)) - f11, this.f59911a);
        }

        @Override // android.view.View
        protected void onMeasure(int i4, int i10) {
            super.onMeasure(i4, i10);
            setMeasuredDimension(BubbleSeekBar.this.f59896x1 * 3, BubbleSeekBar.this.f59896x1 * 3);
            this.f59913c.set((getMeasuredWidth() / 2.0f) - BubbleSeekBar.this.f59896x1, 0.0f, (getMeasuredWidth() / 2.0f) + BubbleSeekBar.this.f59896x1, BubbleSeekBar.this.f59896x1 * 2);
        }

        i(BubbleSeekBar bubbleSeekBar, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        i(Context context, AttributeSet attributeSet, int i4) {
            super(context, attributeSet, i4);
            this.f59915e = "";
            Paint paint = new Paint();
            this.f59911a = paint;
            paint.setAntiAlias(true);
            this.f59911a.setTextAlign(Paint.Align.CENTER);
            this.f59912b = new Path();
            this.f59913c = new RectF();
            this.f59914d = new Rect();
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        @NonNull
        SparseArray<String> a(int i4, @NonNull SparseArray<String> sparseArray);
    }

    /* loaded from: classes3.dex */
    public interface k {
        void a(BubbleSeekBar bubbleSeekBar, int i4, float f10, boolean z9);

        void b(BubbleSeekBar bubbleSeekBar, int i4, float f10);

        void c(BubbleSeekBar bubbleSeekBar, int i4, float f10, boolean z9);
    }

    /* loaded from: classes3.dex */
    public static abstract class l implements k {
        @Override // com.xw.repo.BubbleSeekBar.k
        public void a(BubbleSeekBar bubbleSeekBar, int i4, float f10, boolean z9) {
        }

        @Override // com.xw.repo.BubbleSeekBar.k
        public void b(BubbleSeekBar bubbleSeekBar, int i4, float f10) {
        }

        @Override // com.xw.repo.BubbleSeekBar.k
        public void c(BubbleSeekBar bubbleSeekBar, int i4, float f10, boolean z9) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface m {

        /* renamed from: e1  reason: collision with root package name */
        public static final int f59917e1 = 0;

        /* renamed from: f1  reason: collision with root package name */
        public static final int f59918f1 = 1;

        /* renamed from: g1  reason: collision with root package name */
        public static final int f59919g1 = 2;
    }

    public BubbleSeekBar(Context context) {
        this(context, null);
    }

    private float A(float f10) {
        float f11 = this.U;
        if (f10 <= f11) {
            return f11;
        }
        float f12 = this.V;
        if (f10 >= f12) {
            return f12;
        }
        float f13 = 0.0f;
        int i4 = 0;
        while (i4 <= this.f59881l) {
            float f14 = this.M;
            f13 = (i4 * f14) + this.U;
            if (f13 <= f10 && f10 - f13 <= f14) {
                break;
            }
            i4++;
        }
        float f15 = this.M;
        return f10 - f13 <= f15 / 2.0f ? f13 : ((i4 + 1) * f15) + this.U;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float B() {
        if (this.E) {
            return this.f59899y1 - ((this.L * (this.f59870c - this.f59866a)) / this.I);
        }
        return this.f59899y1 + ((this.L * (this.f59870c - this.f59866a)) / this.I);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float C() {
        float f10;
        float f11;
        if (this.E) {
            f10 = ((this.V - this.K) * this.I) / this.L;
            f11 = this.f59866a;
        } else {
            f10 = ((this.K - this.U) * this.I) / this.L;
            f11 = this.f59866a;
        }
        return f10 + f11;
    }

    private void D() {
        String G;
        String G2;
        this.W.setTextSize(this.G);
        if (this.f59894w) {
            G = G(this.E ? this.f59867b : this.f59866a);
        } else if (this.E) {
            G = this.f59871d ? G(this.f59867b) : String.valueOf((int) this.f59867b);
        } else {
            G = this.f59871d ? G(this.f59866a) : String.valueOf((int) this.f59866a);
        }
        this.W.getTextBounds(G, 0, G.length(), this.f59868b1);
        int width = (this.f59868b1.width() + (this.O * 2)) >> 1;
        if (this.f59894w) {
            G2 = G(this.E ? this.f59866a : this.f59867b);
        } else if (this.E) {
            G2 = this.f59871d ? G(this.f59866a) : String.valueOf((int) this.f59866a);
        } else {
            G2 = this.f59871d ? G(this.f59867b) : String.valueOf((int) this.f59867b);
        }
        this.W.getTextBounds(G2, 0, G2.length(), this.f59868b1);
        int a10 = com.xw.repo.b.a(14);
        this.f59896x1 = a10;
        this.f59896x1 = Math.max(a10, Math.max(width, (this.f59868b1.width() + (this.O * 2)) >> 1)) + this.O;
    }

    private String G(float f10) {
        return String.valueOf(H(f10));
    }

    private float H(float f10) {
        return BigDecimal.valueOf(f10).setScale(1, 4).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        i iVar = this.f59886p1;
        if (iVar == null) {
            return;
        }
        iVar.setVisibility(8);
        if (this.f59886p1.getParent() != null) {
            this.f59875g1.removeViewImmediate(this.f59886p1);
        }
    }

    private void J() {
        if (this.f59866a == this.f59867b) {
            this.f59866a = 0.0f;
            this.f59867b = 100.0f;
        }
        float f10 = this.f59866a;
        float f11 = this.f59867b;
        if (f10 > f11) {
            this.f59867b = f10;
            this.f59866a = f11;
        }
        float f12 = this.f59870c;
        float f13 = this.f59866a;
        if (f12 < f13) {
            this.f59870c = f13;
        }
        float f14 = this.f59870c;
        float f15 = this.f59867b;
        if (f14 > f15) {
            this.f59870c = f15;
        }
        int i4 = this.f59873f;
        int i10 = this.f59872e;
        if (i4 < i10) {
            this.f59873f = i10 + com.xw.repo.b.a(2);
        }
        int i11 = this.f59874g;
        int i12 = this.f59873f;
        if (i11 <= i12) {
            this.f59874g = i12 + com.xw.repo.b.a(2);
        }
        int i13 = this.f59877h;
        int i14 = this.f59873f;
        if (i13 <= i14) {
            this.f59877h = i14 * 2;
        }
        if (this.f59881l <= 0) {
            this.f59881l = 10;
        }
        float f16 = this.f59867b - this.f59866a;
        this.I = f16;
        float f17 = f16 / this.f59881l;
        this.J = f17;
        if (f17 < 1.0f) {
            this.f59871d = true;
        }
        if (this.f59871d) {
            this.f59894w = true;
        }
        int i15 = this.f59889r;
        if (i15 != -1) {
            this.f59884o = true;
        }
        if (this.f59884o) {
            if (i15 == -1) {
                this.f59889r = 0;
            }
            if (this.f59889r == 2) {
                this.f59882m = true;
            }
        }
        if (this.f59890s < 1) {
            this.f59890s = 1;
        }
        K();
        if (this.f59898y) {
            this.f59901z = false;
            this.f59883n = false;
        }
        if (this.f59883n && !this.f59882m) {
            this.f59883n = false;
        }
        if (this.f59901z) {
            float f18 = this.f59866a;
            this.f59897x2 = f18;
            if (this.f59870c != f18) {
                this.f59897x2 = this.J;
            }
            this.f59882m = true;
            this.f59883n = true;
        }
        if (this.D) {
            this.B = false;
        }
        if (this.B) {
            setProgress(this.f59870c);
        }
        this.f59892u = (this.f59871d || this.f59901z || (this.f59884o && this.f59889r == 2)) ? this.f59885p : this.f59892u;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void K() {
        /*
            r8 = this;
            int r0 = r8.f59889r
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 != r1) goto L9
            r0 = 1
            goto La
        L9:
            r0 = 0
        La:
            int r4 = r8.f59890s
            if (r4 <= r3) goto L14
            int r4 = r8.f59881l
            int r4 = r4 % r1
            if (r4 != 0) goto L14
            goto L15
        L14:
            r3 = 0
        L15:
            int r1 = r8.f59881l
            if (r2 > r1) goto L75
            boolean r4 = r8.E
            if (r4 == 0) goto L26
            float r5 = r8.f59867b
            float r6 = r8.J
            float r7 = (float) r2
            float r6 = r6 * r7
            float r5 = r5 - r6
            goto L2e
        L26:
            float r5 = r8.f59866a
            float r6 = r8.J
            float r7 = (float) r2
            float r6 = r6 * r7
            float r5 = r5 + r6
        L2e:
            if (r0 == 0) goto L4d
            if (r3 == 0) goto L52
            int r1 = r8.f59890s
            int r1 = r2 % r1
            if (r1 != 0) goto L72
            if (r4 == 0) goto L43
            float r1 = r8.f59867b
            float r4 = r8.J
            float r5 = (float) r2
            float r4 = r4 * r5
            float r1 = r1 - r4
            goto L4b
        L43:
            float r1 = r8.f59866a
            float r4 = r8.J
            float r5 = (float) r2
            float r4 = r4 * r5
            float r1 = r1 + r4
        L4b:
            r5 = r1
            goto L52
        L4d:
            if (r2 == 0) goto L52
            if (r2 == r1) goto L52
            goto L72
        L52:
            android.util.SparseArray<java.lang.String> r1 = r8.Q
            boolean r4 = r8.f59871d
            if (r4 == 0) goto L5d
            java.lang.String r4 = r8.G(r5)
            goto L6f
        L5d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r5 = (int) r5
            r4.append(r5)
            java.lang.String r5 = ""
            r4.append(r5)
            java.lang.String r4 = r4.toString()
        L6f:
            r1.put(r2, r4)
        L72:
            int r2 = r2 + 1
            goto L15
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xw.repo.BubbleSeekBar.K():void");
    }

    private boolean L(MotionEvent motionEvent) {
        if (isEnabled()) {
            float f10 = (this.L / this.I) * (this.f59870c - this.f59866a);
            float f11 = this.E ? this.V - f10 : this.U + f10;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            return ((motionEvent.getX() - f11) * (motionEvent.getX() - f11)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) <= (this.U + ((float) com.xw.repo.b.a(8))) * (this.U + ((float) com.xw.repo.b.a(8)));
        }
        return false;
    }

    private boolean M(MotionEvent motionEvent) {
        return isEnabled() && motionEvent.getX() >= ((float) getPaddingLeft()) && motionEvent.getX() <= ((float) (getMeasuredWidth() - getPaddingRight())) && motionEvent.getY() >= ((float) getPaddingTop()) && motionEvent.getY() <= ((float) (getMeasuredHeight() - getPaddingBottom()));
    }

    private void N() {
        Window window;
        getLocationInWindow(this.f59876g2);
        ViewParent parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            if (view.getMeasuredWidth() > 0) {
                int[] iArr = this.f59876g2;
                iArr[0] = iArr[0] % view.getMeasuredWidth();
            }
        }
        if (this.E) {
            this.f59899y1 = (this.f59876g2[0] + this.V) - (this.f59886p1.getMeasuredWidth() / 2.0f);
        } else {
            this.f59899y1 = (this.f59876g2[0] + this.U) - (this.f59886p1.getMeasuredWidth() / 2.0f);
        }
        this.V1 = B();
        float measuredHeight = this.f59876g2[1] - this.f59886p1.getMeasuredHeight();
        this.T1 = measuredHeight;
        this.T1 = measuredHeight - com.xw.repo.b.a(24);
        if (com.xw.repo.b.b()) {
            this.T1 -= com.xw.repo.b.a(4);
        }
        Context context = getContext();
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (window.getAttributes().flags & 1024) == 0) {
            return;
        }
        Resources system = Resources.getSystem();
        this.T1 += system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float O() {
        float f10 = this.f59870c;
        if (this.f59901z && this.S) {
            float f11 = this.J / 2.0f;
            if (this.f59895x) {
                if (f10 == this.f59866a || f10 == this.f59867b) {
                    return f10;
                }
                for (int i4 = 0; i4 <= this.f59881l; i4++) {
                    float f12 = this.J;
                    float f13 = i4 * f12;
                    if (f13 < f10 && f13 + f12 >= f10) {
                        return f11 + f13 > f10 ? f13 : f13 + f12;
                    }
                }
            }
            float f14 = this.f59897x2;
            if (f10 >= f14) {
                if (f10 >= f11 + f14) {
                    float f15 = f14 + this.J;
                    this.f59897x2 = f15;
                    return f15;
                }
                return f14;
            } else if (f10 >= f14 - f11) {
                return f14;
            } else {
                float f16 = f14 - this.J;
                this.f59897x2 = f16;
                return f16;
            }
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        i iVar = this.f59886p1;
        if (iVar == null || iVar.getParent() != null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.f59869b2;
        layoutParams.x = (int) (this.V1 + 0.5f);
        layoutParams.y = (int) (this.T1 + 0.5f);
        this.f59886p1.setAlpha(0.0f);
        this.f59886p1.setVisibility(0);
        this.f59886p1.animate().alpha(1.0f).setDuration(this.f59895x ? 0L : this.A).setListener(new g()).start();
        this.f59886p1.a(this.f59894w ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        int i4 = 0;
        float f10 = 0.0f;
        while (i4 <= this.f59881l) {
            float f11 = this.M;
            f10 = (i4 * f11) + this.U;
            float f12 = this.K;
            if (f10 <= f12 && f12 - f10 <= f11) {
                break;
            }
            i4++;
        }
        boolean z9 = BigDecimal.valueOf((double) this.K).setScale(1, 4).floatValue() == f10;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimator = null;
        if (!z9) {
            float f13 = this.K;
            float f14 = this.M;
            valueAnimator = f13 - f10 <= f14 / 2.0f ? ValueAnimator.ofFloat(f13, f10) : ValueAnimator.ofFloat(f13, ((i4 + 1) * f14) + this.U);
            valueAnimator.setInterpolator(new LinearInterpolator());
            valueAnimator.addUpdateListener(new e());
        }
        if (!this.D) {
            i iVar = this.f59886p1;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = this.B ? 1.0f : 0.0f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(iVar, property, fArr);
            if (z9) {
                animatorSet.setDuration(this.A).play(ofFloat);
            } else {
                animatorSet.setDuration(this.A).playTogether(valueAnimator, ofFloat);
            }
        } else if (!z9) {
            animatorSet.setDuration(this.A).playTogether(valueAnimator);
        }
        animatorSet.addListener(new f());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(com.xw.repo.a aVar) {
        this.f59866a = aVar.f59920a;
        this.f59867b = aVar.f59921b;
        this.f59870c = aVar.f59922c;
        this.f59871d = aVar.f59923d;
        this.f59872e = aVar.f59924e;
        this.f59873f = aVar.f59925f;
        this.f59874g = aVar.f59926g;
        this.f59877h = aVar.f59927h;
        this.f59878i = aVar.f59928i;
        this.f59879j = aVar.f59929j;
        this.f59880k = aVar.f59930k;
        this.f59881l = aVar.f59931l;
        this.f59882m = aVar.f59932m;
        this.f59883n = aVar.f59933n;
        this.f59884o = aVar.f59934o;
        this.f59885p = aVar.f59935p;
        this.f59888q = aVar.f59936q;
        this.f59889r = aVar.f59937r;
        this.f59890s = aVar.f59938s;
        this.f59891t = aVar.f59939t;
        this.f59892u = aVar.f59940u;
        this.f59893v = aVar.f59941v;
        this.f59894w = aVar.f59942w;
        this.A = aVar.f59943x;
        this.f59895x = aVar.f59944y;
        this.f59898y = aVar.f59945z;
        this.f59901z = aVar.A;
        this.F = aVar.B;
        this.G = aVar.C;
        this.H = aVar.D;
        this.B = aVar.E;
        this.C = aVar.F;
        this.D = aVar.G;
        this.E = aVar.H;
        J();
        D();
        k kVar = this.T;
        if (kVar != null) {
            kVar.a(this, getProgress(), getProgressFloat(), false);
            this.T.c(this, getProgress(), getProgressFloat(), false);
        }
        this.f59900y2 = null;
        requestLayout();
    }

    public void F() {
        if (this.D) {
            return;
        }
        N();
        if (this.f59886p1.getParent() != null) {
            if (this.B) {
                WindowManager.LayoutParams layoutParams = this.f59869b2;
                layoutParams.y = (int) (this.T1 + 0.5f);
                this.f59875g1.updateViewLayout(this.f59886p1, layoutParams);
                return;
            }
            postInvalidate();
        }
    }

    public com.xw.repo.a getConfigBuilder() {
        if (this.f59900y2 == null) {
            this.f59900y2 = new com.xw.repo.a(this);
        }
        com.xw.repo.a aVar = this.f59900y2;
        aVar.f59920a = this.f59866a;
        aVar.f59921b = this.f59867b;
        aVar.f59922c = this.f59870c;
        aVar.f59923d = this.f59871d;
        aVar.f59924e = this.f59872e;
        aVar.f59925f = this.f59873f;
        aVar.f59926g = this.f59874g;
        aVar.f59927h = this.f59877h;
        aVar.f59928i = this.f59878i;
        aVar.f59929j = this.f59879j;
        aVar.f59930k = this.f59880k;
        aVar.f59931l = this.f59881l;
        aVar.f59932m = this.f59882m;
        aVar.f59933n = this.f59883n;
        aVar.f59934o = this.f59884o;
        aVar.f59935p = this.f59885p;
        aVar.f59936q = this.f59888q;
        aVar.f59937r = this.f59889r;
        aVar.f59938s = this.f59890s;
        aVar.f59939t = this.f59891t;
        aVar.f59940u = this.f59892u;
        aVar.f59941v = this.f59893v;
        aVar.f59942w = this.f59894w;
        aVar.f59943x = this.A;
        aVar.f59944y = this.f59895x;
        aVar.f59945z = this.f59898y;
        aVar.A = this.f59901z;
        aVar.B = this.F;
        aVar.C = this.G;
        aVar.D = this.H;
        aVar.E = this.B;
        aVar.F = this.C;
        aVar.G = this.D;
        aVar.H = this.E;
        return aVar;
    }

    public float getMax() {
        return this.f59867b;
    }

    public float getMin() {
        return this.f59866a;
    }

    public k getOnProgressChangedListener() {
        return this.T;
    }

    public int getProgress() {
        return Math.round(O());
    }

    public float getProgressFloat() {
        return H(O());
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        I();
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x024a, code lost:
        if (r2 != r17.f59867b) goto L39;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onDraw(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xw.repo.BubbleSeekBar.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (this.D) {
            return;
        }
        N();
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        int i11 = this.f59877h * 2;
        if (this.f59891t) {
            this.W.setTextSize(this.f59892u);
            this.W.getTextBounds("j", 0, 1, this.f59868b1);
            i11 += this.f59868b1.height();
        }
        if (this.f59884o && this.f59889r >= 1) {
            this.W.setTextSize(this.f59885p);
            this.W.getTextBounds("j", 0, 1, this.f59868b1);
            i11 = Math.max(i11, (this.f59877h * 2) + this.f59868b1.height());
        }
        setMeasuredDimension(View.resolveSize(com.xw.repo.b.a(com.facebook.imagepipeline.common.e.f12205e), i4), i11 + (this.O * 2));
        this.U = getPaddingLeft() + this.f59877h;
        this.V = (getMeasuredWidth() - getPaddingRight()) - this.f59877h;
        if (this.f59884o) {
            this.W.setTextSize(this.f59885p);
            int i12 = this.f59889r;
            if (i12 == 0) {
                String str = this.Q.get(0);
                this.W.getTextBounds(str, 0, str.length(), this.f59868b1);
                this.U += this.f59868b1.width() + this.O;
                String str2 = this.Q.get(this.f59881l);
                this.W.getTextBounds(str2, 0, str2.length(), this.f59868b1);
                this.V -= this.f59868b1.width() + this.O;
            } else if (i12 >= 1) {
                String str3 = this.Q.get(0);
                this.W.getTextBounds(str3, 0, str3.length(), this.f59868b1);
                this.U = getPaddingLeft() + Math.max(this.f59877h, this.f59868b1.width() / 2.0f) + this.O;
                String str4 = this.Q.get(this.f59881l);
                this.W.getTextBounds(str4, 0, str4.length(), this.f59868b1);
                this.V = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f59877h, this.f59868b1.width() / 2.0f)) - this.O;
            }
        } else if (this.f59891t && this.f59889r == -1) {
            this.W.setTextSize(this.f59892u);
            String str5 = this.Q.get(0);
            this.W.getTextBounds(str5, 0, str5.length(), this.f59868b1);
            this.U = getPaddingLeft() + Math.max(this.f59877h, this.f59868b1.width() / 2.0f) + this.O;
            String str6 = this.Q.get(this.f59881l);
            this.W.getTextBounds(str6, 0, str6.length(), this.f59868b1);
            this.V = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f59877h, this.f59868b1.width() / 2.0f)) - this.O;
        }
        float f10 = this.V - this.U;
        this.L = f10;
        this.M = (f10 * 1.0f) / this.f59881l;
        if (this.D) {
            return;
        }
        this.f59886p1.measure(i4, i10);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f59870c = bundle.getFloat("progress");
            super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
            i iVar = this.f59886p1;
            if (iVar != null) {
                iVar.a(this.f59894w ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
            }
            setProgress(this.f59870c);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.f59870c);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        post(new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xw.repo.BubbleSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i4) {
        if (this.D || !this.B) {
            return;
        }
        if (i4 != 0) {
            I();
        } else if (this.P) {
            P();
        }
        super.onVisibilityChanged(view, i4);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setBubbleColor(@ColorInt int i4) {
        if (this.F != i4) {
            this.F = i4;
            i iVar = this.f59886p1;
            if (iVar != null) {
                iVar.invalidate();
            }
        }
    }

    public void setCustomSectionTextArray(@NonNull j jVar) {
        this.Q = jVar.a(this.f59881l, this.Q);
        for (int i4 = 0; i4 <= this.f59881l; i4++) {
            if (this.Q.get(i4) == null) {
                this.Q.put(i4, "");
            }
        }
        this.f59891t = false;
        requestLayout();
        invalidate();
    }

    public void setOnProgressChangedListener(k kVar) {
        this.T = kVar;
    }

    public void setProgress(float f10) {
        this.f59870c = f10;
        k kVar = this.T;
        if (kVar != null) {
            kVar.a(this, getProgress(), getProgressFloat(), false);
            this.T.c(this, getProgress(), getProgressFloat(), false);
        }
        if (!this.D) {
            this.V1 = B();
        }
        if (this.B) {
            I();
            postDelayed(new h(), this.C);
        }
        if (this.f59901z) {
            this.S = false;
        }
        postInvalidate();
    }

    public void setSecondTrackColor(@ColorInt int i4) {
        if (this.f59879j != i4) {
            this.f59879j = i4;
            invalidate();
        }
    }

    public void setThumbColor(@ColorInt int i4) {
        if (this.f59880k != i4) {
            this.f59880k = i4;
            invalidate();
        }
    }

    public void setTrackColor(@ColorInt int i4) {
        if (this.f59878i != i4) {
            this.f59878i = i4;
            invalidate();
        }
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f59889r = -1;
        this.Q = new SparseArray<>();
        this.f59876g2 = new int[2];
        this.f59887p2 = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.l.E3, i4, 0);
        this.f59866a = obtainStyledAttributes.getFloat(b.l.Q3, 0.0f);
        this.f59867b = obtainStyledAttributes.getFloat(b.l.P3, 100.0f);
        this.f59870c = obtainStyledAttributes.getFloat(b.l.R3, this.f59866a);
        this.f59871d = obtainStyledAttributes.getBoolean(b.l.O3, false);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(b.l.f95629n4, com.xw.repo.b.a(2));
        this.f59872e = dimensionPixelSize;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(b.l.U3, dimensionPixelSize + com.xw.repo.b.a(2));
        this.f59873f = dimensionPixelSize2;
        this.f59874g = obtainStyledAttributes.getDimensionPixelSize(b.l.h4, dimensionPixelSize2 + com.xw.repo.b.a(2));
        this.f59877h = obtainStyledAttributes.getDimensionPixelSize(b.l.i4, this.f59873f * 2);
        this.f59881l = obtainStyledAttributes.getInteger(b.l.V3, 10);
        this.f59878i = obtainStyledAttributes.getColor(b.l.f95619m4, ContextCompat.getColor(context, b.d.M));
        int color = obtainStyledAttributes.getColor(b.l.T3, ContextCompat.getColor(context, b.d.L));
        this.f59879j = color;
        this.f59880k = obtainStyledAttributes.getColor(b.l.g4, color);
        this.f59884o = obtainStyledAttributes.getBoolean(b.l.e4, false);
        this.f59885p = obtainStyledAttributes.getDimensionPixelSize(b.l.Z3, com.xw.repo.b.c(14));
        this.f59888q = obtainStyledAttributes.getColor(b.l.W3, this.f59878i);
        this.f59898y = obtainStyledAttributes.getBoolean(b.l.f95515b4, false);
        this.f59901z = obtainStyledAttributes.getBoolean(b.l.f95505a4, false);
        int integer = obtainStyledAttributes.getInteger(b.l.Y3, -1);
        if (integer == 0) {
            this.f59889r = 0;
        } else if (integer == 1) {
            this.f59889r = 1;
        } else if (integer == 2) {
            this.f59889r = 2;
        } else {
            this.f59889r = -1;
        }
        this.f59890s = obtainStyledAttributes.getInteger(b.l.X3, 1);
        this.f59891t = obtainStyledAttributes.getBoolean(b.l.f95553f4, false);
        this.f59892u = obtainStyledAttributes.getDimensionPixelSize(b.l.f95599k4, com.xw.repo.b.c(14));
        this.f59893v = obtainStyledAttributes.getColor(b.l.j4, this.f59879j);
        this.F = obtainStyledAttributes.getColor(b.l.K3, this.f59879j);
        this.G = obtainStyledAttributes.getDimensionPixelSize(b.l.M3, com.xw.repo.b.c(14));
        this.H = obtainStyledAttributes.getColor(b.l.L3, -1);
        this.f59882m = obtainStyledAttributes.getBoolean(b.l.d4, false);
        this.f59883n = obtainStyledAttributes.getBoolean(b.l.J3, false);
        this.f59894w = obtainStyledAttributes.getBoolean(b.l.f95525c4, false);
        int integer2 = obtainStyledAttributes.getInteger(b.l.I3, -1);
        this.A = integer2 < 0 ? 200L : integer2;
        this.f59895x = obtainStyledAttributes.getBoolean(b.l.f95609l4, false);
        this.B = obtainStyledAttributes.getBoolean(b.l.G3, false);
        int integer3 = obtainStyledAttributes.getInteger(b.l.H3, 0);
        this.C = integer3 < 0 ? 0L : integer3;
        this.D = obtainStyledAttributes.getBoolean(b.l.N3, false);
        this.E = obtainStyledAttributes.getBoolean(b.l.S3, false);
        setEnabled(obtainStyledAttributes.getBoolean(b.l.F3, isEnabled()));
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.W = paint;
        paint.setAntiAlias(true);
        this.W.setStrokeCap(Paint.Cap.ROUND);
        this.W.setTextAlign(Paint.Align.CENTER);
        this.f59868b1 = new Rect();
        this.O = com.xw.repo.b.a(2);
        J();
        if (this.D) {
            return;
        }
        this.f59875g1 = (WindowManager) context.getSystemService("window");
        i iVar = new i(this, context);
        this.f59886p1 = iVar;
        iVar.a(this.f59894w ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f59869b2 = layoutParams;
        layoutParams.gravity = BadgeDrawable.TOP_START;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.flags = 524328;
        if (!com.xw.repo.b.b() && Build.VERSION.SDK_INT < 25) {
            this.f59869b2.type = 2005;
        } else {
            this.f59869b2.type = 2;
        }
        D();
    }
}
