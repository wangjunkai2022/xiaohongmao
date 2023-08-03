package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class eb implements jb {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final List f29605a;

    public eb(Context context, db dbVar) {
        ArrayList arrayList = new ArrayList();
        this.f29605a = arrayList;
        if (dbVar.c()) {
            arrayList.add(new sb(context, dbVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.jb
    public final void a(ab abVar) {
        for (jb jbVar : this.f29605a) {
            jbVar.a(abVar);
        }
    }
}
