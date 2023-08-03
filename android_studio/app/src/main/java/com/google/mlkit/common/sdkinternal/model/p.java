package com.google.mlkit.common.sdkinternal.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.LongSparseArray;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.mlkit_common.ab;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.lb;
import com.google.android.gms.internal.mlkit_common.mb;
import com.google.android.gms.internal.mlkit_common.nb;
import com.google.android.gms.internal.mlkit_common.zzit;
import com.google.android.gms.internal.mlkit_common.zziz;
import com.google.mlkit.common.MlKitException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
@WorkerThread
/* loaded from: classes2.dex */
public final class p extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final long f35879a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.tasks.l f35880b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f f35881c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ p(f fVar, long j4, com.google.android.gms.tasks.l lVar, o oVar) {
        this.f35881c = fVar;
        this.f35879a = j4;
        this.f35880b = lVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        com.google.android.gms.common.internal.k kVar;
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2;
        kb kbVar;
        com.google.mlkit.common.model.d dVar;
        kb kbVar2;
        com.google.mlkit.common.model.d dVar2;
        com.google.mlkit.common.model.d dVar3;
        kb kbVar3;
        com.google.mlkit.common.model.d dVar4;
        MlKitException x9;
        com.google.mlkit.common.sdkinternal.k kVar2;
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (longExtra != this.f35879a) {
            return;
        }
        Integer e4 = this.f35881c.e();
        synchronized (this.f35881c) {
            try {
                kVar2 = this.f35881c.f35850c;
                kVar2.b().unregisterReceiver(this);
            } catch (IllegalArgumentException e10) {
                kVar = f.f35846m;
                kVar.o("ModelDownloadManager", "Exception thrown while trying to unregister the broadcast receiver for the download", e10);
            }
            longSparseArray = this.f35881c.f35848a;
            longSparseArray.remove(this.f35879a);
            longSparseArray2 = this.f35881c.f35849b;
            longSparseArray2.remove(this.f35879a);
        }
        if (e4 != null) {
            if (e4.intValue() == 16) {
                kbVar3 = this.f35881c.f35854g;
                ab g4 = nb.g();
                f fVar = this.f35881c;
                dVar4 = fVar.f35852e;
                Long valueOf = Long.valueOf(longExtra);
                kbVar3.e(g4, dVar4, false, fVar.f(valueOf));
                com.google.android.gms.tasks.l lVar = this.f35880b;
                x9 = this.f35881c.x(valueOf);
                lVar.b(x9);
                return;
            } else if (e4.intValue() == 8) {
                kbVar2 = this.f35881c.f35854g;
                ab g10 = nb.g();
                dVar2 = this.f35881c.f35852e;
                lb h4 = mb.h();
                h4.b(zzit.NO_ERROR);
                h4.e(true);
                dVar3 = this.f35881c.f35852e;
                h4.d(dVar3.e());
                h4.a(zziz.SUCCEEDED);
                kbVar2.g(g10, dVar2, h4.g());
                this.f35880b.c(null);
                return;
            }
        }
        kbVar = this.f35881c.f35854g;
        ab g11 = nb.g();
        dVar = this.f35881c.f35852e;
        kbVar.e(g11, dVar, false, 0);
        this.f35880b.b(new MlKitException("Model downloading failed", 13));
    }
}
