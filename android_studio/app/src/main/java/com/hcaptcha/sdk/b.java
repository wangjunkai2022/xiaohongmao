package com.hcaptcha.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;

/* loaded from: classes2.dex */
final class b {
    private b() {
    }

    public static ApplicationInfo a(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 33 ? context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.ApplicationInfoFlags.of(128L)) : context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
    }

    public static <T extends Parcelable> T b(Bundle bundle, @Nullable String str, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 33 ? (T) bundle.getParcelable(str, cls) : (T) bundle.getParcelable(str);
    }

    public static <T extends Serializable> T c(Bundle bundle, @Nullable String str, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 33 ? (T) bundle.getSerializable(str, cls) : (T) bundle.getSerializable(str);
    }
}
