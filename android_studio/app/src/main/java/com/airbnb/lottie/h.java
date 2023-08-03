package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: LottieDrawable.java */
/* loaded from: classes.dex */
public class h extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: u  reason: collision with root package name */
    private static final String f4292u = h.class.getSimpleName();

    /* renamed from: v  reason: collision with root package name */
    public static final int f4293v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f4294w = 2;

    /* renamed from: x  reason: collision with root package name */
    public static final int f4295x = -1;

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f4296a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private com.airbnb.lottie.f f4297b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.utils.e f4298c;

    /* renamed from: d  reason: collision with root package name */
    private float f4299d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4300e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<q> f4301f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<r> f4302g;

    /* renamed from: h  reason: collision with root package name */
    private final ValueAnimator.AnimatorUpdateListener f4303h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private com.airbnb.lottie.manager.b f4304i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f4305j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private com.airbnb.lottie.d f4306k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.airbnb.lottie.manager.a f4307l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    com.airbnb.lottie.c f4308m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    t f4309n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f4310o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private com.airbnb.lottie.model.layer.b f4311p;

    /* renamed from: q  reason: collision with root package name */
    private int f4312q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f4313r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f4314s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f4315t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class a implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4316a;

        a(String str) {
            this.f4316a = str;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.e0(this.f4316a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class b implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f4318a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f4319b;

        b(int i4, int i10) {
            this.f4318a = i4;
            this.f4319b = i10;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.d0(this.f4318a, this.f4319b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class c implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f4321a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f4322b;

        c(float f10, float f11) {
            this.f4321a = f10;
            this.f4322b = f11;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.f0(this.f4321a, this.f4322b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class d implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f4324a;

        d(int i4) {
            this.f4324a = i4;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.X(this.f4324a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class e implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f4326a;

        e(float f10) {
            this.f4326a = f10;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.k0(this.f4326a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class f implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.model.d f4328a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f4329b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.j f4330c;

        f(com.airbnb.lottie.model.d dVar, Object obj, com.airbnb.lottie.value.j jVar) {
            this.f4328a = dVar;
            this.f4329b = obj;
            this.f4330c = jVar;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.e(this.f4328a, this.f4329b, this.f4330c);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    class g extends com.airbnb.lottie.value.j<T> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.l f4332d;

        g(com.airbnb.lottie.value.l lVar) {
            this.f4332d = lVar;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
        @Override // com.airbnb.lottie.value.j
        public T a(com.airbnb.lottie.value.b<T> bVar) {
            return this.f4332d.a(bVar);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* renamed from: com.airbnb.lottie.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0033h implements ValueAnimator.AnimatorUpdateListener {
        C0033h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (h.this.f4311p != null) {
                h.this.f4311p.E(h.this.f4298c.h());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class i implements r {
        i() {
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class j implements r {
        j() {
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.S();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class k implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f4337a;

        k(int i4) {
            this.f4337a = i4;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.g0(this.f4337a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class l implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f4339a;

        l(float f10) {
            this.f4339a = f10;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.i0(this.f4339a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class m implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f4341a;

        m(int i4) {
            this.f4341a = i4;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.a0(this.f4341a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class n implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f4343a;

        n(float f10) {
            this.f4343a = f10;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.c0(this.f4343a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class o implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4345a;

        o(String str) {
            this.f4345a = str;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.h0(this.f4345a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class p implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4347a;

        p(String str) {
            this.f4347a = str;
        }

        @Override // com.airbnb.lottie.h.r
        public void a(com.airbnb.lottie.f fVar) {
            h.this.b0(this.f4347a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    private static class q {

        /* renamed from: a  reason: collision with root package name */
        final String f4349a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final String f4350b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        final ColorFilter f4351c;

        q(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
            this.f4349a = str;
            this.f4350b = str2;
            this.f4351c = colorFilter;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof q) {
                q qVar = (q) obj;
                return hashCode() == qVar.hashCode() && this.f4351c == qVar.f4351c;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f4349a;
            int hashCode = str != null ? 527 * str.hashCode() : 17;
            String str2 = this.f4350b;
            return str2 != null ? hashCode * 31 * str2.hashCode() : hashCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public interface r {
        void a(com.airbnb.lottie.f fVar);
    }

    /* compiled from: LottieDrawable.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface s {
    }

    public h() {
        com.airbnb.lottie.utils.e eVar = new com.airbnb.lottie.utils.e();
        this.f4298c = eVar;
        this.f4299d = 1.0f;
        this.f4300e = true;
        this.f4301f = new HashSet();
        this.f4302g = new ArrayList<>();
        C0033h c0033h = new C0033h();
        this.f4303h = c0033h;
        this.f4312q = 255;
        this.f4315t = false;
        eVar.addUpdateListener(c0033h);
    }

    private void g() {
        this.f4311p = new com.airbnb.lottie.model.layer.b(this, com.airbnb.lottie.parser.s.a(this.f4297b), this.f4297b.j(), this.f4297b);
    }

    @Nullable
    private Context n() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private com.airbnb.lottie.manager.a o() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f4307l == null) {
            this.f4307l = new com.airbnb.lottie.manager.a(getCallback(), this.f4308m);
        }
        return this.f4307l;
    }

    private com.airbnb.lottie.manager.b r() {
        if (getCallback() == null) {
            return null;
        }
        com.airbnb.lottie.manager.b bVar = this.f4304i;
        if (bVar != null && !bVar.b(n())) {
            this.f4304i = null;
        }
        if (this.f4304i == null) {
            this.f4304i = new com.airbnb.lottie.manager.b(getCallback(), this.f4305j, this.f4306k, this.f4297b.i());
        }
        return this.f4304i;
    }

    private void s0() {
        if (this.f4297b == null) {
            return;
        }
        float A = A();
        setBounds(0, 0, (int) (this.f4297b.b().width() * A), (int) (this.f4297b.b().height() * A));
    }

    private float u(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.f4297b.b().width(), canvas.getHeight() / this.f4297b.b().height());
    }

    public float A() {
        return this.f4299d;
    }

    public float B() {
        return this.f4298c.m();
    }

    @Nullable
    public t C() {
        return this.f4309n;
    }

    @Nullable
    public Typeface D(String str, String str2) {
        com.airbnb.lottie.manager.a o9 = o();
        if (o9 != null) {
            return o9.b(str, str2);
        }
        return null;
    }

    public boolean E() {
        com.airbnb.lottie.model.layer.b bVar = this.f4311p;
        return bVar != null && bVar.H();
    }

    public boolean F() {
        com.airbnb.lottie.model.layer.b bVar = this.f4311p;
        return bVar != null && bVar.I();
    }

    public boolean G() {
        return this.f4298c.isRunning();
    }

    public boolean H() {
        return this.f4314s;
    }

    public boolean I() {
        return this.f4298c.getRepeatCount() == -1;
    }

    public boolean J() {
        return this.f4310o;
    }

    @Deprecated
    public void K(boolean z9) {
        this.f4298c.setRepeatCount(z9 ? -1 : 0);
    }

    public void L() {
        this.f4302g.clear();
        this.f4298c.o();
    }

    @MainThread
    public void M() {
        if (this.f4311p == null) {
            this.f4302g.add(new i());
            return;
        }
        if (this.f4300e || y() == 0) {
            this.f4298c.p();
        }
        if (this.f4300e) {
            return;
        }
        X((int) (B() < 0.0f ? v() : t()));
    }

    public void N() {
        this.f4298c.removeAllListeners();
    }

    public void O() {
        this.f4298c.removeAllUpdateListeners();
        this.f4298c.addUpdateListener(this.f4303h);
    }

    public void P(Animator.AnimatorListener animatorListener) {
        this.f4298c.removeListener(animatorListener);
    }

    public void Q(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4298c.removeUpdateListener(animatorUpdateListener);
    }

    public List<com.airbnb.lottie.model.d> R(com.airbnb.lottie.model.d dVar) {
        if (this.f4311p == null) {
            com.airbnb.lottie.utils.d.d("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f4311p.d(dVar, 0, arrayList, new com.airbnb.lottie.model.d(new String[0]));
        return arrayList;
    }

    @MainThread
    public void S() {
        if (this.f4311p == null) {
            this.f4302g.add(new j());
        } else if (this.f4300e) {
            this.f4298c.t();
        }
    }

    public void T() {
        this.f4298c.u();
    }

    public void U(boolean z9) {
        this.f4314s = z9;
    }

    public boolean V(com.airbnb.lottie.f fVar) {
        if (this.f4297b == fVar) {
            return false;
        }
        this.f4315t = false;
        i();
        this.f4297b = fVar;
        g();
        this.f4298c.v(fVar);
        k0(this.f4298c.getAnimatedFraction());
        n0(this.f4299d);
        s0();
        Iterator it = new ArrayList(this.f4302g).iterator();
        while (it.hasNext()) {
            ((r) it.next()).a(fVar);
            it.remove();
        }
        this.f4302g.clear();
        fVar.x(this.f4313r);
        return true;
    }

    public void W(com.airbnb.lottie.c cVar) {
        this.f4308m = cVar;
        com.airbnb.lottie.manager.a aVar = this.f4307l;
        if (aVar != null) {
            aVar.d(cVar);
        }
    }

    public void X(int i4) {
        if (this.f4297b == null) {
            this.f4302g.add(new d(i4));
        } else {
            this.f4298c.w(i4);
        }
    }

    public void Y(com.airbnb.lottie.d dVar) {
        this.f4306k = dVar;
        com.airbnb.lottie.manager.b bVar = this.f4304i;
        if (bVar != null) {
            bVar.d(dVar);
        }
    }

    public void Z(@Nullable String str) {
        this.f4305j = str;
    }

    public void a0(int i4) {
        if (this.f4297b == null) {
            this.f4302g.add(new m(i4));
        } else {
            this.f4298c.x(i4 + 0.99f);
        }
    }

    public void b0(String str) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new p(str));
            return;
        }
        com.airbnb.lottie.model.g k10 = fVar.k(str);
        if (k10 != null) {
            a0((int) (k10.f4542b + k10.f4543c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void c(Animator.AnimatorListener animatorListener) {
        this.f4298c.addListener(animatorListener);
    }

    public void c0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new n(f10));
        } else {
            a0((int) com.airbnb.lottie.utils.g.j(fVar.p(), this.f4297b.f(), f10));
        }
    }

    public void d(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4298c.addUpdateListener(animatorUpdateListener);
    }

    public void d0(int i4, int i10) {
        if (this.f4297b == null) {
            this.f4302g.add(new b(i4, i10));
        } else {
            this.f4298c.y(i4, i10 + 0.99f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        float f10;
        this.f4315t = false;
        com.airbnb.lottie.e.a("Drawable#draw");
        if (this.f4311p == null) {
            return;
        }
        float f11 = this.f4299d;
        float u9 = u(canvas);
        if (f11 > u9) {
            f10 = this.f4299d / u9;
        } else {
            u9 = f11;
            f10 = 1.0f;
        }
        int i4 = -1;
        if (f10 > 1.0f) {
            i4 = canvas.save();
            float width = this.f4297b.b().width() / 2.0f;
            float height = this.f4297b.b().height() / 2.0f;
            float f12 = width * u9;
            float f13 = height * u9;
            canvas.translate((A() * width) - f12, (A() * height) - f13);
            canvas.scale(f10, f10, f12, f13);
        }
        this.f4296a.reset();
        this.f4296a.preScale(u9, u9);
        this.f4311p.g(canvas, this.f4296a, this.f4312q);
        com.airbnb.lottie.e.b("Drawable#draw");
        if (i4 > 0) {
            canvas.restoreToCount(i4);
        }
    }

    public <T> void e(com.airbnb.lottie.model.d dVar, T t9, com.airbnb.lottie.value.j<T> jVar) {
        if (this.f4311p == null) {
            this.f4302g.add(new f(dVar, t9, jVar));
            return;
        }
        boolean z9 = true;
        if (dVar.d() != null) {
            dVar.d().c(t9, jVar);
        } else {
            List<com.airbnb.lottie.model.d> R = R(dVar);
            for (int i4 = 0; i4 < R.size(); i4++) {
                R.get(i4).d().c(t9, jVar);
            }
            z9 = true ^ R.isEmpty();
        }
        if (z9) {
            invalidateSelf();
            if (t9 == com.airbnb.lottie.m.A) {
                k0(x());
            }
        }
    }

    public void e0(String str) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new a(str));
            return;
        }
        com.airbnb.lottie.model.g k10 = fVar.k(str);
        if (k10 != null) {
            int i4 = (int) k10.f4542b;
            d0(i4, ((int) k10.f4543c) + i4);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public <T> void f(com.airbnb.lottie.model.d dVar, T t9, com.airbnb.lottie.value.l<T> lVar) {
        e(dVar, t9, new g(lVar));
    }

    public void f0(@FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new c(f10, f11));
        } else {
            d0((int) com.airbnb.lottie.utils.g.j(fVar.p(), this.f4297b.f(), f10), (int) com.airbnb.lottie.utils.g.j(this.f4297b.p(), this.f4297b.f(), f11));
        }
    }

    public void g0(int i4) {
        if (this.f4297b == null) {
            this.f4302g.add(new k(i4));
        } else {
            this.f4298c.z(i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4312q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            return -1;
        }
        return (int) (fVar.b().height() * A());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            return -1;
        }
        return (int) (fVar.b().width() * A());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h() {
        this.f4302g.clear();
        this.f4298c.cancel();
    }

    public void h0(String str) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new o(str));
            return;
        }
        com.airbnb.lottie.model.g k10 = fVar.k(str);
        if (k10 != null) {
            g0((int) k10.f4542b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void i() {
        if (this.f4298c.isRunning()) {
            this.f4298c.cancel();
        }
        this.f4297b = null;
        this.f4311p = null;
        this.f4304i = null;
        this.f4298c.f();
        invalidateSelf();
    }

    public void i0(float f10) {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar == null) {
            this.f4302g.add(new l(f10));
        } else {
            g0((int) com.airbnb.lottie.utils.g.j(fVar.p(), this.f4297b.f(), f10));
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f4315t) {
            return;
        }
        this.f4315t = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return G();
    }

    public void j(boolean z9) {
        if (this.f4310o == z9) {
            return;
        }
        this.f4310o = z9;
        if (this.f4297b != null) {
            g();
        }
    }

    public void j0(boolean z9) {
        this.f4313r = z9;
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar != null) {
            fVar.x(z9);
        }
    }

    public boolean k() {
        return this.f4310o;
    }

    public void k0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f4297b == null) {
            this.f4302g.add(new e(f10));
            return;
        }
        com.airbnb.lottie.e.a("Drawable#setProgress");
        this.f4298c.w(com.airbnb.lottie.utils.g.j(this.f4297b.p(), this.f4297b.f(), f10));
        com.airbnb.lottie.e.b("Drawable#setProgress");
    }

    @MainThread
    public void l() {
        this.f4302g.clear();
        this.f4298c.g();
    }

    public void l0(int i4) {
        this.f4298c.setRepeatCount(i4);
    }

    public com.airbnb.lottie.f m() {
        return this.f4297b;
    }

    public void m0(int i4) {
        this.f4298c.setRepeatMode(i4);
    }

    public void n0(float f10) {
        this.f4299d = f10;
        s0();
    }

    public void o0(float f10) {
        this.f4298c.A(f10);
    }

    public int p() {
        return (int) this.f4298c.i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p0(Boolean bool) {
        this.f4300e = bool.booleanValue();
    }

    @Nullable
    public Bitmap q(String str) {
        com.airbnb.lottie.manager.b r9 = r();
        if (r9 != null) {
            return r9.a(str);
        }
        return null;
    }

    public void q0(t tVar) {
        this.f4309n = tVar;
    }

    @Nullable
    public Bitmap r0(String str, @Nullable Bitmap bitmap) {
        com.airbnb.lottie.manager.b r9 = r();
        if (r9 == null) {
            com.airbnb.lottie.utils.d.d("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap e4 = r9.e(str, bitmap);
        invalidateSelf();
        return e4;
    }

    @Nullable
    public String s() {
        return this.f4305j;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i4) {
        this.f4312q = i4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        com.airbnb.lottie.utils.d.d("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        M();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        l();
    }

    public float t() {
        return this.f4298c.k();
    }

    public boolean t0() {
        return this.f4309n == null && this.f4297b.c().size() > 0;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public float v() {
        return this.f4298c.l();
    }

    @Nullable
    public com.airbnb.lottie.q w() {
        com.airbnb.lottie.f fVar = this.f4297b;
        if (fVar != null) {
            return fVar.n();
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float x() {
        return this.f4298c.h();
    }

    public int y() {
        return this.f4298c.getRepeatCount();
    }

    public int z() {
        return this.f4298c.getRepeatMode();
    }
}
