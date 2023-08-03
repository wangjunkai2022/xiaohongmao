package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmInline;
import m8.g;

/* compiled from: TimeSource.kt */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lkotlin/time/TimeSource;", "", "markNow", "Lkotlin/time/TimeMark;", "Companion", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@ExperimentalTime
/* loaded from: classes4.dex */
public interface TimeSource {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: TimeSource.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    /* compiled from: TimeSource.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016\u0082\u0002\b\n\u0002\b!\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource;", "()V", "markNow", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "toString", "", "ValueTimeMark", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Monotonic implements TimeSource {
        @g
        public static final Monotonic INSTANCE = new Monotonic();

        /* compiled from: TimeSource.kt */
        @SinceKotlin(version = "1.7")
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0018\b\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006#"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/TimeMark;", "reading", "", "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "equals", "", "other", "", "equals-impl", "(JLjava/lang/Object;)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "(J)Z", "hasPassedNow", "hasPassedNow-impl", "hashCode", "", "hashCode-impl", "(J)I", "minus", "duration", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
        @JvmInline
        @ExperimentalTime
        /* loaded from: classes4.dex */
        public static final class ValueTimeMark implements TimeMark {
            private final long reading;

            private /* synthetic */ ValueTimeMark(long j4) {
                this.reading = j4;
            }

            /* renamed from: box-impl  reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m1549boximpl(long j4) {
                return new ValueTimeMark(j4);
            }

            /* renamed from: constructor-impl  reason: not valid java name */
            public static long m1550constructorimpl(long j4) {
                return j4;
            }

            /* renamed from: equals-impl  reason: not valid java name */
            public static boolean m1552equalsimpl(long j4, Object obj) {
                return (obj instanceof ValueTimeMark) && j4 == ((ValueTimeMark) obj).m1560unboximpl();
            }

            /* renamed from: equals-impl0  reason: not valid java name */
            public static final boolean m1553equalsimpl0(long j4, long j10) {
                return j4 == j10;
            }

            /* renamed from: hasNotPassedNow-impl  reason: not valid java name */
            public static boolean m1554hasNotPassedNowimpl(long j4) {
                return Duration.m1444isNegativeimpl(m1551elapsedNowUwyO8pc(j4));
            }

            /* renamed from: hasPassedNow-impl  reason: not valid java name */
            public static boolean m1555hasPassedNowimpl(long j4) {
                return !Duration.m1444isNegativeimpl(m1551elapsedNowUwyO8pc(j4));
            }

            /* renamed from: hashCode-impl  reason: not valid java name */
            public static int m1556hashCodeimpl(long j4) {
                return (int) (j4 ^ (j4 >>> 32));
            }

            /* renamed from: toString-impl  reason: not valid java name */
            public static String m1559toStringimpl(long j4) {
                return "ValueTimeMark(reading=" + j4 + ')';
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: elapsedNow-UwyO8pc */
            public long mo1403elapsedNowUwyO8pc() {
                return m1551elapsedNowUwyO8pc(this.reading);
            }

            public boolean equals(Object obj) {
                return m1552equalsimpl(this.reading, obj);
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m1554hasNotPassedNowimpl(this.reading);
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m1555hasPassedNowimpl(this.reading);
            }

            public int hashCode() {
                return m1556hashCodeimpl(this.reading);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo1404minusLRDsOJo(long j4) {
                return m1549boximpl(mo1404minusLRDsOJo(j4));
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo1405plusLRDsOJo(long j4) {
                return m1549boximpl(mo1405plusLRDsOJo(j4));
            }

            public String toString() {
                return m1559toStringimpl(this.reading);
            }

            /* renamed from: unbox-impl  reason: not valid java name */
            public final /* synthetic */ long m1560unboximpl() {
                return this.reading;
            }

            /* renamed from: elapsedNow-UwyO8pc  reason: not valid java name */
            public static long m1551elapsedNowUwyO8pc(long j4) {
                return MonotonicTimeSource.INSTANCE.m1542elapsedFrom6eNON_k(j4);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: minus-LRDsOJo */
            public long mo1404minusLRDsOJo(long j4) {
                return m1557minusLRDsOJo(this.reading, j4);
            }

            @Override // kotlin.time.TimeMark
            /* renamed from: plus-LRDsOJo */
            public long mo1405plusLRDsOJo(long j4) {
                return m1558plusLRDsOJo(this.reading, j4);
            }

            /* renamed from: minus-LRDsOJo  reason: not valid java name */
            public static long m1557minusLRDsOJo(long j4, long j10) {
                return MonotonicTimeSource.INSTANCE.m1541adjustReading6QKq23U(j4, Duration.m1463unaryMinusUwyO8pc(j10));
            }

            /* renamed from: plus-LRDsOJo  reason: not valid java name */
            public static long m1558plusLRDsOJo(long j4, long j10) {
                return MonotonicTimeSource.INSTANCE.m1541adjustReading6QKq23U(j4, j10);
            }
        }

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ TimeMark markNow() {
            return ValueTimeMark.m1549boximpl(m1548markNowz9LOYto());
        }

        /* renamed from: markNow-z9LOYto  reason: not valid java name */
        public long m1548markNowz9LOYto() {
            return MonotonicTimeSource.INSTANCE.m1543markNowz9LOYto();
        }

        @g
        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }
    }

    @g
    TimeMark markNow();
}
