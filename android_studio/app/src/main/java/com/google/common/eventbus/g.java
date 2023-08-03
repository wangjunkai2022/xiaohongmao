package com.google.common.eventbus;

import com.google.common.base.a0;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Subscriber.java */
/* loaded from: classes2.dex */
public class g {
    @Weak

    /* renamed from: a  reason: collision with root package name */
    private e f34057a;
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    final Object f34058b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f34059c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f34060d;

    /* compiled from: Subscriber.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f34061a;

        a(Object obj) {
            this.f34061a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                g.this.f(this.f34061a);
            } catch (InvocationTargetException e4) {
                g.this.f34057a.b(e4.getCause(), g.this.c(this.f34061a));
            }
        }
    }

    /* compiled from: Subscriber.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class b extends g {
        /* synthetic */ b(e eVar, Object obj, Method method, a aVar) {
            this(eVar, obj, method);
        }

        @Override // com.google.common.eventbus.g
        void f(Object obj) throws InvocationTargetException {
            synchronized (this) {
                super.f(obj);
            }
        }

        private b(e eVar, Object obj, Method method) {
            super(eVar, obj, method, null);
        }
    }

    /* synthetic */ g(e eVar, Object obj, Method method, a aVar) {
        this(eVar, obj, method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public h c(Object obj) {
        return new h(this.f34057a, obj, this.f34058b, this.f34059c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g d(e eVar, Object obj, Method method) {
        return g(method) ? new g(eVar, obj, method) : new b(eVar, obj, method, null);
    }

    private static boolean g(Method method) {
        return method.getAnnotation(com.google.common.eventbus.a.class) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(Object obj) {
        this.f34060d.execute(new a(obj));
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f34058b == gVar.f34058b && this.f34059c.equals(gVar.f34059c);
        }
        return false;
    }

    @h3.d
    void f(Object obj) throws InvocationTargetException {
        try {
            this.f34059c.invoke(this.f34058b, a0.E(obj));
        } catch (IllegalAccessException e4) {
            throw new Error("Method became inaccessible: " + obj, e4);
        } catch (IllegalArgumentException e10) {
            throw new Error("Method rejected target/argument: " + obj, e10);
        } catch (InvocationTargetException e11) {
            if (e11.getCause() instanceof Error) {
                throw ((Error) e11.getCause());
            }
            throw e11;
        }
    }

    public final int hashCode() {
        return ((this.f34059c.hashCode() + 31) * 31) + System.identityHashCode(this.f34058b);
    }

    private g(e eVar, Object obj, Method method) {
        this.f34057a = eVar;
        this.f34058b = a0.E(obj);
        this.f34059c = method;
        method.setAccessible(true);
        this.f34060d = eVar.a();
    }
}
