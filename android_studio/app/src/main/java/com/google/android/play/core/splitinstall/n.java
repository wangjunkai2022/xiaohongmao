package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.r1;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class n implements r1 {

    /* renamed from: a  reason: collision with root package name */
    private final r1 f31910a;

    public n(r1 r1Var) {
        this.f31910a = r1Var;
    }

    @Override // com.google.android.play.core.internal.r1
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        String string;
        Context a10 = ((l) this.f31910a).a();
        try {
            Bundle bundle = a10.getPackageManager().getApplicationInfo(a10.getPackageName(), 128).metaData;
            if (bundle != null && (string = bundle.getString("local_testing_dir")) != null) {
                return new File(a10.getExternalFilesDir(null), string);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }
}
