package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.p;
import com.bumptech.glide.util.o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: RequestFutureTarget.java */
/* loaded from: classes.dex */
public class f<R> implements d<R>, g<R> {

    /* renamed from: k  reason: collision with root package name */
    private static final a f9543k = new a();

    /* renamed from: a  reason: collision with root package name */
    private final int f9544a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9545b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9546c;

    /* renamed from: d  reason: collision with root package name */
    private final a f9547d;
    @Nullable
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private R f9548e;
    @Nullable
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private e f9549f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private boolean f9550g;
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    private boolean f9551h;
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    private boolean f9552i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private GlideException f9553j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestFutureTarget.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {
        a() {
        }

        void a(Object obj) {
            obj.notifyAll();
        }

        void b(Object obj, long j4) throws InterruptedException {
            obj.wait(j4);
        }
    }

    public f(int i4, int i10) {
        this(i4, i10, true, f9543k);
    }

    private synchronized R g(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f9546c && !isDone()) {
            o.a();
        }
        if (!this.f9550g) {
            if (!this.f9552i) {
                if (this.f9551h) {
                    return this.f9548e;
                }
                if (l10 == null) {
                    this.f9547d.b(this, 0L);
                } else if (l10.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l10.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        this.f9547d.b(this, longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (!Thread.interrupted()) {
                    if (!this.f9552i) {
                        if (!this.f9550g) {
                            if (this.f9551h) {
                                return this.f9548e;
                            }
                            throw new TimeoutException();
                        }
                        throw new CancellationException();
                    }
                    throw new ExecutionException(this.f9553j);
                }
                throw new InterruptedException();
            }
            throw new ExecutionException(this.f9553j);
        }
        throw new CancellationException();
    }

    @Override // com.bumptech.glide.manager.m
    public void a() {
    }

    @Override // com.bumptech.glide.request.g
    public synchronized boolean b(@Nullable GlideException glideException, Object obj, p<R> pVar, boolean z9) {
        this.f9552i = true;
        this.f9553j = glideException;
        this.f9547d.a(this);
        return false;
    }

    @Override // com.bumptech.glide.request.g
    public synchronized boolean c(R r9, Object obj, p<R> pVar, DataSource dataSource, boolean z9) {
        this.f9551h = true;
        this.f9548e = r9;
        this.f9547d.a(this);
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f9550g = true;
            this.f9547d.a(this);
            e eVar = null;
            if (z9) {
                e eVar2 = this.f9549f;
                this.f9549f = null;
                eVar = eVar2;
            }
            if (eVar != null) {
                eVar.clear();
            }
            return true;
        }
    }

    @Override // com.bumptech.glide.request.target.p
    @Nullable
    public synchronized e e() {
        return this.f9549f;
    }

    @Override // com.bumptech.glide.request.target.p
    public void f(@NonNull com.bumptech.glide.request.target.o oVar) {
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return g(null);
        } catch (TimeoutException e4) {
            throw new AssertionError(e4);
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f9550g;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z9;
        if (!this.f9550g && !this.f9551h) {
            z9 = this.f9552i;
        }
        return z9;
    }

    @Override // com.bumptech.glide.request.target.p
    public void j(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.p
    public void k(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.m
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.p
    public synchronized void q(@NonNull R r9, @Nullable com.bumptech.glide.request.transition.f<? super R> fVar) {
    }

    @Override // com.bumptech.glide.request.target.p
    public synchronized void r(@Nullable e eVar) {
        this.f9549f = eVar;
    }

    @Override // com.bumptech.glide.request.target.p
    public synchronized void s(@Nullable Drawable drawable) {
    }

    public String toString() {
        e eVar;
        String str;
        String str2 = super.toString() + "[status=";
        synchronized (this) {
            eVar = null;
            if (this.f9550g) {
                str = "CANCELLED";
            } else if (this.f9552i) {
                str = "FAILURE";
            } else if (this.f9551h) {
                str = "SUCCESS";
            } else {
                str = "PENDING";
                eVar = this.f9549f;
            }
        }
        if (eVar != null) {
            return str2 + str + ", request=[" + eVar + "]]";
        }
        return str2 + str + "]";
    }

    @Override // com.bumptech.glide.request.target.p
    public void u(@NonNull com.bumptech.glide.request.target.o oVar) {
        oVar.d(this.f9544a, this.f9545b);
    }

    f(int i4, int i10, boolean z9, a aVar) {
        this.f9544a = i4;
        this.f9545b = i10;
        this.f9546c = z9;
        this.f9547d = aVar;
    }

    @Override // java.util.concurrent.Future
    public R get(long j4, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return g(Long.valueOf(timeUnit.toMillis(j4)));
    }
}
