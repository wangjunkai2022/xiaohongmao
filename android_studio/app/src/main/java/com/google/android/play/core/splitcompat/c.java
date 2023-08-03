package com.google.android.play.core.splitcompat;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.Objects;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c extends t {

    /* renamed from: a  reason: collision with root package name */
    private final File f31823a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31824b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(File file, String str) {
        Objects.requireNonNull(file, "Null splitFile");
        this.f31823a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f31824b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitcompat.t
    @NonNull
    public final File a() {
        return this.f31823a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitcompat.t
    @NonNull
    public final String b() {
        return this.f31824b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f31823a.equals(tVar.a()) && this.f31824b.equals(tVar.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f31823a.hashCode() ^ 1000003) * 1000003) ^ this.f31824b.hashCode();
    }

    public final String toString() {
        String obj = this.f31823a.toString();
        String str = this.f31824b;
        StringBuilder sb = new StringBuilder(obj.length() + 35 + str.length());
        sb.append("SplitFileInfo{splitFile=");
        sb.append(obj);
        sb.append(", splitId=");
        sb.append(str);
        sb.append(com.alipay.sdk.util.i.f6967d);
        return sb.toString();
    }
}
