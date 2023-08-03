package com.im.freechat.extend;

import android.annotation.TargetApi;
import android.app.usage.NetworkStatsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.im.freechat.ui.main.DeeplinkComponent;
import io.sentry.protocol.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContextExtentions.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a%\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0005\"\u00020\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a\f\u0010\n\u001a\u00020\t*\u00020\u0000H\u0007\u001a\n\u0010\f\u001a\u00020\u000b*\u00020\u0000\u001a$\u0010\u0011\u001a\u00020\u0010*\u00020\u00002\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u001a\n\u0010\u0013\u001a\u00020\u0012*\u00020\u0000\u001a\u0012\u0010\u0015\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0001¨\u0006\u0016"}, d2 = {"Landroid/content/Context;", "", "permission", "", "b", "", a.b.f83633h, "c", "(Landroid/content/Context;[Ljava/lang/String;)Z", "Landroid/app/usage/NetworkStatsManager;", "e", "Landroid/telephony/TelephonyManager;", "j", "activityPackage", "aliasName", "enable", "Landroid/content/ComponentName;", "f", "", "h", "address", "d", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k {
    public static final boolean b(@m8.g Context context, @m8.g String permission) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permission, "permission");
        return ContextCompat.checkSelfPermission(context, permission) == 0;
    }

    public static final boolean c(@m8.g Context context, @m8.g String... permissions) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        for (String str : permissions) {
            if (!b(context, str)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean d(@m8.g Context context, @m8.g String address) {
        ActivityInfo activityInfo;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(address, "address");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(address)), 65536);
        return TextUtils.equals(context.getPackageName(), (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null) ? null : activityInfo.packageName);
    }

    @m8.g
    @TargetApi(23)
    public static final NetworkStatsManager e(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("netstats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.NetworkStatsManager");
        return (NetworkStatsManager) systemService;
    }

    @m8.g
    public static final ComponentName f(@m8.g Context context, @m8.g String activityPackage, @m8.g String aliasName, boolean z9) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(activityPackage, "activityPackage");
        Intrinsics.checkNotNullParameter(aliasName, "aliasName");
        return i.a(new ComponentName(context.getPackageName(), activityPackage + '.' + aliasName), context, z9);
    }

    public static /* synthetic */ ComponentName g(Context context, String str, String str2, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = true;
        }
        return f(context, str, str2, z9);
    }

    public static final void h(@m8.g final Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String packageName = context.getPackageName();
        String canonicalName = DeeplinkComponent.class.getCanonicalName();
        Intrinsics.checkNotNull(canonicalName);
        final ComponentName componentName = new ComponentName(packageName, canonicalName);
        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
        new Handler().post(new Runnable() { // from class: com.im.freechat.extend.j
            @Override // java.lang.Runnable
            public final void run() {
                k.i(context, componentName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Context this_resetDeeplinkComponent, ComponentName component) {
        Intrinsics.checkNotNullParameter(this_resetDeeplinkComponent, "$this_resetDeeplinkComponent");
        Intrinsics.checkNotNullParameter(component, "$component");
        this_resetDeeplinkComponent.getPackageManager().setComponentEnabledSetting(component, 2, 1);
    }

    @m8.g
    public static final TelephonyManager j(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        return (TelephonyManager) systemService;
    }
}
