package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class aa extends da {

    /* renamed from: a  reason: collision with root package name */
    private final String f30330a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30331b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30332c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aa(String str, boolean z9, int i4, z9 z9Var) {
        this.f30330a = str;
        this.f30331b = z9;
        this.f30332c = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.da
    public final int a() {
        return this.f30332c;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.da
    public final String b() {
        return this.f30330a;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.da
    public final boolean c() {
        return this.f30331b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof da) {
            da daVar = (da) obj;
            if (this.f30330a.equals(daVar.b()) && this.f30331b == daVar.c() && this.f30332c == daVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f30330a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f30331b ? 1237 : 1231)) * 1000003) ^ this.f30332c;
    }

    public final String toString() {
        String str = this.f30330a;
        boolean z9 = this.f30331b;
        int i4 = this.f30332c;
        return "MLKitLoggingOptions{libraryName=" + str + ", enableFirelog=" + z9 + ", firelogEventType=" + i4 + com.alipay.sdk.util.i.f6967d;
    }
}
