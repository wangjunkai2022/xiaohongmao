package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class l implements p {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ FrameLayout f29320a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ LayoutInflater f29321b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ViewGroup f29322c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f29323d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ a f29324e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(a aVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f29324e = aVar;
        this.f29320a = frameLayout;
        this.f29321b = layoutInflater;
        this.f29322c = viewGroup;
        this.f29323d = bundle;
    }

    @Override // com.google.android.gms.dynamic.p
    public final void a(e eVar) {
        e eVar2;
        this.f29320a.removeAllViews();
        FrameLayout frameLayout = this.f29320a;
        eVar2 = this.f29324e.f29306a;
        frameLayout.addView(eVar2.e(this.f29321b, this.f29322c, this.f29323d));
    }

    @Override // com.google.android.gms.dynamic.p
    public final int zaa() {
        return 2;
    }
}
