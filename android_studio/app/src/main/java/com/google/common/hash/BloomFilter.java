package com.google.common.hash;

import com.google.common.hash.g;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.a
/* loaded from: classes2.dex */
public final class BloomFilter<T> implements com.google.common.base.b0<T>, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final g.c f34223a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34224b;

    /* renamed from: c  reason: collision with root package name */
    private final Funnel<? super T> f34225c;

    /* renamed from: d  reason: collision with root package name */
    private final c f34226d;

    /* loaded from: classes2.dex */
    private static class b<T> implements Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f34227e = 1;

        /* renamed from: a  reason: collision with root package name */
        final long[] f34228a;

        /* renamed from: b  reason: collision with root package name */
        final int f34229b;

        /* renamed from: c  reason: collision with root package name */
        final Funnel<? super T> f34230c;

        /* renamed from: d  reason: collision with root package name */
        final c f34231d;

        b(BloomFilter<T> bloomFilter) {
            this.f34228a = g.c.g(((BloomFilter) bloomFilter).f34223a.f34287a);
            this.f34229b = ((BloomFilter) bloomFilter).f34224b;
            this.f34230c = ((BloomFilter) bloomFilter).f34225c;
            this.f34231d = ((BloomFilter) bloomFilter).f34226d;
        }

        Object a() {
            return new BloomFilter(new g.c(this.f34228a), this.f34229b, this.f34230c, this.f34231d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface c extends Serializable {
        <T> boolean f(T t9, Funnel<? super T> funnel, int i4, g.c cVar);

        <T> boolean g(T t9, Funnel<? super T> funnel, int i4, g.c cVar);

        int ordinal();
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i4, double d4) {
        return create(funnel, i4, d4);
    }

    @h3.d
    static <T> BloomFilter<T> h(Funnel<? super T> funnel, long j4, double d4, c cVar) {
        com.google.common.base.a0.E(funnel);
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        com.google.common.base.a0.p(i4 >= 0, "Expected insertions (%s) must be >= 0", j4);
        com.google.common.base.a0.u(d4 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d4));
        com.google.common.base.a0.u(d4 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d4));
        com.google.common.base.a0.E(cVar);
        if (i4 == 0) {
            j4 = 1;
        }
        long i10 = i(j4, d4);
        try {
            return new BloomFilter<>(new g.c(i10), j(j4, i10), funnel, cVar);
        } catch (IllegalArgumentException e4) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + i10 + " bits", e4);
        }
    }

    @h3.d
    static long i(long j4, double d4) {
        if (d4 == 0.0d) {
            d4 = Double.MIN_VALUE;
        }
        return (long) (((-j4) * Math.log(d4)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    @h3.d
    static int j(long j4, long j10) {
        return Math.max(1, (int) Math.round((j10 / j4) * Math.log(2.0d)));
    }

    private Object k() {
        return new b(this);
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i4;
        int i10;
        com.google.common.base.a0.F(inputStream, "InputStream");
        com.google.common.base.a0.F(funnel, "Funnel");
        byte b10 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte readByte = dataInputStream.readByte();
            try {
                i10 = com.google.common.primitives.l.p(dataInputStream.readByte());
                try {
                    int readInt = dataInputStream.readInt();
                    try {
                        g gVar = g.values()[readByte];
                        long[] jArr = new long[readInt];
                        for (int i11 = 0; i11 < readInt; i11++) {
                            jArr[i11] = dataInputStream.readLong();
                        }
                        return new BloomFilter<>(new g.c(jArr), i10, funnel, gVar);
                    } catch (RuntimeException e4) {
                        e = e4;
                        b10 = readByte;
                        i4 = readInt;
                        throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b10) + " numHashFunctions: " + i10 + " dataLength: " + i4, e);
                    }
                } catch (RuntimeException e10) {
                    e = e10;
                    b10 = readByte;
                    i4 = -1;
                    throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b10) + " numHashFunctions: " + i10 + " dataLength: " + i4, e);
                }
            } catch (RuntimeException e11) {
                e = e11;
                i10 = -1;
            }
        } catch (RuntimeException e12) {
            e = e12;
            i4 = -1;
            i10 = -1;
        }
    }

    @Override // com.google.common.base.b0
    @Deprecated
    public boolean apply(T t9) {
        return mightContain(t9);
    }

    public long approximateElementCount() {
        double b10 = this.f34223a.b();
        return com.google.common.math.b.q(((-Math.log1p(-(this.f34223a.a() / b10))) * b10) / this.f34224b, RoundingMode.HALF_UP);
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.f34223a.c(), this.f34224b, this.f34225c, this.f34226d);
    }

    @h3.d
    long e() {
        return this.f34223a.b();
    }

    @Override // com.google.common.base.b0
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BloomFilter) {
            BloomFilter bloomFilter = (BloomFilter) obj;
            return this.f34224b == bloomFilter.f34224b && this.f34225c.equals(bloomFilter.f34225c) && this.f34223a.equals(bloomFilter.f34223a) && this.f34226d.equals(bloomFilter.f34226d);
        }
        return false;
    }

    public double expectedFpp() {
        return Math.pow(this.f34223a.a() / e(), this.f34224b);
    }

    public int hashCode() {
        return com.google.common.base.w.b(Integer.valueOf(this.f34224b), this.f34225c, this.f34226d, this.f34223a);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        com.google.common.base.a0.E(bloomFilter);
        return this != bloomFilter && this.f34224b == bloomFilter.f34224b && e() == bloomFilter.e() && this.f34226d.equals(bloomFilter.f34226d) && this.f34225c.equals(bloomFilter.f34225c);
    }

    public boolean mightContain(T t9) {
        return this.f34226d.f(t9, this.f34225c, this.f34224b, this.f34223a);
    }

    @CanIgnoreReturnValue
    public boolean put(T t9) {
        return this.f34226d.g(t9, this.f34225c, this.f34224b, this.f34223a);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        com.google.common.base.a0.E(bloomFilter);
        com.google.common.base.a0.e(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i4 = this.f34224b;
        int i10 = bloomFilter.f34224b;
        com.google.common.base.a0.m(i4 == i10, "BloomFilters must have the same number of hash functions (%s != %s)", i4, i10);
        com.google.common.base.a0.s(e() == bloomFilter.e(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", e(), bloomFilter.e());
        com.google.common.base.a0.y(this.f34226d.equals(bloomFilter.f34226d), "BloomFilters must have equal strategies (%s != %s)", this.f34226d, bloomFilter.f34226d);
        com.google.common.base.a0.y(this.f34225c.equals(bloomFilter.f34225c), "BloomFilters must have equal funnels (%s != %s)", this.f34225c, bloomFilter.f34225c);
        this.f34223a.e(bloomFilter.f34223a);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(com.google.common.primitives.k.a(this.f34226d.ordinal()));
        dataOutputStream.writeByte(com.google.common.primitives.l.a(this.f34224b));
        dataOutputStream.writeInt(this.f34223a.f34287a.length());
        for (int i4 = 0; i4 < this.f34223a.f34287a.length(); i4++) {
            dataOutputStream.writeLong(this.f34223a.f34287a.get(i4));
        }
    }

    private BloomFilter(g.c cVar, int i4, Funnel<? super T> funnel, c cVar2) {
        com.google.common.base.a0.k(i4 > 0, "numHashFunctions (%s) must be > 0", i4);
        com.google.common.base.a0.k(i4 <= 255, "numHashFunctions (%s) must be <= 255", i4);
        this.f34223a = (g.c) com.google.common.base.a0.E(cVar);
        this.f34224b = i4;
        this.f34225c = (Funnel) com.google.common.base.a0.E(funnel);
        this.f34226d = (c) com.google.common.base.a0.E(cVar2);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j4, double d4) {
        return h(funnel, j4, d4, g.f34284b);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i4) {
        return create(funnel, i4);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j4) {
        return create(funnel, j4, 0.03d);
    }
}
