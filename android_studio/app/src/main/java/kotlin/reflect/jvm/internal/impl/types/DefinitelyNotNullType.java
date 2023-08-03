package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.NullabilityChecker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import m8.g;
import m8.h;

/* compiled from: SpecialTypes.kt */
/* loaded from: classes4.dex */
public final class DefinitelyNotNullType extends DelegatingSimpleType implements CustomTypeParameter, DefinitelyNotNullTypeMarker {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final SimpleType original;
    private final boolean useCorrectedNullabilityForTypeParameters;

    /* compiled from: SpecialTypes.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean canHaveUndefinedNullability(UnwrappedType unwrappedType) {
            return (unwrappedType.getConstructor() instanceof NewTypeVariableConstructor) || (unwrappedType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) || (unwrappedType instanceof NewCapturedType) || (unwrappedType instanceof StubTypeForBuilderInference);
        }

        public static /* synthetic */ DefinitelyNotNullType makeDefinitelyNotNull$default(Companion companion, UnwrappedType unwrappedType, boolean z9, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return companion.makeDefinitelyNotNull(unwrappedType, z9);
        }

        private final boolean makesSenseToBeDefinitelyNotNull(UnwrappedType unwrappedType, boolean z9) {
            boolean z10 = false;
            if (canHaveUndefinedNullability(unwrappedType)) {
                if (unwrappedType instanceof StubTypeForBuilderInference) {
                    return TypeUtils.isNullableType(unwrappedType);
                }
                ClassifierDescriptor declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
                TypeParameterDescriptorImpl typeParameterDescriptorImpl = declarationDescriptor instanceof TypeParameterDescriptorImpl ? (TypeParameterDescriptorImpl) declarationDescriptor : null;
                if (typeParameterDescriptorImpl != null && !typeParameterDescriptorImpl.isInitialized()) {
                    z10 = true;
                }
                if (z10) {
                    return true;
                }
                if (z9 && (unwrappedType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor)) {
                    return TypeUtils.isNullableType(unwrappedType);
                }
                return !NullabilityChecker.INSTANCE.isSubtypeOfAny(unwrappedType);
            }
            return false;
        }

        @h
        public final DefinitelyNotNullType makeDefinitelyNotNull(@g UnwrappedType type, boolean z9) {
            Intrinsics.checkNotNullParameter(type, "type");
            if (type instanceof DefinitelyNotNullType) {
                return (DefinitelyNotNullType) type;
            }
            if (makesSenseToBeDefinitelyNotNull(type, z9)) {
                if (type instanceof FlexibleType) {
                    FlexibleType flexibleType = (FlexibleType) type;
                    Intrinsics.areEqual(flexibleType.getLowerBound().getConstructor(), flexibleType.getUpperBound().getConstructor());
                }
                return new DefinitelyNotNullType(FlexibleTypesKt.lowerIfFlexible(type).makeNullableAsSpecified(false), z9, null);
            }
            return null;
        }
    }

    private DefinitelyNotNullType(SimpleType simpleType, boolean z9) {
        this.original = simpleType;
        this.useCorrectedNullabilityForTypeParameters = z9;
    }

    public /* synthetic */ DefinitelyNotNullType(SimpleType simpleType, boolean z9, DefaultConstructorMarker defaultConstructorMarker) {
        this(simpleType, z9);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    protected SimpleType getDelegate() {
        return this.original;
    }

    @g
    public final SimpleType getOriginal() {
        return this.original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public boolean isTypeParameter() {
        return (getDelegate().getConstructor() instanceof NewTypeVariableConstructor) || (getDelegate().getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    @g
    public KotlinType substitutionResult(@g KotlinType replacement) {
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return SpecialTypesKt.makeDefinitelyNotNullOrNotNull(replacement.unwrap(), this.useCorrectedNullabilityForTypeParameters);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    @g
    public String toString() {
        return getDelegate() + " & Any";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType makeNullableAsSpecified(boolean z9) {
        return z9 ? getDelegate().makeNullableAsSpecified(z9) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return new DefinitelyNotNullType(getDelegate().replaceAttributes(newAttributes), this.useCorrectedNullabilityForTypeParameters);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    public DefinitelyNotNullType replaceDelegate(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new DefinitelyNotNullType(delegate, this.useCorrectedNullabilityForTypeParameters);
    }
}
