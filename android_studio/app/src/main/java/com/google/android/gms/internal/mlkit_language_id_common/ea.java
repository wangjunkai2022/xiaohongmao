package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class ea implements ja {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final List f30465a;

    public ea(Context context, da daVar) {
        ArrayList arrayList = new ArrayList();
        this.f30465a = arrayList;
        if (daVar.c()) {
            arrayList.add(new sa(context, daVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ja
    public final void a(ba baVar) {
        for (ja jaVar : this.f30465a) {
            jaVar.a(baVar);
        }
    }
}
