package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class n0 implements DialogInterface.OnClickListener {
    public static n0 b(Activity activity, @Nullable Intent intent, int i4) {
        return new k0(intent, activity, i4);
    }

    public static n0 c(@NonNull Fragment fragment, @Nullable Intent intent, int i4) {
        return new l0(intent, fragment, i4);
    }

    public static n0 d(@NonNull com.google.android.gms.common.api.internal.m mVar, @Nullable Intent intent, int i4) {
        return new m0(intent, mVar, 2);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        try {
            a();
        } catch (ActivityNotFoundException e4) {
            Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e4);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
