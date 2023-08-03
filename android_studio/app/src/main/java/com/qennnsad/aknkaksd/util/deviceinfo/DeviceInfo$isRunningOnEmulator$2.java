package com.qennnsad.aknkaksd.util.deviceinfo;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfo.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
final class DeviceInfo$isRunningOnEmulator$2 extends Lambda implements Function0<Boolean> {
    public static final DeviceInfo$isRunningOnEmulator$2 INSTANCE = new DeviceInfo$isRunningOnEmulator$2();

    DeviceInfo$isRunningOnEmulator$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
        if (r0 == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0098, code lost:
        if (r0 != false) goto L28;
     */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Boolean invoke() {
        /*
            r8 = this;
            java.lang.String r0 = android.os.Build.FINGERPRINT
            java.lang.String r1 = "FINGERPRINT"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r2 = "generic"
            r3 = 0
            r4 = 2
            r5 = 0
            boolean r6 = kotlin.text.StringsKt.startsWith$default(r0, r2, r3, r4, r5)
            if (r6 != 0) goto L9a
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "unknown"
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L9a
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r1 = "MODEL"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r6 = "google_sdk"
            boolean r7 = kotlin.text.StringsKt.contains$default(r0, r6, r3, r4, r5)
            if (r7 != 0) goto L9a
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r7 = "Emulator"
            boolean r7 = kotlin.text.StringsKt.contains$default(r0, r7, r3, r4, r5)
            if (r7 != 0) goto L9a
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "Android SDK built for x86"
            boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L9a
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "MANUFACTURER"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "Genymotion"
            boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r3, r4, r5)
            if (r0 != 0) goto L9a
            java.lang.String r0 = android.os.Build.BRAND
            java.lang.String r1 = "BRAND"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r0, r2, r3, r4, r5)
            java.lang.String r1 = "DEVICE"
            if (r0 == 0) goto L6b
            java.lang.String r0 = android.os.Build.DEVICE
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r0, r2, r3, r4, r5)
            if (r0 != 0) goto L9a
        L6b:
            java.lang.String r0 = android.os.Build.PRODUCT
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r2 != 0) goto L9a
            java.lang.String r2 = "PRODUCT"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.String r2 = "vbox86p"
            boolean r0 = kotlin.text.StringsKt.contains$default(r0, r2, r3, r4, r5)
            if (r0 != 0) goto L9a
            java.lang.String r0 = android.os.Build.DEVICE
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = kotlin.text.StringsKt.contains$default(r0, r2, r3, r4, r5)
            if (r0 != 0) goto L9a
            java.lang.String r0 = android.os.Build.HARDWARE
            java.lang.String r1 = "HARDWARE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "vbox86"
            boolean r0 = kotlin.text.StringsKt.contains$default(r0, r1, r3, r4, r5)
            if (r0 == 0) goto L9b
        L9a:
            r3 = 1
        L9b:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.deviceinfo.DeviceInfo$isRunningOnEmulator$2.invoke():java.lang.Boolean");
    }
}
