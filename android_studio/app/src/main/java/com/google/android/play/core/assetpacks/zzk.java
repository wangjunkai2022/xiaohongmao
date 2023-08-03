package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class zzk extends ResultReceiver {
    final /* synthetic */ com.google.android.play.core.tasks.o zza;
    final /* synthetic */ k4 zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(k4 k4Var, Handler handler, com.google.android.play.core.tasks.o oVar) {
        super(handler);
        this.zzb = k4Var;
        this.zza = oVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i4, Bundle bundle) {
        f1 f1Var;
        if (i4 == 1) {
            this.zza.e(-1);
            f1Var = this.zzb.f31393g;
            f1Var.b(null);
        } else if (i4 != 2) {
            this.zza.d(new AssetPackException(-100));
        } else {
            this.zza.e(0);
        }
    }
}
