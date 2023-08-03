package io.reactivex.rxjava3.schedulers;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p7.e;

/* compiled from: Timed.java */
/* loaded from: classes4.dex */
public final class d<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f81535a;

    /* renamed from: b  reason: collision with root package name */
    final long f81536b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f81537c;

    public d(@e T value, long time, @e TimeUnit unit) {
        Objects.requireNonNull(value, "value is null");
        this.f81535a = value;
        this.f81536b = time;
        Objects.requireNonNull(unit, "unit is null");
        this.f81537c = unit;
    }

    public long a() {
        return this.f81536b;
    }

    public long b(@e TimeUnit unit) {
        return unit.convert(this.f81536b, this.f81537c);
    }

    @e
    public TimeUnit c() {
        return this.f81537c;
    }

    @e
    public T d() {
        return this.f81535a;
    }

    public boolean equals(Object other) {
        if (other instanceof d) {
            d dVar = (d) other;
            return Objects.equals(this.f81535a, dVar.f81535a) && this.f81536b == dVar.f81536b && Objects.equals(this.f81537c, dVar.f81537c);
        }
        return false;
    }

    public int hashCode() {
        long j4 = this.f81536b;
        return (((this.f81535a.hashCode() * 31) + ((int) (j4 ^ (j4 >>> 31)))) * 31) + this.f81537c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f81536b + ", unit=" + this.f81537c + ", value=" + this.f81535a + "]";
    }
}
