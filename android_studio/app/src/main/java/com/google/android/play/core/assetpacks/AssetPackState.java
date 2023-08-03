package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class AssetPackState {
    public static AssetPackState h(@NonNull String str, @b3.b int i4, @b3.a int i10, long j4, long j10, double d4, int i11, String str2, String str3) {
        return new v0(str, i4, i10, j4, j10, (int) Math.rint(100.0d * d4), i11, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AssetPackState i(Bundle bundle, String str, x1 x1Var, m3 m3Var, m0 m0Var) {
        int a10 = m0Var.a(bundle.getInt(b3.e.a("status", str)), str);
        int i4 = bundle.getInt(b3.e.a("error_code", str));
        long j4 = bundle.getLong(b3.e.a("bytes_downloaded", str));
        long j10 = bundle.getLong(b3.e.a("total_bytes_to_download", str));
        double a11 = x1Var.a(str);
        long j11 = bundle.getLong(b3.e.a("pack_version", str));
        long j12 = bundle.getLong(b3.e.a("pack_base_version", str));
        int i10 = 1;
        int i11 = 4;
        if (a10 != 4) {
            i11 = a10;
        } else if (j12 != 0 && j12 != j11) {
            i10 = 2;
        }
        return h(str, i11, i4, j4, j10, a11, i10, bundle.getString(b3.e.a("pack_version_tag", str), String.valueOf(bundle.getInt("app_version_code"))), m3Var.a(str));
    }

    public abstract long a();

    @b3.a
    public abstract int b();

    public abstract String c();

    @b3.b
    public abstract int d();

    public abstract long e();

    public abstract int f();

    public abstract int g();

    public abstract String j();

    public abstract String k();
}
