package com.google.android.gms.common.api;

import com.google.android.gms.common.api.l;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class w implements l.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f28960a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(b bVar) {
        this.f28960a = bVar;
    }

    @Override // com.google.android.gms.common.api.l.a
    public final void a(Status status) {
        Object obj;
        int i4;
        int i10;
        boolean z9;
        boolean z10;
        Status status2;
        l[] lVarArr;
        obj = this.f28960a.f28531v;
        synchronized (obj) {
            if (this.f28960a.g()) {
                return;
            }
            if (status.isCanceled()) {
                this.f28960a.f28529t = true;
            } else if (!status.isSuccess()) {
                this.f28960a.f28528s = true;
            }
            b bVar = this.f28960a;
            i4 = bVar.f28527r;
            bVar.f28527r = i4 - 1;
            b bVar2 = this.f28960a;
            i10 = bVar2.f28527r;
            if (i10 == 0) {
                z9 = bVar2.f28529t;
                if (z9) {
                    super/*com.google.android.gms.common.api.internal.BasePendingResult*/.f();
                } else {
                    z10 = bVar2.f28528s;
                    if (z10) {
                        status2 = new Status(13);
                    } else {
                        status2 = Status.RESULT_SUCCESS;
                    }
                    b bVar3 = this.f28960a;
                    lVarArr = bVar3.f28530u;
                    bVar3.o(new c(status2, lVarArr));
                }
            }
        }
    }
}
