package com.google.android.play.core.install;

import com.google.android.play.core.tasks.zzj;
import d3.c;
import d3.f;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class InstallException extends zzj {
    @c

    /* renamed from: a  reason: collision with root package name */
    private final int f31712a;

    public InstallException(@c int i4) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i4), f.a(i4)));
        if (i4 != 0) {
            this.f31712a = i4;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.zzj
    @c
    public int getErrorCode() {
        return this.f31712a;
    }
}
