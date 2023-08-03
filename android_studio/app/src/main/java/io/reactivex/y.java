package io.reactivex;

import io.reactivex.internal.util.NotificationLite;

/* compiled from: Notification.java */
/* loaded from: classes3.dex */
public final class y<T> {

    /* renamed from: b  reason: collision with root package name */
    static final y<Object> f81815b = new y<>(null);

    /* renamed from: a  reason: collision with root package name */
    final Object f81816a;

    private y(Object obj) {
        this.f81816a = obj;
    }

    @m7.e
    public static <T> y<T> a() {
        return (y<T>) f81815b;
    }

    @m7.e
    public static <T> y<T> b(@m7.e Throwable th) {
        io.reactivex.internal.functions.b.g(th, "error is null");
        return new y<>(NotificationLite.error(th));
    }

    @m7.e
    public static <T> y<T> c(@m7.e T t9) {
        io.reactivex.internal.functions.b.g(t9, "value is null");
        return new y<>(t9);
    }

    @m7.f
    public Throwable d() {
        Object obj = this.f81816a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @m7.f
    public T e() {
        Object obj = this.f81816a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f81816a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof y) {
            return io.reactivex.internal.functions.b.c(this.f81816a, ((y) obj).f81816a);
        }
        return false;
    }

    public boolean f() {
        return this.f81816a == null;
    }

    public boolean g() {
        return NotificationLite.isError(this.f81816a);
    }

    public boolean h() {
        Object obj = this.f81816a;
        return (obj == null || NotificationLite.isError(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f81816a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.f81816a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f81816a + "]";
    }
}
