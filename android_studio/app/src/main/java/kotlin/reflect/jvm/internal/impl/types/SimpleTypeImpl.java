package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScope;
import kotlin.reflect.jvm.internal.impl.types.error.ThrowingScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public final class SimpleTypeImpl extends SimpleType {
    @g
    private final List<TypeProjection> arguments;
    @g
    private final TypeConstructor constructor;
    private final boolean isMarkedNullable;
    @g
    private final MemberScope memberScope;
    @g
    private final Function1<KotlinTypeRefiner, SimpleType> refinedTypeFactory;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleTypeImpl(@g TypeConstructor constructor, @g List<? extends TypeProjection> arguments, boolean z9, @g MemberScope memberScope, @g Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        Intrinsics.checkNotNullParameter(refinedTypeFactory, "refinedTypeFactory");
        this.constructor = constructor;
        this.arguments = arguments;
        this.isMarkedNullable = z9;
        this.memberScope = memberScope;
        this.refinedTypeFactory = refinedTypeFactory;
        if (!(getMemberScope() instanceof ErrorScope) || (getMemberScope() instanceof ThrowingScope)) {
            return;
        }
        throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + getMemberScope() + '\n' + getConstructor());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public List<TypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeAttributes getAttributes() {
        return TypeAttributes.Companion.getEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        return this.memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType makeNullableAsSpecified(boolean z9) {
        if (z9 == isMarkedNullable()) {
            return this;
        }
        if (z9) {
            return new NullableSimpleType(this);
        }
        return new NotNullSimpleType(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return newAttributes.isEmpty() ? this : new SimpleTypeWithAttributes(this, newAttributes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public SimpleType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        SimpleType invoke = this.refinedTypeFactory.invoke(kotlinTypeRefiner);
        return invoke == null ? this : invoke;
    }
}
