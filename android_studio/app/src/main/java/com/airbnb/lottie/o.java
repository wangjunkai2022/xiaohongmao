package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* compiled from: LottieTask.java */
/* loaded from: classes.dex */
public class o<T> {

    /* renamed from: e  reason: collision with root package name */
    public static Executor f4612e = Executors.newCachedThreadPool();

    /* renamed from: a  reason: collision with root package name */
    private final Set<j<T>> f4613a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<j<Throwable>> f4614b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f4615c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private volatile n<T> f4616d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LottieTask.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o.this.f4616d == null) {
                return;
            }
            n nVar = o.this.f4616d;
            if (nVar.b() != null) {
                o.this.i(nVar.b());
            } else {
                o.this.g(nVar.a());
            }
        }
    }

    /* compiled from: LottieTask.java */
    /* loaded from: classes.dex */
    private class b extends FutureTask<n<T>> {
        b(Callable<n<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                o.this.l(get());
            } catch (InterruptedException | ExecutionException e4) {
                o.this.l(new n(e4));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public o(Callable<n<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g(Throwable th) {
        ArrayList<j> arrayList = new ArrayList(this.f4614b);
        if (arrayList.isEmpty()) {
            com.airbnb.lottie.utils.d.e("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        for (j jVar : arrayList) {
            jVar.a(th);
        }
    }

    private void h() {
        this.f4615c.post(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i(T t9) {
        for (j jVar : new ArrayList(this.f4613a)) {
            jVar.a(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@Nullable n<T> nVar) {
        if (this.f4616d == null) {
            this.f4616d = nVar;
            h();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public synchronized o<T> e(j<Throwable> jVar) {
        if (this.f4616d != null && this.f4616d.a() != null) {
            jVar.a(this.f4616d.a());
        }
        this.f4614b.add(jVar);
        return this;
    }

    public synchronized o<T> f(j<T> jVar) {
        if (this.f4616d != null && this.f4616d.b() != null) {
            jVar.a(this.f4616d.b());
        }
        this.f4613a.add(jVar);
        return this;
    }

    public synchronized o<T> j(j<Throwable> jVar) {
        this.f4614b.remove(jVar);
        return this;
    }

    public synchronized o<T> k(j<T> jVar) {
        this.f4613a.remove(jVar);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    o(Callable<n<T>> callable, boolean z9) {
        this.f4613a = new LinkedHashSet(1);
        this.f4614b = new LinkedHashSet(1);
        this.f4615c = new Handler(Looper.getMainLooper());
        this.f4616d = null;
        if (z9) {
            try {
                l(callable.call());
                return;
            } catch (Throwable th) {
                l(new n<>(th));
                return;
            }
        }
        f4612e.execute(new b(callable));
    }
}
