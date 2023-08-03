package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.r1;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m0 implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private final r1 f31908a;

    public m0(r1 r1Var) {
        this.f31908a = r1Var;
    }

    @Override // com.google.android.play.core.internal.r1
    public final /* bridge */ /* synthetic */ Object zza() {
        Context a10 = ((l) this.f31908a).a();
        return new l0(a10, a10.getPackageName());
    }
}
