package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.k5;
import com.google.common.util.concurrent.d;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.OverridingMethodsMustInvokeSuper;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AggregateFuture.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class k<InputT, OutputT> extends d.j<OutputT> {

    /* renamed from: j  reason: collision with root package name */
    private static final Logger f35260j = Logger.getLogger(k.class.getName());
    @NullableDecl

    /* renamed from: i  reason: collision with root package name */
    private k<InputT, OutputT>.a f35261i;

    /* compiled from: AggregateFuture.java */
    /* loaded from: classes2.dex */
    abstract class a extends l implements Runnable {

        /* renamed from: e  reason: collision with root package name */
        private ImmutableCollection<? extends q0<? extends InputT>> f35262e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f35263f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f35264g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AggregateFuture.java */
        /* renamed from: com.google.common.util.concurrent.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0273a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35266a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ q0 f35267b;

            RunnableC0273a(int i4, q0 q0Var) {
                this.f35266a = i4;
                this.f35267b = q0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.p(this.f35266a, this.f35267b);
                } finally {
                    a.this.m();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(ImmutableCollection<? extends q0<? extends InputT>> immutableCollection, boolean z9, boolean z10) {
            super(immutableCollection.size());
            this.f35262e = (ImmutableCollection) com.google.common.base.a0.E(immutableCollection);
            this.f35263f = z9;
            this.f35264g = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m() {
            int f10 = f();
            com.google.common.base.a0.h0(f10 >= 0, "Less than 0 remaining futures");
            if (f10 == 0) {
                s();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void o(java.lang.Throwable r6) {
            /*
                r5 = this;
                com.google.common.base.a0.E(r6)
                boolean r0 = r5.f35263f
                r1 = 1
                if (r0 == 0) goto L1d
                com.google.common.util.concurrent.k r0 = com.google.common.util.concurrent.k.this
                boolean r0 = r0.N(r6)
                if (r0 == 0) goto L14
                r5.t()
                goto L1e
            L14:
                java.util.Set r2 = r5.g()
                boolean r2 = com.google.common.util.concurrent.k.R(r2, r6)
                goto L1f
            L1d:
                r0 = 0
            L1e:
                r2 = 1
            L1f:
                boolean r3 = r6 instanceof java.lang.Error
                boolean r4 = r5.f35263f
                r0 = r0 ^ r1
                r0 = r0 & r4
                r0 = r0 & r2
                r0 = r0 | r3
                if (r0 == 0) goto L39
                if (r3 == 0) goto L2e
                java.lang.String r0 = "Input Future failed with Error"
                goto L30
            L2e:
                java.lang.String r0 = "Got more than one input Future failure. Logging failures after the first"
            L30:
                java.util.logging.Logger r1 = com.google.common.util.concurrent.k.S()
                java.util.logging.Level r2 = java.util.logging.Level.SEVERE
                r1.log(r2, r0, r6)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.k.a.o(java.lang.Throwable):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public void p(int i4, Future<? extends InputT> future) {
            com.google.common.base.a0.h0(this.f35263f || !k.this.isDone() || k.this.isCancelled(), "Future was done before all dependencies completed");
            try {
                com.google.common.base.a0.h0(future.isDone(), "Tried to set value from future which is not done");
                if (this.f35263f) {
                    if (future.isCancelled()) {
                        k.this.f35261i = null;
                        k.this.cancel(false);
                    } else {
                        Object h4 = j0.h(future);
                        if (this.f35264g) {
                            l(this.f35263f, i4, h4);
                        }
                    }
                } else if (this.f35264g && !future.isCancelled()) {
                    l(this.f35263f, i4, j0.h(future));
                }
            } catch (ExecutionException e4) {
                o(e4.getCause());
            } catch (Throwable th) {
                o(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q() {
            if (this.f35262e.isEmpty()) {
                n();
            } else if (this.f35263f) {
                int i4 = 0;
                k5<? extends q0<? extends InputT>> it = this.f35262e.iterator();
                while (it.hasNext()) {
                    q0<? extends InputT> next = it.next();
                    next.addListener(new RunnableC0273a(i4, next), x0.c());
                    i4++;
                }
            } else {
                k5<? extends q0<? extends InputT>> it2 = this.f35262e.iterator();
                while (it2.hasNext()) {
                    it2.next().addListener(this, x0.c());
                }
            }
        }

        private void s() {
            if (this.f35264g & (!this.f35263f)) {
                int i4 = 0;
                k5<? extends q0<? extends InputT>> it = this.f35262e.iterator();
                while (it.hasNext()) {
                    p(i4, it.next());
                    i4++;
                }
            }
            n();
        }

        @Override // com.google.common.util.concurrent.l
        final void e(Set<Throwable> set) {
            if (k.this.isCancelled()) {
                return;
            }
            k.U(set, k.this.a());
        }

        abstract void l(boolean z9, int i4, @NullableDecl InputT inputt);

        abstract void n();

        void r() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            m();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @ForOverride
        @OverridingMethodsMustInvokeSuper
        public void t() {
            this.f35262e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean U(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public String J() {
        ImmutableCollection immutableCollection;
        k<InputT, OutputT>.a aVar = this.f35261i;
        if (aVar == null || (immutableCollection = ((a) aVar).f35262e) == null) {
            return null;
        }
        return "futures=[" + immutableCollection + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void V(k<InputT, OutputT>.a aVar) {
        this.f35261i = aVar;
        aVar.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public final void s() {
        super.s();
        k<InputT, OutputT>.a aVar = this.f35261i;
        if (aVar != null) {
            this.f35261i = null;
            ImmutableCollection immutableCollection = ((a) aVar).f35262e;
            boolean Q = Q();
            if (Q) {
                aVar.r();
            }
            if (isCancelled() && (immutableCollection != null)) {
                k5 it = immutableCollection.iterator();
                while (it.hasNext()) {
                    ((q0) it.next()).cancel(Q);
                }
            }
        }
    }
}
