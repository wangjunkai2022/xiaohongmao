package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class g0 implements com.google.android.gms.tasks.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.tasks.l f28692a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h0 f28693b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h0 h0Var, com.google.android.gms.tasks.l lVar) {
        this.f28693b = h0Var;
        this.f28692a = lVar;
    }

    @Override // com.google.android.gms.tasks.e
    public final void a(@NonNull com.google.android.gms.tasks.k kVar) {
        Map map;
        map = this.f28693b.f28705b;
        map.remove(this.f28692a);
    }
}
