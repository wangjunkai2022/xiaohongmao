package com.google.android.play.core.splitinstall;

import androidx.annotation.Nullable;
import com.google.android.play.core.internal.r1;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private final r1 f31907a;

    public m(r1 r1Var) {
        this.f31907a = r1Var;
    }

    @Override // com.google.android.play.core.internal.r1
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        File file = (File) this.f31907a.zza();
        if (file == null) {
            return null;
        }
        return com.google.android.play.core.splitinstall.testing.a0.a(file);
    }
}
