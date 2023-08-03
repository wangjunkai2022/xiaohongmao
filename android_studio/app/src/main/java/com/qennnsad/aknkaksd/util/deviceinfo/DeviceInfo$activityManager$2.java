package com.qennnsad.aknkaksd.util.deviceinfo;

import android.app.ActivityManager;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceInfo.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/app/ActivityManager;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceInfo$activityManager$2 extends Lambda implements Function0<ActivityManager> {
    final /* synthetic */ DeviceInfo this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceInfo$activityManager$2(DeviceInfo deviceInfo) {
        super(0);
        this.this$0 = deviceInfo;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ActivityManager invoke() {
        Context context;
        context = this.this$0.context;
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        return (ActivityManager) systemService;
    }
}
