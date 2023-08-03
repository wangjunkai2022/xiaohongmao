package com.qennnsad.aknkaksd.util.deviceinfo;

import android.content.Context;
import android.content.pm.PackageManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceInfo.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceInfo$installSource$2 extends Lambda implements Function0<String> {
    final /* synthetic */ DeviceInfo this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceInfo$installSource$2(DeviceInfo deviceInfo) {
        super(0);
        this.this$0 = deviceInfo;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final String invoke() {
        Context context;
        Context context2;
        context = this.this$0.context;
        PackageManager packageManager = context.getPackageManager();
        context2 = this.this$0.context;
        return packageManager.getInstallerPackageName(context2.getPackageName());
    }
}
