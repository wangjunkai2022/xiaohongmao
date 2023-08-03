package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Objects;

/* compiled from: Notification.java */
/* loaded from: classes4.dex */
public final class d0<T> {

    /* renamed from: b  reason: collision with root package name */
    static final d0<Object> f76124b = new d0<>(null);

    /* renamed from: a  reason: collision with root package name */
    final Object f76125a;

    private d0(@p7.f Object value) {
        this.f76125a = value;
    }

    @p7.e
    public static <T> d0<T> a() {
        return (d0<T>) f76124b;
    }

    @p7.e
    public static <T> d0<T> b(@p7.e Throwable error) {
        Objects.requireNonNull(error, "error is null");
        return new d0<>(NotificationLite.error(error));
    }

    @p7.e
    public static <T> d0<T> c(T value) {
        Objects.requireNonNull(value, "value is null");
        return new d0<>(value);
    }

    @p7.f
    public Throwable d() {
        Object obj = this.f76125a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @p7.f
    public T e() {
        Object obj = this.f76125a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f76125a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d0) {
            return Objects.equals(this.f76125a, ((d0) obj).f76125a);
        }
        return false;
    }

    public boolean f() {
        return this.f76125a == null;
    }

    public boolean g() {
        return NotificationLite.isError(this.f76125a);
    }

    public boolean h() {
        Object obj = this.f76125a;
        return (obj == null || NotificationLite.isError(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f76125a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.f76125a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f76125a + "]";
    }
}
