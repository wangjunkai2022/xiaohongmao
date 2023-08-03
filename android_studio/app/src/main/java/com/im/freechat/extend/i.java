package com.im.freechat.extend;

import android.content.ComponentName;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ComponentNameExtension.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u001a\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¨\u0006\u0006"}, d2 = {"Landroid/content/ComponentName;", "Landroid/content/Context;", "context", "", "enabled", "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i {
    @m8.g
    public static final ComponentName a(@m8.g ComponentName componentName, @m8.g Context context, boolean z9) {
        Intrinsics.checkNotNullParameter(componentName, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        context.getPackageManager().setComponentEnabledSetting(componentName, z9 ? 1 : 2, 1);
        return componentName;
    }
}
