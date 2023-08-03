package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class k {
    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends j<T>> ArrayList<T> a(@NonNull ArrayList<E> arrayList) {
        ArrayList<T> arrayList2 = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList2.add(arrayList.get(i4).b());
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends j<T>> ArrayList<T> b(@NonNull E[] eArr) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e4 : eArr) {
            arrayList.add(e4.b());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends j<T>> ArrayList<T> c(@NonNull Iterable<E> iterable) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        for (E e4 : iterable) {
            arrayList.add(e4.b());
        }
        return arrayList;
    }
}
