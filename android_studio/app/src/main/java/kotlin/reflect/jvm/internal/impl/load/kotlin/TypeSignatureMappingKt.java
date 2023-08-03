package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementUtilsKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: typeSignatureMapping.kt */
/* loaded from: classes4.dex */
public final class TypeSignatureMappingKt {
    @g
    public static final <T> T boxTypeIfNeeded(@g JvmTypeFactory<T> jvmTypeFactory, @g T possiblyPrimitiveType, boolean z9) {
        Intrinsics.checkNotNullParameter(jvmTypeFactory, "<this>");
        Intrinsics.checkNotNullParameter(possiblyPrimitiveType, "possiblyPrimitiveType");
        return z9 ? jvmTypeFactory.boxType(possiblyPrimitiveType) : possiblyPrimitiveType;
    }

    @h
    public static final <T> T mapBuiltInType(@g TypeSystemCommonBackendContext typeSystemCommonBackendContext, @g KotlinTypeMarker type, @g JvmTypeFactory<T> typeFactory, @g TypeMappingMode mode) {
        Intrinsics.checkNotNullParameter(typeSystemCommonBackendContext, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(typeFactory, "typeFactory");
        Intrinsics.checkNotNullParameter(mode, "mode");
        TypeConstructorMarker typeConstructor = typeSystemCommonBackendContext.typeConstructor(type);
        if (typeSystemCommonBackendContext.isClassTypeConstructor(typeConstructor)) {
            PrimitiveType primitiveType = typeSystemCommonBackendContext.getPrimitiveType(typeConstructor);
            boolean z9 = true;
            if (primitiveType != null) {
                T createPrimitiveType = typeFactory.createPrimitiveType(primitiveType);
                if (!typeSystemCommonBackendContext.isNullableType(type) && !TypeEnhancementUtilsKt.hasEnhancedNullability(typeSystemCommonBackendContext, type)) {
                    z9 = false;
                }
                return (T) boxTypeIfNeeded(typeFactory, createPrimitiveType, z9);
            }
            PrimitiveType primitiveArrayType = typeSystemCommonBackendContext.getPrimitiveArrayType(typeConstructor);
            if (primitiveArrayType != null) {
                return typeFactory.createFromString('[' + JvmPrimitiveType.get(primitiveArrayType).getDesc());
            }
            if (typeSystemCommonBackendContext.isUnderKotlinPackage(typeConstructor)) {
                FqNameUnsafe classFqNameUnsafe = typeSystemCommonBackendContext.getClassFqNameUnsafe(typeConstructor);
                ClassId mapKotlinToJava = classFqNameUnsafe != null ? JavaToKotlinClassMap.INSTANCE.mapKotlinToJava(classFqNameUnsafe) : null;
                if (mapKotlinToJava != null) {
                    if (!mode.getKotlinCollectionsToJavaCollections()) {
                        List<JavaToKotlinClassMap.PlatformMutabilityMapping> mutabilityMappings = JavaToKotlinClassMap.INSTANCE.getMutabilityMappings();
                        if (!(mutabilityMappings instanceof Collection) || !mutabilityMappings.isEmpty()) {
                            for (JavaToKotlinClassMap.PlatformMutabilityMapping platformMutabilityMapping : mutabilityMappings) {
                                if (Intrinsics.areEqual(platformMutabilityMapping.getJavaClass(), mapKotlinToJava)) {
                                    break;
                                }
                            }
                        }
                        z9 = false;
                        if (z9) {
                            return null;
                        }
                    }
                    String internalName = JvmClassName.byClassId(mapKotlinToJava).getInternalName();
                    Intrinsics.checkNotNullExpressionValue(internalName, "byClassId(classId).internalName");
                    return typeFactory.createObjectType(internalName);
                }
            }
            return null;
        }
        return null;
    }
}
