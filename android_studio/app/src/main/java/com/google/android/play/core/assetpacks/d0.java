package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class d0 implements x4 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31271g = new com.google.android.play.core.internal.h("AssetPackServiceImpl");

    /* renamed from: h  reason: collision with root package name */
    private static final Intent f31272h = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: a  reason: collision with root package name */
    private final String f31273a;

    /* renamed from: b  reason: collision with root package name */
    private final x1 f31274b;

    /* renamed from: c  reason: collision with root package name */
    private final m3 f31275c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.play.core.internal.t f31276d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.play.core.internal.t f31277e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f31278f = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(Context context, x1 x1Var, m3 m3Var) {
        this.f31273a = context.getPackageName();
        this.f31274b = x1Var;
        this.f31275c = m3Var;
        if (com.google.android.play.core.internal.h1.b(context)) {
            Context a10 = com.google.android.play.core.internal.e1.a(context);
            com.google.android.play.core.internal.h hVar = f31271g;
            Intent intent = f31272h;
            y4 y4Var = y4.f31695a;
            this.f31276d = new com.google.android.play.core.internal.t(a10, hVar, "AssetPackService", intent, y4Var, null);
            this.f31277e = new com.google.android.play.core.internal.t(com.google.android.play.core.internal.e1.a(context), hVar, "AssetPackService-keepAlive", intent, y4Var, null);
        }
        f31271g.a("AssetPackService initiated.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ List A(d0 d0Var, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AssetPackState next = f.c((Bundle) it.next(), d0Var.f31274b, d0Var.f31275c).a().values().iterator().next();
            if (next == null) {
                f31271g.b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (o0.a(next.d())) {
                arrayList.add(next.c());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle D(int i4, String str) {
        Bundle k10 = k(i4);
        k10.putString("module_name", str);
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11003);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(1);
        arrayList2.add(2);
        bundle.putIntegerArrayList("supported_patch_formats", arrayList2);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle k(int i4) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i4);
        return bundle;
    }

    private static com.google.android.play.core.tasks.d l() {
        f31271g.b("onError(%d)", -11);
        return com.google.android.play.core.tasks.f.d(new AssetPackException(-11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(int i4, String str, int i10) {
        if (this.f31276d != null) {
            f31271g.d("notifyModuleCompleted", new Object[0]);
            com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
            this.f31276d.q(new o(this, oVar, i4, str, oVar, i10), oVar);
            return;
        }
        throw new t1("The Play Store app is not installed or is an unofficial version.", i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle o(int i4, String str, String str2, int i10) {
        Bundle D = D(i4, str);
        D.putString("slice_id", str2);
        D.putInt("chunk_number", i10);
        return D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle r(Map map) {
        Bundle j4 = j();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        j4.putParcelableArrayList("installed_asset_module", arrayList);
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ ArrayList z(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d a(List list, m0 m0Var, Map map) {
        if (this.f31276d == null) {
            return l();
        }
        f31271g.d("getPackStates(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new m(this, oVar, list, map, oVar, m0Var), oVar);
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void b(int i4, String str) {
        m(i4, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d c(int i4, String str, String str2, int i10) {
        if (this.f31276d == null) {
            return l();
        }
        f31271g.d("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i10), Integer.valueOf(i4));
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new q(this, oVar, i4, str, str2, i10, oVar), oVar);
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d d(List list, List list2, Map map) {
        if (this.f31276d == null) {
            return l();
        }
        f31271g.d("startDownload(%s)", list2);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new j(this, oVar, list2, map, oVar, list), oVar);
        oVar.a().e(new com.google.android.play.core.tasks.c() { // from class: com.google.android.play.core.assetpacks.h
            @Override // com.google.android.play.core.tasks.c
            public final void onSuccess(Object obj) {
                f fVar = (f) obj;
                d0.this.n();
            }
        });
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void e(int i4) {
        if (this.f31276d != null) {
            f31271g.d("notifySessionFailed", new Object[0]);
            com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
            this.f31276d.q(new p(this, oVar, i4, oVar), oVar);
            return;
        }
        throw new t1("The Play Store app is not installed or is an unofficial version.", i4);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void f(List list) {
        if (this.f31276d == null) {
            return;
        }
        f31271g.d("cancelDownloads(%s)", list);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new k(this, oVar, list, oVar), oVar);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void g(int i4, String str, String str2, int i10) {
        if (this.f31276d != null) {
            f31271g.d("notifyChunkTransferred", new Object[0]);
            com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
            this.f31276d.q(new n(this, oVar, i4, str, str2, i10, oVar), oVar);
            return;
        }
        throw new t1("The Play Store app is not installed or is an unofficial version.", i4);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final com.google.android.play.core.tasks.d h(Map map) {
        if (this.f31276d == null) {
            return l();
        }
        f31271g.d("syncPacks", new Object[0]);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new l(this, oVar, map, oVar), oVar);
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final void i(String str) {
        if (this.f31276d == null) {
            return;
        }
        f31271g.d("removePack(%s)", str);
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31276d.q(new i(this, oVar, str, oVar), oVar);
    }

    @Override // com.google.android.play.core.assetpacks.x4
    public final synchronized void n() {
        if (this.f31277e == null) {
            f31271g.e("Keep alive connection manager is not initialized.", new Object[0]);
            return;
        }
        com.google.android.play.core.internal.h hVar = f31271g;
        hVar.d("keepAlive", new Object[0]);
        if (!this.f31278f.compareAndSet(false, true)) {
            hVar.d("Service is already kept alive.", new Object[0]);
            return;
        }
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        this.f31277e.q(new r(this, oVar, oVar), oVar);
    }
}
