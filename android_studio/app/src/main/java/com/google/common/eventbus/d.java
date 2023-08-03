package com.google.common.eventbus;

import com.google.common.base.a0;
import com.google.common.collect.v3;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Dispatcher.java */
/* loaded from: classes2.dex */
public abstract class d {

    /* compiled from: Dispatcher.java */
    /* loaded from: classes2.dex */
    private static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private static final b f34040a = new b();

        private b() {
        }

        @Override // com.google.common.eventbus.d
        void a(Object obj, Iterator<g> it) {
            a0.E(obj);
            while (it.hasNext()) {
                it.next().e(obj);
            }
        }
    }

    /* compiled from: Dispatcher.java */
    /* loaded from: classes2.dex */
    private static final class c extends d {

        /* renamed from: a  reason: collision with root package name */
        private final ConcurrentLinkedQueue<a> f34041a;

        /* compiled from: Dispatcher.java */
        /* loaded from: classes2.dex */
        private static final class a {

            /* renamed from: a  reason: collision with root package name */
            private final Object f34042a;

            /* renamed from: b  reason: collision with root package name */
            private final g f34043b;

            private a(Object obj, g gVar) {
                this.f34042a = obj;
                this.f34043b = gVar;
            }
        }

        private c() {
            this.f34041a = v3.f();
        }

        @Override // com.google.common.eventbus.d
        void a(Object obj, Iterator<g> it) {
            a0.E(obj);
            while (it.hasNext()) {
                this.f34041a.add(new a(obj, it.next()));
            }
            while (true) {
                a poll = this.f34041a.poll();
                if (poll == null) {
                    return;
                }
                poll.f34043b.e(poll.f34042a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Dispatcher.java */
    /* renamed from: com.google.common.eventbus.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0242d extends d {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadLocal<Queue<c>> f34044a;

        /* renamed from: b  reason: collision with root package name */
        private final ThreadLocal<Boolean> f34045b;

        /* compiled from: Dispatcher.java */
        /* renamed from: com.google.common.eventbus.d$d$a */
        /* loaded from: classes2.dex */
        class a extends ThreadLocal<Queue<c>> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* renamed from: a */
            public Queue<c> initialValue() {
                return v3.d();
            }
        }

        /* compiled from: Dispatcher.java */
        /* renamed from: com.google.common.eventbus.d$d$b */
        /* loaded from: classes2.dex */
        class b extends ThreadLocal<Boolean> {
            b() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* renamed from: a */
            public Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        /* compiled from: Dispatcher.java */
        /* renamed from: com.google.common.eventbus.d$d$c */
        /* loaded from: classes2.dex */
        private static final class c {

            /* renamed from: a  reason: collision with root package name */
            private final Object f34048a;

            /* renamed from: b  reason: collision with root package name */
            private final Iterator<g> f34049b;

            private c(Object obj, Iterator<g> it) {
                this.f34048a = obj;
                this.f34049b = it;
            }
        }

        private C0242d() {
            this.f34044a = new a();
            this.f34045b = new b();
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0050 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0034 A[Catch: all -> 0x005b, LOOP:1: B:7:0x0034->B:9:0x003e, LOOP_START, TryCatch #0 {all -> 0x005b, blocks: (B:5:0x002c, B:7:0x0034, B:9:0x003e), top: B:16:0x002c }] */
        @Override // com.google.common.eventbus.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void a(java.lang.Object r4, java.util.Iterator<com.google.common.eventbus.g> r5) {
            /*
                r3 = this;
                com.google.common.base.a0.E(r4)
                com.google.common.base.a0.E(r5)
                java.lang.ThreadLocal<java.util.Queue<com.google.common.eventbus.d$d$c>> r0 = r3.f34044a
                java.lang.Object r0 = r0.get()
                java.util.Queue r0 = (java.util.Queue) r0
                com.google.common.eventbus.d$d$c r1 = new com.google.common.eventbus.d$d$c
                r2 = 0
                r1.<init>(r4, r5)
                r0.offer(r1)
                java.lang.ThreadLocal<java.lang.Boolean> r4 = r3.f34045b
                java.lang.Object r4 = r4.get()
                java.lang.Boolean r4 = (java.lang.Boolean) r4
                boolean r4 = r4.booleanValue()
                if (r4 != 0) goto L67
                java.lang.ThreadLocal<java.lang.Boolean> r4 = r3.f34045b
                java.lang.Boolean r5 = java.lang.Boolean.TRUE
                r4.set(r5)
            L2c:
                java.lang.Object r4 = r0.poll()     // Catch: java.lang.Throwable -> L5b
                com.google.common.eventbus.d$d$c r4 = (com.google.common.eventbus.d.C0242d.c) r4     // Catch: java.lang.Throwable -> L5b
                if (r4 == 0) goto L50
            L34:
                java.util.Iterator r5 = com.google.common.eventbus.d.C0242d.c.a(r4)     // Catch: java.lang.Throwable -> L5b
                boolean r5 = r5.hasNext()     // Catch: java.lang.Throwable -> L5b
                if (r5 == 0) goto L2c
                java.util.Iterator r5 = com.google.common.eventbus.d.C0242d.c.a(r4)     // Catch: java.lang.Throwable -> L5b
                java.lang.Object r5 = r5.next()     // Catch: java.lang.Throwable -> L5b
                com.google.common.eventbus.g r5 = (com.google.common.eventbus.g) r5     // Catch: java.lang.Throwable -> L5b
                java.lang.Object r1 = com.google.common.eventbus.d.C0242d.c.b(r4)     // Catch: java.lang.Throwable -> L5b
                r5.e(r1)     // Catch: java.lang.Throwable -> L5b
                goto L34
            L50:
                java.lang.ThreadLocal<java.lang.Boolean> r4 = r3.f34045b
                r4.remove()
                java.lang.ThreadLocal<java.util.Queue<com.google.common.eventbus.d$d$c>> r4 = r3.f34044a
                r4.remove()
                goto L67
            L5b:
                r4 = move-exception
                java.lang.ThreadLocal<java.lang.Boolean> r5 = r3.f34045b
                r5.remove()
                java.lang.ThreadLocal<java.util.Queue<com.google.common.eventbus.d$d$c>> r5 = r3.f34044a
                r5.remove()
                throw r4
            L67:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.eventbus.d.C0242d.a(java.lang.Object, java.util.Iterator):void");
        }
    }

    d() {
    }

    static d b() {
        return b.f34040a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d c() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d d() {
        return new C0242d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj, Iterator<g> it);
}
