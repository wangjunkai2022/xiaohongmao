package com.google.android.play.core.splitinstall.testing;

import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c extends u {

    /* renamed from: a  reason: collision with root package name */
    private Integer f31955a;

    /* renamed from: b  reason: collision with root package name */
    private Map f31956b;

    @Override // com.google.android.play.core.splitinstall.testing.u
    final u a(int i4) {
        this.f31955a = Integer.valueOf(i4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.testing.u
    public final u b(Map map) {
        Objects.requireNonNull(map, "Null splitInstallErrorCodeByModule");
        this.f31956b = map;
        return this;
    }

    @Override // com.google.android.play.core.splitinstall.testing.u
    final v c() {
        if (this.f31956b != null) {
            return new e(this.f31955a, this.f31956b, null);
        }
        throw new IllegalStateException("Missing required properties: splitInstallErrorCodeByModule");
    }

    @Override // com.google.android.play.core.splitinstall.testing.u
    final Map d() {
        Map map = this.f31956b;
        if (map != null) {
            return map;
        }
        throw new IllegalStateException("Property \"splitInstallErrorCodeByModule\" has not been set");
    }
}
