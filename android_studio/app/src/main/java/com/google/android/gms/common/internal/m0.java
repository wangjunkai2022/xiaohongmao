package com.google.android.gms.common.internal;

import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class m0 extends n0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f29160a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.internal.m f29161b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(Intent intent, com.google.android.gms.common.api.internal.m mVar, int i4) {
        this.f29160a = intent;
        this.f29161b = mVar;
    }

    @Override // com.google.android.gms.common.internal.n0
    public final void a() {
        Intent intent = this.f29160a;
        if (intent != null) {
            this.f29161b.startActivityForResult(intent, 2);
        }
    }
}
