package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import m8.g;

/* compiled from: methodSignatureBuildingUtils.kt */
/* loaded from: classes4.dex */
public final class MethodSignatureBuildingUtilsKt {
    @g
    public static final String signature(@g SignatureBuildingComponents signatureBuildingComponents, @g ClassDescriptor classDescriptor, @g String jvmDescriptor) {
        Intrinsics.checkNotNullParameter(signatureBuildingComponents, "<this>");
        Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
        Intrinsics.checkNotNullParameter(jvmDescriptor, "jvmDescriptor");
        return signatureBuildingComponents.signature(MethodSignatureMappingKt.getInternalName(classDescriptor), jvmDescriptor);
    }
}
