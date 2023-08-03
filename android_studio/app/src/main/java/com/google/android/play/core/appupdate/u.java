package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.e1;
import com.google.android.play.core.internal.h1;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class u {

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31221e = new com.google.android.play.core.internal.h("AppUpdateService");

    /* renamed from: f  reason: collision with root package name */
    private static final Intent f31222f = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    com.google.android.play.core.internal.t f31223a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31224b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31225c;

    /* renamed from: d  reason: collision with root package name */
    private final w f31226d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Context context, w wVar) {
        this.f31224b = context.getPackageName();
        this.f31225c = context;
        this.f31226d = wVar;
        if (h1.b(context)) {
            this.f31223a = new com.google.android.play.core.internal.t(e1.a(context), f31221e, "AppUpdateService", f31222f, o.f31209a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle b(u uVar, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(i());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(uVar.f31225c.getPackageManager().getPackageInfo(uVar.f31225c.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            f31221e.b("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle i() {
        Bundle bundle = new Bundle();
        bundle.putAll(com.google.android.play.core.common.b.b("app_update"));
        bundle.putInt("playcore.version.code", 11003);
        return bundle;
    }

    private static com.google.android.play.core.tasks.d j() {
        f31221e.b("onError(%d)", -9);
        return com.google.android.play.core.tasks.f.d(new InstallException(-9));
    }

    public final com.google.android.play.core.tasks.d f(String str) {
        if (this.f31223a == null) {
            return j();
        }
        f31221e.d("completeUpdate(%s)", str);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31223a.q(new q(this, oVar, oVar, str), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d g(String str) {
        if (this.f31223a == null) {
            return j();
        }
        f31221e.d("requestUpdateInfo(%s)", str);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31223a.q(new p(this, oVar, str, oVar), oVar);
        return oVar.a();
    }
}
