package com.google.android.play.core.appupdate;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class a0 extends d {

    /* renamed from: a  reason: collision with root package name */
    private final int f31186a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31187b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a0(int i4, boolean z9, z zVar) {
        this.f31186a = i4;
        this.f31187b = z9;
    }

    @Override // com.google.android.play.core.appupdate.d
    public final boolean a() {
        return this.f31187b;
    }

    @Override // com.google.android.play.core.appupdate.d
    @d3.b
    public final int b() {
        return this.f31186a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f31186a == dVar.b() && this.f31187b == dVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f31186a ^ 1000003) * 1000003) ^ (true != this.f31187b ? 1237 : 1231);
    }

    public final String toString() {
        int i4 = this.f31186a;
        boolean z9 = this.f31187b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("AppUpdateOptions{appUpdateType=");
        sb.append(i4);
        sb.append(", allowAssetPackDeletion=");
        sb.append(z9);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
