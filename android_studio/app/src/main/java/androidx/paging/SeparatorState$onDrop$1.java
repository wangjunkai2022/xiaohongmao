package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntRange;
import m8.g;

/* compiled from: Separators.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "R", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/TransformablePage;", "stash", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class SeparatorState$onDrop$1 extends Lambda implements Function1<TransformablePage<T>, Boolean> {
    final /* synthetic */ IntRange $pageOffsetsToDrop;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeparatorState$onDrop$1(IntRange intRange) {
        super(1);
        this.$pageOffsetsToDrop = intRange;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g TransformablePage<T> stash) {
        Intrinsics.checkNotNullParameter(stash, "stash");
        int[] originalPageOffsets = stash.getOriginalPageOffsets();
        IntRange intRange = this.$pageOffsetsToDrop;
        int length = originalPageOffsets.length;
        boolean z9 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            } else if (intRange.contains(originalPageOffsets[i4])) {
                z9 = true;
                break;
            } else {
                i4++;
            }
        }
        return Boolean.valueOf(z9);
    }
}
