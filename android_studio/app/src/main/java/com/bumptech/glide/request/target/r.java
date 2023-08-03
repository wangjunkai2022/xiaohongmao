package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ViewTarget.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class r<T extends View, Z> extends com.bumptech.glide.request.target.b<Z> {

    /* renamed from: g  reason: collision with root package name */
    private static final String f9644g = "ViewTarget";

    /* renamed from: h  reason: collision with root package name */
    private static boolean f9645h;

    /* renamed from: i  reason: collision with root package name */
    private static int f9646i = i.h.f7715v0;

    /* renamed from: b  reason: collision with root package name */
    protected final T f9647b;

    /* renamed from: c  reason: collision with root package name */
    private final b f9648c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View.OnAttachStateChangeListener f9649d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9650e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9651f;

    /* compiled from: ViewTarget.java */
    /* loaded from: classes.dex */
    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            r.this.m();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            r.this.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewTarget.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: e  reason: collision with root package name */
        private static final int f9653e = 0;
        @Nullable
        @VisibleForTesting

        /* renamed from: f  reason: collision with root package name */
        static Integer f9654f;

        /* renamed from: a  reason: collision with root package name */
        private final View f9655a;

        /* renamed from: b  reason: collision with root package name */
        private final List<o> f9656b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        boolean f9657c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private a f9658d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ViewTarget.java */
        /* loaded from: classes.dex */
        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<b> f9659a;

            a(@NonNull b bVar) {
                this.f9659a = new WeakReference<>(bVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(r.f9644g, 2)) {
                    Log.v(r.f9644g, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                b bVar = this.f9659a.get();
                if (bVar != null) {
                    bVar.a();
                    return true;
                }
                return true;
            }
        }

        b(@NonNull View view) {
            this.f9655a = view;
        }

        private static int c(@NonNull Context context) {
            if (f9654f == null) {
                Display defaultDisplay = ((WindowManager) com.bumptech.glide.util.m.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f9654f = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f9654f.intValue();
        }

        private int e(int i4, int i10, int i11) {
            int i12 = i10 - i11;
            if (i12 > 0) {
                return i12;
            }
            if (this.f9657c && this.f9655a.isLayoutRequested()) {
                return 0;
            }
            int i13 = i4 - i11;
            if (i13 > 0) {
                return i13;
            }
            if (this.f9655a.isLayoutRequested() || i10 != -2) {
                return 0;
            }
            if (Log.isLoggable(r.f9644g, 4)) {
                Log.i(r.f9644g, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f9655a.getContext());
        }

        private int f() {
            int paddingTop = this.f9655a.getPaddingTop() + this.f9655a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f9655a.getLayoutParams();
            return e(this.f9655a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int g() {
            int paddingLeft = this.f9655a.getPaddingLeft() + this.f9655a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f9655a.getLayoutParams();
            return e(this.f9655a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private boolean h(int i4) {
            return i4 > 0 || i4 == Integer.MIN_VALUE;
        }

        private boolean i(int i4, int i10) {
            return h(i4) && h(i10);
        }

        private void j(int i4, int i10) {
            Iterator it = new ArrayList(this.f9656b).iterator();
            while (it.hasNext()) {
                ((o) it.next()).d(i4, i10);
            }
        }

        void a() {
            if (this.f9656b.isEmpty()) {
                return;
            }
            int g4 = g();
            int f10 = f();
            if (i(g4, f10)) {
                j(g4, f10);
                b();
            }
        }

        void b() {
            ViewTreeObserver viewTreeObserver = this.f9655a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f9658d);
            }
            this.f9658d = null;
            this.f9656b.clear();
        }

        void d(@NonNull o oVar) {
            int g4 = g();
            int f10 = f();
            if (i(g4, f10)) {
                oVar.d(g4, f10);
                return;
            }
            if (!this.f9656b.contains(oVar)) {
                this.f9656b.add(oVar);
            }
            if (this.f9658d == null) {
                ViewTreeObserver viewTreeObserver = this.f9655a.getViewTreeObserver();
                a aVar = new a(this);
                this.f9658d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        void k(@NonNull o oVar) {
            this.f9656b.remove(oVar);
        }
    }

    public r(@NonNull T t9) {
        this.f9647b = (T) com.bumptech.glide.util.m.d(t9);
        this.f9648c = new b(t9);
    }

    @Nullable
    private Object g() {
        return this.f9647b.getTag(f9646i);
    }

    private void h() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f9649d;
        if (onAttachStateChangeListener == null || this.f9651f) {
            return;
        }
        this.f9647b.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f9651f = true;
    }

    private void i() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f9649d;
        if (onAttachStateChangeListener == null || !this.f9651f) {
            return;
        }
        this.f9647b.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f9651f = false;
    }

    private void n(@Nullable Object obj) {
        f9645h = true;
        this.f9647b.setTag(f9646i, obj);
    }

    @Deprecated
    public static void o(int i4) {
        if (!f9645h) {
            f9646i = i4;
            return;
        }
        throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
    }

    @NonNull
    public final r<T, Z> d() {
        if (this.f9649d != null) {
            return this;
        }
        this.f9649d = new a();
        h();
        return this;
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    @Nullable
    public com.bumptech.glide.request.e e() {
        Object g4 = g();
        if (g4 != null) {
            if (g4 instanceof com.bumptech.glide.request.e) {
                return (com.bumptech.glide.request.e) g4;
            }
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // com.bumptech.glide.request.target.p
    @CallSuper
    public void f(@NonNull o oVar) {
        this.f9648c.k(oVar);
    }

    @NonNull
    public T getView() {
        return this.f9647b;
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    @CallSuper
    public void j(@Nullable Drawable drawable) {
        super.j(drawable);
        h();
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    @CallSuper
    public void k(@Nullable Drawable drawable) {
        super.k(drawable);
        this.f9648c.b();
        if (this.f9650e) {
            return;
        }
        i();
    }

    void l() {
        com.bumptech.glide.request.e e4 = e();
        if (e4 != null) {
            this.f9650e = true;
            e4.clear();
            this.f9650e = false;
        }
    }

    void m() {
        com.bumptech.glide.request.e e4 = e();
        if (e4 == null || !e4.e()) {
            return;
        }
        e4.i();
    }

    @NonNull
    public final r<T, Z> p() {
        this.f9648c.f9657c = true;
        return this;
    }

    @Override // com.bumptech.glide.request.target.b, com.bumptech.glide.request.target.p
    public void r(@Nullable com.bumptech.glide.request.e eVar) {
        n(eVar);
    }

    public String toString() {
        return "Target for: " + this.f9647b;
    }

    @Override // com.bumptech.glide.request.target.p
    @CallSuper
    public void u(@NonNull o oVar) {
        this.f9648c.d(oVar);
    }

    @Deprecated
    public r(@NonNull T t9, boolean z9) {
        this(t9);
        if (z9) {
            p();
        }
    }
}
