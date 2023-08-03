package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class u0 extends b {

    /* renamed from: b  reason: collision with root package name */
    private final int f31590b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31591c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31592d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(int i4, @Nullable String str, @Nullable String str2) {
        this.f31590b = i4;
        this.f31591c = str;
        this.f31592d = str2;
    }

    @Override // com.google.android.play.core.assetpacks.b
    @Nullable
    public final String a() {
        return this.f31592d;
    }

    @Override // com.google.android.play.core.assetpacks.b
    @b3.c
    public final int b() {
        return this.f31590b;
    }

    @Override // com.google.android.play.core.assetpacks.b
    @Nullable
    public final String c() {
        return this.f31591c;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f31590b == bVar.b() && ((str = this.f31591c) != null ? str.equals(bVar.c()) : bVar.c() == null) && ((str2 = this.f31592d) != null ? str2.equals(bVar.a()) : bVar.a() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i4 = (this.f31590b ^ 1000003) * 1000003;
        String str = this.f31591c;
        int hashCode = (i4 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f31592d;
        return hashCode ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        int i4 = this.f31590b;
        String str = this.f31591c;
        String str2 = this.f31592d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str2).length());
        sb.append("AssetPackLocation{packStorageMethod=");
        sb.append(i4);
        sb.append(", path=");
        sb.append(str);
        sb.append(", assetsPath=");
        sb.append(str2);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
