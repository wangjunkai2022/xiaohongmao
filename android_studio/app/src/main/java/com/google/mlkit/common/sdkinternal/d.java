package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Locale;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35779a = new com.google.android.gms.common.internal.k("CommonUtils", "");

    private d() {
    }

    @NonNull
    @u2.a
    public static String a(@NonNull Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e4) {
            f35779a.e("CommonUtils", "Exception thrown when trying to get app version ".concat(e4.toString()));
            return "";
        }
    }

    @NonNull
    @u2.a
    public static String b(@NonNull Locale locale) {
        if (y2.v.j()) {
            return locale.toLanguageTag();
        }
        StringBuilder sb = new StringBuilder(locale.getLanguage());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        if (!TextUtils.isEmpty(locale.getVariant())) {
            sb.append("-");
            sb.append(locale.getVariant());
        }
        return sb.toString();
    }
}
