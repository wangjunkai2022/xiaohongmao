package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class p implements c<Void, List> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Collection f31134a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Collection collection) {
        this.f31134a = collection;
    }

    @Override // com.google.android.gms.tasks.c
    public final /* bridge */ /* synthetic */ List a(@NonNull k<Void> kVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (k kVar2 : this.f31134a) {
            arrayList.add(kVar2.r());
        }
        return arrayList;
    }
}
