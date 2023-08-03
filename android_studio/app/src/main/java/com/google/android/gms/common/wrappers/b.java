package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;
import y2.v;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final Context f29301a;

    public b(@NonNull Context context) {
        this.f29301a = context;
    }

    @u2.a
    public int a(@NonNull String str) {
        return this.f29301a.checkCallingOrSelfPermission(str);
    }

    @u2.a
    public int b(@NonNull String str, @NonNull String str2) {
        return this.f29301a.getPackageManager().checkPermission(str, str2);
    }

    @NonNull
    @u2.a
    public ApplicationInfo c(@NonNull String str, int i4) throws PackageManager.NameNotFoundException {
        return this.f29301a.getPackageManager().getApplicationInfo(str, i4);
    }

    @NonNull
    @u2.a
    public CharSequence d(@NonNull String str) throws PackageManager.NameNotFoundException {
        return this.f29301a.getPackageManager().getApplicationLabel(this.f29301a.getPackageManager().getApplicationInfo(str, 0));
    }

    @NonNull
    @u2.a
    public Pair<CharSequence, Drawable> e(@NonNull String str) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo = this.f29301a.getPackageManager().getApplicationInfo(str, 0);
        return Pair.create(this.f29301a.getPackageManager().getApplicationLabel(applicationInfo), this.f29301a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @NonNull
    @u2.a
    public PackageInfo f(@NonNull String str, int i4) throws PackageManager.NameNotFoundException {
        return this.f29301a.getPackageManager().getPackageInfo(str, i4);
    }

    @u2.a
    public boolean g() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f29301a);
        }
        if (!v.n() || (nameForUid = this.f29301a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f29301a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    public final boolean h(int i4, @NonNull String str) {
        if (v.h()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.f29301a.getSystemService("appops");
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i4, str);
                    return true;
                }
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f29301a.getPackageManager().getPackagesForUid(i4);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
