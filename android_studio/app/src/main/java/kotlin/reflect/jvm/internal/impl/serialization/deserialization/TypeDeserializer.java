package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionForAbsentTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: TypeDeserializer.kt */
/* loaded from: classes4.dex */
public final class TypeDeserializer {
    @g

    /* renamed from: c */
    private final DeserializationContext f84767c;
    @g
    private final Function1<Integer, ClassifierDescriptor> classifierDescriptors;
    @g
    private final String containerPresentableName;
    @g
    private final String debugName;
    @h
    private final TypeDeserializer parent;
    @g
    private final Function1<Integer, ClassifierDescriptor> typeAliasDescriptors;
    @g
    private final Map<Integer, TypeParameterDescriptor> typeParameterDescriptors;

    public TypeDeserializer(@g DeserializationContext c10, @h TypeDeserializer typeDeserializer, @g List<ProtoBuf.TypeParameter> typeParameterProtos, @g String debugName, @g String containerPresentableName) {
        Map<Integer, TypeParameterDescriptor> linkedHashMap;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(typeParameterProtos, "typeParameterProtos");
        Intrinsics.checkNotNullParameter(debugName, "debugName");
        Intrinsics.checkNotNullParameter(containerPresentableName, "containerPresentableName");
        this.f84767c = c10;
        this.parent = typeDeserializer;
        this.debugName = debugName;
        this.containerPresentableName = containerPresentableName;
        this.classifierDescriptors = c10.getStorageManager().createMemoizedFunctionWithNullableValues(new TypeDeserializer$classifierDescriptors$1(this));
        this.typeAliasDescriptors = c10.getStorageManager().createMemoizedFunctionWithNullableValues(new TypeDeserializer$typeAliasDescriptors$1(this));
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = MapsKt__MapsKt.emptyMap();
        } else {
            linkedHashMap = new LinkedHashMap<>();
            int i4 = 0;
            for (ProtoBuf.TypeParameter typeParameter : typeParameterProtos) {
                linkedHashMap.put(Integer.valueOf(typeParameter.getId()), new DeserializedTypeParameterDescriptor(this.f84767c, typeParameter, i4));
                i4++;
            }
        }
        this.typeParameterDescriptors = linkedHashMap;
    }

    public final ClassifierDescriptor computeClassifierDescriptor(int i4) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f84767c.getNameResolver(), i4);
        if (classId.isLocal()) {
            return this.f84767c.getComponents().deserializeClass(classId);
        }
        return FindClassInModuleKt.findClassifierAcrossModuleDependencies(this.f84767c.getComponents().getModuleDescriptor(), classId);
    }

    private final SimpleType computeLocalClassifierReplacementType(int i4) {
        if (NameResolverUtilKt.getClassId(this.f84767c.getNameResolver(), i4).isLocal()) {
            return this.f84767c.getComponents().getLocalClassifierTypeSettings().getReplacementTypeForLocalClassifiers();
        }
        return null;
    }

    public final ClassifierDescriptor computeTypeAliasDescriptor(int i4) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f84767c.getNameResolver(), i4);
        if (classId.isLocal()) {
            return null;
        }
        return FindClassInModuleKt.findTypeAliasAcrossModuleDependencies(this.f84767c.getComponents().getModuleDescriptor(), classId);
    }

    private final SimpleType createSimpleSuspendFunctionType(KotlinType kotlinType, KotlinType kotlinType2) {
        List<TypeProjection> dropLast;
        int collectionSizeOrDefault;
        KotlinBuiltIns builtIns = TypeUtilsKt.getBuiltIns(kotlinType);
        Annotations annotations = kotlinType.getAnnotations();
        KotlinType receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(kotlinType);
        List<KotlinType> contextReceiverTypesFromFunctionType = FunctionTypesKt.getContextReceiverTypesFromFunctionType(kotlinType);
        dropLast = CollectionsKt___CollectionsKt.dropLast(FunctionTypesKt.getValueParameterTypesFromFunctionType(kotlinType), 1);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(dropLast, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeProjection typeProjection : dropLast) {
            arrayList.add(typeProjection.getType());
        }
        return FunctionTypesKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, contextReceiverTypesFromFunctionType, arrayList, null, kotlinType2, true).makeNullableAsSpecified(kotlinType.isMarkedNullable());
    }

    private final SimpleType createSuspendFunctionType(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z9) {
        int size;
        int size2 = typeConstructor.getParameters().size() - list.size();
        SimpleType simpleType = null;
        if (size2 == 0) {
            simpleType = createSuspendFunctionTypeForBasicCase(typeAttributes, typeConstructor, list, z9);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            TypeConstructor typeConstructor2 = typeConstructor.getBuiltIns().getSuspendFunction(size).getTypeConstructor();
            Intrinsics.checkNotNullExpressionValue(typeConstructor2, "functionTypeConstructor.…on(arity).typeConstructor");
            simpleType = KotlinTypeFactory.simpleType$default(typeAttributes, typeConstructor2, list, z9, (KotlinTypeRefiner) null, 16, (Object) null);
        }
        return simpleType == null ? ErrorUtils.INSTANCE.createErrorTypeWithArguments(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, list, typeConstructor, new String[0]) : simpleType;
    }

    private final SimpleType createSuspendFunctionTypeForBasicCase(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z9) {
        SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(typeAttributes, typeConstructor, list, z9, (KotlinTypeRefiner) null, 16, (Object) null);
        if (FunctionTypesKt.isFunctionType(simpleType$default)) {
            return transformRuntimeFunctionTypeToSuspendFunction(simpleType$default);
        }
        return null;
    }

    private final TypeParameterDescriptor loadTypeParameter(int i4) {
        TypeParameterDescriptor typeParameterDescriptor = this.typeParameterDescriptors.get(Integer.valueOf(i4));
        if (typeParameterDescriptor == null) {
            TypeDeserializer typeDeserializer = this.parent;
            if (typeDeserializer != null) {
                return typeDeserializer.loadTypeParameter(i4);
            }
            return null;
        }
        return typeParameterDescriptor;
    }

    private static final List<ProtoBuf.Type.Argument> simpleType$collectAllArguments(ProtoBuf.Type type, TypeDeserializer typeDeserializer) {
        List<ProtoBuf.Type.Argument> plus;
        List<ProtoBuf.Type.Argument> argumentList = type.getArgumentList();
        Intrinsics.checkNotNullExpressionValue(argumentList, "argumentList");
        ProtoBuf.Type outerType = ProtoTypeTableUtilKt.outerType(type, typeDeserializer.f84767c.getTypeTable());
        List<ProtoBuf.Type.Argument> simpleType$collectAllArguments = outerType != null ? simpleType$collectAllArguments(outerType, typeDeserializer) : null;
        if (simpleType$collectAllArguments == null) {
            simpleType$collectAllArguments = CollectionsKt__CollectionsKt.emptyList();
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) argumentList, (Iterable) simpleType$collectAllArguments);
        return plus;
    }

    public static /* synthetic */ SimpleType simpleType$default(TypeDeserializer typeDeserializer, ProtoBuf.Type type, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = true;
        }
        return typeDeserializer.simpleType(type, z9);
    }

    private final TypeAttributes toAttributes(List<? extends TypeAttributeTranslator> list, Annotations annotations, TypeConstructor typeConstructor, DeclarationDescriptor declarationDescriptor) {
        int collectionSizeOrDefault;
        List<? extends TypeAttribute<?>> flatten;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeAttributeTranslator typeAttributeTranslator : list) {
            arrayList.add(typeAttributeTranslator.toAttributes(annotations, typeConstructor, declarationDescriptor));
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return TypeAttributes.Companion.create(flatten);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x003f, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r2, r3) == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlin.reflect.jvm.internal.impl.types.SimpleType transformRuntimeFunctionTypeToSuspendFunction(kotlin.reflect.jvm.internal.impl.types.KotlinType r6) {
        /*
            r5 = this;
            java.util.List r0 = kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt.getValueParameterTypesFromFunctionType(r6)
            java.lang.Object r0 = kotlin.collections.CollectionsKt.lastOrNull(r0)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r0 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r0
            r1 = 0
            if (r0 == 0) goto L7d
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            if (r0 != 0) goto L14
            goto L7d
        L14:
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r2 = r0.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r2 = r2.getDeclarationDescriptor()
            if (r2 == 0) goto L23
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getFqNameSafe(r2)
            goto L24
        L23:
            r2 = r1
        L24:
            java.util.List r3 = r0.getArguments()
            int r3 = r3.size()
            r4 = 1
            if (r3 != r4) goto L7a
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.builtins.StandardNames.CONTINUATION_INTERFACE_FQ_NAME
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r3 != 0) goto L42
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializerKt.access$getEXPERIMENTAL_CONTINUATION_FQ_NAME$p()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 != 0) goto L42
            goto L7a
        L42:
            java.util.List r0 = r0.getArguments()
            java.lang.Object r0 = kotlin.collections.CollectionsKt.single(r0)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r0 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r0
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.getType()
            java.lang.String r2 = "continuationArgumentType.arguments.single().type"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r2 = r5.f84767c
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r2 = r2.getContainingDeclaration()
            boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
            if (r3 != 0) goto L60
            r2 = r1
        L60:
            kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor) r2
            if (r2 == 0) goto L68
            kotlin.reflect.jvm.internal.impl.name.FqName r1 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.fqNameOrNull(r2)
        L68:
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.SuspendFunctionTypeUtilKt.KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L75
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = r5.createSimpleSuspendFunctionType(r6, r0)
            return r6
        L75:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = r5.createSimpleSuspendFunctionType(r6, r0)
            return r6
        L7a:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r6 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r6
            return r6
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer.transformRuntimeFunctionTypeToSuspendFunction(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.types.SimpleType");
    }

    private final TypeProjection typeArgument(TypeParameterDescriptor typeParameterDescriptor, ProtoBuf.Type.Argument argument) {
        if (argument.getProjection() == ProtoBuf.Type.Argument.Projection.STAR) {
            if (typeParameterDescriptor == null) {
                return new StarProjectionForAbsentTypeParameter(this.f84767c.getComponents().getModuleDescriptor().getBuiltIns());
            }
            return new StarProjectionImpl(typeParameterDescriptor);
        }
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        ProtoBuf.Type.Argument.Projection projection = argument.getProjection();
        Intrinsics.checkNotNullExpressionValue(projection, "typeArgumentProto.projection");
        Variance variance = protoEnumFlags.variance(projection);
        ProtoBuf.Type type = ProtoTypeTableUtilKt.type(argument, this.f84767c.getTypeTable());
        if (type == null) {
            return new TypeProjectionImpl(ErrorUtils.createErrorType(ErrorTypeKind.NO_RECORDED_TYPE, argument.toString()));
        }
        return new TypeProjectionImpl(variance, type(type));
    }

    private final TypeConstructor typeConstructor(ProtoBuf.Type type) {
        ClassifierDescriptor invoke;
        Object obj;
        if (type.hasClassName()) {
            invoke = this.classifierDescriptors.invoke(Integer.valueOf(type.getClassName()));
            if (invoke == null) {
                invoke = typeConstructor$notFoundClass(this, type, type.getClassName());
            }
        } else if (type.hasTypeParameter()) {
            invoke = loadTypeParameter(type.getTypeParameter());
            if (invoke == null) {
                return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER, String.valueOf(type.getTypeParameter()), this.containerPresentableName);
            }
        } else if (type.hasTypeParameterName()) {
            String string = this.f84767c.getNameResolver().getString(type.getTypeParameterName());
            Iterator<T> it = getOwnTypeParameters().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((TypeParameterDescriptor) obj).getName().asString(), string)) {
                    break;
                }
            }
            invoke = (TypeParameterDescriptor) obj;
            if (invoke == null) {
                return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME, string, this.f84767c.getContainingDeclaration().toString());
            }
        } else if (type.hasTypeAliasName()) {
            invoke = this.typeAliasDescriptors.invoke(Integer.valueOf(type.getTypeAliasName()));
            if (invoke == null) {
                invoke = typeConstructor$notFoundClass(this, type, type.getTypeAliasName());
            }
        } else {
            return ErrorUtils.INSTANCE.createErrorTypeConstructor(ErrorTypeKind.UNKNOWN_TYPE, new String[0]);
        }
        TypeConstructor typeConstructor = invoke.getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "classifier.typeConstructor");
        return typeConstructor;
    }

    private static final ClassDescriptor typeConstructor$notFoundClass(TypeDeserializer typeDeserializer, ProtoBuf.Type type, int i4) {
        Sequence generateSequence;
        Sequence map;
        List<Integer> mutableList;
        Sequence generateSequence2;
        int count;
        ClassId classId = NameResolverUtilKt.getClassId(typeDeserializer.f84767c.getNameResolver(), i4);
        generateSequence = SequencesKt__SequencesKt.generateSequence(type, new TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$1(typeDeserializer));
        map = SequencesKt___SequencesKt.map(generateSequence, TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2.INSTANCE);
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        generateSequence2 = SequencesKt__SequencesKt.generateSequence(classId, TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1.INSTANCE);
        count = SequencesKt___SequencesKt.count(generateSequence2);
        while (mutableList.size() < count) {
            mutableList.add(0);
        }
        return typeDeserializer.f84767c.getComponents().getNotFoundClasses().getClass(classId, mutableList);
    }

    @g
    public final List<TypeParameterDescriptor> getOwnTypeParameters() {
        List<TypeParameterDescriptor> list;
        list = CollectionsKt___CollectionsKt.toList(this.typeParameterDescriptors.values());
        return list;
    }

    @g
    public final SimpleType simpleType(@g ProtoBuf.Type proto, boolean z9) {
        SimpleType computeLocalClassifierReplacementType;
        int collectionSizeOrDefault;
        List<? extends TypeProjection> list;
        SimpleType simpleType$default;
        SimpleType withAbbreviation;
        List<? extends AnnotationDescriptor> plus;
        Object orNull;
        Intrinsics.checkNotNullParameter(proto, "proto");
        if (proto.hasClassName()) {
            computeLocalClassifierReplacementType = computeLocalClassifierReplacementType(proto.getClassName());
        } else {
            computeLocalClassifierReplacementType = proto.hasTypeAliasName() ? computeLocalClassifierReplacementType(proto.getTypeAliasName()) : null;
        }
        if (computeLocalClassifierReplacementType != null) {
            return computeLocalClassifierReplacementType;
        }
        TypeConstructor typeConstructor = typeConstructor(proto);
        boolean z10 = true;
        if (ErrorUtils.isError(typeConstructor.getDeclarationDescriptor())) {
            return ErrorUtils.INSTANCE.createErrorType(ErrorTypeKind.TYPE_FOR_ERROR_TYPE_CONSTRUCTOR, typeConstructor, typeConstructor.toString());
        }
        DeserializedAnnotations deserializedAnnotations = new DeserializedAnnotations(this.f84767c.getStorageManager(), new TypeDeserializer$simpleType$annotations$1(this, proto));
        TypeAttributes attributes = toAttributes(this.f84767c.getComponents().getTypeAttributeTranslators(), deserializedAnnotations, typeConstructor, this.f84767c.getContainingDeclaration());
        List<ProtoBuf.Type.Argument> simpleType$collectAllArguments = simpleType$collectAllArguments(proto, this);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(simpleType$collectAllArguments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i4 = 0;
        for (Object obj : simpleType$collectAllArguments) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "constructor.parameters");
            orNull = CollectionsKt___CollectionsKt.getOrNull(parameters, i4);
            arrayList.add(typeArgument((TypeParameterDescriptor) orNull, (ProtoBuf.Type.Argument) obj));
            i4 = i10;
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (z9 && (declarationDescriptor instanceof TypeAliasDescriptor)) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType computeExpandedType = KotlinTypeFactory.computeExpandedType((TypeAliasDescriptor) declarationDescriptor, list);
            List<TypeAttributeTranslator> typeAttributeTranslators = this.f84767c.getComponents().getTypeAttributeTranslators();
            Annotations.Companion companion = Annotations.Companion;
            plus = CollectionsKt___CollectionsKt.plus((Iterable) deserializedAnnotations, (Iterable) computeExpandedType.getAnnotations());
            TypeAttributes attributes2 = toAttributes(typeAttributeTranslators, companion.create(plus), typeConstructor, this.f84767c.getContainingDeclaration());
            if (!KotlinTypeKt.isNullable(computeExpandedType) && !proto.getNullable()) {
                z10 = false;
            }
            simpleType$default = computeExpandedType.makeNullableAsSpecified(z10).replaceAttributes(attributes2);
        } else {
            Boolean bool = Flags.SUSPEND_TYPE.get(proto.getFlags());
            Intrinsics.checkNotNullExpressionValue(bool, "SUSPEND_TYPE.get(proto.flags)");
            if (bool.booleanValue()) {
                simpleType$default = createSuspendFunctionType(attributes, typeConstructor, list, proto.getNullable());
            } else {
                simpleType$default = KotlinTypeFactory.simpleType$default(attributes, typeConstructor, list, proto.getNullable(), (KotlinTypeRefiner) null, 16, (Object) null);
                Boolean bool2 = Flags.DEFINITELY_NOT_NULL_TYPE.get(proto.getFlags());
                Intrinsics.checkNotNullExpressionValue(bool2, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)");
                if (bool2.booleanValue()) {
                    DefinitelyNotNullType makeDefinitelyNotNull$default = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$default(DefinitelyNotNullType.Companion, simpleType$default, false, 2, null);
                    if (makeDefinitelyNotNull$default == null) {
                        throw new IllegalStateException(("null DefinitelyNotNullType for '" + simpleType$default + '\'').toString());
                    }
                    simpleType$default = makeDefinitelyNotNull$default;
                }
            }
        }
        ProtoBuf.Type abbreviatedType = ProtoTypeTableUtilKt.abbreviatedType(proto, this.f84767c.getTypeTable());
        if (abbreviatedType != null && (withAbbreviation = SpecialTypesKt.withAbbreviation(simpleType$default, simpleType(abbreviatedType, false))) != null) {
            simpleType$default = withAbbreviation;
        }
        return proto.hasClassName() ? this.f84767c.getComponents().getPlatformDependentTypeTransformer().transformPlatformType(NameResolverUtilKt.getClassId(this.f84767c.getNameResolver(), proto.getClassName()), simpleType$default) : simpleType$default;
    }

    @g
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.debugName);
        if (this.parent == null) {
            str = "";
        } else {
            str = ". Child of " + this.parent.debugName;
        }
        sb.append(str);
        return sb.toString();
    }

    @g
    public final KotlinType type(@g ProtoBuf.Type proto) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        if (proto.hasFlexibleTypeCapabilitiesId()) {
            String string = this.f84767c.getNameResolver().getString(proto.getFlexibleTypeCapabilitiesId());
            SimpleType simpleType$default = simpleType$default(this, proto, false, 2, null);
            ProtoBuf.Type flexibleUpperBound = ProtoTypeTableUtilKt.flexibleUpperBound(proto, this.f84767c.getTypeTable());
            Intrinsics.checkNotNull(flexibleUpperBound);
            return this.f84767c.getComponents().getFlexibleTypeDeserializer().create(proto, string, simpleType$default, simpleType$default(this, flexibleUpperBound, false, 2, null));
        }
        return simpleType(proto, true);
    }
}
