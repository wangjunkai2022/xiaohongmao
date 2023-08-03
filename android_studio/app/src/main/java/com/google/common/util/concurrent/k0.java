package com.google.common.util.concurrent;

import com.google.common.collect.s3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FuturesGetChecked.java */
@h3.c
/* loaded from: classes2.dex */
public final class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static final s3<Constructor<?>> f35269a = s3.B().F(new a()).G();

    /* compiled from: FuturesGetChecked.java */
    /* loaded from: classes2.dex */
    static class a implements com.google.common.base.q<Constructor<?>, Boolean> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FuturesGetChecked.java */
    @h3.d
    /* loaded from: classes2.dex */
    public interface b {
        void a(Class<? extends Exception> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FuturesGetChecked.java */
    @h3.d
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        static final String f35270a = c.class.getName() + "$ClassValueValidator";

        /* renamed from: b  reason: collision with root package name */
        static final b f35271b = a();

        /* compiled from: FuturesGetChecked.java */
        @IgnoreJRERequirement
        /* loaded from: classes2.dex */
        enum a implements b {
            INSTANCE;
            

            /* renamed from: b  reason: collision with root package name */
            private static final ClassValue<Boolean> f35273b = new C0274a();

            /* compiled from: FuturesGetChecked.java */
            /* renamed from: com.google.common.util.concurrent.k0$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            static class C0274a extends ClassValue<Boolean> {
                C0274a() {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* renamed from: a */
                public Boolean b(Class<?> cls) {
                    k0.b(cls.asSubclass(Exception.class));
                    return Boolean.TRUE;
                }
            }

            @Override // com.google.common.util.concurrent.k0.b
            public void a(Class<? extends Exception> cls) {
                f35273b.get(cls);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FuturesGetChecked.java */
        /* loaded from: classes2.dex */
        public enum b implements b {
            INSTANCE;
            

            /* renamed from: b  reason: collision with root package name */
            private static final Set<WeakReference<Class<? extends Exception>>> f35276b = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.k0.b
            public void a(Class<? extends Exception> cls) {
                for (WeakReference<Class<? extends Exception>> weakReference : f35276b) {
                    if (cls.equals(weakReference.get())) {
                        return;
                    }
                }
                k0.b(cls);
                Set<WeakReference<Class<? extends Exception>>> set = f35276b;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        static b a() {
            try {
                return (b) Class.forName(f35270a).getEnumConstants()[0];
            } catch (Throwable unused) {
                return k0.l();
            }
        }
    }

    private k0() {
    }

    private static b a() {
        return c.f35271b;
    }

    @h3.d
    static void b(Class<? extends Exception> cls) {
        com.google.common.base.a0.u(h(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        com.google.common.base.a0.u(g(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    @h3.d
    static b c() {
        return c.a.INSTANCE;
    }

    @CanIgnoreReturnValue
    @h3.d
    static <V, X extends Exception> V d(b bVar, Future<V> future, Class<X> cls) throws Exception {
        bVar.a(cls);
        try {
            return future.get();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            throw j(cls, e4);
        } catch (ExecutionException e10) {
            m(e10.getCause(), cls);
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V e(Future<V> future, Class<X> cls) throws Exception {
        return (V) d(a(), future, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V f(Future<V> future, Class<X> cls, long j4, TimeUnit timeUnit) throws Exception {
        a().a(cls);
        try {
            return future.get(j4, timeUnit);
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            throw j(cls, e4);
        } catch (ExecutionException e10) {
            m(e10.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e11) {
            throw j(cls, e11);
        }
    }

    private static boolean g(Class<? extends Exception> cls) {
        try {
            j(cls, new Exception());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @h3.d
    static boolean h(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    @NullableDecl
    private static <X> X i(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
            Class<?> cls = parameterTypes[i4];
            if (cls.equals(String.class)) {
                objArr[i4] = th.toString();
            } else if (!cls.equals(Throwable.class)) {
                return null;
            } else {
                objArr[i4] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static <X extends Exception> X j(Class<X> cls, Throwable th) {
        for (Constructor constructor : k(Arrays.asList(cls.getConstructors()))) {
            X x9 = (X) i(constructor, th);
            if (x9 != null) {
                if (x9.getCause() == null) {
                    x9.initCause(th);
                }
                return x9;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    private static <X extends Exception> List<Constructor<X>> k(List<Constructor<X>> list) {
        return (List<Constructor<X>>) f35269a.H(list);
    }

    @h3.d
    static b l() {
        return c.b.INSTANCE;
    }

    private static <X extends Exception> void m(Throwable th, Class<X> cls) throws Exception {
        if (!(th instanceof Error)) {
            if (th instanceof RuntimeException) {
                throw new UncheckedExecutionException(th);
            }
            throw j(cls, th);
        }
        throw new ExecutionError((Error) th);
    }
}
