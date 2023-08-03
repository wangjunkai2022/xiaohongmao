package io.reactivex.internal.util;

import io.reactivex.g0;
import java.io.Serializable;

/* loaded from: classes4.dex */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes4.dex */
    static final class a implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75902b = -7482590109178395495L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.c f75903a;

        a(io.reactivex.disposables.c cVar) {
            this.f75903a = cVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f75903a + "]";
        }
    }

    /* loaded from: classes4.dex */
    static final class b implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75904b = -8759979445933046293L;

        /* renamed from: a  reason: collision with root package name */
        final Throwable f75905a;

        b(Throwable th) {
            this.f75905a = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return io.reactivex.internal.functions.b.c(this.f75905a, ((b) obj).f75905a);
            }
            return false;
        }

        public int hashCode() {
            return this.f75905a.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f75905a + "]";
        }
    }

    /* loaded from: classes4.dex */
    static final class c implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75906b = -1322257508628817540L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.e f75907a;

        c(org.reactivestreams.e eVar) {
            this.f75907a = eVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f75907a + "]";
        }
    }

    public static <T> boolean accept(Object obj, org.reactivestreams.d<? super T> dVar) {
        if (obj == COMPLETE) {
            dVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            dVar.onError(((b) obj).f75905a);
            return true;
        } else {
            dVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, org.reactivestreams.d<? super T> dVar) {
        if (obj == COMPLETE) {
            dVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            dVar.onError(((b) obj).f75905a);
            return true;
        } else if (obj instanceof c) {
            dVar.onSubscribe(((c) obj).f75907a);
            return false;
        } else {
            dVar.onNext(obj);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(io.reactivex.disposables.c cVar) {
        return new a(cVar);
    }

    public static Object error(Throwable th) {
        return new b(th);
    }

    public static io.reactivex.disposables.c getDisposable(Object obj) {
        return ((a) obj).f75903a;
    }

    public static Throwable getError(Object obj) {
        return ((b) obj).f75905a;
    }

    public static org.reactivestreams.e getSubscription(Object obj) {
        return ((c) obj).f75907a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof a;
    }

    public static boolean isError(Object obj) {
        return obj instanceof b;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof c;
    }

    public static <T> Object next(T t9) {
        return t9;
    }

    public static Object subscription(org.reactivestreams.e eVar) {
        return new c(eVar);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object obj, g0<? super T> g0Var) {
        if (obj == COMPLETE) {
            g0Var.onComplete();
            return true;
        } else if (obj instanceof b) {
            g0Var.onError(((b) obj).f75905a);
            return true;
        } else {
            g0Var.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, g0<? super T> g0Var) {
        if (obj == COMPLETE) {
            g0Var.onComplete();
            return true;
        } else if (obj instanceof b) {
            g0Var.onError(((b) obj).f75905a);
            return true;
        } else if (obj instanceof a) {
            g0Var.onSubscribe(((a) obj).f75903a);
            return false;
        } else {
            g0Var.onNext(obj);
            return false;
        }
    }
}
