package com.im.freechat.extend;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CollectionExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a3\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a?\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0007\u001a\u00028\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "oldItem", "newItem", "", "a", "(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;", "newValue", "Lkotlin/Function1;", "", "block", "b", "(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g
    public static final <T> List<T> a(@m8.g Collection<? extends T> collection, T t9, T t10) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (T t11 : collection) {
            if (Intrinsics.areEqual(t11, t9)) {
                t11 = t10;
            }
            arrayList.add(t11);
        }
        return arrayList;
    }

    @m8.g
    public static final <T> List<T> b(@m8.g List<? extends T> list, T t9, @m8.g Function1<? super T, Boolean> block) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (T t10 : list) {
            if (block.invoke(t10).booleanValue()) {
                t10 = t9;
            }
            arrayList.add(t10);
        }
        return arrayList;
    }
}
