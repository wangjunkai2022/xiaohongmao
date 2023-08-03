package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class j implements p {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f29314a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f29315b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Bundle f29316c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a f29317d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(a aVar, Activity activity, Bundle bundle, Bundle bundle2) {
        this.f29317d = aVar;
        this.f29314a = activity;
        this.f29315b = bundle;
        this.f29316c = bundle2;
    }

    @Override // com.google.android.gms.dynamic.p
    public final void a(e eVar) {
        e eVar2;
        eVar2 = this.f29317d.f29306a;
        eVar2.d(this.f29314a, this.f29315b, this.f29316c);
    }

    @Override // com.google.android.gms.dynamic.p
    public final int zaa() {
        return 0;
    }
}
