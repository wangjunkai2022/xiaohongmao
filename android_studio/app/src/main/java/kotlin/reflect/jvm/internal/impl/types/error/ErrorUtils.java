package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import m8.g;
import m8.h;

/* compiled from: ErrorUtils.kt */
/* loaded from: classes4.dex */
public final class ErrorUtils {
    @g
    private static final ErrorClassDescriptor errorClass;
    @g
    private static final PropertyDescriptor errorProperty;
    @g
    private static final Set<PropertyDescriptor> errorPropertyGroup;
    @g
    private static final KotlinType errorPropertyType;
    @g
    private static final KotlinType errorTypeForLoopInSupertypes;
    @g
    public static final ErrorUtils INSTANCE = new ErrorUtils();
    @g
    private static final ModuleDescriptor errorModule = ErrorModuleDescriptor.INSTANCE;

    static {
        Set<PropertyDescriptor> of;
        String format = String.format(ErrorEntity.ERROR_CLASS.getDebugText(), Arrays.copyOf(new Object[]{"unknown class"}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        Name special = Name.special(format);
        Intrinsics.checkNotNullExpressionValue(special, "special(ErrorEntity.ERRO….format(\"unknown class\"))");
        errorClass = new ErrorClassDescriptor(special);
        errorTypeForLoopInSupertypes = createErrorType(ErrorTypeKind.CYCLIC_SUPERTYPES, new String[0]);
        errorPropertyType = createErrorType(ErrorTypeKind.ERROR_PROPERTY_TYPE, new String[0]);
        ErrorPropertyDescriptor errorPropertyDescriptor = new ErrorPropertyDescriptor();
        errorProperty = errorPropertyDescriptor;
        of = SetsKt__SetsJVMKt.setOf(errorPropertyDescriptor);
        errorPropertyGroup = of;
    }

    private ErrorUtils() {
    }

    @JvmStatic
    @g
    public static final ErrorScope createErrorScope(@g ErrorScopeKind kind, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        return createErrorScope(kind, false, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @JvmStatic
    @g
    public static final ErrorType createErrorType(@g ErrorTypeKind kind, @g String... formatParams) {
        List<? extends TypeProjection> emptyList;
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        ErrorUtils errorUtils = INSTANCE;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return errorUtils.createErrorTypeWithArguments(kind, emptyList, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @JvmStatic
    public static final boolean isError(@h DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            ErrorUtils errorUtils = INSTANCE;
            if (errorUtils.isErrorClass(declarationDescriptor) || errorUtils.isErrorClass(declarationDescriptor.getContainingDeclaration()) || declarationDescriptor == errorModule) {
                return true;
            }
        }
        return false;
    }

    private final boolean isErrorClass(DeclarationDescriptor declarationDescriptor) {
        return declarationDescriptor instanceof ErrorClassDescriptor;
    }

    @JvmStatic
    public static final boolean isUninferredTypeVariable(@h KotlinType kotlinType) {
        if (kotlinType == null) {
            return false;
        }
        TypeConstructor constructor = kotlinType.getConstructor();
        return (constructor instanceof ErrorTypeConstructor) && ((ErrorTypeConstructor) constructor).getKind() == ErrorTypeKind.UNINFERRED_TYPE_VARIABLE;
    }

    @g
    public final ErrorTypeConstructor createErrorTypeConstructor(@g ErrorTypeKind kind, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        return new ErrorTypeConstructor(kind, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @g
    public final ErrorType createErrorTypeWithArguments(@g ErrorTypeKind kind, @g List<? extends TypeProjection> arguments, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        return createErrorTypeWithArguments(kind, arguments, createErrorTypeConstructor(kind, (String[]) Arrays.copyOf(formatParams, formatParams.length)), (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @g
    public final ErrorClassDescriptor getErrorClass() {
        return errorClass;
    }

    @g
    public final ModuleDescriptor getErrorModule() {
        return errorModule;
    }

    @g
    public final Set<PropertyDescriptor> getErrorPropertyGroup() {
        return errorPropertyGroup;
    }

    @g
    public final KotlinType getErrorPropertyType() {
        return errorPropertyType;
    }

    @g
    public final KotlinType getErrorTypeForLoopInSupertypes() {
        return errorTypeForLoopInSupertypes;
    }

    @JvmStatic
    @g
    public static final ErrorScope createErrorScope(@g ErrorScopeKind kind, boolean z9, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        return z9 ? new ThrowingScope(kind, (String[]) Arrays.copyOf(formatParams, formatParams.length)) : new ErrorScope(kind, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @g
    public final ErrorType createErrorType(@g ErrorTypeKind kind, @g TypeConstructor typeConstructor, @g String... formatParams) {
        List<? extends TypeProjection> emptyList;
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(typeConstructor, "typeConstructor");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return createErrorTypeWithArguments(kind, emptyList, typeConstructor, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }

    @g
    public final ErrorType createErrorTypeWithArguments(@g ErrorTypeKind kind, @g List<? extends TypeProjection> arguments, @g TypeConstructor typeConstructor, @g String... formatParams) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(typeConstructor, "typeConstructor");
        Intrinsics.checkNotNullParameter(formatParams, "formatParams");
        return new ErrorType(typeConstructor, createErrorScope(ErrorScopeKind.ERROR_TYPE_SCOPE, typeConstructor.toString()), kind, arguments, false, (String[]) Arrays.copyOf(formatParams, formatParams.length));
    }
}
