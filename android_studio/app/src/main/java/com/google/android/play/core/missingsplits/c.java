package com.google.android.play.core.missingsplits;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import com.google.android.play.core.internal.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final h f31795c = new h("MissingSplitsAppComponentsHelper");

    /* renamed from: a  reason: collision with root package name */
    private final Context f31796a;

    /* renamed from: b  reason: collision with root package name */
    private final PackageManager f31797b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, PackageManager packageManager) {
        this.f31796a = context;
        this.f31797b = packageManager;
    }

    private final List d() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f31797b.getPackageInfo(this.f31796a.getPackageName(), 526);
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                Collections.addAll(arrayList, providerInfoArr);
            }
            ActivityInfo[] activityInfoArr = packageInfo.receivers;
            if (activityInfoArr != null) {
                Collections.addAll(arrayList, activityInfoArr);
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                Collections.addAll(arrayList, serviceInfoArr);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e4) {
            f31795c.e("Failed to resolve own package : %s", e4);
            return Collections.emptyList();
        }
    }

    private final void e(List list, int i4) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ComponentInfo componentInfo = (ComponentInfo) it.next();
            this.f31797b.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i4, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        f31795c.d("Disabling all non-activity components", new Object[0]);
        e(d(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        f31795c.d("Resetting enabled state of all non-activity components", new Object[0]);
        e(d(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        for (ComponentInfo componentInfo : d()) {
            if (this.f31797b.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f31795c.a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f31795c.a("All non-activity components are disabled", new Object[0]);
        return true;
    }
}
