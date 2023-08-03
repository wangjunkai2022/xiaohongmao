package com.google.android.play.core.splitinstall;

import com.google.android.play.core.tasks.zzj;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class SplitInstallException extends zzj {
    @g3.a

    /* renamed from: a  reason: collision with root package name */
    private final int f31849a;

    public SplitInstallException(@g3.a int i4) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i4), g3.c.b(i4)));
        if (i4 != 0) {
            this.f31849a = i4;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.zzj
    @g3.a
    public int getErrorCode() {
        return this.f31849a;
    }
}
