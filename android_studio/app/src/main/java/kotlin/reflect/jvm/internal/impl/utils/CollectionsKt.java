package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: collections.kt */
/* loaded from: classes4.dex */
public final class CollectionsKt {
    public static final <T> void addIfNotNull(@g Collection<T> collection, @h T t9) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (t9 != null) {
            collection.add(t9);
        }
    }

    private static final int capacity(int i4) {
        if (i4 < 3) {
            return 3;
        }
        return i4 + (i4 / 3) + 1;
    }

    @g
    public static final <T> List<T> compact(@g ArrayList<T> arrayList) {
        List<T> emptyList;
        Object first;
        List<T> listOf;
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        int size = arrayList.size();
        if (size == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (size != 1) {
            arrayList.trimToSize();
            return arrayList;
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(first);
            return listOf;
        }
    }

    @g
    public static final <K> Map<K, Integer> mapToIndex(@g Iterable<? extends K> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i4 = 0;
        for (K k10 : iterable) {
            linkedHashMap.put(k10, Integer.valueOf(i4));
            i4++;
        }
        return linkedHashMap;
    }

    @g
    public static final <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i4) {
        return new HashMap<>(capacity(i4));
    }

    @g
    public static final <E> HashSet<E> newHashSetWithExpectedSize(int i4) {
        return new HashSet<>(capacity(i4));
    }

    @g
    public static final <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i4) {
        return new LinkedHashSet<>(capacity(i4));
    }
}
