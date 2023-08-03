package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;
import m8.h;

/* compiled from: RawType.kt */
/* loaded from: classes4.dex */
public final class RawSubstitution extends TypeSubstitution {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final JavaTypeAttributes lowerTypeAttr;
    @g
    private static final JavaTypeAttributes upperTypeAttr;
    @g
    private final TypeParameterUpperBoundEraser typeParameterUpperBoundEraser;

    /* compiled from: RawType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: RawType.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[JavaTypeFlexibility.values().length];
            iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
            iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
            iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        TypeUsage typeUsage = TypeUsage.COMMON;
        lowerTypeAttr = JavaTypeResolverKt.toAttributes$default(typeUsage, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        upperTypeAttr = JavaTypeResolverKt.toAttributes$default(typeUsage, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    public RawSubstitution() {
        this(null, 1, null);
    }

    public RawSubstitution(@h TypeParameterUpperBoundEraser typeParameterUpperBoundEraser) {
        this.typeParameterUpperBoundEraser = typeParameterUpperBoundEraser == null ? new TypeParameterUpperBoundEraser(this) : typeParameterUpperBoundEraser;
    }

    public static /* synthetic */ TypeProjection computeProjection$default(RawSubstitution rawSubstitution, TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes, KotlinType kotlinType, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            kotlinType = rawSubstitution.typeParameterUpperBoundEraser.getErasedUpperBound$descriptors_jvm(typeParameterDescriptor, true, javaTypeAttributes);
            Intrinsics.checkNotNullExpressionValue(kotlinType, "typeParameterUpperBoundE…eter, isRaw = true, attr)");
        }
        return rawSubstitution.computeProjection(typeParameterDescriptor, javaTypeAttributes, kotlinType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor(SimpleType simpleType, ClassDescriptor classDescriptor, JavaTypeAttributes javaTypeAttributes) {
        int collectionSizeOrDefault;
        List listOf;
        if (simpleType.getConstructor().getParameters().isEmpty()) {
            return TuplesKt.to(simpleType, Boolean.FALSE);
        }
        if (KotlinBuiltIns.isArray(simpleType)) {
            TypeProjection typeProjection = simpleType.getArguments().get(0);
            Variance projectionKind = typeProjection.getProjectionKind();
            KotlinType type = typeProjection.getType();
            Intrinsics.checkNotNullExpressionValue(type, "componentTypeProjection.type");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new TypeProjectionImpl(projectionKind, eraseType(type, javaTypeAttributes)));
            return TuplesKt.to(KotlinTypeFactory.simpleType$default(simpleType.getAttributes(), simpleType.getConstructor(), listOf, simpleType.isMarkedNullable(), (KotlinTypeRefiner) null, 16, (Object) null), Boolean.FALSE);
        } else if (KotlinTypeKt.isError(simpleType)) {
            return TuplesKt.to(ErrorUtils.createErrorType(ErrorTypeKind.ERROR_RAW_TYPE, simpleType.getConstructor().toString()), Boolean.FALSE);
        } else {
            MemberScope memberScope = classDescriptor.getMemberScope(this);
            Intrinsics.checkNotNullExpressionValue(memberScope, "declaration.getMemberScope(this)");
            TypeAttributes attributes = simpleType.getAttributes();
            TypeConstructor typeConstructor = classDescriptor.getTypeConstructor();
            Intrinsics.checkNotNullExpressionValue(typeConstructor, "declaration.typeConstructor");
            List<TypeParameterDescriptor> parameters = classDescriptor.getTypeConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "declaration.typeConstructor.parameters");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TypeParameterDescriptor parameter : parameters) {
                Intrinsics.checkNotNullExpressionValue(parameter, "parameter");
                arrayList.add(computeProjection$default(this, parameter, javaTypeAttributes, null, 4, null));
            }
            return TuplesKt.to(KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(attributes, typeConstructor, arrayList, simpleType.isMarkedNullable(), memberScope, new RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(classDescriptor, this, simpleType, javaTypeAttributes)), Boolean.TRUE);
        }
    }

    private final KotlinType eraseType(KotlinType kotlinType, JavaTypeAttributes javaTypeAttributes) {
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            KotlinType erasedUpperBound$descriptors_jvm = this.typeParameterUpperBoundEraser.getErasedUpperBound$descriptors_jvm((TypeParameterDescriptor) declarationDescriptor, true, javaTypeAttributes);
            Intrinsics.checkNotNullExpressionValue(erasedUpperBound$descriptors_jvm, "typeParameterUpperBoundE…tion, isRaw = true, attr)");
            return eraseType(erasedUpperBound$descriptors_jvm, javaTypeAttributes);
        } else if (declarationDescriptor instanceof ClassDescriptor) {
            ClassifierDescriptor declarationDescriptor2 = FlexibleTypesKt.upperIfFlexible(kotlinType).getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor2 instanceof ClassDescriptor) {
                Pair<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.lowerIfFlexible(kotlinType), (ClassDescriptor) declarationDescriptor, lowerTypeAttr);
                SimpleType component1 = eraseInflexibleBasedOnClassDescriptor.component1();
                boolean booleanValue = eraseInflexibleBasedOnClassDescriptor.component2().booleanValue();
                Pair<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor2 = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.upperIfFlexible(kotlinType), (ClassDescriptor) declarationDescriptor2, upperTypeAttr);
                SimpleType component12 = eraseInflexibleBasedOnClassDescriptor2.component1();
                boolean booleanValue2 = eraseInflexibleBasedOnClassDescriptor2.component2().booleanValue();
                if (!booleanValue && !booleanValue2) {
                    return KotlinTypeFactory.flexibleType(component1, component12);
                }
                return new RawTypeImpl(component1, component12);
            }
            throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + declarationDescriptor2 + "\" while for lower it's \"" + declarationDescriptor + '\"').toString());
        } else {
            throw new IllegalStateException(("Unexpected declaration kind: " + declarationDescriptor).toString());
        }
    }

    static /* synthetic */ KotlinType eraseType$default(RawSubstitution rawSubstitution, KotlinType kotlinType, JavaTypeAttributes javaTypeAttributes, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            javaTypeAttributes = new JavaTypeAttributes(TypeUsage.COMMON, null, false, null, null, 30, null);
        }
        return rawSubstitution.eraseType(kotlinType, javaTypeAttributes);
    }

    @g
    public final TypeProjection computeProjection(@g TypeParameterDescriptor parameter, @g JavaTypeAttributes attr, @g KotlinType erasedUpperBound) {
        Intrinsics.checkNotNullParameter(parameter, "parameter");
        Intrinsics.checkNotNullParameter(attr, "attr");
        Intrinsics.checkNotNullParameter(erasedUpperBound, "erasedUpperBound");
        int i4 = WhenMappings.$EnumSwitchMapping$0[attr.getFlexibility().ordinal()];
        if (i4 != 1) {
            if (i4 != 2 && i4 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            if (!parameter.getVariance().getAllowsOutPosition()) {
                return new TypeProjectionImpl(Variance.INVARIANT, DescriptorUtilsKt.getBuiltIns(parameter).getNothingType());
            }
            List<TypeParameterDescriptor> parameters = erasedUpperBound.getConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "erasedUpperBound.constructor.parameters");
            if (!parameters.isEmpty()) {
                return new TypeProjectionImpl(Variance.OUT_VARIANCE, erasedUpperBound);
            }
            return JavaTypeResolverKt.makeStarProjection(parameter, attr);
        }
        return new TypeProjectionImpl(Variance.INVARIANT, erasedUpperBound);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @g
    public TypeProjectionImpl get(@g KotlinType key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new TypeProjectionImpl(eraseType$default(this, key, null, 2, null));
    }

    public /* synthetic */ RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : typeParameterUpperBoundEraser);
    }
}
