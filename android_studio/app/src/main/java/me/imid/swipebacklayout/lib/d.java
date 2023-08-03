package me.imid.swipebacklayout.lib;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ScrollerCompat;
import java.util.Arrays;

/* compiled from: ViewDragHelper.java */
/* loaded from: classes4.dex */
public class d {
    public static final int A = 2;
    public static final int B = 1;
    public static final int C = 2;
    public static final int D = 4;
    public static final int E = 8;
    public static final int F = 15;
    public static final int G = 1;
    public static final int H = 2;
    public static final int I = 3;
    public static final int J = 20;
    private static final int K = 256;
    private static final int L = 600;
    private static final Interpolator M = new a();

    /* renamed from: w  reason: collision with root package name */
    private static final String f88372w = "ViewDragHelper";

    /* renamed from: x  reason: collision with root package name */
    public static final int f88373x = -1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f88374y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f88375z = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f88376a;

    /* renamed from: b  reason: collision with root package name */
    private int f88377b;

    /* renamed from: d  reason: collision with root package name */
    private float[] f88379d;

    /* renamed from: e  reason: collision with root package name */
    private float[] f88380e;

    /* renamed from: f  reason: collision with root package name */
    private float[] f88381f;

    /* renamed from: g  reason: collision with root package name */
    private float[] f88382g;

    /* renamed from: h  reason: collision with root package name */
    private int[] f88383h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f88384i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f88385j;

    /* renamed from: k  reason: collision with root package name */
    private int f88386k;

    /* renamed from: l  reason: collision with root package name */
    private VelocityTracker f88387l;

    /* renamed from: m  reason: collision with root package name */
    private float f88388m;

    /* renamed from: n  reason: collision with root package name */
    private float f88389n;

    /* renamed from: o  reason: collision with root package name */
    private int f88390o;

    /* renamed from: p  reason: collision with root package name */
    private int f88391p;

    /* renamed from: q  reason: collision with root package name */
    private ScrollerCompat f88392q;

    /* renamed from: r  reason: collision with root package name */
    private final c f88393r;

    /* renamed from: s  reason: collision with root package name */
    private View f88394s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f88395t;

    /* renamed from: u  reason: collision with root package name */
    private final ViewGroup f88396u;

    /* renamed from: c  reason: collision with root package name */
    private int f88378c = -1;

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f88397v = new b();

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes4.dex */
    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.P(0);
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes4.dex */
    public static abstract class c {
        public int a(View view, int i4, int i10) {
            return 0;
        }

        public int b(View view, int i4, int i10) {
            return 0;
        }

        public int c(int i4) {
            return i4;
        }

        public int d(View view) {
            return 0;
        }

        public int e(View view) {
            return 0;
        }

        public void f(int i4, int i10) {
        }

        public boolean g(int i4) {
            return false;
        }

        public void h(int i4, int i10) {
        }

        public void i(View view, int i4) {
        }

        public void j(int i4) {
        }

        public void k(View view, int i4, int i10, int i11, int i12) {
        }

        public void l(View view, float f10, float f11) {
        }

        public abstract boolean m(View view, int i4);
    }

    private d(Context context, ViewGroup viewGroup, c cVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (cVar != null) {
            this.f88396u = viewGroup;
            this.f88393r = cVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f88390o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f88377b = viewConfiguration.getScaledTouchSlop();
            this.f88388m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f88389n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f88392q = ScrollerCompat.create(context, M);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    private int B(int i4, int i10) {
        int i11 = i4 < this.f88396u.getLeft() + this.f88390o ? 1 : 0;
        if (i10 < this.f88396u.getTop() + this.f88390o) {
            i11 = 4;
        }
        if (i4 > this.f88396u.getRight() - this.f88390o) {
            i11 = 2;
        }
        if (i10 > this.f88396u.getBottom() - this.f88390o) {
            return 8;
        }
        return i11;
    }

    private void L() {
        this.f88387l.computeCurrentVelocity(1000, this.f88388m);
        r(i(VelocityTrackerCompat.getXVelocity(this.f88387l, this.f88378c), this.f88389n, this.f88388m), i(VelocityTrackerCompat.getYVelocity(this.f88387l, this.f88378c), this.f88389n, this.f88388m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [me.imid.swipebacklayout.lib.d$c] */
    private void M(float f10, float f11, int i4) {
        boolean e4 = e(f10, f11, i4, 1);
        boolean z9 = e4;
        if (e(f11, f10, i4, 4)) {
            z9 = e4 | true;
        }
        boolean z10 = z9;
        if (e(f10, f11, i4, 2)) {
            z10 = (z9 ? 1 : 0) | true;
        }
        ?? r02 = z10;
        if (e(f11, f10, i4, 8)) {
            r02 = (z10 ? 1 : 0) | true;
        }
        if (r02 != 0) {
            int[] iArr = this.f88384i;
            iArr[i4] = iArr[i4] | r02;
            this.f88393r.f(r02, i4);
        }
    }

    private void N(float f10, float f11, int i4) {
        u(i4);
        float[] fArr = this.f88379d;
        this.f88381f[i4] = f10;
        fArr[i4] = f10;
        float[] fArr2 = this.f88380e;
        this.f88382g[i4] = f11;
        fArr2[i4] = f11;
        this.f88383h[i4] = B((int) f10, (int) f11);
        this.f88386k |= 1 << i4;
    }

    private void O(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i4 = 0; i4 < pointerCount; i4++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i4);
            float x9 = MotionEventCompat.getX(motionEvent, i4);
            float y9 = MotionEventCompat.getY(motionEvent, i4);
            this.f88381f[pointerId] = x9;
            this.f88382g[pointerId] = y9;
        }
    }

    private boolean e(float f10, float f11, int i4, int i10) {
        float abs = Math.abs(f10);
        float abs2 = Math.abs(f11);
        if ((this.f88383h[i4] & i10) != i10 || (this.f88391p & i10) == 0 || (this.f88385j[i4] & i10) == i10 || (this.f88384i[i4] & i10) == i10) {
            return false;
        }
        int i11 = this.f88377b;
        if (abs > i11 || abs2 > i11) {
            if (abs >= abs2 * 0.5f || !this.f88393r.g(i10)) {
                return (this.f88384i[i4] & i10) == 0 && abs > ((float) this.f88377b);
            }
            int[] iArr = this.f88385j;
            iArr[i4] = iArr[i4] | i10;
            return false;
        }
        return false;
    }

    private boolean h(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        boolean z9 = this.f88393r.d(view) > 0;
        boolean z10 = this.f88393r.e(view) > 0;
        if (!z9 || !z10) {
            return z9 ? Math.abs(f10) > ((float) this.f88377b) : z10 && Math.abs(f11) > ((float) this.f88377b);
        }
        int i4 = this.f88377b;
        return (f10 * f10) + (f11 * f11) > ((float) (i4 * i4));
    }

    private float i(float f10, float f11, float f12) {
        float abs = Math.abs(f10);
        if (abs < f11) {
            return 0.0f;
        }
        return abs > f12 ? f10 > 0.0f ? f12 : -f12 : f10;
    }

    private int j(int i4, int i10, int i11) {
        int abs = Math.abs(i4);
        if (abs < i10) {
            return 0;
        }
        return abs > i11 ? i4 > 0 ? i11 : -i11 : i4;
    }

    private void k() {
        float[] fArr = this.f88379d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f88380e, 0.0f);
        Arrays.fill(this.f88381f, 0.0f);
        Arrays.fill(this.f88382g, 0.0f);
        Arrays.fill(this.f88383h, 0);
        Arrays.fill(this.f88384i, 0);
        Arrays.fill(this.f88385j, 0);
        this.f88386k = 0;
    }

    private void l(int i4) {
        float[] fArr = this.f88379d;
        if (fArr == null) {
            return;
        }
        fArr[i4] = 0.0f;
        this.f88380e[i4] = 0.0f;
        this.f88381f[i4] = 0.0f;
        this.f88382g[i4] = 0.0f;
        this.f88383h[i4] = 0;
        this.f88384i[i4] = 0;
        this.f88385j[i4] = 0;
        this.f88386k = (~(1 << i4)) & this.f88386k;
    }

    private int m(int i4, int i10, int i11) {
        int abs;
        if (i4 == 0) {
            return 0;
        }
        int width = this.f88396u.getWidth();
        float f10 = width / 2;
        float s9 = f10 + (s(Math.min(1.0f, Math.abs(i4) / width)) * f10);
        int abs2 = Math.abs(i10);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(s9 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i4) / i11) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    private int n(View view, int i4, int i10, int i11, int i12) {
        float f10;
        float f11;
        float f12;
        float f13;
        int j4 = j(i11, (int) this.f88389n, (int) this.f88388m);
        int j10 = j(i12, (int) this.f88389n, (int) this.f88388m);
        int abs = Math.abs(i4);
        int abs2 = Math.abs(i10);
        int abs3 = Math.abs(j4);
        int abs4 = Math.abs(j10);
        int i13 = abs3 + abs4;
        int i14 = abs + abs2;
        if (j4 != 0) {
            f10 = abs3;
            f11 = i13;
        } else {
            f10 = abs;
            f11 = i14;
        }
        float f14 = f10 / f11;
        if (j10 != 0) {
            f12 = abs4;
            f13 = i13;
        } else {
            f12 = abs2;
            f13 = i14;
        }
        return (int) ((m(i4, j4, this.f88393r.d(view)) * f14) + (m(i10, j10, this.f88393r.e(view)) * (f12 / f13)));
    }

    public static d p(ViewGroup viewGroup, float f10, c cVar) {
        d q9 = q(viewGroup, cVar);
        q9.f88377b = (int) (q9.f88377b * (1.0f / f10));
        return q9;
    }

    public static d q(ViewGroup viewGroup, c cVar) {
        return new d(viewGroup.getContext(), viewGroup, cVar);
    }

    private void r(float f10, float f11) {
        this.f88395t = true;
        this.f88393r.l(this.f88394s, f10, f11);
        this.f88395t = false;
        if (this.f88376a == 1) {
            P(0);
        }
    }

    private float s(float f10) {
        return (float) Math.sin((float) ((f10 - 0.5f) * 0.4712389167638204d));
    }

    private void t(int i4, int i10, int i11, int i12) {
        int left = this.f88394s.getLeft();
        int top = this.f88394s.getTop();
        if (i11 != 0) {
            i4 = this.f88393r.a(this.f88394s, i4, i11);
            this.f88394s.offsetLeftAndRight(i4 - left);
        }
        int i13 = i4;
        if (i12 != 0) {
            i10 = this.f88393r.b(this.f88394s, i10, i12);
            this.f88394s.offsetTopAndBottom(i10 - top);
        }
        int i14 = i10;
        if (i11 == 0 && i12 == 0) {
            return;
        }
        this.f88393r.k(this.f88394s, i13, i14, i13 - left, i14 - top);
    }

    private void u(int i4) {
        float[] fArr = this.f88379d;
        if (fArr == null || fArr.length <= i4) {
            int i10 = i4 + 1;
            float[] fArr2 = new float[i10];
            float[] fArr3 = new float[i10];
            float[] fArr4 = new float[i10];
            float[] fArr5 = new float[i10];
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int[] iArr3 = new int[i10];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f88380e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f88381f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f88382g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f88383h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f88384i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f88385j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f88379d = fArr2;
            this.f88380e = fArr3;
            this.f88381f = fArr4;
            this.f88382g = fArr5;
            this.f88383h = iArr;
            this.f88384i = iArr2;
            this.f88385j = iArr3;
        }
    }

    private boolean x(int i4, int i10, int i11, int i12) {
        int left = this.f88394s.getLeft();
        int top = this.f88394s.getTop();
        int i13 = i4 - left;
        int i14 = i10 - top;
        if (i13 == 0 && i14 == 0) {
            this.f88392q.abortAnimation();
            P(0);
            return false;
        }
        this.f88392q.startScroll(left, top, i13, i14, n(this.f88394s, i13, i14, i11, i12));
        P(2);
        return true;
    }

    public int A() {
        return this.f88390o;
    }

    public float C() {
        return this.f88389n;
    }

    public int D() {
        return this.f88377b;
    }

    public int E() {
        return this.f88376a;
    }

    public boolean F(int i4, int i10) {
        return J(this.f88394s, i4, i10);
    }

    public boolean G(int i4) {
        int length = this.f88383h.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (H(i4, i10)) {
                return true;
            }
        }
        return false;
    }

    public boolean H(int i4, int i10) {
        return I(i10) && (i4 & this.f88383h[i10]) != 0;
    }

    public boolean I(int i4) {
        return ((1 << i4) & this.f88386k) != 0;
    }

    public boolean J(View view, int i4, int i10) {
        return view != null && i4 >= view.getLeft() && i4 < view.getRight() && i10 >= view.getTop() && i10 < view.getBottom();
    }

    public void K(MotionEvent motionEvent) {
        int i4;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            c();
        }
        if (this.f88387l == null) {
            this.f88387l = VelocityTracker.obtain();
        }
        this.f88387l.addMovement(motionEvent);
        int i10 = 0;
        if (actionMasked == 0) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            View v9 = v((int) x9, (int) y9);
            N(x9, y9, pointerId);
            Y(v9, pointerId);
            int i11 = this.f88383h[pointerId];
            int i12 = this.f88391p;
            if ((i11 & i12) != 0) {
                this.f88393r.h(i11 & i12, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.f88376a == 1) {
                L();
            }
            c();
        } else if (actionMasked == 2) {
            if (this.f88376a == 1) {
                int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.f88378c);
                float x10 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                float y10 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                float[] fArr = this.f88381f;
                int i13 = this.f88378c;
                int i14 = (int) (x10 - fArr[i13]);
                int i15 = (int) (y10 - this.f88382g[i13]);
                t(this.f88394s.getLeft() + i14, this.f88394s.getTop() + i15, i14, i15);
                O(motionEvent);
                return;
            }
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            while (i10 < pointerCount) {
                int pointerId2 = MotionEventCompat.getPointerId(motionEvent, i10);
                float x11 = MotionEventCompat.getX(motionEvent, i10);
                float y11 = MotionEventCompat.getY(motionEvent, i10);
                float f10 = x11 - this.f88379d[pointerId2];
                float f11 = y11 - this.f88380e[pointerId2];
                M(f10, f11, pointerId2);
                if (this.f88376a != 1) {
                    View v10 = v((int) x11, (int) y11);
                    if (h(v10, f10, f11) && Y(v10, pointerId2)) {
                        break;
                    }
                    i10++;
                } else {
                    break;
                }
            }
            O(motionEvent);
        } else if (actionMasked == 3) {
            if (this.f88376a == 1) {
                r(0.0f, 0.0f);
            }
            c();
        } else if (actionMasked == 5) {
            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            float x12 = MotionEventCompat.getX(motionEvent, actionIndex);
            float y12 = MotionEventCompat.getY(motionEvent, actionIndex);
            N(x12, y12, pointerId3);
            if (this.f88376a == 0) {
                Y(v((int) x12, (int) y12), pointerId3);
                int i16 = this.f88383h[pointerId3];
                int i17 = this.f88391p;
                if ((i16 & i17) != 0) {
                    this.f88393r.h(i16 & i17, pointerId3);
                }
            } else if (F((int) x12, (int) y12)) {
                Y(this.f88394s, pointerId3);
            }
        } else if (actionMasked != 6) {
        } else {
            int pointerId4 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            if (this.f88376a == 1 && pointerId4 == this.f88378c) {
                int pointerCount2 = MotionEventCompat.getPointerCount(motionEvent);
                while (true) {
                    if (i10 >= pointerCount2) {
                        i4 = -1;
                        break;
                    }
                    int pointerId5 = MotionEventCompat.getPointerId(motionEvent, i10);
                    if (pointerId5 != this.f88378c) {
                        View v11 = v((int) MotionEventCompat.getX(motionEvent, i10), (int) MotionEventCompat.getY(motionEvent, i10));
                        View view = this.f88394s;
                        if (v11 == view && Y(view, pointerId5)) {
                            i4 = this.f88378c;
                            break;
                        }
                    }
                    i10++;
                }
                if (i4 == -1) {
                    L();
                }
            }
            l(pointerId4);
        }
    }

    void P(int i4) {
        if (this.f88376a != i4) {
            this.f88376a = i4;
            this.f88393r.j(i4);
            if (i4 == 0) {
                this.f88394s = null;
            }
        }
    }

    public void Q(int i4) {
        this.f88390o = i4;
    }

    public void R(int i4) {
        this.f88391p = i4;
    }

    public void S(float f10) {
        this.f88388m = f10;
    }

    public void T(float f10) {
        this.f88389n = f10;
    }

    public void U(Context context, float f10) {
        this.f88377b = (int) (ViewConfiguration.get(context).getScaledTouchSlop() * (1.0f / Math.max(0.0f, Math.min(1.0f, f10))));
    }

    public boolean V(int i4, int i10) {
        if (this.f88395t) {
            return x(i4, i10, (int) VelocityTrackerCompat.getXVelocity(this.f88387l, this.f88378c), (int) VelocityTrackerCompat.getYVelocity(this.f88387l, this.f88378c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public boolean W(MotionEvent motionEvent) {
        View v9;
        View v10;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            c();
        }
        if (this.f88387l == null) {
            this.f88387l = VelocityTracker.obtain();
        }
        this.f88387l.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
                    for (int i4 = 0; i4 < pointerCount; i4++) {
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, i4);
                        float x9 = MotionEventCompat.getX(motionEvent, i4);
                        float y9 = MotionEventCompat.getY(motionEvent, i4);
                        float f10 = x9 - this.f88379d[pointerId];
                        float f11 = y9 - this.f88380e[pointerId];
                        M(f10, f11, pointerId);
                        if (this.f88376a == 1 || ((v9 = v((int) x9, (int) y9)) != null && h(v9, f10, f11) && Y(v9, pointerId))) {
                            break;
                        }
                    }
                    O(motionEvent);
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        float x10 = MotionEventCompat.getX(motionEvent, actionIndex);
                        float y10 = MotionEventCompat.getY(motionEvent, actionIndex);
                        N(x10, y10, pointerId2);
                        int i10 = this.f88376a;
                        if (i10 == 0) {
                            int i11 = this.f88383h[pointerId2];
                            int i12 = this.f88391p;
                            if ((i11 & i12) != 0) {
                                this.f88393r.h(i11 & i12, pointerId2);
                            }
                        } else if (i10 == 2 && (v10 = v((int) x10, (int) y10)) == this.f88394s) {
                            Y(v10, pointerId2);
                        }
                    } else if (actionMasked == 6) {
                        l(MotionEventCompat.getPointerId(motionEvent, actionIndex));
                    }
                }
            }
            c();
        } else {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, 0);
            N(x11, y11, pointerId3);
            View v11 = v((int) x11, (int) y11);
            if (v11 == this.f88394s && this.f88376a == 2) {
                Y(v11, pointerId3);
            }
            int i13 = this.f88383h[pointerId3];
            int i14 = this.f88391p;
            if ((i13 & i14) != 0) {
                this.f88393r.h(i13 & i14, pointerId3);
            }
        }
        return this.f88376a == 1;
    }

    public boolean X(View view, int i4, int i10) {
        this.f88394s = view;
        this.f88378c = -1;
        return x(i4, i10, 0, 0);
    }

    boolean Y(View view, int i4) {
        if (view == this.f88394s && this.f88378c == i4) {
            return true;
        }
        if (view == null || !this.f88393r.m(view, i4)) {
            return false;
        }
        this.f88378c = i4;
        d(view, i4);
        return true;
    }

    public void a() {
        c();
        if (this.f88376a == 2) {
            int currX = this.f88392q.getCurrX();
            int currY = this.f88392q.getCurrY();
            this.f88392q.abortAnimation();
            int currX2 = this.f88392q.getCurrX();
            int currY2 = this.f88392q.getCurrY();
            this.f88393r.k(this.f88394s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        P(0);
    }

    protected boolean b(View view, boolean z9, int i4, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && b(childAt, true, i4, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z9 && (ViewCompat.canScrollHorizontally(view, -i4) || ViewCompat.canScrollVertically(view, -i10));
    }

    public void c() {
        this.f88378c = -1;
        k();
        VelocityTracker velocityTracker = this.f88387l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f88387l = null;
        }
    }

    public void d(View view, int i4) {
        if (view.getParent() == this.f88396u) {
            this.f88394s = view;
            this.f88378c = i4;
            this.f88393r.i(view, i4);
            P(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f88396u + ")");
    }

    public boolean f(int i4) {
        int length = this.f88379d.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (g(i4, i10)) {
                return true;
            }
        }
        return false;
    }

    public boolean g(int i4, int i10) {
        if (I(i10)) {
            boolean z9 = (i4 & 1) == 1;
            boolean z10 = (i4 & 2) == 2;
            float f10 = this.f88381f[i10] - this.f88379d[i10];
            float f11 = this.f88382g[i10] - this.f88380e[i10];
            if (!z9 || !z10) {
                return z9 ? Math.abs(f10) > ((float) this.f88377b) : z10 && Math.abs(f11) > ((float) this.f88377b);
            }
            int i11 = this.f88377b;
            return (f10 * f10) + (f11 * f11) > ((float) (i11 * i11));
        }
        return false;
    }

    public boolean o(boolean z9) {
        if (this.f88376a == 2) {
            boolean computeScrollOffset = this.f88392q.computeScrollOffset();
            int currX = this.f88392q.getCurrX();
            int currY = this.f88392q.getCurrY();
            int left = currX - this.f88394s.getLeft();
            int top = currY - this.f88394s.getTop();
            if (left != 0) {
                this.f88394s.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.f88394s.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f88393r.k(this.f88394s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f88392q.getFinalX() && currY == this.f88392q.getFinalY()) {
                this.f88392q.abortAnimation();
                computeScrollOffset = this.f88392q.isFinished();
            }
            if (!computeScrollOffset) {
                if (z9) {
                    this.f88396u.post(this.f88397v);
                } else {
                    P(0);
                }
            }
        }
        return this.f88376a == 2;
    }

    public View v(int i4, int i10) {
        for (int childCount = this.f88396u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f88396u.getChildAt(this.f88393r.c(childCount));
            if (i4 >= childAt.getLeft() && i4 < childAt.getRight() && i10 >= childAt.getTop() && i10 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void w(int i4, int i10, int i11, int i12) {
        if (this.f88395t) {
            this.f88392q.fling(this.f88394s.getLeft(), this.f88394s.getTop(), (int) VelocityTrackerCompat.getXVelocity(this.f88387l, this.f88378c), (int) VelocityTrackerCompat.getYVelocity(this.f88387l, this.f88378c), i4, i11, i10, i12);
            P(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public int y() {
        return this.f88378c;
    }

    public View z() {
        return this.f88394s;
    }
}
