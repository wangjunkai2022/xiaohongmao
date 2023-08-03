package kotlin.ranges;

import com.google.android.exoplayer2.text.ttml.d;
import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import m8.g;
import m8.h;

/* compiled from: ULongRange.kt */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\"\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\u0012\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0086\u0002ø\u0001\u0000J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0013\u0010\b\u001a\u00020\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\n\u001a\u00020\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0019"}, d2 = {"Lkotlin/ranges/ULongProgression;", "", "Lkotlin/ULong;", d.f25725o0, "endInclusive", "step", "", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "J", "last", "getStep", "()J", "equals", "", "other", "", "hashCode", "", "isEmpty", "iterator", "", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes4.dex */
public class ULongProgression implements Iterable<ULong>, KMappedMarker {
    @g
    public static final Companion Companion = new Companion(null);
    private final long first;
    private final long last;
    private final long step;

    /* compiled from: ULongRange.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/ranges/ULongProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/ULongProgression;", "rangeStart", "Lkotlin/ULong;", "rangeEnd", "step", "", "fromClosedRange-7ftBX0g", "(JJJ)Lkotlin/ranges/ULongProgression;", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        /* renamed from: fromClosedRange-7ftBX0g  reason: not valid java name */
        public final ULongProgression m1320fromClosedRange7ftBX0g(long j4, long j10, long j11) {
            return new ULongProgression(j4, j10, j11, null);
        }
    }

    private ULongProgression(long j4, long j10, long j11) {
        if (j11 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j11 != Long.MIN_VALUE) {
            this.first = j4;
            this.last = UProgressionUtilKt.m1296getProgressionLastElement7ftBX0g(j4, j10, j11);
            this.step = j11;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
    }

    public /* synthetic */ ULongProgression(long j4, long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, j10, j11);
    }

    public boolean equals(@h Object obj) {
        if (obj instanceof ULongProgression) {
            if (!isEmpty() || !((ULongProgression) obj).isEmpty()) {
                ULongProgression uLongProgression = (ULongProgression) obj;
                if (this.first != uLongProgression.first || this.last != uLongProgression.last || this.step != uLongProgression.step) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: getFirst-s-VKNKU  reason: not valid java name */
    public final long m1318getFirstsVKNKU() {
        return this.first;
    }

    /* renamed from: getLast-s-VKNKU  reason: not valid java name */
    public final long m1319getLastsVKNKU() {
        return this.last;
    }

    public final long getStep() {
        return this.step;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j4 = this.first;
        long j10 = this.last;
        long j11 = this.step;
        return ((int) (j11 ^ (j11 >>> 32))) + (((((int) ULong.m242constructorimpl(j4 ^ ULong.m242constructorimpl(j4 >>> 32))) * 31) + ((int) ULong.m242constructorimpl(j10 ^ ULong.m242constructorimpl(j10 >>> 32)))) * 31);
    }

    public boolean isEmpty() {
        int i4 = (this.step > 0L ? 1 : (this.step == 0L ? 0 : -1));
        int ulongCompare = UnsignedKt.ulongCompare(this.first, this.last);
        if (i4 > 0) {
            if (ulongCompare > 0) {
                return true;
            }
        } else if (ulongCompare < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @g
    public final Iterator<ULong> iterator() {
        return new ULongProgressionIterator(this.first, this.last, this.step, null);
    }

    @g
    public String toString() {
        StringBuilder sb;
        long j4;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append((Object) ULong.m287toStringimpl(this.first));
            sb.append("..");
            sb.append((Object) ULong.m287toStringimpl(this.last));
            sb.append(" step ");
            j4 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append((Object) ULong.m287toStringimpl(this.first));
            sb.append(" downTo ");
            sb.append((Object) ULong.m287toStringimpl(this.last));
            sb.append(" step ");
            j4 = -this.step;
        }
        sb.append(j4);
        return sb.toString();
    }
}
