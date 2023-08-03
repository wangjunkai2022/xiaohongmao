package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class x0 extends x3 {

    /* renamed from: a  reason: collision with root package name */
    private final int f31656a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31657b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31658c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31659d;

    /* renamed from: e  reason: collision with root package name */
    private final int f31660e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(int i4, @Nullable String str, long j4, long j10, int i10) {
        this.f31656a = i4;
        this.f31657b = str;
        this.f31658c = j4;
        this.f31659d = j10;
        this.f31660e = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.x3
    public final int a() {
        return this.f31656a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.x3
    public final int b() {
        return this.f31660e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.x3
    public final long c() {
        return this.f31658c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.x3
    public final long d() {
        return this.f31659d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.x3
    @Nullable
    public final String e() {
        return this.f31657b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof x3) {
            x3 x3Var = (x3) obj;
            if (this.f31656a == x3Var.a() && ((str = this.f31657b) != null ? str.equals(x3Var.e()) : x3Var.e() == null) && this.f31658c == x3Var.c() && this.f31659d == x3Var.d() && this.f31660e == x3Var.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i4 = (this.f31656a ^ 1000003) * 1000003;
        String str = this.f31657b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j4 = this.f31658c;
        long j10 = this.f31659d;
        return ((((((i4 ^ hashCode) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.f31660e;
    }

    public final String toString() {
        int i4 = this.f31656a;
        String str = this.f31657b;
        long j4 = this.f31658c;
        long j10 = this.f31659d;
        int i10 = this.f31660e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 157);
        sb.append("SliceCheckpoint{fileExtractionStatus=");
        sb.append(i4);
        sb.append(", filePath=");
        sb.append(str);
        sb.append(", fileOffset=");
        sb.append(j4);
        sb.append(", remainingBytes=");
        sb.append(j10);
        sb.append(", previousChunk=");
        sb.append(i10);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
