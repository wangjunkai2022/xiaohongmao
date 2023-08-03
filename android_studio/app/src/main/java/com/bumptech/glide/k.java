package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.p;
import com.bumptech.glide.manager.q;
import com.bumptech.glide.manager.t;
import com.bumptech.glide.util.o;
import java.io.File;
import java.net.URL;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: RequestManager.java */
/* loaded from: classes.dex */
public class k implements ComponentCallbacks2, m, h<j<Drawable>> {

    /* renamed from: l  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f8488l = com.bumptech.glide.request.h.W0(Bitmap.class).k0();

    /* renamed from: m  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f8489m = com.bumptech.glide.request.h.W0(com.bumptech.glide.load.resource.gif.c.class).k0();

    /* renamed from: n  reason: collision with root package name */
    private static final com.bumptech.glide.request.h f8490n = com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8862c).y0(Priority.LOW).G0(true);

    /* renamed from: a  reason: collision with root package name */
    protected final com.bumptech.glide.c f8491a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f8492b;

    /* renamed from: c  reason: collision with root package name */
    final com.bumptech.glide.manager.l f8493c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private final q f8494d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private final p f8495e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private final t f8496f;

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f8497g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.manager.c f8498h;

    /* renamed from: i  reason: collision with root package name */
    private final CopyOnWriteArrayList<com.bumptech.glide.request.g<Object>> f8499i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private com.bumptech.glide.request.h f8500j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f8501k;

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = k.this;
            kVar.f8493c.b(kVar);
        }
    }

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    private static class b extends com.bumptech.glide.request.target.f<View, Object> {
        b(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.f
        protected void i(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void q(@NonNull Object obj, @Nullable com.bumptech.glide.request.transition.f<? super Object> fVar) {
        }

        @Override // com.bumptech.glide.request.target.p
        public void s(@Nullable Drawable drawable) {
        }
    }

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    private class c implements c.a {
        @GuardedBy("RequestManager.this")

        /* renamed from: a  reason: collision with root package name */
        private final q f8503a;

        c(@NonNull q qVar) {
            this.f8503a = qVar;
        }

        @Override // com.bumptech.glide.manager.c.a
        public void a(boolean z9) {
            if (z9) {
                synchronized (k.this) {
                    this.f8503a.g();
                }
            }
        }
    }

    public k(@NonNull com.bumptech.glide.c cVar, @NonNull com.bumptech.glide.manager.l lVar, @NonNull p pVar, @NonNull Context context) {
        this(cVar, lVar, pVar, new q(), cVar.i(), context);
    }

    private void b0(@NonNull com.bumptech.glide.request.target.p<?> pVar) {
        boolean a02 = a0(pVar);
        com.bumptech.glide.request.e e4 = pVar.e();
        if (a02 || this.f8491a.w(pVar) || e4 == null) {
            return;
        }
        pVar.r(null);
        e4.clear();
    }

    private synchronized void c0(@NonNull com.bumptech.glide.request.h hVar) {
        this.f8500j = this.f8500j.a(hVar);
    }

    public void A(@Nullable com.bumptech.glide.request.target.p<?> pVar) {
        if (pVar == null) {
            return;
        }
        b0(pVar);
    }

    @NonNull
    @CheckResult
    public j<File> B(@Nullable Object obj) {
        return C().m(obj);
    }

    @NonNull
    @CheckResult
    public j<File> C() {
        return t(File.class).a(f8490n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bumptech.glide.request.g<Object>> D() {
        return this.f8499i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized com.bumptech.glide.request.h E() {
        return this.f8500j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public <T> l<?, T> F(Class<T> cls) {
        return this.f8491a.k().e(cls);
    }

    public synchronized boolean G() {
        return this.f8494d.d();
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: H */
    public j<Drawable> l(@Nullable Bitmap bitmap) {
        return w().l(bitmap);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: I */
    public j<Drawable> i(@Nullable Drawable drawable) {
        return w().i(drawable);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: J */
    public j<Drawable> d(@Nullable Uri uri) {
        return w().d(uri);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: K */
    public j<Drawable> h(@Nullable File file) {
        return w().h(file);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: L */
    public j<Drawable> n(@Nullable @DrawableRes @RawRes Integer num) {
        return w().n(num);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: M */
    public j<Drawable> m(@Nullable Object obj) {
        return w().m(obj);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: N */
    public j<Drawable> b(@Nullable String str) {
        return w().b(str);
    }

    @Override // com.bumptech.glide.h
    @CheckResult
    @Deprecated
    /* renamed from: O */
    public j<Drawable> c(@Nullable URL url) {
        return w().c(url);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: P */
    public j<Drawable> g(@Nullable byte[] bArr) {
        return w().g(bArr);
    }

    public synchronized void Q() {
        this.f8494d.e();
    }

    public synchronized void R() {
        Q();
        for (k kVar : this.f8495e.a()) {
            kVar.Q();
        }
    }

    public synchronized void S() {
        this.f8494d.f();
    }

    public synchronized void T() {
        S();
        for (k kVar : this.f8495e.a()) {
            kVar.S();
        }
    }

    public synchronized void U() {
        this.f8494d.h();
    }

    public synchronized void V() {
        o.b();
        U();
        for (k kVar : this.f8495e.a()) {
            kVar.U();
        }
    }

    @NonNull
    public synchronized k W(@NonNull com.bumptech.glide.request.h hVar) {
        Y(hVar);
        return this;
    }

    public void X(boolean z9) {
        this.f8501k = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void Y(@NonNull com.bumptech.glide.request.h hVar) {
        this.f8500j = hVar.clone().e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void Z(@NonNull com.bumptech.glide.request.target.p<?> pVar, @NonNull com.bumptech.glide.request.e eVar) {
        this.f8496f.d(pVar);
        this.f8494d.i(eVar);
    }

    @Override // com.bumptech.glide.manager.m
    public synchronized void a() {
        this.f8496f.a();
        for (com.bumptech.glide.request.target.p<?> pVar : this.f8496f.c()) {
            A(pVar);
        }
        this.f8496f.b();
        this.f8494d.c();
        this.f8493c.a(this);
        this.f8493c.a(this.f8498h);
        o.y(this.f8497g);
        this.f8491a.B(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a0(@NonNull com.bumptech.glide.request.target.p<?> pVar) {
        com.bumptech.glide.request.e e4 = pVar.e();
        if (e4 == null) {
            return true;
        }
        if (this.f8494d.b(e4)) {
            this.f8496f.g(pVar);
            pVar.r(null);
            return true;
        }
        return false;
    }

    public k o(com.bumptech.glide.request.g<Object> gVar) {
        this.f8499i.add(gVar);
        return this;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.m
    public synchronized void onStart() {
        U();
        this.f8496f.onStart();
    }

    @Override // com.bumptech.glide.manager.m
    public synchronized void onStop() {
        S();
        this.f8496f.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        if (i4 == 60 && this.f8501k) {
            R();
        }
    }

    @NonNull
    public synchronized k p(@NonNull com.bumptech.glide.request.h hVar) {
        c0(hVar);
        return this;
    }

    @NonNull
    @CheckResult
    public <ResourceType> j<ResourceType> t(@NonNull Class<ResourceType> cls) {
        return new j<>(this.f8491a, this, cls, this.f8492b);
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f8494d + ", treeNode=" + this.f8495e + com.alipay.sdk.util.i.f6967d;
    }

    @NonNull
    @CheckResult
    public j<Bitmap> v() {
        return t(Bitmap.class).a(f8488l);
    }

    @NonNull
    @CheckResult
    public j<Drawable> w() {
        return t(Drawable.class);
    }

    @NonNull
    @CheckResult
    public j<File> x() {
        return t(File.class).a(com.bumptech.glide.request.h.q1(true));
    }

    @NonNull
    @CheckResult
    public j<com.bumptech.glide.load.resource.gif.c> y() {
        return t(com.bumptech.glide.load.resource.gif.c.class).a(f8489m);
    }

    public void z(@NonNull View view) {
        A(new b(view));
    }

    k(com.bumptech.glide.c cVar, com.bumptech.glide.manager.l lVar, p pVar, q qVar, com.bumptech.glide.manager.d dVar, Context context) {
        this.f8496f = new t();
        a aVar = new a();
        this.f8497g = aVar;
        this.f8491a = cVar;
        this.f8493c = lVar;
        this.f8495e = pVar;
        this.f8494d = qVar;
        this.f8492b = context;
        com.bumptech.glide.manager.c a10 = dVar.a(context.getApplicationContext(), new c(qVar));
        this.f8498h = a10;
        if (o.t()) {
            o.x(aVar);
        } else {
            lVar.b(this);
        }
        lVar.b(a10);
        this.f8499i = new CopyOnWriteArrayList<>(cVar.k().c());
        Y(cVar.k().d());
        cVar.v(this);
    }
}
