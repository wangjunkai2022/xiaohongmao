package com.google.android.gms.common.api.internal;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class s0 extends z0 {

    /* renamed from: b  reason: collision with root package name */
    private final Map<a.f, p0> f28875b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a1 f28876c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(a1 a1Var, Map<a.f, p0> map) {
        super(a1Var, null);
        this.f28876c = a1Var;
        this.f28875b = map;
    }

    @Override // com.google.android.gms.common.api.internal.z0
    @WorkerThread
    @s7.a("mLock")
    public final void a() {
        com.google.android.gms.common.f fVar;
        Context context;
        boolean z9;
        Context context2;
        n1 n1Var;
        com.google.android.gms.signin.f fVar2;
        com.google.android.gms.signin.f fVar3;
        n1 n1Var2;
        Context context3;
        boolean z10;
        fVar = this.f28876c.f28626d;
        com.google.android.gms.common.internal.s0 s0Var = new com.google.android.gms.common.internal.s0(fVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (a.f fVar4 : this.f28875b.keySet()) {
            if (fVar4.j()) {
                z10 = this.f28875b.get(fVar4).f28854c;
                if (!z10) {
                    arrayList.add(fVar4);
                }
            }
            arrayList2.add(fVar4);
        }
        int i4 = -1;
        int i10 = 0;
        if (arrayList.isEmpty()) {
            int size = arrayList2.size();
            while (i10 < size) {
                context3 = this.f28876c.f28625c;
                i4 = s0Var.b(context3, (a.f) arrayList2.get(i10));
                i10++;
                if (i4 == 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            while (i10 < size2) {
                context = this.f28876c.f28625c;
                i4 = s0Var.b(context, (a.f) arrayList.get(i10));
                i10++;
                if (i4 != 0) {
                    break;
                }
            }
        }
        if (i4 != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i4, null);
            a1 a1Var = this.f28876c;
            n1Var2 = a1Var.f28623a;
            n1Var2.r(new q0(this, a1Var, connectionResult));
            return;
        }
        a1 a1Var2 = this.f28876c;
        z9 = a1Var2.f28635m;
        if (z9) {
            fVar2 = a1Var2.f28633k;
            if (fVar2 != null) {
                fVar3 = a1Var2.f28633k;
                fVar3.zab();
            }
        }
        for (a.f fVar5 : this.f28875b.keySet()) {
            p0 p0Var = this.f28875b.get(fVar5);
            if (fVar5.j()) {
                context2 = this.f28876c.f28625c;
                if (s0Var.b(context2, fVar5) != 0) {
                    a1 a1Var3 = this.f28876c;
                    n1Var = a1Var3.f28623a;
                    n1Var.r(new r0(this, a1Var3, p0Var));
                }
            }
            fVar5.h(p0Var);
        }
    }
}
