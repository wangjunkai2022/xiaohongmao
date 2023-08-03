package com.google.android.play.core.assetpacks;

import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class t0 extends a {

    /* renamed from: a  reason: collision with root package name */
    private final String f31581a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31582b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31583c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(String str, long j4, long j10) {
        Objects.requireNonNull(str, "Null path");
        this.f31581a = str;
        this.f31582b = j4;
        this.f31583c = j10;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final long a() {
        return this.f31582b;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final String b() {
        return this.f31581a;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final long c() {
        return this.f31583c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f31581a.equals(aVar.b()) && this.f31582b == aVar.a() && this.f31583c == aVar.c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f31581a.hashCode();
        long j4 = this.f31582b;
        long j10 = this.f31583c;
        return ((((hashCode ^ 1000003) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10));
    }

    public final String toString() {
        String str = this.f31581a;
        long j4 = this.f31582b;
        long j10 = this.f31583c;
        StringBuilder sb = new StringBuilder(str.length() + 76);
        sb.append("AssetLocation{path=");
        sb.append(str);
        sb.append(", offset=");
        sb.append(j4);
        sb.append(", size=");
        sb.append(j10);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
