package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f1 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31862c = new com.google.android.play.core.internal.h("SplitInstallInfoProvider");

    /* renamed from: a  reason: collision with root package name */
    private final Context f31863a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31864b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(Context context) {
        this.f31863a = context;
        this.f31864b = context.getPackageName();
    }

    public f1(Context context, String str) {
        this.f31863a = context;
        this.f31864b = str;
    }

    public static String b(String str) {
        return str.startsWith("config.") ? "" : str.split("\\.config\\.", 2)[0];
    }

    public static boolean e(String str) {
        return str.startsWith("config.");
    }

    public static boolean f(String str) {
        return str.startsWith("config.") || str.contains(".config.");
    }

    @Nullable
    private final Bundle g() {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = this.f31863a.getPackageManager().getApplicationInfo(this.f31864b, 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                f31862c.a("App has no applicationInfo or metaData", new Object[0]);
                return null;
            }
            return bundle;
        } catch (PackageManager.NameNotFoundException unused) {
            f31862c.e("App is not found in PackageManager", new Object[0]);
            return null;
        }
    }

    private final Set h() {
        HashSet hashSet = new HashSet();
        Bundle g4 = g();
        if (g4 != null) {
            String string = g4.getString("com.android.dynamic.apk.fused.modules");
            if (string != null && !string.isEmpty()) {
                Collections.addAll(hashSet, string.split(",", -1));
                hashSet.remove("");
                hashSet.remove(com.google.android.exoplayer2.text.ttml.d.X);
            } else {
                f31862c.a("App has no fused modules.", new Object[0]);
            }
        }
        String[] strArr = null;
        try {
            PackageInfo packageInfo = this.f31863a.getPackageManager().getPackageInfo(this.f31864b, 0);
            if (packageInfo != null) {
                strArr = packageInfo.splitNames;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            f31862c.e("App is not found in PackageManager", new Object[0]);
        }
        if (strArr != null) {
            f31862c.a("Adding splits from package manager: %s", Arrays.toString(strArr));
            Collections.addAll(hashSet, strArr);
        } else {
            f31862c.a("No splits are found or app cannot be found in package manager.", new Object[0]);
        }
        d1 a10 = e1.a();
        if (a10 != null) {
            hashSet.addAll(a10.zza());
        }
        return hashSet;
    }

    @Nullable
    public final y0 a() {
        Bundle g4 = g();
        if (g4 == null) {
            f31862c.e("No metadata found in Context.", new Object[0]);
            return null;
        }
        int i4 = g4.getInt("com.android.vending.splits");
        if (i4 == 0) {
            f31862c.e("No metadata found in AndroidManifest.", new Object[0]);
            return null;
        }
        try {
            y0 a10 = p0.a(this.f31863a.getResources().getXml(i4), new w0());
            if (a10 == null) {
                f31862c.e("Can't parse languages metadata.", new Object[0]);
            }
            return a10;
        } catch (Resources.NotFoundException unused) {
            f31862c.e("Resource with languages metadata doesn't exist.", new Object[0]);
            return null;
        }
    }

    public final Set c() {
        HashSet hashSet = new HashSet();
        for (String str : h()) {
            if (!f(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    @Nullable
    public final Set d() {
        y0 a10 = a();
        if (a10 == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Set h4 = h();
        h4.add("");
        Set c10 = c();
        c10.add("");
        for (Map.Entry entry : a10.a(c10).entrySet()) {
            if (h4.containsAll((Collection) entry.getValue())) {
                hashSet.add((String) entry.getKey());
            }
        }
        return hashSet;
    }
}
