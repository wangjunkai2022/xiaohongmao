package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import com.google.android.gms.common.internal.u;
import com.google.firebase.components.j;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements j {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c f35945a = new c();

    private /* synthetic */ c() {
    }

    @Override // com.google.firebase.components.j
    public final Object a(com.google.firebase.components.g gVar) {
        ArrayList arrayList = new ArrayList(gVar.c(a.class));
        u.r(!arrayList.isEmpty(), "No delegate creator registered.");
        Collections.sort(arrayList, e.f35947a);
        return new i((Context) gVar.get(Context.class), (a) arrayList.get(0));
    }
}
