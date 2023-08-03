package me.imid.swipebacklayout.lib;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
import me.imid.swipebacklayout.lib.b;
import me.imid.swipebacklayout.lib.d;

/* loaded from: classes4.dex */
public class SwipeBackLayout extends FrameLayout {
    public static final int A = 1;
    public static final int B = 2;
    private static final float C = 0.3f;
    private static final int D = 10;
    private static final int[] E = {1, 2, 8, 11};

    /* renamed from: s  reason: collision with root package name */
    private static final int f87526s = 400;

    /* renamed from: t  reason: collision with root package name */
    private static final int f87527t = -1728053248;

    /* renamed from: u  reason: collision with root package name */
    private static final int f87528u = 255;

    /* renamed from: v  reason: collision with root package name */
    public static final int f87529v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f87530w = 2;

    /* renamed from: x  reason: collision with root package name */
    public static final int f87531x = 8;

    /* renamed from: y  reason: collision with root package name */
    public static final int f87532y = 11;

    /* renamed from: z  reason: collision with root package name */
    public static final int f87533z = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f87534a;

    /* renamed from: b  reason: collision with root package name */
    private float f87535b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f87536c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f87537d;

    /* renamed from: e  reason: collision with root package name */
    private View f87538e;

    /* renamed from: f  reason: collision with root package name */
    private me.imid.swipebacklayout.lib.d f87539f;

    /* renamed from: g  reason: collision with root package name */
    private float f87540g;

    /* renamed from: h  reason: collision with root package name */
    private int f87541h;

    /* renamed from: i  reason: collision with root package name */
    private int f87542i;

    /* renamed from: j  reason: collision with root package name */
    private List<b> f87543j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f87544k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f87545l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f87546m;

    /* renamed from: n  reason: collision with root package name */
    private float f87547n;

    /* renamed from: o  reason: collision with root package name */
    private int f87548o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f87549p;

    /* renamed from: q  reason: collision with root package name */
    private Rect f87550q;

    /* renamed from: r  reason: collision with root package name */
    private int f87551r;

    /* loaded from: classes4.dex */
    public interface b {
        void a(int i4, float f10);

        void c();

        void d(int i4);
    }

    /* loaded from: classes4.dex */
    public interface c extends b {
        void b();
    }

    /* loaded from: classes4.dex */
    private class d extends d.c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f87552a;

        private d() {
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public int a(View view, int i4, int i10) {
            if ((SwipeBackLayout.this.f87551r & 1) != 0) {
                return Math.min(view.getWidth(), Math.max(i4, 0));
            }
            if ((SwipeBackLayout.this.f87551r & 2) != 0) {
                return Math.min(0, Math.max(i4, -view.getWidth()));
            }
            return 0;
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public int b(View view, int i4, int i10) {
            if ((SwipeBackLayout.this.f87551r & 8) != 0) {
                return Math.min(0, Math.max(i4, -view.getHeight()));
            }
            return 0;
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public int d(View view) {
            return SwipeBackLayout.this.f87534a & 3;
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public int e(View view) {
            return SwipeBackLayout.this.f87534a & 8;
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public void j(int i4) {
            super.j(i4);
            if (SwipeBackLayout.this.f87543j == null || SwipeBackLayout.this.f87543j.isEmpty()) {
                return;
            }
            for (b bVar : SwipeBackLayout.this.f87543j) {
                bVar.a(i4, SwipeBackLayout.this.f87540g);
            }
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public void k(View view, int i4, int i10, int i11, int i12) {
            super.k(view, i4, i10, i11, i12);
            if ((SwipeBackLayout.this.f87551r & 1) != 0) {
                SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
                swipeBackLayout.f87540g = Math.abs(i4 / (swipeBackLayout.f87538e.getWidth() + SwipeBackLayout.this.f87544k.getIntrinsicWidth()));
            } else if ((SwipeBackLayout.this.f87551r & 2) != 0) {
                SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
                swipeBackLayout2.f87540g = Math.abs(i4 / (swipeBackLayout2.f87538e.getWidth() + SwipeBackLayout.this.f87545l.getIntrinsicWidth()));
            } else if ((SwipeBackLayout.this.f87551r & 8) != 0) {
                SwipeBackLayout swipeBackLayout3 = SwipeBackLayout.this;
                swipeBackLayout3.f87540g = Math.abs(i10 / (swipeBackLayout3.f87538e.getHeight() + SwipeBackLayout.this.f87546m.getIntrinsicHeight()));
            }
            SwipeBackLayout.this.f87541h = i4;
            SwipeBackLayout.this.f87542i = i10;
            SwipeBackLayout.this.invalidate();
            if (SwipeBackLayout.this.f87540g < SwipeBackLayout.this.f87535b && !this.f87552a) {
                this.f87552a = true;
            }
            if (SwipeBackLayout.this.f87543j != null && !SwipeBackLayout.this.f87543j.isEmpty()) {
                for (b bVar : SwipeBackLayout.this.f87543j) {
                    bVar.a(SwipeBackLayout.this.f87539f.E(), SwipeBackLayout.this.f87540g);
                }
            }
            if (SwipeBackLayout.this.f87543j != null && !SwipeBackLayout.this.f87543j.isEmpty() && SwipeBackLayout.this.f87539f.E() == 1 && SwipeBackLayout.this.f87540g >= SwipeBackLayout.this.f87535b && this.f87552a) {
                this.f87552a = false;
                for (b bVar2 : SwipeBackLayout.this.f87543j) {
                    bVar2.c();
                }
            }
            if (SwipeBackLayout.this.f87540g < 1.0f || SwipeBackLayout.this.f87543j == null || SwipeBackLayout.this.f87543j.isEmpty()) {
                return;
            }
            for (b bVar3 : SwipeBackLayout.this.f87543j) {
                if (bVar3 instanceof c) {
                    ((c) bVar3).b();
                }
            }
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public void l(View view, float f10, float f11) {
            int i4;
            int width = view.getWidth();
            int height = view.getHeight();
            int i10 = 0;
            if ((SwipeBackLayout.this.f87551r & 1) != 0) {
                int i11 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
                i10 = (i11 > 0 || (i11 == 0 && SwipeBackLayout.this.f87540g > SwipeBackLayout.this.f87535b)) ? width + SwipeBackLayout.this.f87544k.getIntrinsicWidth() + 10 : 0;
            } else if ((SwipeBackLayout.this.f87551r & 2) != 0) {
                i10 = (f10 < 0.0f || (f10 == 0.0f && SwipeBackLayout.this.f87540g > SwipeBackLayout.this.f87535b)) ? -(width + SwipeBackLayout.this.f87544k.getIntrinsicWidth() + 10) : 0;
            } else if ((SwipeBackLayout.this.f87551r & 8) != 0 && (f11 < 0.0f || (f11 == 0.0f && SwipeBackLayout.this.f87540g > SwipeBackLayout.this.f87535b))) {
                i4 = -(height + SwipeBackLayout.this.f87546m.getIntrinsicHeight() + 10);
                SwipeBackLayout.this.f87539f.V(i10, i4);
                SwipeBackLayout.this.invalidate();
            }
            i4 = 0;
            SwipeBackLayout.this.f87539f.V(i10, i4);
            SwipeBackLayout.this.invalidate();
        }

        @Override // me.imid.swipebacklayout.lib.d.c
        public boolean m(View view, int i4) {
            boolean g4;
            boolean H = SwipeBackLayout.this.f87539f.H(SwipeBackLayout.this.f87534a, i4);
            boolean z9 = true;
            if (H) {
                if (SwipeBackLayout.this.f87539f.H(1, i4)) {
                    SwipeBackLayout.this.f87551r = 1;
                } else if (SwipeBackLayout.this.f87539f.H(2, i4)) {
                    SwipeBackLayout.this.f87551r = 2;
                } else if (SwipeBackLayout.this.f87539f.H(8, i4)) {
                    SwipeBackLayout.this.f87551r = 8;
                }
                if (SwipeBackLayout.this.f87543j != null && !SwipeBackLayout.this.f87543j.isEmpty()) {
                    for (b bVar : SwipeBackLayout.this.f87543j) {
                        bVar.d(SwipeBackLayout.this.f87551r);
                    }
                }
                this.f87552a = true;
            }
            if (SwipeBackLayout.this.f87534a != 1 && SwipeBackLayout.this.f87534a != 2) {
                if (SwipeBackLayout.this.f87534a == 8) {
                    g4 = SwipeBackLayout.this.f87539f.g(1, i4);
                } else {
                    if (SwipeBackLayout.this.f87534a != 11) {
                        z9 = false;
                    }
                    return H & z9;
                }
            } else {
                g4 = SwipeBackLayout.this.f87539f.g(2, i4);
            }
            z9 = true ^ g4;
            return H & z9;
        }
    }

    public SwipeBackLayout(Context context) {
        this(context, null);
    }

    private void q(Canvas canvas, View view) {
        int i4 = this.f87548o;
        int i10 = (i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * this.f87547n)) << 24);
        int i11 = this.f87551r;
        if ((i11 & 1) != 0) {
            canvas.clipRect(0, 0, view.getLeft(), getHeight());
        } else if ((i11 & 2) != 0) {
            canvas.clipRect(view.getRight(), 0, getRight(), getHeight());
        } else if ((i11 & 8) != 0) {
            canvas.clipRect(view.getLeft(), view.getBottom(), getRight(), getHeight());
        }
        canvas.drawColor(i10);
    }

    private void r(Canvas canvas, View view) {
        Rect rect = this.f87550q;
        view.getHitRect(rect);
        if ((this.f87534a & 1) != 0) {
            Drawable drawable = this.f87544k;
            drawable.setBounds(rect.left - drawable.getIntrinsicWidth(), rect.top, rect.left, rect.bottom);
            this.f87544k.setAlpha((int) (this.f87547n * 255.0f));
            this.f87544k.draw(canvas);
        }
        if ((this.f87534a & 2) != 0) {
            Drawable drawable2 = this.f87545l;
            int i4 = rect.right;
            drawable2.setBounds(i4, rect.top, drawable2.getIntrinsicWidth() + i4, rect.bottom);
            this.f87545l.setAlpha((int) (this.f87547n * 255.0f));
            this.f87545l.draw(canvas);
        }
        if ((this.f87534a & 8) != 0) {
            Drawable drawable3 = this.f87546m;
            int i10 = rect.left;
            int i11 = rect.bottom;
            drawable3.setBounds(i10, i11, rect.right, drawable3.getIntrinsicHeight() + i11);
            this.f87546m.setAlpha((int) (this.f87547n * 255.0f));
            this.f87546m.draw(canvas);
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f87547n = 1.0f - this.f87540g;
        if (this.f87539f.o(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        boolean z9 = view == this.f87538e;
        boolean drawChild = super.drawChild(canvas, view, j4);
        if (this.f87547n > 0.0f && z9 && this.f87539f.E() != 0) {
            r(canvas, view);
            q(canvas, view);
        }
        return drawChild;
    }

    public void o(b bVar) {
        if (this.f87543j == null) {
            this.f87543j = new ArrayList();
        }
        this.f87543j.add(bVar);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f87537d) {
            try {
                return this.f87539f.W(motionEvent);
            } catch (ArrayIndexOutOfBoundsException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        this.f87549p = true;
        View view = this.f87538e;
        if (view != null) {
            int i13 = this.f87541h;
            view.layout(i13, this.f87542i, view.getMeasuredWidth() + i13, this.f87542i + this.f87538e.getMeasuredHeight());
        }
        this.f87549p = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f87537d) {
            this.f87539f.K(motionEvent);
            return true;
        }
        return false;
    }

    public void p(Activity activity) {
        this.f87536c = activity;
        TypedArray obtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{16842836});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
        viewGroup2.setBackgroundResource(resourceId);
        viewGroup.removeView(viewGroup2);
        addView(viewGroup2);
        setContentView(viewGroup2);
        o(new me.imid.swipebacklayout.lib.app.c(activity));
        viewGroup.addView(this);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f87549p) {
            return;
        }
        super.requestLayout();
    }

    public void s(b bVar) {
        List<b> list = this.f87543j;
        if (list == null) {
            return;
        }
        list.remove(bVar);
    }

    public void setContentView(View view) {
        this.f87538e = view;
    }

    public void setEdgeSize(int i4) {
        this.f87539f.Q(i4);
    }

    public void setEdgeTrackingEnabled(int i4) {
        this.f87534a = i4;
        this.f87539f.R(i4);
    }

    public void setEnableGesture(boolean z9) {
        this.f87537d = z9;
    }

    public void setScrimColor(int i4) {
        this.f87548o = i4;
        invalidate();
    }

    public void setScrollThresHold(float f10) {
        if (f10 < 1.0f && f10 > 0.0f) {
            this.f87535b = f10;
            return;
        }
        throw new IllegalArgumentException("Threshold value should be between 0 and 1.0");
    }

    @Deprecated
    public void setSwipeListener(b bVar) {
        o(bVar);
    }

    public void t() {
        int intrinsicHeight;
        int intrinsicWidth;
        int width = this.f87538e.getWidth();
        int height = this.f87538e.getHeight();
        int i4 = this.f87534a;
        int i10 = 0;
        if ((i4 & 1) != 0) {
            intrinsicWidth = width + this.f87544k.getIntrinsicWidth() + 10;
            this.f87551r = 1;
        } else if ((i4 & 2) != 0) {
            intrinsicWidth = ((-width) - this.f87545l.getIntrinsicWidth()) - 10;
            this.f87551r = 2;
        } else {
            if ((i4 & 8) != 0) {
                intrinsicHeight = ((-height) - this.f87546m.getIntrinsicHeight()) - 10;
                this.f87551r = 8;
                this.f87539f.X(this.f87538e, i10, intrinsicHeight);
                invalidate();
            }
            intrinsicHeight = 0;
            this.f87539f.X(this.f87538e, i10, intrinsicHeight);
            invalidate();
        }
        i10 = intrinsicWidth;
        intrinsicHeight = 0;
        this.f87539f.X(this.f87538e, i10, intrinsicHeight);
        invalidate();
    }

    public void u(Context context, float f10) {
        this.f87539f.U(context, f10);
    }

    public void v(int i4, int i10) {
        w(getResources().getDrawable(i4), i10);
    }

    public void w(Drawable drawable, int i4) {
        if ((i4 & 1) != 0) {
            this.f87544k = drawable;
        } else if ((i4 & 2) != 0) {
            this.f87545l = drawable;
        } else if ((i4 & 8) != 0) {
            this.f87546m = drawable;
        }
        invalidate();
    }

    public SwipeBackLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.C0789b.f87575a);
    }

    public SwipeBackLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet);
        this.f87535b = C;
        this.f87537d = true;
        this.f87548o = f87527t;
        this.f87550q = new Rect();
        this.f87539f = me.imid.swipebacklayout.lib.d.q(this, new d());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.l.R5, i4, b.k.A2);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(b.l.T5, -1);
        if (dimensionPixelSize > 0) {
            setEdgeSize(dimensionPixelSize);
        }
        setEdgeTrackingEnabled(E[obtainStyledAttributes.getInt(b.l.S5, 0)]);
        int resourceId = obtainStyledAttributes.getResourceId(b.l.V5, b.f.G0);
        int resourceId2 = obtainStyledAttributes.getResourceId(b.l.W5, b.f.H0);
        int resourceId3 = obtainStyledAttributes.getResourceId(b.l.U5, b.f.F0);
        v(resourceId, 1);
        v(resourceId2, 2);
        v(resourceId3, 8);
        obtainStyledAttributes.recycle();
        float f10 = getResources().getDisplayMetrics().density * 400.0f;
        this.f87539f.T(f10);
        this.f87539f.S(f10 * 2.0f);
    }
}
