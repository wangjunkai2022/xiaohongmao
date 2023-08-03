package io.reactivex.schedulers;

import java.util.concurrent.TimeUnit;
import m7.e;

/* compiled from: Timed.java */
/* loaded from: classes4.dex */
public final class d<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f81684a;

    /* renamed from: b  reason: collision with root package name */
    final long f81685b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f81686c;

    public d(@e T t9, long j4, @e TimeUnit timeUnit) {
        this.f81684a = t9;
        this.f81685b = j4;
        this.f81686c = (TimeUnit) io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
    }

    public long a() {
        return this.f81685b;
    }

    public long b(@e TimeUnit timeUnit) {
        return timeUnit.convert(this.f81685b, this.f81686c);
    }

    @e
    public TimeUnit c() {
        return this.f81686c;
    }

    @e
    public T d() {
        return this.f81684a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return io.reactivex.internal.functions.b.c(this.f81684a, dVar.f81684a) && this.f81685b == dVar.f81685b && io.reactivex.internal.functions.b.c(this.f81686c, dVar.f81686c);
        }
        return false;
    }

    public int hashCode() {
        T t9 = this.f81684a;
        int hashCode = t9 != null ? t9.hashCode() : 0;
        long j4 = this.f81685b;
        return (((hashCode * 31) + ((int) (j4 ^ (j4 >>> 31)))) * 31) + this.f81686c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f81685b + ", unit=" + this.f81686c + ", value=" + this.f81684a + "]";
    }
}
