package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.TimeMark;
import m8.g;

/* compiled from: TimeSource.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0005J\u0015\u0010\u000b\u001a\u00020\u0004H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u0007J\u001b\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/time/AdjustedTimeMark;", "Lkotlin/time/TimeMark;", "mark", "adjustment", "Lkotlin/time/Duration;", "(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAdjustment-UwyO8pc", "()J", "J", "getMark", "()Lkotlin/time/TimeMark;", "elapsedNow", "elapsedNow-UwyO8pc", "plus", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@ExperimentalTime
/* loaded from: classes4.dex */
final class AdjustedTimeMark implements TimeMark {
    private final long adjustment;
    @g
    private final TimeMark mark;

    private AdjustedTimeMark(TimeMark timeMark, long j4) {
        this.mark = timeMark;
        this.adjustment = j4;
    }

    public /* synthetic */ AdjustedTimeMark(TimeMark timeMark, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(timeMark, j4);
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: elapsedNow-UwyO8pc */
    public long mo1403elapsedNowUwyO8pc() {
        return Duration.m1446minusLRDsOJo(this.mark.mo1403elapsedNowUwyO8pc(), this.adjustment);
    }

    /* renamed from: getAdjustment-UwyO8pc  reason: not valid java name */
    public final long m1406getAdjustmentUwyO8pc() {
        return this.adjustment;
    }

    @g
    public final TimeMark getMark() {
        return this.mark;
    }

    @Override // kotlin.time.TimeMark
    public boolean hasNotPassedNow() {
        return TimeMark.DefaultImpls.hasNotPassedNow(this);
    }

    @Override // kotlin.time.TimeMark
    public boolean hasPassedNow() {
        return TimeMark.DefaultImpls.hasPassedNow(this);
    }

    @Override // kotlin.time.TimeMark
    @g
    /* renamed from: minus-LRDsOJo */
    public TimeMark mo1404minusLRDsOJo(long j4) {
        return TimeMark.DefaultImpls.m1546minusLRDsOJo(this, j4);
    }

    @Override // kotlin.time.TimeMark
    @g
    /* renamed from: plus-LRDsOJo */
    public TimeMark mo1405plusLRDsOJo(long j4) {
        return new AdjustedTimeMark(this.mark, Duration.m1447plusLRDsOJo(this.adjustment, j4), null);
    }
}
