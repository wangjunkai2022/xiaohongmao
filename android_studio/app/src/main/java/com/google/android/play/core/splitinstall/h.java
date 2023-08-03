package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class h extends f {

    /* renamed from: a  reason: collision with root package name */
    private final int f31866a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31867b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31868c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31869d;

    /* renamed from: e  reason: collision with root package name */
    private final long f31870e;

    /* renamed from: f  reason: collision with root package name */
    private final List f31871f;

    /* renamed from: g  reason: collision with root package name */
    private final List f31872g;

    /* renamed from: h  reason: collision with root package name */
    private final PendingIntent f31873h;

    /* renamed from: i  reason: collision with root package name */
    private final List f31874i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i4, int i10, int i11, long j4, long j10, @Nullable List list, @Nullable List list2, @Nullable PendingIntent pendingIntent, @Nullable List list3) {
        this.f31866a = i4;
        this.f31867b = i10;
        this.f31868c = i11;
        this.f31869d = j4;
        this.f31870e = j10;
        this.f31871f = list;
        this.f31872g = list2;
        this.f31873h = pendingIntent;
        this.f31874i = list3;
    }

    @Override // com.google.android.play.core.splitinstall.f
    public final long a() {
        return this.f31869d;
    }

    @Override // com.google.android.play.core.splitinstall.f
    @g3.a
    public final int c() {
        return this.f31868c;
    }

    public final boolean equals(Object obj) {
        List list;
        List list2;
        PendingIntent pendingIntent;
        List list3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.f31866a == fVar.h() && this.f31867b == fVar.i() && this.f31868c == fVar.c() && this.f31869d == fVar.a() && this.f31870e == fVar.j() && ((list = this.f31871f) != null ? list.equals(fVar.l()) : fVar.l() == null) && ((list2 = this.f31872g) != null ? list2.equals(fVar.k()) : fVar.k() == null) && ((pendingIntent = this.f31873h) != null ? pendingIntent.equals(fVar.g()) : fVar.g() == null) && ((list3 = this.f31874i) != null ? list3.equals(fVar.m()) : fVar.m() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.splitinstall.f
    @Nullable
    @Deprecated
    public final PendingIntent g() {
        return this.f31873h;
    }

    @Override // com.google.android.play.core.splitinstall.f
    public final int h() {
        return this.f31866a;
    }

    public final int hashCode() {
        int i4 = this.f31866a;
        int i10 = this.f31867b;
        int i11 = this.f31868c;
        long j4 = this.f31869d;
        long j10 = this.f31870e;
        int i12 = (((((((((i4 ^ 1000003) * 1000003) ^ i10) * 1000003) ^ i11) * 1000003) ^ ((int) ((j4 >>> 32) ^ j4))) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003;
        List list = this.f31871f;
        int hashCode = (i12 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.f31872g;
        int hashCode2 = (hashCode ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        PendingIntent pendingIntent = this.f31873h;
        int hashCode3 = (hashCode2 ^ (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 1000003;
        List list3 = this.f31874i;
        return hashCode3 ^ (list3 != null ? list3.hashCode() : 0);
    }

    @Override // com.google.android.play.core.splitinstall.f
    @g3.b
    public final int i() {
        return this.f31867b;
    }

    @Override // com.google.android.play.core.splitinstall.f
    public final long j() {
        return this.f31870e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.f
    @Nullable
    public final List k() {
        return this.f31872g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.f
    @Nullable
    public final List l() {
        return this.f31871f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.f
    @Nullable
    public final List m() {
        return this.f31874i;
    }

    public final String toString() {
        int i4 = this.f31866a;
        int i10 = this.f31867b;
        int i11 = this.f31868c;
        long j4 = this.f31869d;
        long j10 = this.f31870e;
        String valueOf = String.valueOf(this.f31871f);
        String valueOf2 = String.valueOf(this.f31872g);
        String valueOf3 = String.valueOf(this.f31873h);
        String valueOf4 = String.valueOf(this.f31874i);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        StringBuilder sb = new StringBuilder(length + 251 + length2 + valueOf3.length() + valueOf4.length());
        sb.append("SplitInstallSessionState{sessionId=");
        sb.append(i4);
        sb.append(", status=");
        sb.append(i10);
        sb.append(", errorCode=");
        sb.append(i11);
        sb.append(", bytesDownloaded=");
        sb.append(j4);
        sb.append(", totalBytesToDownload=");
        sb.append(j10);
        sb.append(", moduleNamesNullable=");
        sb.append(valueOf);
        sb.append(", languagesNullable=");
        sb.append(valueOf2);
        sb.append(", resolutionIntent=");
        sb.append(valueOf3);
        sb.append(", splitFileIntents=");
        sb.append(valueOf4);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
