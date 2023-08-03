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
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: CustomViewTarget.java */
/* loaded from: classes.dex */
public abstract class f<T extends View, Z> implements p<Z> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f9608f = "CustomViewTarget";
    @IdRes

    /* renamed from: g  reason: collision with root package name */
    private static final int f9609g = i.h.f7715v0;

    /* renamed from: a  reason: collision with root package name */
    private final b f9610a;

    /* renamed from: b  reason: collision with root package name */
    protected final T f9611b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View.OnAttachStateChangeListener f9612c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9613d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9614e;

    /* compiled from: CustomViewTarget.java */
    /* loaded from: classes.dex */
    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            f.this.n();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            f.this.m();
        }
    }

    /* compiled from: CustomViewTarget.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: e  reason: collision with root package name */
        private static final int f9616e = 0;
        @Nullable
        @VisibleForTesting

        /* renamed from: f  reason: collision with root package name */
        static Integer f9617f;

        /* renamed from: a  reason: collision with root package name */
        private final View f9618a;

        /* renamed from: b  reason: collision with root package name */
        private final List<o> f9619b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        boolean f9620c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private a f9621d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: CustomViewTarget.java */
        /* loaded from: classes.dex */
        public static final class a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<b> f9622a;

            a(@NonNull b bVar) {
                this.f9622a = new WeakReference<>(bVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(f.f9608f, 2)) {
                    Log.v(f.f9608f, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                b bVar = this.f9622a.get();
                if (bVar != null) {
                    bVar.a();
                    return true;
                }
                return true;
            }
        }

        b(@NonNull View view) {
            this.f9618a = view;
        }

        private static int c(@NonNull Context context) {
            if (f9617f == null) {
                Display defaultDisplay = ((WindowManager) com.bumptech.glide.util.m.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f9617f = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f9617f.intValue();
        }

        private int e(int i4, int i10, int i11) {
            int i12 = i10 - i11;
            if (i12 > 0) {
                return i12;
            }
            if (this.f9620c && this.f9618a.isLayoutRequested()) {
                return 0;
            }
            int i13 = i4 - i11;
            if (i13 > 0) {
                return i13;
            }
            if (this.f9618a.isLayoutRequested() || i10 != -2) {
                return 0;
            }
            if (Log.isLoggable(f.f9608f, 4)) {
                Log.i(f.f9608f, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return c(this.f9618a.getContext());
        }

        private int f() {
            int paddingTop = this.f9618a.getPaddingTop() + this.f9618a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f9618a.getLayoutParams();
            return e(this.f9618a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int g() {
            int paddingLeft = this.f9618a.getPaddingLeft() + this.f9618a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f9618a.getLayoutParams();
            return e(this.f9618a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private boolean h(int i4) {
            return i4 > 0 || i4 == Integer.MIN_VALUE;
        }

        private boolean i(int i4, int i10) {
            return h(i4) && h(i10);
        }

        private void j(int i4, int i10) {
            Iterator it = new ArrayList(this.f9619b).iterator();
            while (it.hasNext()) {
                ((o) it.next()).d(i4, i10);
            }
        }

        void a() {
            if (this.f9619b.isEmpty()) {
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
            ViewTreeObserver viewTreeObserver = this.f9618a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f9621d);
            }
            this.f9621d = null;
            this.f9619b.clear();
        }

        void d(@NonNull o oVar) {
            int g4 = g();
            int f10 = f();
            if (i(g4, f10)) {
                oVar.d(g4, f10);
                return;
            }
            if (!this.f9619b.contains(oVar)) {
                this.f9619b.add(oVar);
            }
            if (this.f9621d == null) {
                ViewTreeObserver viewTreeObserver = this.f9618a.getViewTreeObserver();
                a aVar = new a(this);
                this.f9621d = aVar;
                viewTreeObserver.addOnPreDrawListener(aVar);
            }
        }

        void k(@NonNull o oVar) {
            this.f9619b.remove(oVar);
        }
    }

    public f(@NonNull T t9) {
        this.f9611b = (T) com.bumptech.glide.util.m.d(t9);
        this.f9610a = new b(t9);
    }

    @Nullable
    private Object c() {
        return this.f9611b.getTag(f9609g);
    }

    private void g() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f9612c;
        if (onAttachStateChangeListener == null || this.f9614e) {
            return;
        }
        this.f9611b.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f9614e = true;
    }

    private void h() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f9612c;
        if (onAttachStateChangeListener == null || !this.f9614e) {
            return;
        }
        this.f9611b.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f9614e = false;
    }

    private void o(@Nullable Object obj) {
        this.f9611b.setTag(f9609g, obj);
    }

    @Override // com.bumptech.glide.manager.m
    public void a() {
    }

    @NonNull
    public final f<T, Z> b() {
        if (this.f9612c != null) {
            return this;
        }
        this.f9612c = new a();
        g();
        return this;
    }

    @NonNull
    public final T d() {
        return this.f9611b;
    }

    @Override // com.bumptech.glide.request.target.p
    @Nullable
    public final com.bumptech.glide.request.e e() {
        Object c10 = c();
        if (c10 != null) {
            if (c10 instanceof com.bumptech.glide.request.e) {
                return (com.bumptech.glide.request.e) c10;
            }
            throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    @Override // com.bumptech.glide.request.target.p
    public final void f(@NonNull o oVar) {
        this.f9610a.k(oVar);
    }

    protected abstract void i(@Nullable Drawable drawable);

    @Override // com.bumptech.glide.request.target.p
    public final void j(@Nullable Drawable drawable) {
        g();
        l(drawable);
    }

    @Override // com.bumptech.glide.request.target.p
    public final void k(@Nullable Drawable drawable) {
        this.f9610a.b();
        i(drawable);
        if (this.f9613d) {
            return;
        }
        h();
    }

    protected void l(@Nullable Drawable drawable) {
    }

    final void m() {
        com.bumptech.glide.request.e e4 = e();
        if (e4 != null) {
            this.f9613d = true;
            e4.clear();
            this.f9613d = false;
        }
    }

    final void n() {
        com.bumptech.glide.request.e e4 = e();
        if (e4 == null || !e4.e()) {
            return;
        }
        e4.i();
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
    }

    @Deprecated
    public final f<T, Z> p(@IdRes int i4) {
        return this;
    }

    @Override // com.bumptech.glide.request.target.p
    public final void r(@Nullable com.bumptech.glide.request.e eVar) {
        o(eVar);
    }

    @NonNull
    public final f<T, Z> t() {
        this.f9610a.f9620c = true;
        return this;
    }

    public String toString() {
        return "Target for: " + this.f9611b;
    }

    @Override // com.bumptech.glide.request.target.p
    public final void u(@NonNull o oVar) {
        this.f9610a.d(oVar);
    }
}
