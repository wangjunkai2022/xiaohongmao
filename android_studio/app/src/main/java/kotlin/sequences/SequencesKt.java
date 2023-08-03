package kotlin.sequences;

import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import m8.g;
import m8.h;

@Metadata(d1 = {"kotlin/sequences/SequencesKt__SequenceBuilderKt", "kotlin/sequences/SequencesKt__SequencesJVMKt", "kotlin/sequences/SequencesKt__SequencesKt", "kotlin/sequences/SequencesKt___SequencesJvmKt", "kotlin/sequences/SequencesKt___SequencesKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class SequencesKt extends SequencesKt___SequencesKt {
    private SequencesKt() {
    }

    @g
    public static /* bridge */ /* synthetic */ Sequence asSequence(@g Iterator it) {
        return SequencesKt__SequencesKt.asSequence(it);
    }

    @g
    public static /* bridge */ /* synthetic */ Sequence filter(@g Sequence sequence, @g Function1 function1) {
        return SequencesKt___SequencesKt.filter(sequence, function1);
    }

    @LowPriorityInOverloadResolution
    @g
    public static /* bridge */ /* synthetic */ Sequence generateSequence(@h Object obj, @g Function1 function1) {
        return SequencesKt__SequencesKt.generateSequence(obj, function1);
    }

    @g
    public static /* bridge */ /* synthetic */ Sequence mapNotNull(@g Sequence sequence, @g Function1 function1) {
        return SequencesKt___SequencesKt.mapNotNull(sequence, function1);
    }

    @g
    public static /* bridge */ /* synthetic */ Sequence sortedWith(@g Sequence sequence, @g Comparator comparator) {
        return SequencesKt___SequencesKt.sortedWith(sequence, comparator);
    }

    @g
    public static /* bridge */ /* synthetic */ List toList(@g Sequence sequence) {
        return SequencesKt___SequencesKt.toList(sequence);
    }
}
