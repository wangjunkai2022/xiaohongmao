package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class o3 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31505c = new com.google.android.play.core.internal.h("PackageStateCache");

    /* renamed from: a  reason: collision with root package name */
    private final Context f31506a;

    /* renamed from: b  reason: collision with root package name */
    private int f31507b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o3(Context context) {
        this.f31506a = context;
    }

    public final synchronized int a() {
        if (this.f31507b == -1) {
            try {
                this.f31507b = this.f31506a.getPackageManager().getPackageInfo(this.f31506a.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                f31505c.b("The current version of the app could not be retrieved", new Object[0]);
            }
        }
        return this.f31507b;
    }
}
