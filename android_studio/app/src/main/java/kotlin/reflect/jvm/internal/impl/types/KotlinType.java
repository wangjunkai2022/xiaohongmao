package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.StrictEqualityTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;
import m8.h;

/* compiled from: KotlinType.kt */
/* loaded from: classes4.dex */
public abstract class KotlinType implements Annotated, KotlinTypeMarker {
    private int cachedHashCode;

    private KotlinType() {
    }

    public /* synthetic */ KotlinType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final int computeHashCode() {
        if (KotlinTypeKt.isError(this)) {
            return super.hashCode();
        }
        return (((getConstructor().hashCode() * 31) + getArguments().hashCode()) * 31) + (isMarkedNullable() ? 1 : 0);
    }

    public final boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KotlinType) {
            KotlinType kotlinType = (KotlinType) obj;
            return isMarkedNullable() == kotlinType.isMarkedNullable() && StrictEqualityTypeChecker.INSTANCE.strictEqualTypes(unwrap(), kotlinType.unwrap());
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return AnnotationsTypeAttributeKt.getAnnotations(getAttributes());
    }

    @g
    public abstract List<TypeProjection> getArguments();

    @g
    public abstract TypeAttributes getAttributes();

    @g
    public abstract TypeConstructor getConstructor();

    @g
    public abstract MemberScope getMemberScope();

    public final int hashCode() {
        int i4 = this.cachedHashCode;
        if (i4 != 0) {
            return i4;
        }
        int computeHashCode = computeHashCode();
        this.cachedHashCode = computeHashCode;
        return computeHashCode;
    }

    public abstract boolean isMarkedNullable();

    @g
    public abstract KotlinType refine(@g KotlinTypeRefiner kotlinTypeRefiner);

    @g
    public abstract UnwrappedType unwrap();
}
