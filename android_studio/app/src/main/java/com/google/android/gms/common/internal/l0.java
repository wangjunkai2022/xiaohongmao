package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class l0 extends n0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f29153a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Fragment f29154b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f29155c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Intent intent, Fragment fragment, int i4) {
        this.f29153a = intent;
        this.f29154b = fragment;
        this.f29155c = i4;
    }

    @Override // com.google.android.gms.common.internal.n0
    public final void a() {
        Intent intent = this.f29153a;
        if (intent != null) {
            this.f29154b.startActivityForResult(intent, this.f29155c);
        }
    }
}
