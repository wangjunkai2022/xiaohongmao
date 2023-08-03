package com.google.android.gms.tasks;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class q0<TResult> extends k<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31137a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final l0<TResult> f31138b = new l0<>();
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private boolean f31139c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f31140d;
    @Nullable
    @s7.a("mLock")

    /* renamed from: e  reason: collision with root package name */
    private TResult f31141e;
    @s7.a("mLock")

    /* renamed from: f  reason: collision with root package name */
    private Exception f31142f;

    @s7.a("mLock")
    private final void D() {
        com.google.android.gms.common.internal.u.r(this.f31139c, "Task is not yet complete");
    }

    @s7.a("mLock")
    private final void E() {
        if (this.f31140d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    @s7.a("mLock")
    private final void F() {
        if (this.f31139c) {
            throw DuplicateTaskCompletionException.of(this);
        }
    }

    private final void G() {
        synchronized (this.f31137a) {
            if (this.f31139c) {
                this.f31138b.b(this);
            }
        }
    }

    public final boolean A() {
        synchronized (this.f31137a) {
            if (this.f31139c) {
                return false;
            }
            this.f31139c = true;
            this.f31140d = true;
            this.f31138b.b(this);
            return true;
        }
    }

    public final boolean B(@NonNull Exception exc) {
        com.google.android.gms.common.internal.u.l(exc, "Exception must not be null");
        synchronized (this.f31137a) {
            if (this.f31139c) {
                return false;
            }
            this.f31139c = true;
            this.f31142f = exc;
            this.f31138b.b(this);
            return true;
        }
    }

    public final boolean C(@Nullable TResult tresult) {
        synchronized (this.f31137a) {
            if (this.f31139c) {
                return false;
            }
            this.f31139c = true;
            this.f31141e = tresult;
            this.f31138b.b(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> a(@NonNull Activity activity, @NonNull d dVar) {
        b0 b0Var = new b0(m.f31129a, dVar);
        this.f31138b.a(b0Var);
        p0.m(activity).n(b0Var);
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> b(@NonNull d dVar) {
        c(m.f31129a, dVar);
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> c(@NonNull Executor executor, @NonNull d dVar) {
        this.f31138b.a(new b0(executor, dVar));
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> d(@NonNull Activity activity, @NonNull e<TResult> eVar) {
        d0 d0Var = new d0(m.f31129a, eVar);
        this.f31138b.a(d0Var);
        p0.m(activity).n(d0Var);
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> e(@NonNull e<TResult> eVar) {
        this.f31138b.a(new d0(m.f31129a, eVar));
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> f(@NonNull Executor executor, @NonNull e<TResult> eVar) {
        this.f31138b.a(new d0(executor, eVar));
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> g(@NonNull Activity activity, @NonNull f fVar) {
        f0 f0Var = new f0(m.f31129a, fVar);
        this.f31138b.a(f0Var);
        p0.m(activity).n(f0Var);
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> h(@NonNull f fVar) {
        i(m.f31129a, fVar);
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> i(@NonNull Executor executor, @NonNull f fVar) {
        this.f31138b.a(new f0(executor, fVar));
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> j(@NonNull Activity activity, @NonNull g<? super TResult> gVar) {
        h0 h0Var = new h0(m.f31129a, gVar);
        this.f31138b.a(h0Var);
        p0.m(activity).n(h0Var);
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> k(@NonNull g<? super TResult> gVar) {
        l(m.f31129a, gVar);
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final k<TResult> l(@NonNull Executor executor, @NonNull g<? super TResult> gVar) {
        this.f31138b.a(new h0(executor, gVar));
        G();
        return this;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> m(@NonNull c<TResult, TContinuationResult> cVar) {
        return n(m.f31129a, cVar);
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> n(@NonNull Executor executor, @NonNull c<TResult, TContinuationResult> cVar) {
        q0 q0Var = new q0();
        this.f31138b.a(new x(executor, cVar, q0Var));
        G();
        return q0Var;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> o(@NonNull c<TResult, k<TContinuationResult>> cVar) {
        return p(m.f31129a, cVar);
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> p(@NonNull Executor executor, @NonNull c<TResult, k<TContinuationResult>> cVar) {
        q0 q0Var = new q0();
        this.f31138b.a(new z(executor, cVar, q0Var));
        G();
        return q0Var;
    }

    @Override // com.google.android.gms.tasks.k
    @Nullable
    public final Exception q() {
        Exception exc;
        synchronized (this.f31137a) {
            exc = this.f31142f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.k
    public final TResult r() {
        TResult tresult;
        synchronized (this.f31137a) {
            D();
            E();
            Exception exc = this.f31142f;
            if (exc == null) {
                tresult = this.f31141e;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.k
    public final <X extends Throwable> TResult s(@NonNull Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f31137a) {
            D();
            E();
            if (!cls.isInstance(this.f31142f)) {
                Exception exc = this.f31142f;
                if (exc == null) {
                    tresult = this.f31141e;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } else {
                throw cls.cast(this.f31142f);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.k
    public final boolean t() {
        return this.f31140d;
    }

    @Override // com.google.android.gms.tasks.k
    public final boolean u() {
        boolean z9;
        synchronized (this.f31137a) {
            z9 = this.f31139c;
        }
        return z9;
    }

    @Override // com.google.android.gms.tasks.k
    public final boolean v() {
        boolean z9;
        synchronized (this.f31137a) {
            z9 = false;
            if (this.f31139c && !this.f31140d && this.f31142f == null) {
                z9 = true;
            }
        }
        return z9;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> w(@NonNull j<TResult, TContinuationResult> jVar) {
        Executor executor = m.f31129a;
        q0 q0Var = new q0();
        this.f31138b.a(new j0(executor, jVar, q0Var));
        G();
        return q0Var;
    }

    @Override // com.google.android.gms.tasks.k
    @NonNull
    public final <TContinuationResult> k<TContinuationResult> x(Executor executor, j<TResult, TContinuationResult> jVar) {
        q0 q0Var = new q0();
        this.f31138b.a(new j0(executor, jVar, q0Var));
        G();
        return q0Var;
    }

    public final void y(@NonNull Exception exc) {
        com.google.android.gms.common.internal.u.l(exc, "Exception must not be null");
        synchronized (this.f31137a) {
            F();
            this.f31139c = true;
            this.f31142f = exc;
        }
        this.f31138b.b(this);
    }

    public final void z(@Nullable TResult tresult) {
        synchronized (this.f31137a) {
            F();
            this.f31139c = true;
            this.f31141e = tresult;
        }
        this.f31138b.b(this);
    }
}
