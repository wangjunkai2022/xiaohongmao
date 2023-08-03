package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class h {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    public static final String f28987a = "next_page_token";
    @NonNull
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final String f28988b = "prev_page_token";

    private h() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends j<T>> ArrayList<T> a(@NonNull b<E> bVar) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList(bVar.getCount());
        try {
            for (E e4 : bVar) {
                arrayList.add(e4.b());
            }
            return arrayList;
        } finally {
            bVar.close();
        }
    }

    public static boolean b(@NonNull b<?> bVar) {
        return bVar != null && bVar.getCount() > 0;
    }

    public static boolean c(@NonNull b<?> bVar) {
        Bundle metadata = bVar.getMetadata();
        return (metadata == null || metadata.getString(f28987a) == null) ? false : true;
    }

    public static boolean d(@NonNull b<?> bVar) {
        Bundle metadata = bVar.getMetadata();
        return (metadata == null || metadata.getString(f28988b) == null) ? false : true;
    }
}
