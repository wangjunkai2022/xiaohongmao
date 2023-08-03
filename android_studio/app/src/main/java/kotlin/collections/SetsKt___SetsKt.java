package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sets.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a,\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\u0086\u0002¢\u0006\u0002\u0010\u0004\u001a4\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0006H\u0086\u0002¢\u0006\u0002\u0010\u0007\u001a-\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0086\u0002\u001a-\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0086\u0002\u001a,\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0004\u001a,\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\u0086\u0002¢\u0006\u0002\u0010\u0004\u001a4\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0006H\u0086\u0002¢\u0006\u0002\u0010\u0007\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0086\u0002\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0086\u0002\u001a,\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0004¨\u0006\r"}, d2 = {"minus", "", ExifInterface.GPS_DIRECTION_TRUE, "element", "(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;", "elements", "", "(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;", "", "Lkotlin/sequences/Sequence;", "minusElement", "plus", "plusElement", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/collections/SetsKt")
/* loaded from: classes4.dex */
public class SetsKt___SetsKt extends SetsKt__SetsKt {
    @g
    public static <T> Set<T> minus(@g Set<? extends T> set, T t9) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size());
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        boolean z9 = false;
        for (T t10 : set) {
            boolean z10 = true;
            if (!z9 && Intrinsics.areEqual(t10, t9)) {
                z9 = true;
                z10 = false;
            }
            if (z10) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    @InlineOnly
    private static final <T> Set<T> minusElement(Set<? extends T> set, T t9) {
        Set<T> minus;
        Intrinsics.checkNotNullParameter(set, "<this>");
        minus = minus(set, t9);
        return minus;
    }

    @g
    public static <T> Set<T> plus(@g Set<? extends T> set, T t9) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size() + 1);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        linkedHashSet.add(t9);
        return linkedHashSet;
    }

    @InlineOnly
    private static final <T> Set<T> plusElement(Set<? extends T> set, T t9) {
        Set<T> plus;
        Intrinsics.checkNotNullParameter(set, "<this>");
        plus = plus(set, t9);
        return plus;
    }

    @g
    public static final <T> Set<T> minus(@g Set<? extends T> set, @g T[] elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        CollectionsKt__MutableCollectionsKt.removeAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @g
    public static final <T> Set<T> plus(@g Set<? extends T> set, @g T[] elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size() + elements.length);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @g
    public static <T> Set<T> minus(@g Set<? extends T> set, @g Iterable<? extends T> elements) {
        Set<T> set2;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<?> convertToSetForSetOperationWith = BrittleContainsOptimizationKt.convertToSetForSetOperationWith(elements, set);
        if (convertToSetForSetOperationWith.isEmpty()) {
            set2 = CollectionsKt___CollectionsKt.toSet(set);
            return set2;
        } else if (convertToSetForSetOperationWith instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (T t9 : set) {
                if (!convertToSetForSetOperationWith.contains(t9)) {
                    linkedHashSet.add(t9);
                }
            }
            return linkedHashSet;
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(set);
            linkedHashSet2.removeAll(convertToSetForSetOperationWith);
            return linkedHashSet2;
        }
    }

    @g
    public static <T> Set<T> plus(@g Set<? extends T> set, @g Iterable<? extends T> elements) {
        int size;
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Integer collectionSizeOrNull = CollectionsKt__IterablesKt.collectionSizeOrNull(elements);
        if (collectionSizeOrNull != null) {
            size = set.size() + collectionSizeOrNull.intValue();
        } else {
            size = set.size() * 2;
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(size);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @g
    public static final <T> Set<T> plus(@g Set<? extends T> set, @g Sequence<? extends T> elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size() * 2);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @g
    public static final <T> Set<T> minus(@g Set<? extends T> set, @g Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        CollectionsKt__MutableCollectionsKt.removeAll(linkedHashSet, elements);
        return linkedHashSet;
    }
}
