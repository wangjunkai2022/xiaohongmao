package com.google.common.util.concurrent;

import com.google.common.primitives.ImmutableLongArray;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;
import okhttp3.HttpUrl;

@h3.c
/* loaded from: classes2.dex */
public class AtomicDoubleArray implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f35001b = 0;

    /* renamed from: a  reason: collision with root package name */
    private transient AtomicLongArray f35002a;

    public AtomicDoubleArray(int i4) {
        this.f35002a = new AtomicLongArray(i4);
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        ImmutableLongArray.c builder = ImmutableLongArray.builder();
        for (int i4 = 0; i4 < readInt; i4++) {
            builder.a(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.f35002a = new AtomicLongArray(builder.f().toArray());
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i4 = 0; i4 < length; i4++) {
            objectOutputStream.writeDouble(get(i4));
        }
    }

    @CanIgnoreReturnValue
    public double addAndGet(int i4, double d4) {
        long j4;
        double longBitsToDouble;
        do {
            j4 = this.f35002a.get(i4);
            longBitsToDouble = Double.longBitsToDouble(j4) + d4;
        } while (!this.f35002a.compareAndSet(i4, j4, Double.doubleToRawLongBits(longBitsToDouble)));
        return longBitsToDouble;
    }

    public final boolean compareAndSet(int i4, double d4, double d10) {
        return this.f35002a.compareAndSet(i4, Double.doubleToRawLongBits(d4), Double.doubleToRawLongBits(d10));
    }

    public final double get(int i4) {
        return Double.longBitsToDouble(this.f35002a.get(i4));
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(int i4, double d4) {
        long j4;
        double longBitsToDouble;
        do {
            j4 = this.f35002a.get(i4);
            longBitsToDouble = Double.longBitsToDouble(j4);
        } while (!this.f35002a.compareAndSet(i4, j4, Double.doubleToRawLongBits(longBitsToDouble + d4)));
        return longBitsToDouble;
    }

    public final double getAndSet(int i4, double d4) {
        return Double.longBitsToDouble(this.f35002a.getAndSet(i4, Double.doubleToRawLongBits(d4)));
    }

    public final void lazySet(int i4, double d4) {
        this.f35002a.lazySet(i4, Double.doubleToRawLongBits(d4));
    }

    public final int length() {
        return this.f35002a.length();
    }

    public final void set(int i4, double d4) {
        this.f35002a.set(i4, Double.doubleToRawLongBits(d4));
    }

    public String toString() {
        int length = length() - 1;
        if (length == -1) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder((length + 1) * 19);
        sb.append('[');
        int i4 = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.f35002a.get(i4)));
            if (i4 == length) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(',');
            sb.append(' ');
            i4++;
        }
    }

    public final boolean weakCompareAndSet(int i4, double d4, double d10) {
        return this.f35002a.weakCompareAndSet(i4, Double.doubleToRawLongBits(d4), Double.doubleToRawLongBits(d10));
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i4 = 0; i4 < length; i4++) {
            jArr[i4] = Double.doubleToRawLongBits(dArr[i4]);
        }
        this.f35002a = new AtomicLongArray(jArr);
    }
}
