package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: TypeParameterUpperBoundEraser.kt */
/* loaded from: classes4.dex */
public final class TypeParameterUpperBoundEraser {
    @g
    private final Lazy erroneousErasedBound$delegate;
    @g
    private final MemoizedFunctionToNotNull<DataToEraseUpperBound, KotlinType> getErasedUpperBound;
    @g
    private final RawSubstitution rawSubstitution;
    @g
    private final LockBasedStorageManager storage;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TypeParameterUpperBoundEraser.kt */
    /* loaded from: classes4.dex */
    public static final class DataToEraseUpperBound {
        private final boolean isRaw;
        @g
        private final JavaTypeAttributes typeAttr;
        @g
        private final TypeParameterDescriptor typeParameter;

        public DataToEraseUpperBound(@g TypeParameterDescriptor typeParameter, boolean z9, @g JavaTypeAttributes typeAttr) {
            Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
            Intrinsics.checkNotNullParameter(typeAttr, "typeAttr");
            this.typeParameter = typeParameter;
            this.isRaw = z9;
            this.typeAttr = typeAttr;
        }

        public boolean equals(@h Object obj) {
            if (obj instanceof DataToEraseUpperBound) {
                DataToEraseUpperBound dataToEraseUpperBound = (DataToEraseUpperBound) obj;
                return Intrinsics.areEqual(dataToEraseUpperBound.typeParameter, this.typeParameter) && dataToEraseUpperBound.isRaw == this.isRaw && dataToEraseUpperBound.typeAttr.getFlexibility() == this.typeAttr.getFlexibility() && dataToEraseUpperBound.typeAttr.getHowThisTypeIsUsed() == this.typeAttr.getHowThisTypeIsUsed() && dataToEraseUpperBound.typeAttr.isForAnnotationParameter() == this.typeAttr.isForAnnotationParameter() && Intrinsics.areEqual(dataToEraseUpperBound.typeAttr.getDefaultType(), this.typeAttr.getDefaultType());
            }
            return false;
        }

        @g
        public final JavaTypeAttributes getTypeAttr() {
            return this.typeAttr;
        }

        @g
        public final TypeParameterDescriptor getTypeParameter() {
            return this.typeParameter;
        }

        public int hashCode() {
            int hashCode = this.typeParameter.hashCode();
            int i4 = hashCode + (hashCode * 31) + (this.isRaw ? 1 : 0);
            int hashCode2 = i4 + (i4 * 31) + this.typeAttr.getFlexibility().hashCode();
            int hashCode3 = hashCode2 + (hashCode2 * 31) + this.typeAttr.getHowThisTypeIsUsed().hashCode();
            int i10 = hashCode3 + (hashCode3 * 31) + (this.typeAttr.isForAnnotationParameter() ? 1 : 0);
            int i11 = i10 * 31;
            SimpleType defaultType = this.typeAttr.getDefaultType();
            return i10 + i11 + (defaultType != null ? defaultType.hashCode() : 0);
        }

        public final boolean isRaw() {
            return this.isRaw;
        }

        @g
        public String toString() {
            return "DataToEraseUpperBound(typeParameter=" + this.typeParameter + ", isRaw=" + this.isRaw + ", typeAttr=" + this.typeAttr + ')';
        }
    }

    public TypeParameterUpperBoundEraser() {
        this(null, 1, null);
    }

    public TypeParameterUpperBoundEraser(@h RawSubstitution rawSubstitution) {
        Lazy lazy;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Type parameter upper bound erasion results");
        this.storage = lockBasedStorageManager;
        lazy = LazyKt__LazyJVMKt.lazy(new TypeParameterUpperBoundEraser$erroneousErasedBound$2(this));
        this.erroneousErasedBound$delegate = lazy;
        this.rawSubstitution = rawSubstitution == null ? new RawSubstitution(this) : rawSubstitution;
        MemoizedFunctionToNotNull<DataToEraseUpperBound, KotlinType> createMemoizedFunction = lockBasedStorageManager.createMemoizedFunction(new TypeParameterUpperBoundEraser$getErasedUpperBound$1(this));
        Intrinsics.checkNotNullExpressionValue(createMemoizedFunction, "storage.createMemoizedFu… isRaw, typeAttr) }\n    }");
        this.getErasedUpperBound = createMemoizedFunction;
    }

    private final KotlinType getDefaultType(JavaTypeAttributes javaTypeAttributes) {
        KotlinType replaceArgumentsWithStarProjections;
        SimpleType defaultType = javaTypeAttributes.getDefaultType();
        return (defaultType == null || (replaceArgumentsWithStarProjections = TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType)) == null) ? getErroneousErasedBound() : replaceArgumentsWithStarProjections;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KotlinType getErasedUpperBoundInternal(TypeParameterDescriptor typeParameterDescriptor, boolean z9, JavaTypeAttributes javaTypeAttributes) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Object first;
        Object first2;
        TypeProjection computeProjection;
        Set<TypeParameterDescriptor> visitedTypeParameters = javaTypeAttributes.getVisitedTypeParameters();
        if (visitedTypeParameters != null && visitedTypeParameters.contains(typeParameterDescriptor.getOriginal())) {
            return getDefaultType(javaTypeAttributes);
        }
        SimpleType defaultType = typeParameterDescriptor.getDefaultType();
        Intrinsics.checkNotNullExpressionValue(defaultType, "typeParameter.defaultType");
        Set<TypeParameterDescriptor> extractTypeParametersFromUpperBounds = TypeUtilsKt.extractTypeParametersFromUpperBounds(defaultType, visitedTypeParameters);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(extractTypeParametersFromUpperBounds, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (TypeParameterDescriptor typeParameterDescriptor2 : extractTypeParametersFromUpperBounds) {
            if (visitedTypeParameters != null && visitedTypeParameters.contains(typeParameterDescriptor2)) {
                computeProjection = JavaTypeResolverKt.makeStarProjection(typeParameterDescriptor2, javaTypeAttributes);
            } else {
                RawSubstitution rawSubstitution = this.rawSubstitution;
                JavaTypeAttributes withFlexibility = z9 ? javaTypeAttributes : javaTypeAttributes.withFlexibility(JavaTypeFlexibility.INFLEXIBLE);
                KotlinType erasedUpperBound$descriptors_jvm = getErasedUpperBound$descriptors_jvm(typeParameterDescriptor2, z9, javaTypeAttributes.withNewVisitedTypeParameter(typeParameterDescriptor));
                Intrinsics.checkNotNullExpressionValue(erasedUpperBound$descriptors_jvm, "getErasedUpperBound(it, …Parameter(typeParameter))");
                computeProjection = rawSubstitution.computeProjection(typeParameterDescriptor2, withFlexibility, erasedUpperBound$descriptors_jvm);
            }
            Pair pair = TuplesKt.to(typeParameterDescriptor2.getTypeConstructor(), computeProjection);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        TypeSubstitutor create = TypeSubstitutor.create(TypeConstructorSubstitution.Companion.createByConstructorsMap$default(TypeConstructorSubstitution.Companion, linkedHashMap, false, 2, null));
        Intrinsics.checkNotNullExpressionValue(create, "create(TypeConstructorSu…rsMap(erasedUpperBounds))");
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        Intrinsics.checkNotNullExpressionValue(upperBounds, "typeParameter.upperBounds");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) upperBounds);
        KotlinType firstUpperBound = (KotlinType) first;
        if (firstUpperBound.getConstructor().getDeclarationDescriptor() instanceof ClassDescriptor) {
            Intrinsics.checkNotNullExpressionValue(firstUpperBound, "firstUpperBound");
            return TypeUtilsKt.replaceArgumentsWithStarProjectionOrMapped(firstUpperBound, create, linkedHashMap, Variance.OUT_VARIANCE, javaTypeAttributes.getVisitedTypeParameters());
        }
        Set<TypeParameterDescriptor> visitedTypeParameters2 = javaTypeAttributes.getVisitedTypeParameters();
        if (visitedTypeParameters2 == null) {
            visitedTypeParameters2 = SetsKt__SetsJVMKt.setOf(this);
        }
        ClassifierDescriptor declarationDescriptor = firstUpperBound.getConstructor().getDeclarationDescriptor();
        Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        while (true) {
            TypeParameterDescriptor typeParameterDescriptor3 = (TypeParameterDescriptor) declarationDescriptor;
            if (!visitedTypeParameters2.contains(typeParameterDescriptor3)) {
                List<KotlinType> upperBounds2 = typeParameterDescriptor3.getUpperBounds();
                Intrinsics.checkNotNullExpressionValue(upperBounds2, "current.upperBounds");
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) upperBounds2);
                KotlinType nextUpperBound = (KotlinType) first2;
                if (nextUpperBound.getConstructor().getDeclarationDescriptor() instanceof ClassDescriptor) {
                    Intrinsics.checkNotNullExpressionValue(nextUpperBound, "nextUpperBound");
                    return TypeUtilsKt.replaceArgumentsWithStarProjectionOrMapped(nextUpperBound, create, linkedHashMap, Variance.OUT_VARIANCE, javaTypeAttributes.getVisitedTypeParameters());
                }
                declarationDescriptor = nextUpperBound.getConstructor().getDeclarationDescriptor();
                Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
            } else {
                return getDefaultType(javaTypeAttributes);
            }
        }
    }

    private final ErrorType getErroneousErasedBound() {
        return (ErrorType) this.erroneousErasedBound$delegate.getValue();
    }

    public final KotlinType getErasedUpperBound$descriptors_jvm(@g TypeParameterDescriptor typeParameter, boolean z9, @g JavaTypeAttributes typeAttr) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Intrinsics.checkNotNullParameter(typeAttr, "typeAttr");
        return this.getErasedUpperBound.invoke(new DataToEraseUpperBound(typeParameter, z9, typeAttr));
    }

    public /* synthetic */ TypeParameterUpperBoundEraser(RawSubstitution rawSubstitution, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : rawSubstitution);
    }
}
