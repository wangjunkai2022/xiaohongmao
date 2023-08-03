package com.google.android.play.core.install;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.play.core.internal.h;
import d3.c;
import d3.d;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class InstallState {
    public static InstallState f(@d int i4, long j4, long j10, @c int i10, @NonNull String str) {
        return new b(i4, j4, j10, i10, str);
    }

    public static InstallState g(@NonNull Intent intent, @NonNull h hVar) {
        hVar.a("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        hVar.a("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        hVar.a("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        return new b(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
    }

    public abstract long a();

    @c
    public abstract int b();

    @d
    public abstract int c();

    public abstract String d();

    public abstract long e();
}
