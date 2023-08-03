package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import m8.g;

/* compiled from: KotlinType.kt */
/* loaded from: classes4.dex */
public abstract class FlexibleType extends UnwrappedType implements FlexibleTypeMarker {
    @g
    private final SimpleType lowerBound;
    @g
    private final SimpleType upperBound;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleType(@g SimpleType lowerBound, @g SimpleType upperBound) {
        super(null);
        Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
        Intrinsics.checkNotNullParameter(upperBound, "upperBound");
        this.lowerBound = lowerBound;
        this.upperBound = upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public List<TypeProjection> getArguments() {
        return getDelegate().getArguments();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeAttributes getAttributes() {
        return getDelegate().getAttributes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeConstructor getConstructor() {
        return getDelegate().getConstructor();
    }

    @g
    public abstract SimpleType getDelegate();

    @g
    public final SimpleType getLowerBound() {
        return this.lowerBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        return getDelegate().getMemberScope();
    }

    @g
    public final SimpleType getUpperBound() {
        return this.upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return getDelegate().isMarkedNullable();
    }

    @g
    public abstract String render(@g DescriptorRenderer descriptorRenderer, @g DescriptorRendererOptions descriptorRendererOptions);

    @g
    public String toString() {
        return DescriptorRenderer.DEBUG_TEXT.renderType(this);
    }
}
