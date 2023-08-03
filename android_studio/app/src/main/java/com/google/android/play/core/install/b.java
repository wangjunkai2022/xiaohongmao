package com.google.android.play.core.install;

import com.alipay.sdk.util.i;
import d3.c;
import d3.d;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b extends InstallState {

    /* renamed from: a  reason: collision with root package name */
    private final int f31713a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31714b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31715c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31716d;

    /* renamed from: e  reason: collision with root package name */
    private final String f31717e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i4, long j4, long j10, int i10, String str) {
        this.f31713a = i4;
        this.f31714b = j4;
        this.f31715c = j10;
        this.f31716d = i10;
        Objects.requireNonNull(str, "Null packageName");
        this.f31717e = str;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long a() {
        return this.f31714b;
    }

    @Override // com.google.android.play.core.install.InstallState
    @c
    public final int b() {
        return this.f31716d;
    }

    @Override // com.google.android.play.core.install.InstallState
    @d
    public final int c() {
        return this.f31713a;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final String d() {
        return this.f31717e;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long e() {
        return this.f31715c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallState) {
            InstallState installState = (InstallState) obj;
            if (this.f31713a == installState.c() && this.f31714b == installState.a() && this.f31715c == installState.e() && this.f31716d == installState.b() && this.f31717e.equals(installState.d())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i4 = this.f31713a;
        long j4 = this.f31714b;
        long j10 = this.f31715c;
        return ((((((((i4 ^ 1000003) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.f31716d) * 1000003) ^ this.f31717e.hashCode();
    }

    public final String toString() {
        int i4 = this.f31713a;
        long j4 = this.f31714b;
        long j10 = this.f31715c;
        int i10 = this.f31716d;
        String str = this.f31717e;
        StringBuilder sb = new StringBuilder(str.length() + 164);
        sb.append("InstallState{installStatus=");
        sb.append(i4);
        sb.append(", bytesDownloaded=");
        sb.append(j4);
        sb.append(", totalBytesToDownload=");
        sb.append(j10);
        sb.append(", installErrorCode=");
        sb.append(i10);
        sb.append(", packageName=");
        sb.append(str);
        sb.append(i.f6967d);
        return sb.toString();
    }
}
