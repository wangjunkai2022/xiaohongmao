package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class q implements c<Void, k<List<k<?>>>> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Collection f31136a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Collection collection) {
        this.f31136a = collection;
    }

    @Override // com.google.android.gms.tasks.c
    public final /* bridge */ /* synthetic */ k<List<k<?>>> a(@NonNull k<Void> kVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f31136a);
        return n.g(arrayList);
    }
}
