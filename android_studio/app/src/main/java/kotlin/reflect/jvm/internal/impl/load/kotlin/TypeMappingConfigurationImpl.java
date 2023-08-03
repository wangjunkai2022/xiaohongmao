package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: methodSignatureMapping.kt */
/* loaded from: classes4.dex */
public final class TypeMappingConfigurationImpl implements TypeMappingConfiguration<JvmType> {
    @g
    public static final TypeMappingConfigurationImpl INSTANCE = new TypeMappingConfigurationImpl();

    private TypeMappingConfigurationImpl() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    @g
    public KotlinType commonSupertype(@g Collection<? extends KotlinType> types) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(types, "types");
        StringBuilder sb = new StringBuilder();
        sb.append("There should be no intersection type in existing descriptors, but found: ");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(types, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default);
        throw new AssertionError(sb.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    @h
    public String getPredefinedFullInternalNameForClass(@g ClassDescriptor classDescriptor) {
        return TypeMappingConfiguration.DefaultImpls.getPredefinedFullInternalNameForClass(this, classDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    @h
    public String getPredefinedInternalNameForClass(@g ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    @h
    public JvmType getPredefinedTypeForClass(@g ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    @h
    public KotlinType preprocessType(@g KotlinType kotlinType) {
        return TypeMappingConfiguration.DefaultImpls.preprocessType(this, kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public void processErrorType(@g KotlinType kotlinType, @g ClassDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(kotlinType, "kotlinType");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }
}
