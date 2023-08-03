package kotlin;

import kotlin.internal.InlineOnly;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloorDivMod.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\t\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b¨\u0006\t"}, d2 = {"floorDiv", "", "", "other", "", "", "mod", "", "", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/NumbersKt")
/* loaded from: classes4.dex */
public class NumbersKt__FloorDivModKt extends NumbersKt__BigIntegersKt {
    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b10, byte b11) {
        int i4 = b10 / b11;
        return ((b10 ^ b11) >= 0 || b11 * i4 == b10) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(byte b10, byte b11) {
        int i4 = b10 % b11;
        return (byte) (i4 + (b11 & (((i4 ^ b11) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b10, short s9) {
        int i4 = b10 / s9;
        return ((b10 ^ s9) >= 0 || s9 * i4 == b10) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(byte b10, short s9) {
        int i4 = b10 % s9;
        return (short) (i4 + (s9 & (((i4 ^ s9) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b10, int i4) {
        int i10 = b10 / i4;
        return ((b10 ^ i4) >= 0 || i4 * i10 == b10) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(byte b10, int i4) {
        int i10 = b10 % i4;
        return i10 + (i4 & (((i10 ^ i4) & ((-i10) | i10)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(byte b10, long j4) {
        long j10 = b10;
        long j11 = j10 / j4;
        return ((j10 ^ j4) >= 0 || j4 * j11 == j10) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(byte b10, long j4) {
        long j10 = b10 % j4;
        return j10 + (j4 & (((j10 ^ j4) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s9, byte b10) {
        int i4 = s9 / b10;
        return ((s9 ^ b10) >= 0 || b10 * i4 == s9) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(short s9, byte b10) {
        int i4 = s9 % b10;
        return (byte) (i4 + (b10 & (((i4 ^ b10) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s9, short s10) {
        int i4 = s9 / s10;
        return ((s9 ^ s10) >= 0 || s10 * i4 == s9) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(short s9, short s10) {
        int i4 = s9 % s10;
        return (short) (i4 + (s10 & (((i4 ^ s10) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s9, int i4) {
        int i10 = s9 / i4;
        return ((s9 ^ i4) >= 0 || i4 * i10 == s9) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(short s9, int i4) {
        int i10 = s9 % i4;
        return i10 + (i4 & (((i10 ^ i4) & ((-i10) | i10)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(short s9, long j4) {
        long j10 = s9;
        long j11 = j10 / j4;
        return ((j10 ^ j4) >= 0 || j4 * j11 == j10) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(short s9, long j4) {
        long j10 = s9 % j4;
        return j10 + (j4 & (((j10 ^ j4) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i4, byte b10) {
        int i10 = i4 / b10;
        return ((i4 ^ b10) >= 0 || b10 * i10 == i4) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(int i4, byte b10) {
        int i10 = i4 % b10;
        return (byte) (i10 + (b10 & (((i10 ^ b10) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i4, short s9) {
        int i10 = i4 / s9;
        return ((i4 ^ s9) >= 0 || s9 * i10 == i4) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(int i4, short s9) {
        int i10 = i4 % s9;
        return (short) (i10 + (s9 & (((i10 ^ s9) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i4, int i10) {
        int i11 = i4 / i10;
        return ((i4 ^ i10) >= 0 || i10 * i11 == i4) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(int i4, int i10) {
        int i11 = i4 % i10;
        return i11 + (i10 & (((i11 ^ i10) & ((-i11) | i11)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(int i4, long j4) {
        long j10 = i4;
        long j11 = j10 / j4;
        return ((j10 ^ j4) >= 0 || j4 * j11 == j10) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(int i4, long j4) {
        long j10 = i4 % j4;
        return j10 + (j4 & (((j10 ^ j4) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, byte b10) {
        long j10 = b10;
        long j11 = j4 / j10;
        return ((j4 ^ j10) >= 0 || j10 * j11 == j4) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(long j4, byte b10) {
        long j10;
        long j11 = j4 % b10;
        return (byte) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, short s9) {
        long j10 = s9;
        long j11 = j4 / j10;
        return ((j4 ^ j10) >= 0 || j10 * j11 == j4) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(long j4, short s9) {
        long j10;
        long j11 = j4 % s9;
        return (short) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, int i4) {
        long j10 = i4;
        long j11 = j4 / j10;
        return ((j4 ^ j10) >= 0 || j10 * j11 == j4) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(long j4, int i4) {
        long j10 = i4;
        long j11 = j4 % j10;
        return (int) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, long j10) {
        long j11 = j4 / j10;
        return ((j4 ^ j10) >= 0 || j10 * j11 == j4) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(long j4, long j10) {
        long j11 = j4 % j10;
        return j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final float mod(float f10, float f11) {
        float f12 = f10 % f11;
        if (f12 == 0.0f) {
            return f12;
        }
        return !(Math.signum(f12) == Math.signum(f11)) ? f12 + f11 : f12;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(float f10, double d4) {
        double d10 = f10 % d4;
        if (d10 == 0.0d) {
            return d10;
        }
        return !(Math.signum(d10) == Math.signum(d4)) ? d10 + d4 : d10;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(double d4, float f10) {
        double d10 = f10;
        double d11 = d4 % d10;
        if (d11 == 0.0d) {
            return d11;
        }
        return !(Math.signum(d11) == Math.signum(d10)) ? d11 + d10 : d11;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(double d4, double d10) {
        double d11 = d4 % d10;
        if (d11 == 0.0d) {
            return d11;
        }
        return !(Math.signum(d11) == Math.signum(d10)) ? d11 + d10 : d11;
    }
}
