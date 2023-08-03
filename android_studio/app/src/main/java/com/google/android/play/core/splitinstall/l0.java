package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class l0 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31901c = new com.google.android.play.core.internal.h("SplitInstallService");

    /* renamed from: d  reason: collision with root package name */
    private static final Intent f31902d = new Intent("com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE").setPackage("com.android.vending");

    /* renamed from: a  reason: collision with root package name */
    private final String f31903a;
    @Nullable
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    com.google.android.play.core.internal.t f31904b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Context context, String str) {
        this.f31903a = str;
        if (com.google.android.play.core.internal.h1.b(context)) {
            this.f31904b = new com.google.android.play.core.internal.t(com.google.android.play.core.internal.e1.a(context), f31901c, "SplitInstallService", f31902d, s.f31917a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11003);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ ArrayList l(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("language", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ ArrayList m(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private static com.google.android.play.core.tasks.d n() {
        f31901c.b("onError(%d)", -14);
        return com.google.android.play.core.tasks.f.d(new SplitInstallException(-14));
    }

    public final com.google.android.play.core.tasks.d c(int i4) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("cancelInstall(%d)", Integer.valueOf(i4));
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new a0(this, oVar, i4, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d d(List list) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("deferredInstall(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new v(this, oVar, list, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d e(List list) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("deferredLanguageInstall(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new w(this, oVar, list, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d f(List list) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("deferredLanguageUninstall(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new x(this, oVar, list, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d g(List list) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("deferredUninstall(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new u(this, oVar, list, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d h(int i4) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("getSessionState(%d)", Integer.valueOf(i4));
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new y(this, oVar, i4, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d i() {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("getSessionStates", new Object[0]);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new z(this, oVar, oVar), oVar);
        return oVar.a();
    }

    public final com.google.android.play.core.tasks.d j(Collection collection, Collection collection2) {
        if (this.f31904b == null) {
            return n();
        }
        f31901c.d("startInstall(%s,%s)", collection, collection2);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31904b.q(new t(this, oVar, collection, collection2, oVar), oVar);
        return oVar.a();
    }
}
