package com.google.android.play.core.splitinstall.testing;

import androidx.annotation.Nullable;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class e extends v {

    /* renamed from: b  reason: collision with root package name */
    private final Integer f31957b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f31958c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e(Integer num, Map map, d dVar) {
        this.f31957b = num;
        this.f31958c = map;
    }

    @Override // com.google.android.play.core.splitinstall.testing.v
    @Nullable
    @g3.a
    public final Integer a() {
        return this.f31957b;
    }

    @Override // com.google.android.play.core.splitinstall.testing.v
    public final Map b() {
        return this.f31958c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            Integer num = this.f31957b;
            if (num != null ? num.equals(vVar.a()) : vVar.a() == null) {
                if (this.f31958c.equals(vVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f31957b;
        return (((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f31958c.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f31957b);
        String valueOf2 = String.valueOf(this.f31958c);
        StringBuilder sb = new StringBuilder(valueOf.length() + 81 + valueOf2.length());
        sb.append("LocalTestingConfig{defaultSplitInstallErrorCode=");
        sb.append(valueOf);
        sb.append(", splitInstallErrorCodeByModule=");
        sb.append(valueOf2);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
