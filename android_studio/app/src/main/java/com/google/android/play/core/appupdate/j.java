package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.install.InstallException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class j implements b {

    /* renamed from: a  reason: collision with root package name */
    private final u f31199a;

    /* renamed from: b  reason: collision with root package name */
    private final g f31200b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31201c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f31202d = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(u uVar, g gVar, Context context) {
        this.f31199a = uVar;
        this.f31200b = gVar;
        this.f31201c = context;
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean a(a aVar, Activity activity, d dVar, int i4) throws IntentSender.SendIntentException {
        if (activity == null) {
            return false;
        }
        return f(aVar, new i(this, activity), dVar, i4);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean b(a aVar, @d3.b int i4, com.google.android.play.core.common.a aVar2, int i10) throws IntentSender.SendIntentException {
        return f(aVar, aVar2, d.c(i4), i10);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final com.google.android.play.core.tasks.d<Void> c() {
        return this.f31199a.f(this.f31201c.getPackageName());
    }

    @Override // com.google.android.play.core.appupdate.b
    public final com.google.android.play.core.tasks.d<a> d() {
        return this.f31199a.g(this.f31201c.getPackageName());
    }

    @Override // com.google.android.play.core.appupdate.b
    public final synchronized void e(com.google.android.play.core.install.a aVar) {
        this.f31200b.d(aVar);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean f(a aVar, com.google.android.play.core.common.a aVar2, d dVar, int i4) throws IntentSender.SendIntentException {
        if (aVar == null || aVar2 == null || dVar == null || !aVar.f(dVar) || aVar.n()) {
            return false;
        }
        aVar.m();
        aVar2.a(aVar.k(dVar).getIntentSender(), i4, null, 0, 0, 0, null);
        return true;
    }

    @Override // com.google.android.play.core.appupdate.b
    public final com.google.android.play.core.tasks.d<Integer> g(a aVar, Activity activity, d dVar) {
        if (aVar != null && activity != null && dVar != null && !aVar.n()) {
            if (!aVar.f(dVar)) {
                return com.google.android.play.core.tasks.f.d(new InstallException(-6));
            }
            aVar.m();
            Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
            intent.putExtra("confirmation_intent", aVar.k(dVar));
            com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
            intent.putExtra("result_receiver", new zzd(this, this.f31202d, oVar));
            activity.startActivity(intent);
            return oVar.a();
        }
        return com.google.android.play.core.tasks.f.d(new InstallException(-4));
    }

    @Override // com.google.android.play.core.appupdate.b
    public final boolean h(a aVar, @d3.b int i4, Activity activity, int i10) throws IntentSender.SendIntentException {
        d c10 = d.c(i4);
        if (activity == null) {
            return false;
        }
        return f(aVar, new i(this, activity), c10, i10);
    }

    @Override // com.google.android.play.core.appupdate.b
    public final synchronized void i(com.google.android.play.core.install.a aVar) {
        this.f31200b.f(aVar);
    }
}
