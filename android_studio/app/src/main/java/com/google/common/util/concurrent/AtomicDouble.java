package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public class AtomicDouble extends Number implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f34999b = 0;

    /* renamed from: a  reason: collision with root package name */
    private transient AtomicLong f35000a;

    public AtomicDouble(double d4) {
        this.f35000a = new AtomicLong(Double.doubleToRawLongBits(d4));
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f35000a = new AtomicLong();
        set(objectInputStream.readDouble());
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    @CanIgnoreReturnValue
    public final double addAndGet(double d4) {
        long j4;
        double longBitsToDouble;
        do {
            j4 = this.f35000a.get();
            longBitsToDouble = Double.longBitsToDouble(j4) + d4;
        } while (!this.f35000a.compareAndSet(j4, Double.doubleToRawLongBits(longBitsToDouble)));
        return longBitsToDouble;
    }

    public final boolean compareAndSet(double d4, double d10) {
        return this.f35000a.compareAndSet(Double.doubleToRawLongBits(d4), Double.doubleToRawLongBits(d10));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.f35000a.get());
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(double d4) {
        long j4;
        double longBitsToDouble;
        do {
            j4 = this.f35000a.get();
            longBitsToDouble = Double.longBitsToDouble(j4);
        } while (!this.f35000a.compareAndSet(j4, Double.doubleToRawLongBits(longBitsToDouble + d4)));
        return longBitsToDouble;
    }

    public final double getAndSet(double d4) {
        return Double.longBitsToDouble(this.f35000a.getAndSet(Double.doubleToRawLongBits(d4)));
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d4) {
        this.f35000a.lazySet(Double.doubleToRawLongBits(d4));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d4) {
        this.f35000a.set(Double.doubleToRawLongBits(d4));
    }

    public String toString() {
        return Double.toString(get());
    }

    public final boolean weakCompareAndSet(double d4, double d10) {
        return this.f35000a.weakCompareAndSet(Double.doubleToRawLongBits(d4), Double.doubleToRawLongBits(d10));
    }

    public AtomicDouble() {
        this(0.0d);
    }
}
