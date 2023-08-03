package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;

/* compiled from: TimeSources.kt */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\nJ\b\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "()V", "reading", "", "overflow", "", "duration", "Lkotlin/time/Duration;", "overflow-LRDsOJo", "(J)V", "plusAssign", "plusAssign-LRDsOJo", "read", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@ExperimentalTime
/* loaded from: classes4.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
    }

    /* renamed from: overflow-LRDsOJo  reason: not valid java name */
    private final void m1544overflowLRDsOJo(long j4) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + "ns is advanced by " + ((Object) Duration.m1460toStringimpl(j4)) + '.');
    }

    /* renamed from: plusAssign-LRDsOJo  reason: not valid java name */
    public final void m1545plusAssignLRDsOJo(long j4) {
        long j10;
        long m1457toLongimpl = Duration.m1457toLongimpl(j4, getUnit());
        if (m1457toLongimpl != Long.MIN_VALUE && m1457toLongimpl != Long.MAX_VALUE) {
            long j11 = this.reading;
            j10 = j11 + m1457toLongimpl;
            if ((m1457toLongimpl ^ j11) >= 0 && (j11 ^ j10) < 0) {
                m1544overflowLRDsOJo(j4);
            }
        } else {
            double m1454toDoubleimpl = this.reading + Duration.m1454toDoubleimpl(j4, getUnit());
            if (m1454toDoubleimpl > 9.223372036854776E18d || m1454toDoubleimpl < -9.223372036854776E18d) {
                m1544overflowLRDsOJo(j4);
            }
            j10 = (long) m1454toDoubleimpl;
        }
        this.reading = j10;
    }

    @Override // kotlin.time.AbstractLongTimeSource
    protected long read() {
        return this.reading;
    }
}
