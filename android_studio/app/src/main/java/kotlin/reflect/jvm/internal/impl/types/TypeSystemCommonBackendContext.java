package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import m8.g;
import m8.h;

/* compiled from: TypeSystemCommonBackendContext.kt */
/* loaded from: classes4.dex */
public interface TypeSystemCommonBackendContext extends TypeSystemContext {

    /* compiled from: TypeSystemCommonBackendContext.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @g
        public static KotlinTypeMarker makeNullable(@g TypeSystemCommonBackendContext typeSystemCommonBackendContext, @g KotlinTypeMarker receiver) {
            SimpleTypeMarker withNullability;
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            SimpleTypeMarker asSimpleType = typeSystemCommonBackendContext.asSimpleType(receiver);
            return (asSimpleType == null || (withNullability = typeSystemCommonBackendContext.withNullability(asSimpleType, true)) == null) ? receiver : withNullability;
        }
    }

    @h
    FqNameUnsafe getClassFqNameUnsafe(@g TypeConstructorMarker typeConstructorMarker);

    @h
    PrimitiveType getPrimitiveArrayType(@g TypeConstructorMarker typeConstructorMarker);

    @h
    PrimitiveType getPrimitiveType(@g TypeConstructorMarker typeConstructorMarker);

    @g
    KotlinTypeMarker getRepresentativeUpperBound(@g TypeParameterMarker typeParameterMarker);

    @h
    KotlinTypeMarker getUnsubstitutedUnderlyingType(@g KotlinTypeMarker kotlinTypeMarker);

    boolean hasAnnotation(@g KotlinTypeMarker kotlinTypeMarker, @g FqName fqName);

    boolean isInlineClass(@g TypeConstructorMarker typeConstructorMarker);

    boolean isUnderKotlinPackage(@g TypeConstructorMarker typeConstructorMarker);

    @g
    KotlinTypeMarker makeNullable(@g KotlinTypeMarker kotlinTypeMarker);
}
