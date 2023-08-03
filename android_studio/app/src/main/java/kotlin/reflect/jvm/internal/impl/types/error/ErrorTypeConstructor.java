package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: ErrorTypeConstructor.kt */
/* loaded from: classes4.dex */
public final class ErrorTypeConstructor implements TypeConstructor {
    @g
    private final String debugText;
    @g
    private final String[] formatParams;
    @g
    private final ErrorTypeKind kind;

    public ErrorTypeConstructor(@g ErrorTypeKind kind, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        this.kind = kind;
        this.formatParams = formatParams;
        String debugText = ErrorEntity.ERROR_TYPE.getDebugText();
        String debugMessage = kind.getDebugMessage();
        Object[] copyOf = Arrays.copyOf(formatParams, formatParams.length);
        String format = String.format(debugMessage, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        String format2 = String.format(debugText, Arrays.copyOf(new Object[]{format}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(this, *args)");
        this.debugText = format2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public KotlinBuiltIns getBuiltIns() {
        return DefaultBuiltIns.Companion.getInstance();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public ClassifierDescriptor getDeclarationDescriptor() {
        return ErrorUtils.INSTANCE.getErrorClass();
    }

    @g
    public final ErrorTypeKind getKind() {
        return this.kind;
    }

    @g
    public final String getParam(int i4) {
        return this.formatParams[i4];
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public List<TypeParameterDescriptor> getParameters() {
        List<TypeParameterDescriptor> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    /* renamed from: getSupertypes */
    public Collection<KotlinType> mo1364getSupertypes() {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @g
    public String toString() {
        return this.debugText;
    }
}
