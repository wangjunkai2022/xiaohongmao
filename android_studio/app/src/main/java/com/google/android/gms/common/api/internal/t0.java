package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class t0 extends z0 {

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<a.f> f28885b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a1 f28886c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(a1 a1Var, ArrayList<a.f> arrayList) {
        super(a1Var, null);
        this.f28886c = a1Var;
        this.f28885b = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.z0
    @WorkerThread
    public final void a() {
        n1 n1Var;
        com.google.android.gms.common.internal.m mVar;
        n1 n1Var2;
        a1 a1Var = this.f28886c;
        n1Var = a1Var.f28623a;
        n1Var.f28827p.f28773s = a1.y(a1Var);
        ArrayList<a.f> arrayList = this.f28885b;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            a1 a1Var2 = this.f28886c;
            mVar = a1Var2.f28637o;
            n1Var2 = a1Var2.f28623a;
            arrayList.get(i4).n(mVar, n1Var2.f28827p.f28773s);
        }
    }
}
