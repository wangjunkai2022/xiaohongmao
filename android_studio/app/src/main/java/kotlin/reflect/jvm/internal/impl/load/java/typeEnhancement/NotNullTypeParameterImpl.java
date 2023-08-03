package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.NotNullTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;

/* compiled from: typeEnhancement.kt */
/* loaded from: classes4.dex */
public final class NotNullTypeParameterImpl extends DelegatingSimpleType implements NotNullTypeParameter {
    @g
    private final SimpleType delegate;

    public NotNullTypeParameterImpl(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    private final SimpleType prepareReplacement(SimpleType simpleType) {
        SimpleType makeNullableAsSpecified = simpleType.makeNullableAsSpecified(false);
        return !TypeUtilsKt.isTypeParameter(simpleType) ? makeNullableAsSpecified : new NotNullTypeParameterImpl(makeNullableAsSpecified);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    protected SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public boolean isTypeParameter() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    @g
    public KotlinType substitutionResult(@g KotlinType replacement) {
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        UnwrappedType unwrap = replacement.unwrap();
        if (TypeUtilsKt.isTypeParameter(unwrap) || TypeUtils.isNullableType(unwrap)) {
            if (unwrap instanceof SimpleType) {
                return prepareReplacement((SimpleType) unwrap);
            }
            if (unwrap instanceof FlexibleType) {
                FlexibleType flexibleType = (FlexibleType) unwrap;
                return TypeWithEnhancementKt.wrapEnhancement(KotlinTypeFactory.flexibleType(prepareReplacement(flexibleType.getLowerBound()), prepareReplacement(flexibleType.getUpperBound())), TypeWithEnhancementKt.getEnhancement(unwrap));
            }
            throw new IllegalStateException(("Incorrect type: " + unwrap).toString());
        }
        return unwrap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType makeNullableAsSpecified(boolean z9) {
        return z9 ? getDelegate().makeNullableAsSpecified(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    public NotNullTypeParameterImpl replaceDelegate(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new NotNullTypeParameterImpl(delegate);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public NotNullTypeParameterImpl replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return new NotNullTypeParameterImpl(getDelegate().replaceAttributes(newAttributes));
    }
}
