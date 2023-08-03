package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;

/* compiled from: SpecialTypes.kt */
/* loaded from: classes4.dex */
public final class AbbreviatedType extends DelegatingSimpleType {
    @g
    private final SimpleType abbreviation;
    @g
    private final SimpleType delegate;

    public AbbreviatedType(@g SimpleType delegate, @g SimpleType abbreviation) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(abbreviation, "abbreviation");
        this.delegate = delegate;
        this.abbreviation = abbreviation;
    }

    @g
    public final SimpleType getAbbreviation() {
        return this.abbreviation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    protected SimpleType getDelegate() {
        return this.delegate;
    }

    @g
    public final SimpleType getExpandedType() {
        return getDelegate();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return new AbbreviatedType(getDelegate().replaceAttributes(newAttributes), this.abbreviation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    public AbbreviatedType replaceDelegate(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new AbbreviatedType(delegate, this.abbreviation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public AbbreviatedType makeNullableAsSpecified(boolean z9) {
        return new AbbreviatedType(getDelegate().makeNullableAsSpecified(z9), this.abbreviation.makeNullableAsSpecified(z9));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public AbbreviatedType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        KotlinType refineType = kotlinTypeRefiner.refineType((KotlinTypeMarker) getDelegate());
        Intrinsics.checkNotNull(refineType, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        KotlinType refineType2 = kotlinTypeRefiner.refineType((KotlinTypeMarker) this.abbreviation);
        Intrinsics.checkNotNull(refineType2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new AbbreviatedType((SimpleType) refineType, (SimpleType) refineType2);
    }
}
