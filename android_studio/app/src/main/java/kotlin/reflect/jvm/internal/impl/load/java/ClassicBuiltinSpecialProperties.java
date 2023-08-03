package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import m8.g;
import m8.h;

/* compiled from: ClassicBuiltinSpecialProperties.kt */
/* loaded from: classes4.dex */
public final class ClassicBuiltinSpecialProperties {
    @g
    public static final ClassicBuiltinSpecialProperties INSTANCE = new ClassicBuiltinSpecialProperties();

    private ClassicBuiltinSpecialProperties() {
    }

    private final boolean hasBuiltinSpecialPropertyFqNameImpl(CallableMemberDescriptor callableMemberDescriptor) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(BuiltinSpecialProperties.INSTANCE.getSPECIAL_FQ_NAMES(), DescriptorUtilsKt.fqNameOrNull(callableMemberDescriptor));
        if (contains && callableMemberDescriptor.getValueParameters().isEmpty()) {
            return true;
        }
        if (KotlinBuiltIns.isBuiltIn(callableMemberDescriptor)) {
            Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
            Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "overriddenDescriptors");
            if (!overriddenDescriptors.isEmpty()) {
                for (CallableMemberDescriptor it : overriddenDescriptors) {
                    ClassicBuiltinSpecialProperties classicBuiltinSpecialProperties = INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    if (classicBuiltinSpecialProperties.hasBuiltinSpecialPropertyFqName(it)) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    @h
    public final String getBuiltinSpecialPropertyGetterName(@g CallableMemberDescriptor callableMemberDescriptor) {
        Name name;
        Intrinsics.checkNotNullParameter(callableMemberDescriptor, "<this>");
        KotlinBuiltIns.isBuiltIn(callableMemberDescriptor);
        CallableMemberDescriptor firstOverridden$default = DescriptorUtilsKt.firstOverridden$default(DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptor), false, ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1.INSTANCE, 1, null);
        if (firstOverridden$default == null || (name = BuiltinSpecialProperties.INSTANCE.getPROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP().get(DescriptorUtilsKt.getFqNameSafe(firstOverridden$default))) == null) {
            return null;
        }
        return name.asString();
    }

    public final boolean hasBuiltinSpecialPropertyFqName(@g CallableMemberDescriptor callableMemberDescriptor) {
        Intrinsics.checkNotNullParameter(callableMemberDescriptor, "callableMemberDescriptor");
        if (BuiltinSpecialProperties.INSTANCE.getSPECIAL_SHORT_NAMES().contains(callableMemberDescriptor.getName())) {
            return hasBuiltinSpecialPropertyFqNameImpl(callableMemberDescriptor);
        }
        return false;
    }
}
