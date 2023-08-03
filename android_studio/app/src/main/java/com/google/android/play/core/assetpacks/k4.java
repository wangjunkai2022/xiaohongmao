package com.google.android.play.core.assetpacks;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class k4 implements c {

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31386m = new com.google.android.play.core.internal.h("AssetPackManager");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31387a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31388b;

    /* renamed from: c  reason: collision with root package name */
    private final j0 f31389c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.splitinstall.f1 f31390d;

    /* renamed from: e  reason: collision with root package name */
    private final o2 f31391e;

    /* renamed from: f  reason: collision with root package name */
    private final x1 f31392f;

    /* renamed from: g  reason: collision with root package name */
    private final f1 f31393g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31394h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.play.core.common.c f31395i;

    /* renamed from: j  reason: collision with root package name */
    private final m3 f31396j;

    /* renamed from: k  reason: collision with root package name */
    private final Handler f31397k = new Handler(Looper.getMainLooper());

    /* renamed from: l  reason: collision with root package name */
    private boolean f31398l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k4(p0 p0Var, com.google.android.play.core.internal.n1 n1Var, j0 j0Var, com.google.android.play.core.splitinstall.f1 f1Var, o2 o2Var, x1 x1Var, f1 f1Var2, com.google.android.play.core.internal.n1 n1Var2, com.google.android.play.core.common.c cVar, m3 m3Var) {
        this.f31387a = p0Var;
        this.f31388b = n1Var;
        this.f31389c = j0Var;
        this.f31390d = f1Var;
        this.f31391e = o2Var;
        this.f31392f = x1Var;
        this.f31393g = f1Var2;
        this.f31394h = n1Var2;
        this.f31395i = cVar;
        this.f31396j = m3Var;
    }

    private final void s() {
        ((Executor) this.f31394h.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.i4
            @Override // java.lang.Runnable
            public final void run() {
                k4.this.q();
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final synchronized void a(e eVar) {
        boolean h4 = this.f31389c.h();
        this.f31389c.d(eVar);
        if (h4) {
            return;
        }
        s();
    }

    @Override // com.google.android.play.core.assetpacks.c
    @Nullable
    public final a b(String str, String str2) {
        b w9;
        if (!this.f31398l) {
            ((Executor) this.f31394h.zza()).execute(new h4(this));
            this.f31398l = true;
        }
        if (this.f31387a.g(str)) {
            try {
                w9 = this.f31387a.w(str);
            } catch (IOException unused) {
            }
        } else {
            if (this.f31390d.c().contains(str)) {
                w9 = b.d();
            }
            w9 = null;
        }
        if (w9 == null) {
            return null;
        }
        if (w9.b() == 1) {
            p0 p0Var = this.f31387a;
            return p0Var.u(str, str2, p0Var.J(str));
        } else if (w9.b() == 0) {
            return this.f31387a.v(str, str2, w9);
        } else {
            f31386m.a("The asset %s is not present in Asset Pack %s", str2, str);
            return null;
        }
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final com.google.android.play.core.tasks.d<Integer> c(Activity activity) {
        if (activity == null) {
            return com.google.android.play.core.tasks.f.d(new AssetPackException(-3));
        }
        if (this.f31393g.a() == null) {
            return com.google.android.play.core.tasks.f.d(new AssetPackException(-12));
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", this.f31393g.a());
        com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        intent.putExtra("result_receiver", new zzk(this, this.f31397k, oVar));
        activity.startActivity(intent);
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final com.google.android.play.core.tasks.d<f> d(List<String> list) {
        Map L = this.f31387a.L();
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        if (!this.f31395i.a("assetOnlyUpdates")) {
            arrayList.removeAll(L.keySet());
            arrayList2.addAll(list);
            arrayList2.removeAll(arrayList);
        }
        if (arrayList.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putInt("session_id", 0);
            bundle.putInt("error_code", 0);
            for (String str : list) {
                bundle.putInt(b3.e.a("status", str), 4);
                bundle.putInt(b3.e.a("error_code", str), 0);
                bundle.putLong(b3.e.a("total_bytes_to_download", str), 0L);
                bundle.putLong(b3.e.a("bytes_downloaded", str), 0L);
            }
            bundle.putStringArrayList("pack_names", new ArrayList<>(list));
            bundle.putLong("total_bytes_to_download", 0L);
            bundle.putLong("bytes_downloaded", 0L);
            return com.google.android.play.core.tasks.f.e(f.c(bundle, this.f31392f, this.f31396j));
        }
        return ((x4) this.f31388b.zza()).d(arrayList2, arrayList, L);
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final void e() {
        this.f31389c.c();
    }

    @Override // com.google.android.play.core.assetpacks.c
    @Nullable
    public final b f(String str) {
        if (!this.f31398l) {
            ((Executor) this.f31394h.zza()).execute(new h4(this));
            this.f31398l = true;
        }
        if (this.f31387a.g(str)) {
            try {
                return this.f31387a.w(str);
            } catch (IOException unused) {
                return null;
            }
        } else if (this.f31390d.c().contains(str)) {
            return b.d();
        } else {
            return null;
        }
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final void g(e eVar) {
        this.f31389c.f(eVar);
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final com.google.android.play.core.tasks.d<Void> h(final String str) {
        final com.google.android.play.core.tasks.o oVar = new com.google.android.play.core.tasks.o();
        ((Executor) this.f31394h.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.j4
            @Override // java.lang.Runnable
            public final void run() {
                k4.this.o(str, oVar);
            }
        });
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final f i(List<String> list) {
        Map f10 = this.f31391e.f(list);
        HashMap hashMap = new HashMap();
        for (String str : list) {
            Integer num = (Integer) f10.get(str);
            hashMap.put(str, AssetPackState.h(str, num == null ? 0 : num.intValue(), 0, 0L, 0L, 0.0d, 0, "", ""));
        }
        ((x4) this.f31388b.zza()).f(list);
        return new w0(0L, hashMap);
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final com.google.android.play.core.tasks.d<f> j(List<String> list) {
        return ((x4) this.f31388b.zza()).a(list, new k3(this), this.f31387a.L());
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final Map<String, b> k() {
        Map<String, b> M = this.f31387a.M();
        HashMap hashMap = new HashMap();
        for (String str : this.f31390d.c()) {
            hashMap.put(str, b.d());
        }
        M.putAll(hashMap);
        return M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @b3.b
    @VisibleForTesting
    public final int l(@b3.b int i4, String str) {
        if (this.f31387a.g(str) || i4 != 4) {
            if (!this.f31387a.g(str) || i4 == 4) {
                return i4;
            }
            return 4;
        }
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void n() {
        this.f31387a.P();
        this.f31387a.N();
        this.f31387a.O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void o(String str, com.google.android.play.core.tasks.o oVar) {
        if (this.f31387a.d(str)) {
            oVar.c(null);
            ((x4) this.f31388b.zza()).i(str);
            return;
        }
        oVar.b(new IOException(String.format("Failed to remove pack %s.", str)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void q() {
        com.google.android.play.core.tasks.d h4 = ((x4) this.f31388b.zza()).h(this.f31387a.L());
        final p0 p0Var = this.f31387a;
        p0Var.getClass();
        h4.f((Executor) this.f31394h.zza(), new com.google.android.play.core.tasks.c() { // from class: com.google.android.play.core.assetpacks.g4
            @Override // com.google.android.play.core.tasks.c
            public final void onSuccess(Object obj) {
                p0.this.c((List) obj);
            }
        });
        h4.d((Executor) this.f31394h.zza(), f4.f31306a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r(boolean z9) {
        boolean h4 = this.f31389c.h();
        this.f31389c.e(z9);
        if (!z9 || h4) {
            return;
        }
        s();
    }
}
