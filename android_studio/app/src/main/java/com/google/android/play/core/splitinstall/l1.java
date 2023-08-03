package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class l1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f31905a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ i f31906b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1(i iVar, e eVar) {
        this.f31906b = iVar;
        this.f31905a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k1 k1Var;
        List s9;
        k1Var = this.f31906b.f31877b;
        List<String> b10 = this.f31905a.b();
        s9 = i.s(this.f31905a.a());
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", 0);
        bundle.putInt("status", 5);
        bundle.putInt("error_code", 0);
        if (!b10.isEmpty()) {
            bundle.putStringArrayList("module_names", new ArrayList<>(b10));
        }
        if (!s9.isEmpty()) {
            bundle.putStringArrayList("languages", new ArrayList<>(s9));
        }
        bundle.putLong("total_bytes_to_download", 0L);
        bundle.putLong("bytes_downloaded", 0L);
        k1Var.n(f.n(bundle));
    }
}
