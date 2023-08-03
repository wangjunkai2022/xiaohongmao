package com.google.common.io;

import com.google.common.base.k0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Closer.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class m implements Closeable {

    /* renamed from: d  reason: collision with root package name */
    private static final c f34480d;
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    final c f34481a;

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Closeable> f34482b = new ArrayDeque(4);
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private Throwable f34483c;

    /* compiled from: Closer.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        static final a f34484a = new a();

        a() {
        }

        @Override // com.google.common.io.m.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = l.f34479a;
            Level level = Level.WARNING;
            logger.log(level, "Suppressing exception thrown when closing " + closeable, th2);
        }
    }

    /* compiled from: Closer.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        static final b f34485a = new b();

        /* renamed from: b  reason: collision with root package name */
        static final Method f34486b = b();

        b() {
        }

        private static Method b() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                return null;
            }
        }

        static boolean c() {
            return f34486b != null;
        }

        @Override // com.google.common.io.m.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                f34486b.invoke(th, th2);
            } catch (Throwable unused) {
                a.f34484a.a(closeable, th, th2);
            }
        }
    }

    /* compiled from: Closer.java */
    @h3.d
    /* loaded from: classes2.dex */
    interface c {
        void a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        f34480d = b.c() ? b.f34485a : a.f34484a;
    }

    @h3.d
    m(c cVar) {
        this.f34481a = (c) com.google.common.base.a0.E(cVar);
    }

    public static m a() {
        return new m(f34480d);
    }

    @CanIgnoreReturnValue
    public <C extends Closeable> C b(@NullableDecl C c10) {
        if (c10 != null) {
            this.f34482b.addFirst(c10);
        }
        return c10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th = this.f34483c;
        while (!this.f34482b.isEmpty()) {
            Closeable removeFirst = this.f34482b.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f34481a.a(removeFirst, th, th2);
                }
            }
        }
        if (this.f34483c != null || th == null) {
            return;
        }
        k0.t(th, IOException.class);
        throw new AssertionError(th);
    }

    public RuntimeException d(Throwable th) throws IOException {
        com.google.common.base.a0.E(th);
        this.f34483c = th;
        k0.t(th, IOException.class);
        throw new RuntimeException(th);
    }

    public <X extends Exception> RuntimeException h(Throwable th, Class<X> cls) throws IOException, Exception {
        com.google.common.base.a0.E(th);
        this.f34483c = th;
        k0.t(th, IOException.class);
        k0.t(th, cls);
        throw new RuntimeException(th);
    }

    public <X1 extends Exception, X2 extends Exception> RuntimeException i(Throwable th, Class<X1> cls, Class<X2> cls2) throws IOException, Exception, Exception {
        com.google.common.base.a0.E(th);
        this.f34483c = th;
        k0.t(th, IOException.class);
        k0.u(th, cls, cls2);
        throw new RuntimeException(th);
    }
}
