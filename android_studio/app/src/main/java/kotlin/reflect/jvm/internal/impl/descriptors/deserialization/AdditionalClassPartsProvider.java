package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: AdditionalClassPartsProvider.kt */
/* loaded from: classes4.dex */
public interface AdditionalClassPartsProvider {

    /* compiled from: AdditionalClassPartsProvider.kt */
    /* loaded from: classes4.dex */
    public static final class None implements AdditionalClassPartsProvider {
        @g
        public static final None INSTANCE = new None();

        private None() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        @g
        public Collection<ClassConstructorDescriptor> getConstructors(@g ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        @g
        public Collection<SimpleFunctionDescriptor> getFunctions(@g Name name, @g ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        @g
        public Collection<Name> getFunctionsNames(@g ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        @g
        public Collection<KotlinType> getSupertypes(@g ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    @g
    Collection<ClassConstructorDescriptor> getConstructors(@g ClassDescriptor classDescriptor);

    @g
    Collection<SimpleFunctionDescriptor> getFunctions(@g Name name, @g ClassDescriptor classDescriptor);

    @g
    Collection<Name> getFunctionsNames(@g ClassDescriptor classDescriptor);

    @g
    Collection<KotlinType> getSupertypes(@g ClassDescriptor classDescriptor);
}
