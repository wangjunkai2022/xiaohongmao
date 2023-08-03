package com.google.common.base;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Throwables.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class k0 {
    @h3.c

    /* renamed from: a  reason: collision with root package name */
    private static final String f32270a = "sun.misc.JavaLangAccess";
    @h3.c
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    static final String f32271b = "sun.misc.SharedSecrets";
    @h3.c
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    private static final Object f32272c;
    @h3.c
    @NullableDecl

    /* renamed from: d  reason: collision with root package name */
    private static final Method f32273d;
    @h3.c
    @NullableDecl

    /* renamed from: e  reason: collision with root package name */
    private static final Method f32274e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Throwables.java */
    /* loaded from: classes2.dex */
    public static class a extends AbstractList<StackTraceElement> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f32275a;

        a(Throwable th) {
            this.f32275a = th;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public StackTraceElement get(int i4) {
            return (StackTraceElement) k0.m(k0.f32273d, k0.f32272c, this.f32275a, Integer.valueOf(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return ((Integer) k0.m(k0.f32274e, k0.f32272c, this.f32275a)).intValue();
        }
    }

    static {
        Object h4 = h();
        f32272c = h4;
        f32273d = h4 == null ? null : g();
        f32274e = h4 != null ? k() : null;
    }

    private k0() {
    }

    @h3.a
    public static List<Throwable> e(Throwable th) {
        a0.E(th);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(th);
        boolean z9 = false;
        Throwable th2 = th;
        while (true) {
            th = th.getCause();
            if (th != null) {
                arrayList.add(th);
                if (th == th2) {
                    throw new IllegalArgumentException("Loop in causal chain detected.", th);
                }
                if (z9) {
                    th2 = th2.getCause();
                }
                z9 = !z9;
            } else {
                return Collections.unmodifiableList(arrayList);
            }
        }
    }

    @h3.c
    @h3.a
    public static <X extends Throwable> X f(Throwable th, Class<X> cls) {
        try {
            return cls.cast(th.getCause());
        } catch (ClassCastException e4) {
            e4.initCause(th);
            throw e4;
        }
    }

    @h3.c
    @NullableDecl
    private static Method g() {
        return i("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @h3.c
    @NullableDecl
    private static Object h() {
        try {
            return Class.forName(f32271b, false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e4) {
            throw e4;
        } catch (Throwable unused) {
            return null;
        }
    }

    @h3.c
    @NullableDecl
    private static Method i(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName(f32270a, false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e4) {
            throw e4;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Throwable j(Throwable th) {
        boolean z9 = false;
        Throwable th2 = th;
        while (true) {
            Throwable cause = th.getCause();
            if (cause == null) {
                return th;
            }
            if (cause == th2) {
                throw new IllegalArgumentException("Loop in causal chain detected.", cause);
            }
            if (z9) {
                th2 = th2.getCause();
            }
            z9 = !z9;
            th = cause;
        }
    }

    @h3.c
    @NullableDecl
    private static Method k() {
        try {
            Method i4 = i("getStackTraceDepth", Throwable.class);
            if (i4 == null) {
                return null;
            }
            i4.invoke(h(), new Throwable());
            return i4;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @h3.c
    public static String l(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @h3.c
    public static Object m(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (InvocationTargetException e10) {
            throw q(e10.getCause());
        }
    }

    @h3.c
    private static List<StackTraceElement> n(Throwable th) {
        a0.E(th);
        return new a(th);
    }

    @h3.c
    @h3.a
    public static List<StackTraceElement> o(Throwable th) {
        if (p()) {
            return n(th);
        }
        return Collections.unmodifiableList(Arrays.asList(th.getStackTrace()));
    }

    @h3.c
    @h3.a
    public static boolean p() {
        return (f32273d == null || f32274e == null) ? false : true;
    }

    @CanIgnoreReturnValue
    @h3.c
    @Deprecated
    public static RuntimeException q(Throwable th) {
        w(th);
        throw new RuntimeException(th);
    }

    @h3.c
    @Deprecated
    public static <X extends Throwable> void r(@NullableDecl Throwable th, Class<X> cls) throws Throwable {
        if (th != null) {
            v(th, cls);
        }
    }

    @h3.c
    @Deprecated
    public static void s(@NullableDecl Throwable th) {
        if (th != null) {
            w(th);
        }
    }

    @h3.c
    public static <X extends Throwable> void t(@NullableDecl Throwable th, Class<X> cls) throws Throwable {
        r(th, cls);
        s(th);
    }

    @h3.c
    public static <X1 extends Throwable, X2 extends Throwable> void u(@NullableDecl Throwable th, Class<X1> cls, Class<X2> cls2) throws Throwable, Throwable {
        a0.E(cls2);
        r(th, cls);
        t(th, cls2);
    }

    @h3.c
    public static <X extends Throwable> void v(Throwable th, Class<X> cls) throws Throwable {
        a0.E(th);
        if (cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static void w(Throwable th) {
        a0.E(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }
}
