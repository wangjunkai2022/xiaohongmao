package com.google.common.util.concurrent;

import com.google.android.gms.common.internal.x;
import com.google.common.collect.v3;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListenerCallQueue.java */
@h3.c
/* loaded from: classes2.dex */
public final class t0<L> {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35336b = Logger.getLogger(t0.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final List<b<L>> f35337a = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListenerCallQueue.java */
    /* loaded from: classes2.dex */
    public interface a<L> {
        void a(L l10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListenerCallQueue.java */
    /* loaded from: classes2.dex */
    public static final class b<L> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final L f35338a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f35339b;
        @GuardedBy("this")

        /* renamed from: c  reason: collision with root package name */
        final Queue<a<L>> f35340c = v3.d();
        @GuardedBy("this")

        /* renamed from: d  reason: collision with root package name */
        final Queue<Object> f35341d = v3.d();
        @GuardedBy("this")

        /* renamed from: e  reason: collision with root package name */
        boolean f35342e;

        b(L l10, Executor executor) {
            this.f35338a = (L) com.google.common.base.a0.E(l10);
            this.f35339b = (Executor) com.google.common.base.a0.E(executor);
        }

        synchronized void a(a<L> aVar, Object obj) {
            this.f35340c.add(aVar);
            this.f35341d.add(obj);
        }

        void b() {
            boolean z9;
            synchronized (this) {
                z9 = true;
                if (this.f35342e) {
                    z9 = false;
                } else {
                    this.f35342e = true;
                }
            }
            if (z9) {
                try {
                    this.f35339b.execute(this);
                } catch (RuntimeException e4) {
                    synchronized (this) {
                        this.f35342e = false;
                        Logger logger = t0.f35336b;
                        Level level = Level.SEVERE;
                        logger.log(level, "Exception while running callbacks for " + this.f35338a + " on " + this.f35339b, (Throwable) e4);
                        throw e4;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
            r2.a(r9.f35338a);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
            r4 = com.google.common.util.concurrent.t0.f35336b;
            r5 = java.util.logging.Level.SEVERE;
            r4.log(r5, "Exception while executing callback: " + r9.f35338a + " " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r9 = this;
            L0:
                r0 = 0
                r1 = 1
                monitor-enter(r9)     // Catch: java.lang.Throwable -> L58
                boolean r2 = r9.f35342e     // Catch: java.lang.Throwable -> L4c
                com.google.common.base.a0.g0(r2)     // Catch: java.lang.Throwable -> L4c
                java.util.Queue<com.google.common.util.concurrent.t0$a<L>> r2 = r9.f35340c     // Catch: java.lang.Throwable -> L4c
                java.lang.Object r2 = r2.poll()     // Catch: java.lang.Throwable -> L4c
                com.google.common.util.concurrent.t0$a r2 = (com.google.common.util.concurrent.t0.a) r2     // Catch: java.lang.Throwable -> L4c
                java.util.Queue<java.lang.Object> r3 = r9.f35341d     // Catch: java.lang.Throwable -> L4c
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L4c
                if (r2 != 0) goto L1f
                r9.f35342e = r0     // Catch: java.lang.Throwable -> L4c
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L1c
                return
            L1c:
                r1 = move-exception
                r2 = 0
                goto L4f
            L1f:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L4c
                L r4 = r9.f35338a     // Catch: java.lang.RuntimeException -> L26 java.lang.Throwable -> L58
                r2.a(r4)     // Catch: java.lang.RuntimeException -> L26 java.lang.Throwable -> L58
                goto L0
            L26:
                r2 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.t0.a()     // Catch: java.lang.Throwable -> L58
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L58
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L58
                r6.<init>()     // Catch: java.lang.Throwable -> L58
                java.lang.String r7 = "Exception while executing callback: "
                r6.append(r7)     // Catch: java.lang.Throwable -> L58
                L r7 = r9.f35338a     // Catch: java.lang.Throwable -> L58
                r6.append(r7)     // Catch: java.lang.Throwable -> L58
                java.lang.String r7 = " "
                r6.append(r7)     // Catch: java.lang.Throwable -> L58
                r6.append(r3)     // Catch: java.lang.Throwable -> L58
                java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L58
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L58
                goto L0
            L4c:
                r2 = move-exception
                r1 = r2
                r2 = 1
            L4f:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L56
                throw r1     // Catch: java.lang.Throwable -> L51
            L51:
                r1 = move-exception
                r8 = r2
                r2 = r1
                r1 = r8
                goto L59
            L56:
                r1 = move-exception
                goto L4f
            L58:
                r2 = move-exception
            L59:
                if (r1 == 0) goto L63
                monitor-enter(r9)
                r9.f35342e = r0     // Catch: java.lang.Throwable -> L60
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L60
                goto L63
            L60:
                r0 = move-exception
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L60
                throw r0
            L63:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.t0.b.run():void");
        }
    }

    private void f(a<L> aVar, Object obj) {
        com.google.common.base.a0.F(aVar, "event");
        com.google.common.base.a0.F(obj, AnnotatedPrivateKey.LABEL);
        synchronized (this.f35337a) {
            for (b<L> bVar : this.f35337a) {
                bVar.a(aVar, obj);
            }
        }
    }

    public void b(L l10, Executor executor) {
        com.google.common.base.a0.F(l10, x.a.f29212a);
        com.google.common.base.a0.F(executor, "executor");
        this.f35337a.add(new b<>(l10, executor));
    }

    public void c() {
        for (int i4 = 0; i4 < this.f35337a.size(); i4++) {
            this.f35337a.get(i4).b();
        }
    }

    public void d(a<L> aVar) {
        f(aVar, aVar);
    }

    public void e(a<L> aVar, String str) {
        f(aVar, str);
    }
}
