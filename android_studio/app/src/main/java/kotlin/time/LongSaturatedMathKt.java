package kotlin.time;

import kotlin.Metadata;
import kotlin.time.Duration;

/* compiled from: longSaturatedMath.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\"\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\"\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\n\u001a \u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"checkInfiniteSumDefined", "", "longNs", "duration", "Lkotlin/time/Duration;", "durationNs", "checkInfiniteSumDefined-PjuGub4", "(JJJ)J", "saturatingAdd", "saturatingAdd-pTJri5U", "(JJ)J", "saturatingAddInHalves", "saturatingAddInHalves-pTJri5U", "saturatingDiff", "valueNs", "originNs", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LongSaturatedMathKt {
    /* renamed from: checkInfiniteSumDefined-PjuGub4  reason: not valid java name */
    private static final long m1538checkInfiniteSumDefinedPjuGub4(long j4, long j10, long j11) {
        if (!Duration.m1443isInfiniteimpl(j10) || (j4 ^ j11) >= 0) {
            return j4;
        }
        throw new IllegalArgumentException("Summing infinities of different signs");
    }

    /* renamed from: saturatingAdd-pTJri5U  reason: not valid java name */
    public static final long m1539saturatingAddpTJri5U(long j4, long j10) {
        long m1431getInWholeNanosecondsimpl = Duration.m1431getInWholeNanosecondsimpl(j10);
        if (((j4 - 1) | 1) == Long.MAX_VALUE) {
            return m1538checkInfiniteSumDefinedPjuGub4(j4, j10, m1431getInWholeNanosecondsimpl);
        }
        if ((1 | (m1431getInWholeNanosecondsimpl - 1)) == Long.MAX_VALUE) {
            return m1540saturatingAddInHalvespTJri5U(j4, j10);
        }
        long j11 = j4 + m1431getInWholeNanosecondsimpl;
        return ((j4 ^ j11) & (m1431getInWholeNanosecondsimpl ^ j11)) < 0 ? j4 < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j11;
    }

    /* renamed from: saturatingAddInHalves-pTJri5U  reason: not valid java name */
    private static final long m1540saturatingAddInHalvespTJri5U(long j4, long j10) {
        long m1414divUwyO8pc = Duration.m1414divUwyO8pc(j10, 2);
        if (((Duration.m1431getInWholeNanosecondsimpl(m1414divUwyO8pc) - 1) | 1) == Long.MAX_VALUE) {
            return (long) (j4 + Duration.m1454toDoubleimpl(j10, DurationUnit.NANOSECONDS));
        }
        return m1539saturatingAddpTJri5U(m1539saturatingAddpTJri5U(j4, m1414divUwyO8pc), m1414divUwyO8pc);
    }

    public static final long saturatingDiff(long j4, long j10) {
        if ((1 | (j10 - 1)) == Long.MAX_VALUE) {
            return Duration.m1463unaryMinusUwyO8pc(DurationKt.toDuration(j10, DurationUnit.DAYS));
        }
        long j11 = j4 - j10;
        if (((j11 ^ j4) & (~(j11 ^ j10))) < 0) {
            long j12 = (long) DurationKt.NANOS_IN_MILLIS;
            long j13 = (j4 % j12) - (j10 % j12);
            Duration.Companion companion = Duration.Companion;
            return Duration.m1447plusLRDsOJo(DurationKt.toDuration((j4 / j12) - (j10 / j12), DurationUnit.MILLISECONDS), DurationKt.toDuration(j13, DurationUnit.NANOSECONDS));
        }
        Duration.Companion companion2 = Duration.Companion;
        return DurationKt.toDuration(j11, DurationUnit.NANOSECONDS);
    }
}
