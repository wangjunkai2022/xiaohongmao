package androidx.core.util;

import android.util.Range;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import m8.g;

/* compiled from: Range.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a7\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0087\f\u001a6\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0006\u001a\u0002H\u0002H\u0087\n¢\u0006\u0002\u0010\u0007\u001a7\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0087\n\u001a0\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\u0002H\u00022\u0006\u0010\t\u001a\u0002H\u0002H\u0087\f¢\u0006\u0002\u0010\n\u001a(\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\f\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a(\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\fH\u0007¨\u0006\u000e"}, d2 = {"and", "Landroid/util/Range;", ExifInterface.GPS_DIRECTION_TRUE, "", "other", "plus", "value", "(Landroid/util/Range;Ljava/lang/Comparable;)Landroid/util/Range;", "rangeTo", "that", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;", "toClosedRange", "Lkotlin/ranges/ClosedRange;", "toRange", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class RangeKt {
    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> Range<T> and(@g Range<T> range, @g Range<T> other) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Range<T> intersect = range.intersect(other);
        Intrinsics.checkNotNullExpressionValue(intersect, "intersect(other)");
        return intersect;
    }

    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> Range<T> plus(@g Range<T> range, @g T value) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Range<T> extend = range.extend((Range<T>) value);
        Intrinsics.checkNotNullExpressionValue(extend, "extend(value)");
        return extend;
    }

    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> Range<T> rangeTo(@g T t9, @g T that) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(that, "that");
        return new Range<>(t9, that);
    }

    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> ClosedRange<T> toClosedRange(@g final Range<T> range) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        return (ClosedRange<T>) new ClosedRange<T>() { // from class: androidx.core.util.RangeKt$toClosedRange$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            @Override // kotlin.ranges.ClosedRange
            public boolean contains(@g Comparable comparable) {
                return ClosedRange.DefaultImpls.contains(this, comparable);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.ranges.ClosedRange
            public Comparable getEndInclusive() {
                return range.getUpper();
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.ranges.ClosedRange
            public Comparable getStart() {
                return range.getLower();
            }

            @Override // kotlin.ranges.ClosedRange
            public boolean isEmpty() {
                return ClosedRange.DefaultImpls.isEmpty(this);
            }
        };
    }

    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> Range<T> toRange(@g ClosedRange<T> closedRange) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return new Range<>(closedRange.getStart(), closedRange.getEndInclusive());
    }

    @RequiresApi(21)
    @g
    public static final <T extends Comparable<? super T>> Range<T> plus(@g Range<T> range, @g Range<T> other) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Range<T> extend = range.extend(other);
        Intrinsics.checkNotNullExpressionValue(extend, "extend(other)");
        return extend;
    }
}
