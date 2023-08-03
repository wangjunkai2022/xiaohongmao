package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: functionTypes.kt */
/* loaded from: classes4.dex */
public final class FunctionTypesKt {
    public static final int contextFunctionTypeParamsCount(@g KotlinType kotlinType) {
        Object value;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        AnnotationDescriptor findAnnotation = kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.contextFunctionTypeParams);
        if (findAnnotation == null) {
            return 0;
        }
        value = MapsKt__MapsKt.getValue(findAnnotation.getAllValueArguments(), StandardNames.CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME);
        ConstantValue constantValue = (ConstantValue) value;
        Intrinsics.checkNotNull(constantValue, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue");
        return ((IntValue) constantValue).getValue().intValue();
    }

    @JvmOverloads
    @g
    public static final SimpleType createFunctionType(@g KotlinBuiltIns builtIns, @g Annotations annotations, @h KotlinType kotlinType, @g List<? extends KotlinType> contextReceiverTypes, @g List<? extends KotlinType> parameterTypes, @h List<Name> list, @g KotlinType returnType, boolean z9) {
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(contextReceiverTypes, "contextReceiverTypes");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        List<TypeProjection> functionTypeArgumentProjections = getFunctionTypeArgumentProjections(kotlinType, contextReceiverTypes, parameterTypes, list, returnType, builtIns);
        ClassDescriptor functionDescriptor = getFunctionDescriptor(builtIns, parameterTypes.size() + contextReceiverTypes.size() + (kotlinType == null ? 0 : 1), z9);
        if (kotlinType != null) {
            annotations = withExtensionFunctionAnnotation(annotations, builtIns);
        }
        if (!contextReceiverTypes.isEmpty()) {
            annotations = withContextReceiversFunctionAnnotation(annotations, builtIns, contextReceiverTypes.size());
        }
        return KotlinTypeFactory.simpleNotNullType(TypeAttributesKt.toDefaultAttributes(annotations), functionDescriptor, functionTypeArgumentProjections);
    }

    @h
    public static final Name extractParameterNameFromFunctionTypeArgument(@g KotlinType kotlinType) {
        Object singleOrNull;
        String value;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        AnnotationDescriptor findAnnotation = kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.parameterName);
        if (findAnnotation == null) {
            return null;
        }
        singleOrNull = CollectionsKt___CollectionsKt.singleOrNull(findAnnotation.getAllValueArguments().values());
        StringValue stringValue = singleOrNull instanceof StringValue ? (StringValue) singleOrNull : null;
        if (stringValue != null && (value = stringValue.getValue()) != null) {
            if (!Name.isValidIdentifier(value)) {
                value = null;
            }
            if (value != null) {
                return Name.identifier(value);
            }
        }
        return null;
    }

    @g
    public static final List<KotlinType> getContextReceiverTypesFromFunctionType(@g KotlinType kotlinType) {
        int collectionSizeOrDefault;
        List<KotlinType> emptyList;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        isBuiltinFunctionalType(kotlinType);
        int contextFunctionTypeParamsCount = contextFunctionTypeParamsCount(kotlinType);
        if (contextFunctionTypeParamsCount == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<TypeProjection> subList = kotlinType.getArguments().subList(0, contextFunctionTypeParamsCount);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(subList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeProjection typeProjection : subList) {
            KotlinType type = typeProjection.getType();
            Intrinsics.checkNotNullExpressionValue(type, "it.type");
            arrayList.add(type);
        }
        return arrayList;
    }

    @g
    public static final ClassDescriptor getFunctionDescriptor(@g KotlinBuiltIns builtIns, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        ClassDescriptor suspendFunction = z9 ? builtIns.getSuspendFunction(i4) : builtIns.getFunction(i4);
        Intrinsics.checkNotNullExpressionValue(suspendFunction, "if (isSuspendFunction) b…tFunction(parameterCount)");
        return suspendFunction;
    }

    @g
    public static final List<TypeProjection> getFunctionTypeArgumentProjections(@h KotlinType kotlinType, @g List<? extends KotlinType> contextReceiverTypes, @g List<? extends KotlinType> parameterTypes, @h List<Name> list, @g KotlinType returnType, @g KotlinBuiltIns builtIns) {
        int collectionSizeOrDefault;
        Map mapOf;
        List<? extends AnnotationDescriptor> plus;
        Intrinsics.checkNotNullParameter(contextReceiverTypes, "contextReceiverTypes");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(returnType, "returnType");
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        int i4 = 0;
        ArrayList arrayList = new ArrayList(parameterTypes.size() + contextReceiverTypes.size() + (kotlinType != null ? 1 : 0) + 1);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(contextReceiverTypes, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (KotlinType kotlinType2 : contextReceiverTypes) {
            arrayList2.add(TypeUtilsKt.asTypeProjection(kotlinType2));
        }
        arrayList.addAll(arrayList2);
        CollectionsKt.addIfNotNull(arrayList, kotlinType != null ? TypeUtilsKt.asTypeProjection(kotlinType) : null);
        for (Object obj : parameterTypes) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            KotlinType kotlinType3 = (KotlinType) obj;
            Name name = (list == null || (name = list.get(i4)) == null || name.isSpecial()) ? null : null;
            if (name != null) {
                FqName fqName = StandardNames.FqNames.parameterName;
                Name identifier = Name.identifier("name");
                String asString = name.asString();
                Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
                mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to(identifier, new StringValue(asString)));
                BuiltInAnnotationDescriptor builtInAnnotationDescriptor = new BuiltInAnnotationDescriptor(builtIns, fqName, mapOf);
                Annotations.Companion companion = Annotations.Companion;
                plus = CollectionsKt___CollectionsKt.plus(kotlinType3.getAnnotations(), builtInAnnotationDescriptor);
                kotlinType3 = TypeUtilsKt.replaceAnnotations(kotlinType3, companion.create(plus));
            }
            arrayList.add(TypeUtilsKt.asTypeProjection(kotlinType3));
            i4 = i10;
        }
        arrayList.add(TypeUtilsKt.asTypeProjection(returnType));
        return arrayList;
    }

    @h
    public static final FunctionClassKind getFunctionalClassKind(@g DeclarationDescriptor declarationDescriptor) {
        Intrinsics.checkNotNullParameter(declarationDescriptor, "<this>");
        if ((declarationDescriptor instanceof ClassDescriptor) && KotlinBuiltIns.isUnderKotlinPackage(declarationDescriptor)) {
            return getFunctionalClassKind(DescriptorUtilsKt.getFqNameUnsafe(declarationDescriptor));
        }
        return null;
    }

    @h
    public static final KotlinType getReceiverTypeFromFunctionType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        isBuiltinFunctionalType(kotlinType);
        if (isTypeAnnotatedWithExtensionFunctionType(kotlinType)) {
            return kotlinType.getArguments().get(contextFunctionTypeParamsCount(kotlinType)).getType();
        }
        return null;
    }

    @g
    public static final KotlinType getReturnTypeFromFunctionType(@g KotlinType kotlinType) {
        Object last;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        isBuiltinFunctionalType(kotlinType);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) kotlinType.getArguments());
        KotlinType type = ((TypeProjection) last).getType();
        Intrinsics.checkNotNullExpressionValue(type, "arguments.last().type");
        return type;
    }

    @g
    public static final List<TypeProjection> getValueParameterTypesFromFunctionType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        isBuiltinFunctionalType(kotlinType);
        List<TypeProjection> arguments = kotlinType.getArguments();
        return arguments.subList(contextFunctionTypeParamsCount(kotlinType) + (isBuiltinExtensionFunctionalType(kotlinType) ? 1 : 0), arguments.size() - 1);
    }

    public static final boolean isBuiltinExtensionFunctionalType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return isBuiltinFunctionalType(kotlinType) && isTypeAnnotatedWithExtensionFunctionType(kotlinType);
    }

    public static final boolean isBuiltinFunctionalClassDescriptor(@g DeclarationDescriptor declarationDescriptor) {
        Intrinsics.checkNotNullParameter(declarationDescriptor, "<this>");
        FunctionClassKind functionalClassKind = getFunctionalClassKind(declarationDescriptor);
        return functionalClassKind == FunctionClassKind.Function || functionalClassKind == FunctionClassKind.SuspendFunction;
    }

    public static final boolean isBuiltinFunctionalType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return declarationDescriptor != null && isBuiltinFunctionalClassDescriptor(declarationDescriptor);
    }

    public static final boolean isFunctionType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor != null ? getFunctionalClassKind(declarationDescriptor) : null) == FunctionClassKind.Function;
    }

    public static final boolean isSuspendFunctionType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor != null ? getFunctionalClassKind(declarationDescriptor) : null) == FunctionClassKind.SuspendFunction;
    }

    private static final boolean isTypeAnnotatedWithExtensionFunctionType(KotlinType kotlinType) {
        return kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.extensionFunctionType) != null;
    }

    @g
    public static final Annotations withContextReceiversFunctionAnnotation(@g Annotations annotations, @g KotlinBuiltIns builtIns, int i4) {
        Map mapOf;
        List<? extends AnnotationDescriptor> plus;
        Intrinsics.checkNotNullParameter(annotations, "<this>");
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        FqName fqName = StandardNames.FqNames.contextFunctionTypeParams;
        if (annotations.hasAnnotation(fqName)) {
            return annotations;
        }
        Annotations.Companion companion = Annotations.Companion;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to(StandardNames.CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME, new IntValue(i4)));
        plus = CollectionsKt___CollectionsKt.plus(annotations, new BuiltInAnnotationDescriptor(builtIns, fqName, mapOf));
        return companion.create(plus);
    }

    @g
    public static final Annotations withExtensionFunctionAnnotation(@g Annotations annotations, @g KotlinBuiltIns builtIns) {
        Map emptyMap;
        List<? extends AnnotationDescriptor> plus;
        Intrinsics.checkNotNullParameter(annotations, "<this>");
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        FqName fqName = StandardNames.FqNames.extensionFunctionType;
        if (annotations.hasAnnotation(fqName)) {
            return annotations;
        }
        Annotations.Companion companion = Annotations.Companion;
        emptyMap = MapsKt__MapsKt.emptyMap();
        plus = CollectionsKt___CollectionsKt.plus(annotations, new BuiltInAnnotationDescriptor(builtIns, fqName, emptyMap));
        return companion.create(plus);
    }

    private static final FunctionClassKind getFunctionalClassKind(FqNameUnsafe fqNameUnsafe) {
        if (!fqNameUnsafe.isSafe() || fqNameUnsafe.isRoot()) {
            return null;
        }
        FunctionClassKind.Companion companion = FunctionClassKind.Companion;
        String asString = fqNameUnsafe.shortName().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "shortName().asString()");
        FqName parent = fqNameUnsafe.toSafe().parent();
        Intrinsics.checkNotNullExpressionValue(parent, "toSafe().parent()");
        return companion.getFunctionalClassKind(asString, parent);
    }
}
