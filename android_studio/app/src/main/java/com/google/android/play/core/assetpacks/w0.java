package com.google.android.play.core.assetpacks;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w0 extends f {

    /* renamed from: a  reason: collision with root package name */
    private final long f31638a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f31639b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(long j4, Map map) {
        this.f31638a = j4;
        this.f31639b = map;
    }

    @Override // com.google.android.play.core.assetpacks.f
    public final Map<String, AssetPackState> a() {
        return this.f31639b;
    }

    @Override // com.google.android.play.core.assetpacks.f
    public final long b() {
        return this.f31638a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.f31638a == fVar.b() && this.f31639b.equals(fVar.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j4 = this.f31638a;
        return this.f31639b.hashCode() ^ ((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j4 = this.f31638a;
        String obj = this.f31639b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j4);
        sb.append(", packStates=");
        sb.append(obj);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
