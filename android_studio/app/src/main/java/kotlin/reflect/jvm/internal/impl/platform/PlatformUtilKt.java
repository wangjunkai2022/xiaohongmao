package kotlin.reflect.jvm.internal.impl.platform;

import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: platformUtil.kt */
/* loaded from: classes4.dex */
public final class PlatformUtilKt {
    @g
    public static final String getPresentableDescription(@g TargetPlatform targetPlatform) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(targetPlatform, "<this>");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(targetPlatform.getComponentPlatforms(), "/", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }
}
