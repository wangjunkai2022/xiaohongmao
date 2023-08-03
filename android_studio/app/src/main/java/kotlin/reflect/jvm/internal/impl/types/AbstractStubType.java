package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: StubTypes.kt */
/* loaded from: classes4.dex */
public abstract class AbstractStubType extends SimpleType {
    @g
    public static final Companion Companion = new Companion(null);
    private final boolean isMarkedNullable;
    @g
    private final MemberScope memberScope;
    @g
    private final NewTypeVariableConstructor originalTypeVariable;

    /* compiled from: StubTypes.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AbstractStubType(@g NewTypeVariableConstructor originalTypeVariable, boolean z9) {
        Intrinsics.checkNotNullParameter(originalTypeVariable, "originalTypeVariable");
        this.originalTypeVariable = originalTypeVariable;
        this.isMarkedNullable = z9;
        this.memberScope = ErrorUtils.createErrorScope(ErrorScopeKind.STUB_TYPE_SCOPE, originalTypeVariable.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public List<TypeProjection> getArguments() {
        List<TypeProjection> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public TypeAttributes getAttributes() {
        return TypeAttributes.Companion.getEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public MemberScope getMemberScope() {
        return this.memberScope;
    }

    @g
    public final NewTypeVariableConstructor getOriginalTypeVariable() {
        return this.originalTypeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @g
    public abstract AbstractStubType materialize(boolean z9);

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public AbstractStubType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType replaceAttributes(@g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    @g
    public SimpleType makeNullableAsSpecified(boolean z9) {
        return z9 == isMarkedNullable() ? this : materialize(z9);
    }
}
