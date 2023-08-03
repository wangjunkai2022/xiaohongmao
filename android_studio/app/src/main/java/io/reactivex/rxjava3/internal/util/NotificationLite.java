package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.n0;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes4.dex */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes4.dex */
    static final class a implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81317b = -7482590109178395495L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.f f81318a;

        a(io.reactivex.rxjava3.disposables.f d4) {
            this.f81318a = d4;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f81318a + "]";
        }
    }

    /* loaded from: classes4.dex */
    static final class b implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81319b = -8759979445933046293L;

        /* renamed from: a  reason: collision with root package name */
        final Throwable f81320a;

        b(Throwable e4) {
            this.f81320a = e4;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return Objects.equals(this.f81320a, ((b) obj).f81320a);
            }
            return false;
        }

        public int hashCode() {
            return this.f81320a.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f81320a + "]";
        }
    }

    /* loaded from: classes4.dex */
    static final class c implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81321b = -1322257508628817540L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.e f81322a;

        c(org.reactivestreams.e s9) {
            this.f81322a = s9;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f81322a + "]";
        }
    }

    public static <T> boolean accept(Object o9, org.reactivestreams.d<? super T> s9) {
        if (o9 == COMPLETE) {
            s9.onComplete();
            return true;
        } else if (o9 instanceof b) {
            s9.onError(((b) o9).f81320a);
            return true;
        } else {
            s9.onNext(o9);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object o9, org.reactivestreams.d<? super T> s9) {
        if (o9 == COMPLETE) {
            s9.onComplete();
            return true;
        } else if (o9 instanceof b) {
            s9.onError(((b) o9).f81320a);
            return true;
        } else if (o9 instanceof c) {
            s9.onSubscribe(((c) o9).f81322a);
            return false;
        } else {
            s9.onNext(o9);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(io.reactivex.rxjava3.disposables.f d4) {
        return new a(d4);
    }

    public static Object error(Throwable e4) {
        return new b(e4);
    }

    public static io.reactivex.rxjava3.disposables.f getDisposable(Object o9) {
        return ((a) o9).f81318a;
    }

    public static Throwable getError(Object o9) {
        return ((b) o9).f81320a;
    }

    public static org.reactivestreams.e getSubscription(Object o9) {
        return ((c) o9).f81322a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object o9) {
        return o9;
    }

    public static boolean isComplete(Object o9) {
        return o9 == COMPLETE;
    }

    public static boolean isDisposable(Object o9) {
        return o9 instanceof a;
    }

    public static boolean isError(Object o9) {
        return o9 instanceof b;
    }

    public static boolean isSubscription(Object o9) {
        return o9 instanceof c;
    }

    public static <T> Object next(T value) {
        return value;
    }

    public static Object subscription(org.reactivestreams.e s9) {
        return new c(s9);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object o9, n0<? super T> observer) {
        if (o9 == COMPLETE) {
            observer.onComplete();
            return true;
        } else if (o9 instanceof b) {
            observer.onError(((b) o9).f81320a);
            return true;
        } else {
            observer.onNext(o9);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object o9, n0<? super T> observer) {
        if (o9 == COMPLETE) {
            observer.onComplete();
            return true;
        } else if (o9 instanceof b) {
            observer.onError(((b) o9).f81320a);
            return true;
        } else if (o9 instanceof a) {
            observer.onSubscribe(((a) o9).f81318a);
            return false;
        } else {
            observer.onNext(o9);
            return false;
        }
    }
}
