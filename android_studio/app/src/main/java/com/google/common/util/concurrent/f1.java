package com.google.common.util.concurrent;

import com.google.common.collect.o4;
import com.google.common.collect.p3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: SimpleTimeLimiter.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class f1 implements j1 {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f35126a;

    /* compiled from: SimpleTimeLimiter.java */
    /* loaded from: classes2.dex */
    class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f35127a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f35128b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TimeUnit f35129c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Set f35130d;

        /* compiled from: SimpleTimeLimiter.java */
        /* renamed from: com.google.common.util.concurrent.f1$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class CallableC0271a implements Callable<Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Method f35132a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Object[] f35133b;

            CallableC0271a(Method method, Object[] objArr) {
                this.f35132a = method;
                this.f35133b = objArr;
            }

            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                try {
                    return this.f35132a.invoke(a.this.f35127a, this.f35133b);
                } catch (InvocationTargetException e4) {
                    throw f1.n(e4, false);
                }
            }
        }

        a(Object obj, long j4, TimeUnit timeUnit, Set set) {
            this.f35127a = obj;
            this.f35128b = j4;
            this.f35129c = timeUnit;
            this.f35130d = set;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            return f1.this.h(new CallableC0271a(method, objArr), this.f35128b, this.f35129c, this.f35130d.contains(method));
        }
    }

    private f1(ExecutorService executorService) {
        this.f35126a = (ExecutorService) com.google.common.base.a0.E(executorService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T h(Callable<T> callable, long j4, TimeUnit timeUnit, boolean z9) throws Exception {
        com.google.common.base.a0.E(callable);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        Future<T> submit = this.f35126a.submit(callable);
        try {
            if (z9) {
                try {
                    return submit.get(j4, timeUnit);
                } catch (InterruptedException e4) {
                    submit.cancel(true);
                    throw e4;
                }
            }
            return (T) n1.e(submit, j4, timeUnit);
        } catch (ExecutionException e10) {
            throw n(e10, true);
        } catch (TimeoutException e11) {
            submit.cancel(true);
            throw new UncheckedTimeoutException(e11);
        }
    }

    private static void i(long j4) {
        com.google.common.base.a0.p(j4 > 0, "timeout must be positive: %s", j4);
    }

    public static f1 j(ExecutorService executorService) {
        return new f1(executorService);
    }

    private static boolean k(Method method) {
        for (Class<?> cls : method.getExceptionTypes()) {
            if (cls == InterruptedException.class) {
                return true;
            }
        }
        return false;
    }

    private static Set<Method> l(Class<?> cls) {
        Method[] methods;
        HashSet u9 = o4.u();
        for (Method method : cls.getMethods()) {
            if (k(method)) {
                u9.add(method);
            }
        }
        return u9;
    }

    private static <T> T m(Class<T> cls, InvocationHandler invocationHandler) {
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Exception n(Exception exc, boolean z9) throws Exception {
        Throwable cause = exc.getCause();
        if (cause != null) {
            if (z9) {
                cause.setStackTrace((StackTraceElement[]) p3.f(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
            }
            if (!(cause instanceof Exception)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw exc;
            }
            throw ((Exception) cause);
        }
        throw exc;
    }

    private void o(Throwable th) throws ExecutionException {
        if (!(th instanceof Error)) {
            if (th instanceof RuntimeException) {
                throw new UncheckedExecutionException(th);
            }
            throw new ExecutionException(th);
        }
        throw new ExecutionError((Error) th);
    }

    private void p(Throwable th) {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        throw new UncheckedExecutionException(th);
    }

    @Override // com.google.common.util.concurrent.j1
    public void a(Runnable runnable, long j4, TimeUnit timeUnit) throws TimeoutException, InterruptedException {
        com.google.common.base.a0.E(runnable);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        Future<?> submit = this.f35126a.submit(runnable);
        try {
            submit.get(j4, timeUnit);
        } catch (InterruptedException e4) {
            e = e4;
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e10) {
            p(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            e = e11;
            submit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.j1
    public <T> T b(T t9, Class<T> cls, long j4, TimeUnit timeUnit) {
        com.google.common.base.a0.E(t9);
        com.google.common.base.a0.E(cls);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        com.google.common.base.a0.e(cls.isInterface(), "interfaceType must be an interface type");
        return (T) m(cls, new a(t9, j4, timeUnit, l(cls)));
    }

    @Override // com.google.common.util.concurrent.j1
    public void c(Runnable runnable, long j4, TimeUnit timeUnit) throws TimeoutException {
        com.google.common.base.a0.E(runnable);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        Future<?> submit = this.f35126a.submit(runnable);
        try {
            n1.e(submit, j4, timeUnit);
        } catch (ExecutionException e4) {
            p(e4.getCause());
            throw new AssertionError();
        } catch (TimeoutException e10) {
            submit.cancel(true);
            throw e10;
        }
    }

    @Override // com.google.common.util.concurrent.j1
    @CanIgnoreReturnValue
    public <T> T d(Callable<T> callable, long j4, TimeUnit timeUnit) throws TimeoutException, ExecutionException {
        com.google.common.base.a0.E(callable);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        Future<T> submit = this.f35126a.submit(callable);
        try {
            return (T) n1.e(submit, j4, timeUnit);
        } catch (ExecutionException e4) {
            o(e4.getCause());
            throw new AssertionError();
        } catch (TimeoutException e10) {
            submit.cancel(true);
            throw e10;
        }
    }

    @Override // com.google.common.util.concurrent.j1
    @CanIgnoreReturnValue
    public <T> T e(Callable<T> callable, long j4, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        com.google.common.base.a0.E(callable);
        com.google.common.base.a0.E(timeUnit);
        i(j4);
        Future<T> submit = this.f35126a.submit(callable);
        try {
            return submit.get(j4, timeUnit);
        } catch (InterruptedException e4) {
            e = e4;
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e10) {
            o(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            e = e11;
            submit.cancel(true);
            throw e;
        }
    }
}
