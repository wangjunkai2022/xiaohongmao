package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: InvalidModuleException.kt */
/* loaded from: classes4.dex */
public final class InvalidModuleExceptionKt {
    @g
    private static final ModuleCapability<InvalidModuleNotifier> INVALID_MODULE_NOTIFIER_CAPABILITY = new ModuleCapability<>("InvalidModuleNotifier");

    public static final void moduleInvalidated(@g ModuleDescriptor moduleDescriptor) {
        Unit unit;
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        InvalidModuleNotifier invalidModuleNotifier = (InvalidModuleNotifier) moduleDescriptor.getCapability(INVALID_MODULE_NOTIFIER_CAPABILITY);
        if (invalidModuleNotifier != null) {
            invalidModuleNotifier.notifyModuleInvalidated(moduleDescriptor);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit != null) {
            return;
        }
        throw new InvalidModuleException("Accessing invalid module descriptor " + moduleDescriptor);
    }
}
