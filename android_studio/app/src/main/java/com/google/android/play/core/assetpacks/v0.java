package com.google.android.play.core.assetpacks;

import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class v0 extends AssetPackState {

    /* renamed from: a  reason: collision with root package name */
    private final String f31611a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31612b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31613c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31614d;

    /* renamed from: e  reason: collision with root package name */
    private final long f31615e;

    /* renamed from: f  reason: collision with root package name */
    private final int f31616f;

    /* renamed from: g  reason: collision with root package name */
    private final int f31617g;

    /* renamed from: h  reason: collision with root package name */
    private final String f31618h;

    /* renamed from: i  reason: collision with root package name */
    private final String f31619i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(String str, int i4, int i10, long j4, long j10, int i11, int i12, String str2, String str3) {
        Objects.requireNonNull(str, "Null name");
        this.f31611a = str;
        this.f31612b = i4;
        this.f31613c = i10;
        this.f31614d = j4;
        this.f31615e = j10;
        this.f31616f = i11;
        this.f31617g = i12;
        Objects.requireNonNull(str2, "Null availableVersionTag");
        this.f31618h = str2;
        Objects.requireNonNull(str3, "Null installedVersionTag");
        this.f31619i = str3;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long a() {
        return this.f31614d;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    @b3.a
    public final int b() {
        return this.f31613c;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String c() {
        return this.f31611a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    @b3.b
    public final int d() {
        return this.f31612b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long e() {
        return this.f31615e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetPackState) {
            AssetPackState assetPackState = (AssetPackState) obj;
            if (this.f31611a.equals(assetPackState.c()) && this.f31612b == assetPackState.d() && this.f31613c == assetPackState.b() && this.f31614d == assetPackState.a() && this.f31615e == assetPackState.e() && this.f31616f == assetPackState.f() && this.f31617g == assetPackState.g() && this.f31618h.equals(assetPackState.j()) && this.f31619i.equals(assetPackState.k())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int f() {
        return this.f31616f;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int g() {
        return this.f31617g;
    }

    public final int hashCode() {
        int hashCode = this.f31611a.hashCode();
        int i4 = this.f31612b;
        int i10 = this.f31613c;
        long j4 = this.f31614d;
        long j10 = this.f31615e;
        return ((((((((((((((((hashCode ^ 1000003) * 1000003) ^ i4) * 1000003) ^ i10) * 1000003) ^ ((int) ((j4 >>> 32) ^ j4))) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.f31616f) * 1000003) ^ this.f31617g) * 1000003) ^ this.f31618h.hashCode()) * 1000003) ^ this.f31619i.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String j() {
        return this.f31618h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String k() {
        return this.f31619i;
    }

    public final String toString() {
        String str = this.f31611a;
        int i4 = this.f31612b;
        int i10 = this.f31613c;
        long j4 = this.f31614d;
        long j10 = this.f31615e;
        int i11 = this.f31616f;
        int i12 = this.f31617g;
        String str2 = this.f31618h;
        String str3 = this.f31619i;
        StringBuilder sb = new StringBuilder(str.length() + 261 + str2.length() + str3.length());
        sb.append("AssetPackState{name=");
        sb.append(str);
        sb.append(", status=");
        sb.append(i4);
        sb.append(", errorCode=");
        sb.append(i10);
        sb.append(", bytesDownloaded=");
        sb.append(j4);
        sb.append(", totalBytesToDownload=");
        sb.append(j10);
        sb.append(", transferProgressPercentage=");
        sb.append(i11);
        sb.append(", updateAvailability=");
        sb.append(i12);
        sb.append(", availableVersionTag=");
        sb.append(str2);
        sb.append(", installedVersionTag=");
        sb.append(str3);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
