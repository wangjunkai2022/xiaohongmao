package kotlin.comparisons;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _ComparisonsJvm.kt */
@Metadata(d1 = {"\u0000F\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0005\u001a5\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u00012\u0006\u0010\u0006\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0007\u001a9\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00010\t\"\u0002H\u0001H\u0007¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\b\u001a!\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000bH\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\n\u0010\b\u001a\u00020\f\"\u00020\u000bH\u0007\u001a\u0019\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\rH\u0087\b\u001a!\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\n\u0010\b\u001a\u00020\u000e\"\u00020\rH\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000fH\u0087\b\u001a!\u0010\u0000\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u000fH\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\n\u0010\b\u001a\u00020\u0010\"\u00020\u000fH\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0087\b\u001a!\u0010\u0000\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0011H\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\n\u0010\b\u001a\u00020\u0012\"\u00020\u0011H\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013H\u0087\b\u001a!\u0010\u0000\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0013H\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\n\u0010\b\u001a\u00020\u0014\"\u00020\u0013H\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0015H\u0087\b\u001a!\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\b\u001a\u001c\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\n\u0010\b\u001a\u00020\u0016\"\u00020\u0015H\u0007\u001a-\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0005\u001a5\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0006\u0010\u0004\u001a\u0002H\u00012\u0006\u0010\u0006\u001a\u0002H\u0001H\u0007¢\u0006\u0002\u0010\u0007\u001a9\u0010\u0017\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00010\t\"\u0002H\u0001H\u0007¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\b\u001a!\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000bH\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000b2\n\u0010\b\u001a\u00020\f\"\u00020\u000bH\u0007\u001a\u0019\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\rH\u0087\b\u001a!\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\n\u0010\b\u001a\u00020\u000e\"\u00020\rH\u0007\u001a\u0019\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000fH\u0087\b\u001a!\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u000fH\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u000f2\n\u0010\b\u001a\u00020\u0010\"\u00020\u000fH\u0007\u001a\u0019\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0011H\u0087\b\u001a!\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0011H\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00112\n\u0010\b\u001a\u00020\u0012\"\u00020\u0011H\u0007\u001a\u0019\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013H\u0087\b\u001a!\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0013H\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00132\n\u0010\b\u001a\u00020\u0014\"\u00020\u0013H\u0007\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0015H\u0087\b\u001a!\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\b\u001a\u001c\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\n\u0010\b\u001a\u00020\u0016\"\u00020\u0015H\u0007¨\u0006\u0018"}, d2 = {"maxOf", ExifInterface.GPS_DIRECTION_TRUE, "", "a", "b", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "c", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "other", "", "(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "", "", "", "", "", "", "minOf", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/comparisons/ComparisonsKt")
/* loaded from: classes4.dex */
public class ComparisonsKt___ComparisonsJvmKt extends ComparisonsKt__ComparisonsKt {
    @SinceKotlin(version = "1.1")
    @g
    public static <T extends Comparable<? super T>> T maxOf(@g T a10, @g T b10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return a10.compareTo(b10) >= 0 ? a10 : b10;
    }

    @SinceKotlin(version = "1.1")
    @g
    public static final <T extends Comparable<? super T>> T minOf(@g T a10, @g T b10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return a10.compareTo(b10) <= 0 ? a10 : b10;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte maxOf(byte b10, byte b11) {
        return (byte) Math.max((int) b10, (int) b11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte minOf(byte b10, byte b11) {
        return (byte) Math.min((int) b10, (int) b11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short maxOf(short s9, short s10) {
        return (short) Math.max((int) s9, (int) s10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short minOf(short s9, short s10) {
        return (short) Math.min((int) s9, (int) s10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int maxOf(int i4, int i10) {
        return Math.max(i4, i10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int minOf(int i4, int i10) {
        return Math.min(i4, i10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long maxOf(long j4, long j10) {
        return Math.max(j4, j10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long minOf(long j4, long j10) {
        return Math.min(j4, j10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float maxOf(float f10, float f11) {
        return Math.max(f10, f11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float minOf(float f10, float f11) {
        return Math.min(f10, f11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double maxOf(double d4, double d10) {
        return Math.max(d4, d10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double minOf(double d4, double d10) {
        return Math.min(d4, d10);
    }

    @SinceKotlin(version = "1.1")
    @g
    public static final <T extends Comparable<? super T>> T maxOf(@g T a10, @g T b10, @g T c10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        Intrinsics.checkNotNullParameter(c10, "c");
        return (T) ComparisonsKt.maxOf(a10, ComparisonsKt.maxOf(b10, c10));
    }

    @SinceKotlin(version = "1.1")
    @g
    public static final <T extends Comparable<? super T>> T minOf(@g T a10, @g T b10, @g T c10) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        Intrinsics.checkNotNullParameter(c10, "c");
        return (T) minOf(a10, minOf(b10, c10));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte maxOf(byte b10, byte b11, byte b12) {
        return (byte) Math.max((int) b10, Math.max((int) b11, (int) b12));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte minOf(byte b10, byte b11, byte b12) {
        return (byte) Math.min((int) b10, Math.min((int) b11, (int) b12));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short maxOf(short s9, short s10, short s11) {
        return (short) Math.max((int) s9, Math.max((int) s10, (int) s11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short minOf(short s9, short s10, short s11) {
        return (short) Math.min((int) s9, Math.min((int) s10, (int) s11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int maxOf(int i4, int i10, int i11) {
        return Math.max(i4, Math.max(i10, i11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int minOf(int i4, int i10, int i11) {
        return Math.min(i4, Math.min(i10, i11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long maxOf(long j4, long j10, long j11) {
        return Math.max(j4, Math.max(j10, j11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long minOf(long j4, long j10, long j11) {
        return Math.min(j4, Math.min(j10, j11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float maxOf(float f10, float f11, float f12) {
        return Math.max(f10, Math.max(f11, f12));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final float minOf(float f10, float f11, float f12) {
        return Math.min(f10, Math.min(f11, f12));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double maxOf(double d4, double d10, double d11) {
        return Math.max(d4, Math.max(d10, d11));
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final double minOf(double d4, double d10, double d11) {
        return Math.min(d4, Math.min(d10, d11));
    }

    @SinceKotlin(version = "1.4")
    @g
    public static final <T extends Comparable<? super T>> T maxOf(@g T a10, @g T... other) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t9 : other) {
            a10 = (T) ComparisonsKt.maxOf(a10, t9);
        }
        return a10;
    }

    @SinceKotlin(version = "1.4")
    @g
    public static final <T extends Comparable<? super T>> T minOf(@g T a10, @g T... other) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t9 : other) {
            a10 = (T) minOf(a10, t9);
        }
        return a10;
    }

    @SinceKotlin(version = "1.4")
    public static final byte maxOf(byte b10, @g byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b11 : other) {
            b10 = (byte) Math.max((int) b10, (int) b11);
        }
        return b10;
    }

    @SinceKotlin(version = "1.4")
    public static final byte minOf(byte b10, @g byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b11 : other) {
            b10 = (byte) Math.min((int) b10, (int) b11);
        }
        return b10;
    }

    @SinceKotlin(version = "1.4")
    public static final short maxOf(short s9, @g short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s10 : other) {
            s9 = (short) Math.max((int) s9, (int) s10);
        }
        return s9;
    }

    @SinceKotlin(version = "1.4")
    public static final short minOf(short s9, @g short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s10 : other) {
            s9 = (short) Math.min((int) s9, (int) s10);
        }
        return s9;
    }

    @SinceKotlin(version = "1.4")
    public static final int maxOf(int i4, @g int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i10 : other) {
            i4 = Math.max(i4, i10);
        }
        return i4;
    }

    @SinceKotlin(version = "1.4")
    public static final int minOf(int i4, @g int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i10 : other) {
            i4 = Math.min(i4, i10);
        }
        return i4;
    }

    @SinceKotlin(version = "1.4")
    public static final long maxOf(long j4, @g long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j10 : other) {
            j4 = Math.max(j4, j10);
        }
        return j4;
    }

    @SinceKotlin(version = "1.4")
    public static final long minOf(long j4, @g long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j10 : other) {
            j4 = Math.min(j4, j10);
        }
        return j4;
    }

    @SinceKotlin(version = "1.4")
    public static final float maxOf(float f10, @g float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f11 : other) {
            f10 = Math.max(f10, f11);
        }
        return f10;
    }

    @SinceKotlin(version = "1.4")
    public static final float minOf(float f10, @g float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f11 : other) {
            f10 = Math.min(f10, f11);
        }
        return f10;
    }

    @SinceKotlin(version = "1.4")
    public static final double maxOf(double d4, @g double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d10 : other) {
            d4 = Math.max(d4, d10);
        }
        return d4;
    }

    @SinceKotlin(version = "1.4")
    public static final double minOf(double d4, @g double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d10 : other) {
            d4 = Math.min(d4, d10);
        }
        return d4;
    }
}
