package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: descriptorBasedTypeSignatureMapping.kt */
/* loaded from: classes4.dex */
public interface TypeMappingConfiguration<T> {

    /* compiled from: descriptorBasedTypeSignatureMapping.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static <T> String getPredefinedFullInternalNameForClass(@g TypeMappingConfiguration<? extends T> typeMappingConfiguration, @g ClassDescriptor classDescriptor) {
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            return null;
        }

        @h
        public static <T> KotlinType preprocessType(@g TypeMappingConfiguration<? extends T> typeMappingConfiguration, @g KotlinType kotlinType) {
            Intrinsics.checkNotNullParameter(kotlinType, "kotlinType");
            return null;
        }
    }

    @g
    KotlinType commonSupertype(@g Collection<KotlinType> collection);

    @h
    String getPredefinedFullInternalNameForClass(@g ClassDescriptor classDescriptor);

    @h
    String getPredefinedInternalNameForClass(@g ClassDescriptor classDescriptor);

    @h
    T getPredefinedTypeForClass(@g ClassDescriptor classDescriptor);

    @h
    KotlinType preprocessType(@g KotlinType kotlinType);

    void processErrorType(@g KotlinType kotlinType, @g ClassDescriptor classDescriptor);
}
