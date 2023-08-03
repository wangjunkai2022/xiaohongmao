package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.qennnsad.aknkaksd.data.repository.f;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import m8.g;

/* compiled from: Random.kt */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b'\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016¨\u0006\u0018"}, d2 = {"Lkotlin/random/Random;", "", "()V", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", f.f47745b, "nextDouble", "", "until", TypedValues.Transition.S_FROM, "nextFloat", "", "nextInt", "nextLong", "", "Default", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class Random {
    @g
    public static final Default Default = new Default(null);
    @g
    private static final Random defaultRandom = PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();

    /* compiled from: Random.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0019H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "defaultRandom", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", f.f47745b, "nextDouble", "", "until", TypedValues.Transition.S_FROM, "nextFloat", "", "nextInt", "nextLong", "", "writeReplace", "", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Default extends Random implements Serializable {

        /* compiled from: Random.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/random/Random$Default$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "serialVersionUID", "", "readResolve", "", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes4.dex */
        private static final class Serialized implements Serializable {
            @g
            public static final Serialized INSTANCE = new Serialized();
            private static final long serialVersionUID = 0;

            private Serialized() {
            }

            private final Object readResolve() {
                return Random.Default;
            }
        }

        private Default() {
        }

        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object writeReplace() {
            return Serialized.INSTANCE;
        }

        @Override // kotlin.random.Random
        public int nextBits(int i4) {
            return Random.defaultRandom.nextBits(i4);
        }

        @Override // kotlin.random.Random
        public boolean nextBoolean() {
            return Random.defaultRandom.nextBoolean();
        }

        @Override // kotlin.random.Random
        @g
        public byte[] nextBytes(@g byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.defaultRandom.nextBytes(array);
        }

        @Override // kotlin.random.Random
        public double nextDouble() {
            return Random.defaultRandom.nextDouble();
        }

        @Override // kotlin.random.Random
        public float nextFloat() {
            return Random.defaultRandom.nextFloat();
        }

        @Override // kotlin.random.Random
        public int nextInt() {
            return Random.defaultRandom.nextInt();
        }

        @Override // kotlin.random.Random
        public long nextLong() {
            return Random.defaultRandom.nextLong();
        }

        @Override // kotlin.random.Random
        @g
        public byte[] nextBytes(int i4) {
            return Random.defaultRandom.nextBytes(i4);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double d4) {
            return Random.defaultRandom.nextDouble(d4);
        }

        @Override // kotlin.random.Random
        public int nextInt(int i4) {
            return Random.defaultRandom.nextInt(i4);
        }

        @Override // kotlin.random.Random
        public long nextLong(long j4) {
            return Random.defaultRandom.nextLong(j4);
        }

        @Override // kotlin.random.Random
        @g
        public byte[] nextBytes(@g byte[] array, int i4, int i10) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.defaultRandom.nextBytes(array, i4, i10);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double d4, double d10) {
            return Random.defaultRandom.nextDouble(d4, d10);
        }

        @Override // kotlin.random.Random
        public int nextInt(int i4, int i10) {
            return Random.defaultRandom.nextInt(i4, i10);
        }

        @Override // kotlin.random.Random
        public long nextLong(long j4, long j10) {
            return Random.defaultRandom.nextLong(j4, j10);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i4, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i4 = 0;
            }
            if ((i11 & 4) != 0) {
                i10 = bArr.length;
            }
            return random.nextBytes(bArr, i4, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
    }

    public abstract int nextBits(int i4);

    public boolean nextBoolean() {
        return nextBits(1) != 0;
    }

    @g
    public byte[] nextBytes(@g byte[] array, int i4, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (!(new IntRange(0, array.length).contains(i4) && new IntRange(0, array.length).contains(i10))) {
            throw new IllegalArgumentException(("fromIndex (" + i4 + ") or toIndex (" + i10 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (i4 <= i10) {
            int i11 = (i10 - i4) / 4;
            for (int i12 = 0; i12 < i11; i12++) {
                int nextInt = nextInt();
                array[i4] = (byte) nextInt;
                array[i4 + 1] = (byte) (nextInt >>> 8);
                array[i4 + 2] = (byte) (nextInt >>> 16);
                array[i4 + 3] = (byte) (nextInt >>> 24);
                i4 += 4;
            }
            int i13 = i10 - i4;
            int nextBits = nextBits(i13 * 8);
            for (int i14 = 0; i14 < i13; i14++) {
                array[i4 + i14] = (byte) (nextBits >>> (i14 * 8));
            }
            return array;
        }
        throw new IllegalArgumentException(("fromIndex (" + i4 + ") must be not greater than toIndex (" + i10 + ").").toString());
    }

    public double nextDouble() {
        return PlatformRandomKt.doubleFromParts(nextBits(26), nextBits(27));
    }

    public float nextFloat() {
        return nextBits(24) / 1.6777216E7f;
    }

    public int nextInt() {
        return nextBits(32);
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public double nextDouble(double d4) {
        return nextDouble(0.0d, d4);
    }

    public int nextInt(int i4) {
        return nextInt(0, i4);
    }

    public long nextLong(long j4) {
        return nextLong(0L, j4);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public double nextDouble(double r7, double r9) {
        /*
            r6 = this;
            kotlin.random.RandomKt.checkRangeBounds(r7, r9)
            double r0 = r9 - r7
            boolean r2 = java.lang.Double.isInfinite(r0)
            if (r2 == 0) goto L3e
            boolean r2 = java.lang.Double.isInfinite(r7)
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L1b
            boolean r2 = java.lang.Double.isNaN(r7)
            if (r2 != 0) goto L1b
            r2 = 1
            goto L1c
        L1b:
            r2 = 0
        L1c:
            if (r2 == 0) goto L3e
            boolean r2 = java.lang.Double.isInfinite(r9)
            if (r2 != 0) goto L2b
            boolean r2 = java.lang.Double.isNaN(r9)
            if (r2 != 0) goto L2b
            goto L2c
        L2b:
            r3 = 0
        L2c:
            if (r3 == 0) goto L3e
            double r0 = r6.nextDouble()
            r2 = 2
            double r2 = (double) r2
            double r4 = r9 / r2
            double r2 = r7 / r2
            double r4 = r4 - r2
            double r0 = r0 * r4
            double r7 = r7 + r0
            double r7 = r7 + r0
            goto L45
        L3e:
            double r2 = r6.nextDouble()
            double r2 = r2 * r0
            double r7 = r7 + r2
        L45:
            int r0 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r0 < 0) goto L4f
            r7 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            double r7 = java.lang.Math.nextAfter(r9, r7)
        L4f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.random.Random.nextDouble(double, double):double");
    }

    public int nextInt(int i4, int i10) {
        int nextInt;
        int i11;
        int i12;
        int nextInt2;
        boolean z9;
        RandomKt.checkRangeBounds(i4, i10);
        int i13 = i10 - i4;
        if (i13 > 0 || i13 == Integer.MIN_VALUE) {
            if (((-i13) & i13) == i13) {
                i12 = nextBits(RandomKt.fastLog2(i13));
            } else {
                do {
                    nextInt = nextInt() >>> 1;
                    i11 = nextInt % i13;
                } while ((nextInt - i11) + (i13 - 1) < 0);
                i12 = i11;
            }
            return i4 + i12;
        }
        do {
            nextInt2 = nextInt();
            z9 = false;
            if (i4 <= nextInt2 && nextInt2 < i10) {
                z9 = true;
                continue;
            }
        } while (!z9);
        return nextInt2;
    }

    public long nextLong(long j4, long j10) {
        long nextLong;
        boolean z9;
        long nextLong2;
        long j11;
        long j12;
        int nextInt;
        RandomKt.checkRangeBounds(j4, j10);
        long j13 = j10 - j4;
        if (j13 <= 0) {
            do {
                nextLong = nextLong();
                z9 = false;
                if (j4 <= nextLong && nextLong < j10) {
                    z9 = true;
                    continue;
                }
            } while (!z9);
            return nextLong;
        }
        if (((-j13) & j13) == j13) {
            int i4 = (int) j13;
            int i10 = (int) (j13 >>> 32);
            if (i4 != 0) {
                nextInt = nextBits(RandomKt.fastLog2(i4));
            } else if (i10 == 1) {
                nextInt = nextInt();
            } else {
                j12 = (nextBits(RandomKt.fastLog2(i10)) << 32) + (nextInt() & 4294967295L);
            }
            j12 = nextInt & 4294967295L;
        } else {
            do {
                nextLong2 = nextLong() >>> 1;
                j11 = nextLong2 % j13;
            } while ((nextLong2 - j11) + (j13 - 1) < 0);
            j12 = j11;
        }
        return j4 + j12;
    }

    @g
    public byte[] nextBytes(@g byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return nextBytes(array, 0, array.length);
    }

    @g
    public byte[] nextBytes(int i4) {
        return nextBytes(new byte[i4]);
    }
}
