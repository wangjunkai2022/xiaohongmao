package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public abstract class DelegatingSimpleTypeImpl extends DelegatingSimpleType {
    @g
    private final SimpleType delegate;

    public DelegatingSimpleTypeImpl(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    protected SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType makeNullableAsSpecified(boolean z9) {
        return z9 == isMarkedNullable() ? this : getDelegate().makeNullableAsSpecified(z9).replaceAttributes(getAttributes());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return newAttributes != getAttributes() ? new SimpleTypeWithAttributes(this, newAttributes) : this;
    }
}
