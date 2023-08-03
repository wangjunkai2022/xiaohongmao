package io.sentry;

import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Stack.java */
/* loaded from: classes4.dex */
public final class i5 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Deque<a> f83303a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final o0 f83304b;

    public i5(@m8.g o0 o0Var, @m8.g a aVar) {
        LinkedBlockingDeque linkedBlockingDeque = new LinkedBlockingDeque();
        this.f83303a = linkedBlockingDeque;
        this.f83304b = (o0) io.sentry.util.l.c(o0Var, "logger is required");
        linkedBlockingDeque.push((a) io.sentry.util.l.c(aVar, "rootStackItem is required"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public a a() {
        return this.f83303a.peek();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        synchronized (this.f83303a) {
            if (this.f83303a.size() != 1) {
                this.f83303a.pop();
            } else {
                this.f83304b.c(SentryLevel.WARNING, "Attempt to pop the root scope.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@m8.g a aVar) {
        this.f83303a.push(aVar);
    }

    int d() {
        return this.f83303a.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Stack.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final SentryOptions f83305a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private volatile s0 f83306b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private volatile r2 f83307c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(@m8.g SentryOptions sentryOptions, @m8.g s0 s0Var, @m8.g r2 r2Var) {
            this.f83306b = (s0) io.sentry.util.l.c(s0Var, "ISentryClient is required.");
            this.f83307c = (r2) io.sentry.util.l.c(r2Var, "Scope is required.");
            this.f83305a = (SentryOptions) io.sentry.util.l.c(sentryOptions, "Options is required");
        }

        @m8.g
        public s0 a() {
            return this.f83306b;
        }

        @m8.g
        public SentryOptions b() {
            return this.f83305a;
        }

        @m8.g
        public r2 c() {
            return this.f83307c;
        }

        public void d(@m8.g s0 s0Var) {
            this.f83306b = s0Var;
        }

        a(@m8.g a aVar) {
            this.f83305a = aVar.f83305a;
            this.f83306b = aVar.f83306b;
            this.f83307c = new r2(aVar.f83307c);
        }
    }

    public i5(@m8.g i5 i5Var) {
        this(i5Var.f83304b, new a(i5Var.f83303a.getLast()));
        Iterator<a> descendingIterator = i5Var.f83303a.descendingIterator();
        if (descendingIterator.hasNext()) {
            descendingIterator.next();
        }
        while (descendingIterator.hasNext()) {
            c(new a(descendingIterator.next()));
        }
    }
}
