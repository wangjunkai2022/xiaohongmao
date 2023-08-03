package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class zzd extends ResultReceiver {
    final /* synthetic */ com.google.android.play.core.tasks.o zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzd(j jVar, Handler handler, com.google.android.play.core.tasks.o oVar) {
        super(handler);
        this.zza = oVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i4, Bundle bundle) {
        if (i4 == 1) {
            this.zza.e(-1);
        } else if (i4 != 2) {
            this.zza.e(1);
        } else {
            this.zza.e(0);
        }
    }
}
