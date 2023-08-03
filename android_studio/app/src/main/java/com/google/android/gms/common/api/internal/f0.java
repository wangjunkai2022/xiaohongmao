package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.l;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class f0 implements l.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BasePendingResult f28686a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h0 f28687b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(h0 h0Var, BasePendingResult basePendingResult) {
        this.f28687b = h0Var;
        this.f28686a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.l.a
    public final void a(Status status) {
        Map map;
        map = this.f28687b.f28704a;
        map.remove(this.f28686a);
    }
}
