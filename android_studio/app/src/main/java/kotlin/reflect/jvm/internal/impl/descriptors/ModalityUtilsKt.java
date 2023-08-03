package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ModalityUtils.kt */
/* loaded from: classes4.dex */
public final class ModalityUtilsKt {
    public static final boolean isFinalClass(@g ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(classDescriptor, "<this>");
        return classDescriptor.getModality() == Modality.FINAL && classDescriptor.getKind() != ClassKind.ENUM_CLASS;
    }
}
