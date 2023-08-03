package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypesKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: JavaTypeResolver.kt */
/* loaded from: classes4.dex */
public final class JavaTypeResolver {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84763c;
    @g
    private final RawSubstitution rawSubstitution;
    @g
    private final TypeParameterResolver typeParameterResolver;
    @g
    private final TypeParameterUpperBoundEraser typeParameterUpperBoundEraser;

    public JavaTypeResolver(@g LazyJavaResolverContext c10, @g TypeParameterResolver typeParameterResolver) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(typeParameterResolver, "typeParameterResolver");
        this.f84763c = c10;
        this.typeParameterResolver = typeParameterResolver;
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = new TypeParameterUpperBoundEraser(null, 1, null);
        this.typeParameterUpperBoundEraser = typeParameterUpperBoundEraser;
        this.rawSubstitution = new RawSubstitution(typeParameterUpperBoundEraser);
    }

    private final boolean argumentsMakeSenseOnlyForMutableContainer(JavaClassifierType javaClassifierType, ClassDescriptor classDescriptor) {
        Object lastOrNull;
        Object lastOrNull2;
        Variance variance;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) javaClassifierType.getTypeArguments());
        if (JavaTypesKt.isSuperWildcard((JavaType) lastOrNull)) {
            List<TypeParameterDescriptor> parameters = JavaToKotlinClassMapper.INSTANCE.convertReadOnlyToMutable(classDescriptor).getTypeConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "JavaToKotlinClassMapper.…ypeConstructor.parameters");
            lastOrNull2 = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) parameters);
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) lastOrNull2;
            return (typeParameterDescriptor == null || (variance = typeParameterDescriptor.getVariance()) == null || variance == Variance.OUT_VARIANCE) ? false : true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if ((!r0.isEmpty()) != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.types.TypeProjection> computeArguments(kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType r7, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r8, kotlin.reflect.jvm.internal.impl.types.TypeConstructor r9) {
        /*
            r6 = this;
            boolean r0 = r7.isRaw()
            java.lang.String r1 = "constructor.parameters"
            r2 = 0
            r3 = 1
            if (r0 != 0) goto L25
            java.util.List r0 = r7.getTypeArguments()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L23
            java.util.List r0 = r9.getParameters()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = r0.isEmpty()
            r0 = r0 ^ r3
            if (r0 == 0) goto L23
            goto L25
        L23:
            r0 = 0
            goto L26
        L25:
            r0 = 1
        L26:
            java.util.List r4 = r9.getParameters()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)
            if (r0 == 0) goto L34
            java.util.List r7 = r6.computeRawTypeArguments(r7, r4, r9, r8)
            return r7
        L34:
            int r8 = r4.size()
            java.util.List r9 = r7.getTypeArguments()
            int r9 = r9.size()
            r0 = 10
            if (r8 == r9) goto L82
            java.util.ArrayList r7 = new java.util.ArrayList
            int r8 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r4, r0)
            r7.<init>(r8)
            java.util.Iterator r8 = r4.iterator()
        L51:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L7d
            java.lang.Object r9 = r8.next()
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r9 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r9
            kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl r0 = new kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl
            kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind r1 = kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind.MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER
            java.lang.String[] r4 = new java.lang.String[r3]
            kotlin.reflect.jvm.internal.impl.name.Name r9 = r9.getName()
            java.lang.String r9 = r9.asString()
            java.lang.String r5 = "p.name.asString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r5)
            r4[r2] = r9
            kotlin.reflect.jvm.internal.impl.types.error.ErrorType r9 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.createErrorType(r1, r4)
            r0.<init>(r9)
            r7.add(r0)
            goto L51
        L7d:
            java.util.List r7 = kotlin.collections.CollectionsKt.toList(r7)
            return r7
        L82:
            java.util.List r7 = r7.getTypeArguments()
            java.lang.Iterable r7 = kotlin.collections.CollectionsKt.withIndex(r7)
            java.util.ArrayList r8 = new java.util.ArrayList
            int r9 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r7, r0)
            r8.<init>(r9)
            java.util.Iterator r7 = r7.iterator()
        L97:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto Lcb
            java.lang.Object r9 = r7.next()
            kotlin.collections.IndexedValue r9 = (kotlin.collections.IndexedValue) r9
            int r0 = r9.component1()
            java.lang.Object r9 = r9.component2()
            kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType r9 = (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType) r9
            r4.size()
            java.lang.Object r0 = r4.get(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0
            kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage r1 = kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage.COMMON
            r3 = 3
            r5 = 0
            kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r1 = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt.toAttributes$default(r1, r2, r5, r3, r5)
            java.lang.String r3 = "parameter"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r9 = r6.transformToTypeProjection(r9, r1, r0)
            r8.add(r9)
            goto L97
        Lcb:
            java.util.List r7 = kotlin.collections.CollectionsKt.toList(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.computeArguments(kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.TypeConstructor):java.util.List");
    }

    private final List<TypeProjection> computeRawTypeArguments(JavaClassifierType javaClassifierType, List<? extends TypeParameterDescriptor> list, TypeConstructor typeConstructor, JavaTypeAttributes javaTypeAttributes) {
        int collectionSizeOrDefault;
        TypeProjection computeProjection;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            if (TypeUtilsKt.hasTypeParameterRecursiveBounds(typeParameterDescriptor, null, javaTypeAttributes.getVisitedTypeParameters())) {
                computeProjection = JavaTypeResolverKt.makeStarProjection(typeParameterDescriptor, javaTypeAttributes);
            } else {
                computeProjection = this.rawSubstitution.computeProjection(typeParameterDescriptor, javaClassifierType.isRaw() ? javaTypeAttributes : javaTypeAttributes.withFlexibility(JavaTypeFlexibility.INFLEXIBLE), new LazyWrappedType(this.f84763c.getStorageManager(), new JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1(this, typeParameterDescriptor, javaClassifierType, javaTypeAttributes, typeConstructor)));
            }
            arrayList.add(computeProjection);
        }
        return arrayList;
    }

    private final SimpleType computeSimpleJavaClassifierType(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes, SimpleType simpleType) {
        TypeAttributes defaultAttributes;
        if (simpleType == null || (defaultAttributes = simpleType.getAttributes()) == null) {
            defaultAttributes = TypeAttributesKt.toDefaultAttributes(new LazyJavaAnnotations(this.f84763c, javaClassifierType, false, 4, null));
        }
        TypeAttributes typeAttributes = defaultAttributes;
        TypeConstructor computeTypeConstructor = computeTypeConstructor(javaClassifierType, javaTypeAttributes);
        if (computeTypeConstructor == null) {
            return null;
        }
        boolean isNullable = isNullable(javaTypeAttributes);
        if (Intrinsics.areEqual(simpleType != null ? simpleType.getConstructor() : null, computeTypeConstructor) && !javaClassifierType.isRaw() && isNullable) {
            return simpleType.makeNullableAsSpecified(true);
        }
        return KotlinTypeFactory.simpleType$default(typeAttributes, computeTypeConstructor, computeArguments(javaClassifierType, javaTypeAttributes, computeTypeConstructor), isNullable, (KotlinTypeRefiner) null, 16, (Object) null);
    }

    private final TypeConstructor computeTypeConstructor(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes) {
        TypeConstructor typeConstructor;
        JavaClassifier classifier = javaClassifierType.getClassifier();
        if (classifier == null) {
            return createNotFoundClass(javaClassifierType);
        }
        if (classifier instanceof JavaClass) {
            JavaClass javaClass = (JavaClass) classifier;
            FqName fqName = javaClass.getFqName();
            if (fqName != null) {
                ClassDescriptor mapKotlinClass = mapKotlinClass(javaClassifierType, javaTypeAttributes, fqName);
                if (mapKotlinClass == null) {
                    mapKotlinClass = this.f84763c.getComponents().getModuleClassResolver().resolveClass(javaClass);
                }
                return (mapKotlinClass == null || (typeConstructor = mapKotlinClass.getTypeConstructor()) == null) ? createNotFoundClass(javaClassifierType) : typeConstructor;
            }
            throw new AssertionError("Class type should have a FQ name: " + classifier);
        } else if (classifier instanceof JavaTypeParameter) {
            TypeParameterDescriptor resolveTypeParameter = this.typeParameterResolver.resolveTypeParameter((JavaTypeParameter) classifier);
            if (resolveTypeParameter != null) {
                return resolveTypeParameter.getTypeConstructor();
            }
            return null;
        } else {
            throw new IllegalStateException("Unknown classifier kind: " + classifier);
        }
    }

    private final TypeConstructor createNotFoundClass(JavaClassifierType javaClassifierType) {
        List<Integer> listOf;
        ClassId classId = ClassId.topLevel(new FqName(javaClassifierType.getClassifierQualifiedName()));
        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(FqName(javaType.classifierQualifiedName))");
        NotFoundClasses notFoundClasses = this.f84763c.getComponents().getDeserializedDescriptorResolver().getComponents().getNotFoundClasses();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(0);
        TypeConstructor typeConstructor = notFoundClasses.getClass(classId, listOf).getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "c.components.deserialize…istOf(0)).typeConstructor");
        return typeConstructor;
    }

    private final boolean isConflictingArgumentFor(Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        return (typeParameterDescriptor.getVariance() == Variance.INVARIANT || variance == typeParameterDescriptor.getVariance()) ? false : true;
    }

    private final boolean isNullable(JavaTypeAttributes javaTypeAttributes) {
        return (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE) ? false : true;
    }

    private final ClassDescriptor mapKotlinClass(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes, FqName fqName) {
        if (javaTypeAttributes.isForAnnotationParameter() && Intrinsics.areEqual(fqName, JavaTypeResolverKt.access$getJAVA_LANG_CLASS_FQ_NAME$p())) {
            return this.f84763c.getComponents().getReflectionTypes().getKClass();
        }
        JavaToKotlinClassMapper javaToKotlinClassMapper = JavaToKotlinClassMapper.INSTANCE;
        ClassDescriptor mapJavaToKotlin$default = JavaToKotlinClassMapper.mapJavaToKotlin$default(javaToKotlinClassMapper, fqName, this.f84763c.getModule().getBuiltIns(), null, 4, null);
        if (mapJavaToKotlin$default == null) {
            return null;
        }
        return (javaToKotlinClassMapper.isReadOnly(mapJavaToKotlin$default) && (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE || argumentsMakeSenseOnlyForMutableContainer(javaClassifierType, mapJavaToKotlin$default))) ? javaToKotlinClassMapper.convertReadOnlyToMutable(mapJavaToKotlin$default) : mapJavaToKotlin$default;
    }

    public static /* synthetic */ KotlinType transformArrayType$default(JavaTypeResolver javaTypeResolver, JavaArrayType javaArrayType, JavaTypeAttributes javaTypeAttributes, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        return javaTypeResolver.transformArrayType(javaArrayType, javaTypeAttributes, z9);
    }

    private final KotlinType transformJavaClassifierType(JavaClassifierType javaClassifierType, JavaTypeAttributes javaTypeAttributes) {
        boolean z9 = (javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == TypeUsage.SUPERTYPE) ? false : true;
        boolean isRaw = javaClassifierType.isRaw();
        if (!isRaw && !z9) {
            SimpleType computeSimpleJavaClassifierType = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes, null);
            return computeSimpleJavaClassifierType != null ? computeSimpleJavaClassifierType : transformJavaClassifierType$errorType(javaClassifierType);
        }
        SimpleType computeSimpleJavaClassifierType2 = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (computeSimpleJavaClassifierType2 == null) {
            return transformJavaClassifierType$errorType(javaClassifierType);
        }
        SimpleType computeSimpleJavaClassifierType3 = computeSimpleJavaClassifierType(javaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), computeSimpleJavaClassifierType2);
        if (computeSimpleJavaClassifierType3 == null) {
            return transformJavaClassifierType$errorType(javaClassifierType);
        }
        if (isRaw) {
            return new RawTypeImpl(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
        }
        return KotlinTypeFactory.flexibleType(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
    }

    private static final ErrorType transformJavaClassifierType$errorType(JavaClassifierType javaClassifierType) {
        return ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, javaClassifierType.getPresentableText());
    }

    private final TypeProjection transformToTypeProjection(JavaType javaType, JavaTypeAttributes javaTypeAttributes, TypeParameterDescriptor typeParameterDescriptor) {
        if (javaType instanceof JavaWildcardType) {
            JavaWildcardType javaWildcardType = (JavaWildcardType) javaType;
            JavaType bound = javaWildcardType.getBound();
            Variance variance = javaWildcardType.isExtends() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
            if (bound != null && !isConflictingArgumentFor(variance, typeParameterDescriptor)) {
                return TypeUtilsKt.createProjection(transformJavaType(bound, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null)), variance, typeParameterDescriptor);
            }
            return JavaTypeResolverKt.makeStarProjection(typeParameterDescriptor, javaTypeAttributes);
        }
        return new TypeProjectionImpl(Variance.INVARIANT, transformJavaType(javaType, javaTypeAttributes));
    }

    @g
    public final KotlinType transformArrayType(@g JavaArrayType arrayType, @g JavaTypeAttributes attr, boolean z9) {
        List<? extends AnnotationDescriptor> plus;
        Intrinsics.checkNotNullParameter(arrayType, "arrayType");
        Intrinsics.checkNotNullParameter(attr, "attr");
        JavaType componentType = arrayType.getComponentType();
        JavaPrimitiveType javaPrimitiveType = componentType instanceof JavaPrimitiveType ? (JavaPrimitiveType) componentType : null;
        PrimitiveType type = javaPrimitiveType != null ? javaPrimitiveType.getType() : null;
        LazyJavaAnnotations lazyJavaAnnotations = new LazyJavaAnnotations(this.f84763c, arrayType, true);
        if (type != null) {
            SimpleType primitiveArrayKotlinType = this.f84763c.getModule().getBuiltIns().getPrimitiveArrayKotlinType(type);
            Intrinsics.checkNotNullExpressionValue(primitiveArrayKotlinType, "c.module.builtIns.getPri…KotlinType(primitiveType)");
            Annotations.Companion companion = Annotations.Companion;
            plus = CollectionsKt___CollectionsKt.plus((Iterable) lazyJavaAnnotations, (Iterable) primitiveArrayKotlinType.getAnnotations());
            TypeUtilsKt.replaceAnnotations(primitiveArrayKotlinType, companion.create(plus));
            return attr.isForAnnotationParameter() ? primitiveArrayKotlinType : KotlinTypeFactory.flexibleType(primitiveArrayKotlinType, primitiveArrayKotlinType.makeNullableAsSpecified(true));
        }
        KotlinType transformJavaType = transformJavaType(componentType, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, attr.isForAnnotationParameter(), null, 2, null));
        if (attr.isForAnnotationParameter()) {
            SimpleType arrayType2 = this.f84763c.getModule().getBuiltIns().getArrayType(z9 ? Variance.OUT_VARIANCE : Variance.INVARIANT, transformJavaType, lazyJavaAnnotations);
            Intrinsics.checkNotNullExpressionValue(arrayType2, "c.module.builtIns.getArr…mponentType, annotations)");
            return arrayType2;
        }
        SimpleType arrayType3 = this.f84763c.getModule().getBuiltIns().getArrayType(Variance.INVARIANT, transformJavaType, lazyJavaAnnotations);
        Intrinsics.checkNotNullExpressionValue(arrayType3, "c.module.builtIns.getArr…mponentType, annotations)");
        return KotlinTypeFactory.flexibleType(arrayType3, this.f84763c.getModule().getBuiltIns().getArrayType(Variance.OUT_VARIANCE, transformJavaType, lazyJavaAnnotations).makeNullableAsSpecified(true));
    }

    @g
    public final KotlinType transformJavaType(@h JavaType javaType, @g JavaTypeAttributes attr) {
        KotlinType transformJavaType;
        SimpleType unitType;
        Intrinsics.checkNotNullParameter(attr, "attr");
        if (javaType instanceof JavaPrimitiveType) {
            PrimitiveType type = ((JavaPrimitiveType) javaType).getType();
            if (type != null) {
                unitType = this.f84763c.getModule().getBuiltIns().getPrimitiveKotlinType(type);
            } else {
                unitType = this.f84763c.getModule().getBuiltIns().getUnitType();
            }
            Intrinsics.checkNotNullExpressionValue(unitType, "{\n                val pr…ns.unitType\n            }");
            return unitType;
        } else if (javaType instanceof JavaClassifierType) {
            return transformJavaClassifierType((JavaClassifierType) javaType, attr);
        } else {
            if (javaType instanceof JavaArrayType) {
                return transformArrayType$default(this, (JavaArrayType) javaType, attr, false, 4, null);
            }
            if (javaType instanceof JavaWildcardType) {
                JavaType bound = ((JavaWildcardType) javaType).getBound();
                if (bound == null || (transformJavaType = transformJavaType(bound, attr)) == null) {
                    SimpleType defaultBound = this.f84763c.getModule().getBuiltIns().getDefaultBound();
                    Intrinsics.checkNotNullExpressionValue(defaultBound, "c.module.builtIns.defaultBound");
                    return defaultBound;
                }
                return transformJavaType;
            } else if (javaType == null) {
                SimpleType defaultBound2 = this.f84763c.getModule().getBuiltIns().getDefaultBound();
                Intrinsics.checkNotNullExpressionValue(defaultBound2, "c.module.builtIns.defaultBound");
                return defaultBound2;
            } else {
                throw new UnsupportedOperationException("Unsupported type: " + javaType);
            }
        }
    }
}
