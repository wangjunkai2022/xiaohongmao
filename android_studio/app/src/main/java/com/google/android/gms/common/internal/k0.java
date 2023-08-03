package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class k0 extends n0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f29150a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Activity f29151b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f29152c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(Intent intent, Activity activity, int i4) {
        this.f29150a = intent;
        this.f29151b = activity;
        this.f29152c = i4;
    }

    @Override // com.google.android.gms.common.internal.n0
    public final void a() {
        Intent intent = this.f29150a;
        if (intent != null) {
            this.f29151b.startActivityForResult(intent, this.f29152c);
        }
    }
}
