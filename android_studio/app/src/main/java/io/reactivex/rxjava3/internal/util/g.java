package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.exceptions.CompositeException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ExceptionHelper.java */
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final Throwable f81331a = new a();

    /* compiled from: ExceptionHelper.java */
    /* loaded from: classes4.dex */
    static final class a extends Throwable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f81332a = -4649703670690200604L;

        a() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    private g() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean a(AtomicReference<Throwable> field, Throwable exception) {
        Throwable th;
        do {
            th = field.get();
            if (th == f81331a) {
                return false;
            }
        } while (!field.compareAndSet(th, th == null ? exception : new CompositeException(th, exception)));
        return true;
    }

    public static NullPointerException b(String prefix) {
        return new NullPointerException(e(prefix));
    }

    public static List<Throwable> c(Throwable t9) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.offer(t9);
        while (!arrayDeque.isEmpty()) {
            Throwable th = (Throwable) arrayDeque.removeFirst();
            if (th instanceof CompositeException) {
                List<Throwable> exceptions = ((CompositeException) th).getExceptions();
                for (int size = exceptions.size() - 1; size >= 0; size--) {
                    arrayDeque.offerFirst(exceptions.get(size));
                }
            } else {
                arrayList.add(th);
            }
        }
        return arrayList;
    }

    public static <T> T d(T value, String prefix) {
        if (value != null) {
            return value;
        }
        throw b(prefix);
    }

    public static String e(String prefix) {
        return prefix + " Null values are generally not allowed in 3.x operators and sources.";
    }

    public static Throwable f(AtomicReference<Throwable> field) {
        Throwable th = field.get();
        Throwable th2 = f81331a;
        return th != th2 ? field.getAndSet(th2) : th;
    }

    public static <E extends Throwable> Exception g(Throwable e4) throws Throwable {
        if (e4 instanceof Exception) {
            return (Exception) e4;
        }
        throw e4;
    }

    public static String h(long timeout, TimeUnit unit) {
        return "The source did not signal an event for " + timeout + " " + unit.toString().toLowerCase() + " and has been terminated.";
    }

    public static RuntimeException i(Throwable error) {
        if (!(error instanceof Error)) {
            if (error instanceof RuntimeException) {
                return (RuntimeException) error;
            }
            return new RuntimeException(error);
        }
        throw ((Error) error);
    }
}
