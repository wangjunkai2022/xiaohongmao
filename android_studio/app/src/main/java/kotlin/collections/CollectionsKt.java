package kotlin.collections;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.functions.Function1;
import m8.g;

@Metadata(d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ boolean addAll(@g Collection collection, @g Iterable iterable) {
        return CollectionsKt__MutableCollectionsKt.addAll(collection, iterable);
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ int collectionSizeOrDefault(@g Iterable iterable, int i4) {
        return CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, i4);
    }

    @g
    public static /* bridge */ /* synthetic */ Set intersect(@g Iterable iterable, @g Iterable iterable2) {
        return CollectionsKt___CollectionsKt.intersect(iterable, iterable2);
    }

    public static /* bridge */ /* synthetic */ Appendable joinTo$default(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i4, CharSequence charSequence4, Function1 function1, int i10, Object obj) {
        Appendable joinTo;
        joinTo = CollectionsKt___CollectionsKt.joinTo(iterable, appendable, (r14 & 2) != 0 ? ", " : charSequence, (r14 & 4) != 0 ? "" : charSequence2, (r14 & 8) == 0 ? charSequence3 : "", (r14 & 16) != 0 ? -1 : i4, (r14 & 32) != 0 ? "..." : charSequence4, (r14 & 64) != 0 ? null : function1);
        return joinTo;
    }

    @g
    public static /* bridge */ /* synthetic */ int[] toIntArray(@g Collection collection) {
        return CollectionsKt___CollectionsKt.toIntArray(collection);
    }

    @g
    public static /* bridge */ /* synthetic */ List toList(@g Iterable iterable) {
        return CollectionsKt___CollectionsKt.toList(iterable);
    }
}
