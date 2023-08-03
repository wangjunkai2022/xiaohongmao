package kotlin.reflect.jvm.internal.impl.builtins;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;

/* compiled from: suspendFunctionTypes.kt */
/* loaded from: classes4.dex */
public final class SuspendFunctionTypesKt {
    @g
    private static final MutableClassDescriptor FAKE_CONTINUATION_CLASS_DESCRIPTOR;

    static {
        List<TypeParameterDescriptor> listOf;
        EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor(ErrorUtils.INSTANCE.getErrorModule(), StandardNames.COROUTINES_PACKAGE_FQ_NAME);
        ClassKind classKind = ClassKind.INTERFACE;
        Name shortName = StandardNames.CONTINUATION_INTERFACE_FQ_NAME.shortName();
        SourceElement sourceElement = SourceElement.NO_SOURCE;
        StorageManager storageManager = LockBasedStorageManager.NO_LOCKS;
        MutableClassDescriptor mutableClassDescriptor = new MutableClassDescriptor(emptyPackageFragmentDescriptor, classKind, false, false, shortName, sourceElement, storageManager);
        mutableClassDescriptor.setModality(Modality.ABSTRACT);
        mutableClassDescriptor.setVisibility(DescriptorVisibilities.PUBLIC);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TypeParameterDescriptorImpl.createWithDefaultBound(mutableClassDescriptor, Annotations.Companion.getEMPTY(), false, Variance.IN_VARIANCE, Name.identifier(ExifInterface.GPS_DIRECTION_TRUE), 0, storageManager));
        mutableClassDescriptor.setTypeParameterDescriptors(listOf);
        mutableClassDescriptor.createTypeConstructor();
        FAKE_CONTINUATION_CLASS_DESCRIPTOR = mutableClassDescriptor;
    }

    @g
    public static final SimpleType transformSuspendFunctionToRuntimeFunctionType(@g KotlinType suspendFunType) {
        int collectionSizeOrDefault;
        List listOf;
        List plus;
        SimpleType createFunctionType;
        Intrinsics.checkNotNullParameter(suspendFunType, "suspendFunType");
        FunctionTypesKt.isSuspendFunctionType(suspendFunType);
        KotlinBuiltIns builtIns = TypeUtilsKt.getBuiltIns(suspendFunType);
        Annotations annotations = suspendFunType.getAnnotations();
        KotlinType receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(suspendFunType);
        List<KotlinType> contextReceiverTypesFromFunctionType = FunctionTypesKt.getContextReceiverTypesFromFunctionType(suspendFunType);
        List<TypeProjection> valueParameterTypesFromFunctionType = FunctionTypesKt.getValueParameterTypesFromFunctionType(suspendFunType);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(valueParameterTypesFromFunctionType, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeProjection typeProjection : valueParameterTypesFromFunctionType) {
            arrayList.add(typeProjection.getType());
        }
        TypeAttributes empty = TypeAttributes.Companion.getEmpty();
        TypeConstructor typeConstructor = FAKE_CONTINUATION_CLASS_DESCRIPTOR.getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TypeUtilsKt.asTypeProjection(FunctionTypesKt.getReturnTypeFromFunctionType(suspendFunType)));
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends SimpleType>) ((Collection<? extends Object>) arrayList), KotlinTypeFactory.simpleType$default(empty, typeConstructor, listOf, false, (KotlinTypeRefiner) null, 16, (Object) null));
        SimpleType nullableAnyType = TypeUtilsKt.getBuiltIns(suspendFunType).getNullableAnyType();
        Intrinsics.checkNotNullExpressionValue(nullableAnyType, "suspendFunType.builtIns.nullableAnyType");
        createFunctionType = FunctionTypesKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, contextReceiverTypesFromFunctionType, plus, null, nullableAnyType, (r17 & 128) != 0 ? false : false);
        return createFunctionType.makeNullableAsSpecified(suspendFunType.isMarkedNullable());
    }
}
