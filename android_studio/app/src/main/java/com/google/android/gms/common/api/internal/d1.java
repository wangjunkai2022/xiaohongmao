package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.i;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class d1 implements i.b {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ AtomicReference f28663c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ z f28664d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ j1 f28665e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(j1 j1Var, AtomicReference atomicReference, z zVar) {
        this.f28665e = j1Var;
        this.f28663c = atomicReference;
        this.f28664d = zVar;
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void s(@Nullable Bundle bundle) {
        this.f28665e.T((com.google.android.gms.common.api.i) com.google.android.gms.common.internal.u.k((com.google.android.gms.common.api.i) this.f28663c.get()), this.f28664d, true);
    }

    @Override // com.google.android.gms.common.api.internal.f
    public final void x(int i4) {
    }
}
