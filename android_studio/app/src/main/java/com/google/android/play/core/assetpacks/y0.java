package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class y0 extends e4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f31670a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31671b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31672c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f31673d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f31674e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f31675f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(@Nullable String str, long j4, int i4, boolean z9, boolean z10, @Nullable byte[] bArr) {
        this.f31670a = str;
        this.f31671b = j4;
        this.f31672c = i4;
        this.f31673d = z9;
        this.f31674e = z10;
        this.f31675f = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    public final int a() {
        return this.f31672c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    public final long b() {
        return this.f31671b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    @Nullable
    public final String c() {
        return this.f31670a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    public final boolean d() {
        return this.f31674e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    public final boolean e() {
        return this.f31673d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e4) {
            e4 e4Var = (e4) obj;
            String str = this.f31670a;
            if (str != null ? str.equals(e4Var.c()) : e4Var.c() == null) {
                if (this.f31671b == e4Var.b() && this.f31672c == e4Var.a() && this.f31673d == e4Var.e() && this.f31674e == e4Var.d()) {
                    if (Arrays.equals(this.f31675f, e4Var instanceof y0 ? ((y0) e4Var).f31675f : e4Var.f())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e4
    @Nullable
    public final byte[] f() {
        return this.f31675f;
    }

    public final int hashCode() {
        String str = this.f31670a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j4 = this.f31671b;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003) ^ this.f31672c) * 1000003) ^ (true != this.f31673d ? 1237 : 1231)) * 1000003) ^ (true == this.f31674e ? 1231 : 1237)) * 1000003) ^ Arrays.hashCode(this.f31675f);
    }

    public final String toString() {
        String str = this.f31670a;
        long j4 = this.f31671b;
        int i4 = this.f31672c;
        boolean z9 = this.f31673d;
        boolean z10 = this.f31674e;
        String arrays = Arrays.toString(this.f31675f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(arrays).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j4);
        sb.append(", compressionMethod=");
        sb.append(i4);
        sb.append(", isPartial=");
        sb.append(z9);
        sb.append(", isEndOfArchive=");
        sb.append(z10);
        sb.append(", headerBytes=");
        sb.append(arrays);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
