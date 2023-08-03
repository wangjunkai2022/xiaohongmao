package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.i1;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class r<ResultT> extends d<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32050a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final n f32051b = new n();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private boolean f32052c;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: d  reason: collision with root package name */
    private Object f32053d;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: e  reason: collision with root package name */
    private Exception f32054e;

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private final void p() {
        i1.b(this.f32052c, "Task is not yet complete");
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private final void q() {
        i1.b(!this.f32052c, "Task is already complete");
    }

    private final void r() {
        synchronized (this.f32050a) {
            if (this.f32052c) {
                this.f32051b.b(this);
            }
        }
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(a<ResultT> aVar) {
        this.f32051b.a(new h(e.f32028a, aVar));
        r();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> b(Executor executor, a<ResultT> aVar) {
        this.f32051b.a(new h(executor, aVar));
        r();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> c(b bVar) {
        d(e.f32028a, bVar);
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> d(Executor executor, b bVar) {
        this.f32051b.a(new j(executor, bVar));
        r();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> e(c<? super ResultT> cVar) {
        f(e.f32028a, cVar);
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> f(Executor executor, c<? super ResultT> cVar) {
        this.f32051b.a(new l(executor, cVar));
        r();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    @Nullable
    public final Exception g() {
        Exception exc;
        synchronized (this.f32050a) {
            exc = this.f32054e;
        }
        return exc;
    }

    @Override // com.google.android.play.core.tasks.d
    public final ResultT h() {
        ResultT resultt;
        synchronized (this.f32050a) {
            p();
            Exception exc = this.f32054e;
            if (exc == null) {
                resultt = (ResultT) this.f32053d;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.d
    public final <X extends Throwable> ResultT i(Class<X> cls) throws Throwable {
        ResultT resultt;
        synchronized (this.f32050a) {
            p();
            if (!cls.isInstance(this.f32054e)) {
                Exception exc = this.f32054e;
                if (exc == null) {
                    resultt = (ResultT) this.f32053d;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } else {
                throw cls.cast(this.f32054e);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.d
    public final boolean j() {
        boolean z9;
        synchronized (this.f32050a) {
            z9 = this.f32052c;
        }
        return z9;
    }

    @Override // com.google.android.play.core.tasks.d
    public final boolean k() {
        boolean z9;
        synchronized (this.f32050a) {
            z9 = false;
            if (this.f32052c && this.f32054e == null) {
                z9 = true;
            }
        }
        return z9;
    }

    public final void l(Exception exc) {
        synchronized (this.f32050a) {
            q();
            this.f32052c = true;
            this.f32054e = exc;
        }
        this.f32051b.b(this);
    }

    public final void m(Object obj) {
        synchronized (this.f32050a) {
            q();
            this.f32052c = true;
            this.f32053d = obj;
        }
        this.f32051b.b(this);
    }

    public final boolean n(Exception exc) {
        synchronized (this.f32050a) {
            if (this.f32052c) {
                return false;
            }
            this.f32052c = true;
            this.f32054e = exc;
            this.f32051b.b(this);
            return true;
        }
    }

    public final boolean o(Object obj) {
        synchronized (this.f32050a) {
            if (this.f32052c) {
                return false;
            }
            this.f32052c = true;
            this.f32053d = obj;
            this.f32051b.b(this);
            return true;
        }
    }
}
