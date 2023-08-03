package com.google.android.play.core.splitinstall.testing;

import com.google.android.play.core.internal.p1;
import com.google.android.play.core.internal.r1;
import com.google.android.play.core.splitinstall.f1;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class t implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private final r1 f31994a;

    /* renamed from: b  reason: collision with root package name */
    private final r1 f31995b;

    /* renamed from: c  reason: collision with root package name */
    private final r1 f31996c;

    /* renamed from: d  reason: collision with root package name */
    private final r1 f31997d;

    public t(r1 r1Var, r1 r1Var2, r1 r1Var3, r1 r1Var4) {
        this.f31994a = r1Var;
        this.f31995b = r1Var2;
        this.f31996c = r1Var3;
        this.f31997d = r1Var4;
    }

    @Override // com.google.android.play.core.internal.r1
    public final /* bridge */ /* synthetic */ Object zza() {
        return new a(((com.google.android.play.core.splitinstall.l) this.f31994a).a(), (File) this.f31995b.zza(), (f1) this.f31996c.zza(), p1.a(this.f31997d));
    }
}
