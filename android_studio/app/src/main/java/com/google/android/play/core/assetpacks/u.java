package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class u extends s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u(d0 d0Var, com.google.android.play.core.tasks.o oVar) {
        super(d0Var, oVar);
    }

    @Override // com.google.android.play.core.assetpacks.s, com.google.android.play.core.internal.k2
    public final void P0(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.P0(bundle, bundle2);
        this.f31566c.e((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor"));
    }
}
