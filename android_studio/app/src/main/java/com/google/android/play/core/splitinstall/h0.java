package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class h0 extends k0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(l0 l0Var, com.google.android.play.core.tasks.o oVar) {
        super(l0Var, oVar);
    }

    @Override // com.google.android.play.core.splitinstall.k0, com.google.android.play.core.internal.c1
    public final void A(List list) throws RemoteException {
        super.A(list);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(f.n((Bundle) it.next()));
        }
        this.f31894c.e(arrayList);
    }
}
