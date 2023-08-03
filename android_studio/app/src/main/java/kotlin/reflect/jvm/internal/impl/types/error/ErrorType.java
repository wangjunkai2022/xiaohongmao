package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: ErrorType.kt */
/* loaded from: classes4.dex */
public final class ErrorType extends SimpleType {
    @g
    private final List<TypeProjection> arguments;
    @g
    private final TypeConstructor constructor;
    @g
    private final String debugMessage;
    @g
    private final String[] formatParams;
    private final boolean isMarkedNullable;
    @g
    private final ErrorTypeKind kind;
    @g
    private final MemberScope memberScope;

    public /* synthetic */ ErrorType(TypeConstructor typeConstructor, MemberScope memberScope, ErrorTypeKind errorTypeKind, List list, boolean z9, String[] strArr, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeConstructor, memberScope, errorTypeKind, (i4 & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i4 & 16) != 0 ? false : z9, strArr);
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

    @g
    public final String getDebugMessage() {
        return this.debugMessage;
    }

    @g
    public final ErrorTypeKind getKind() {
        return this.kind;
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

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    @g
    public ErrorType refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
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
        TypeConstructor constructor = getConstructor();
        MemberScope memberScope = getMemberScope();
        ErrorTypeKind errorTypeKind = this.kind;
        List<TypeProjection> arguments = getArguments();
        String[] strArr = this.formatParams;
        return new ErrorType(constructor, memberScope, errorTypeKind, arguments, z9, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public ErrorType(@g TypeConstructor constructor, @g MemberScope memberScope, @g ErrorTypeKind kind, @g List<? extends TypeProjection> arguments, boolean z9, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        this.constructor = constructor;
        this.memberScope = memberScope;
        this.kind = kind;
        this.arguments = arguments;
        this.isMarkedNullable = z9;
        this.formatParams = formatParams;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String debugMessage = kind.getDebugMessage();
        Object[] copyOf = Arrays.copyOf(formatParams, formatParams.length);
        String format = String.format(debugMessage, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        this.debugMessage = format;
    }
}
