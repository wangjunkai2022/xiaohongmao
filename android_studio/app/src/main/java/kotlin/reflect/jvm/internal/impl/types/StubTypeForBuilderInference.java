package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.types.model.StubTypeMarker;
import m8.g;

/* compiled from: StubTypes.kt */
/* loaded from: classes4.dex */
public final class StubTypeForBuilderInference extends AbstractStubType implements StubTypeMarker {
    @g
    private final TypeConstructor constructor;
    @g
    private final MemberScope memberScope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StubTypeForBuilderInference(@g NewTypeVariableConstructor originalTypeVariable, boolean z9, @g TypeConstructor constructor) {
        super(originalTypeVariable, z9);
        Intrinsics.checkNotNullParameter(originalTypeVariable, "originalTypeVariable");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        this.constructor = constructor;
        this.memberScope = originalTypeVariable.getBuiltIns().getAnyType().getMemberScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        return this.memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType
    @g
    public AbstractStubType materialize(boolean z9) {
        return new StubTypeForBuilderInference(getOriginalTypeVariable(), z9, getConstructor());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Stub (BI): ");
        sb.append(getOriginalTypeVariable());
        sb.append(isMarkedNullable() ? "?" : "");
        return sb.toString();
    }
}
