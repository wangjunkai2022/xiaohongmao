package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeBase;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import m8.g;
import m8.h;

/* compiled from: KTypeImpl.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0013\u0010#\u001a\u00020\u001b2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020'H\u0016J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001bH\u0000¢\u0006\u0002\b*J\b\u0010+\u001a\u00020,H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000f\u0010\fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0017X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006-²\u0006\u0010\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060\tX\u008a\u0084\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeImpl;", "Lkotlin/jvm/internal/KTypeBase;", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "computeJavaType", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "arguments", "Lkotlin/reflect/KTypeProjection;", "getArguments", "arguments$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "classifier$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getComputeJavaType$annotations", "()V", "isMarkedNullable", "", "()Z", "javaType", "getJavaType", "()Ljava/lang/reflect/Type;", "getType", "()Lorg/jetbrains/kotlin/types/KotlinType;", "convert", "equals", "other", "", "hashCode", "", "makeNullableAsSpecified", "nullable", "makeNullableAsSpecified$kotlin_reflection", "toString", "", "kotlin-reflection", "parameterizedTypeArguments"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KTypeImpl implements KTypeBase {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KTypeImpl.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KTypeImpl.class), "arguments", "getArguments()Ljava/util/List;"))};
    @g
    private final ReflectProperties.LazySoftVal arguments$delegate;
    @g
    private final ReflectProperties.LazySoftVal classifier$delegate;
    @h
    private final ReflectProperties.LazySoftVal<Type> computeJavaType;
    @g
    private final KotlinType type;

    public KTypeImpl(@g KotlinType type, @h Function0<? extends Type> function0) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        ReflectProperties.LazySoftVal<Type> lazySoftVal = null;
        ReflectProperties.LazySoftVal<Type> lazySoftVal2 = function0 instanceof ReflectProperties.LazySoftVal ? (ReflectProperties.LazySoftVal) function0 : null;
        if (lazySoftVal2 != null) {
            lazySoftVal = lazySoftVal2;
        } else if (function0 != null) {
            lazySoftVal = ReflectProperties.lazySoft(function0);
        }
        this.computeJavaType = lazySoftVal;
        this.classifier$delegate = ReflectProperties.lazySoft(new KTypeImpl$classifier$2(this));
        this.arguments$delegate = ReflectProperties.lazySoft(new KTypeImpl$arguments$2(this, function0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KClassifier convert(KotlinType kotlinType) {
        Object singleOrNull;
        KotlinType type;
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ClassDescriptor) {
            Class<?> javaClass = UtilKt.toJavaClass((ClassDescriptor) declarationDescriptor);
            if (javaClass == null) {
                return null;
            }
            if (!javaClass.isArray()) {
                if (!TypeUtils.isNullableType(kotlinType)) {
                    Class<?> primitiveByWrapper = ReflectClassUtilKt.getPrimitiveByWrapper(javaClass);
                    if (primitiveByWrapper != null) {
                        javaClass = primitiveByWrapper;
                    }
                    return new KClassImpl(javaClass);
                }
                return new KClassImpl(javaClass);
            }
            singleOrNull = CollectionsKt___CollectionsKt.singleOrNull((List<? extends Object>) kotlinType.getArguments());
            TypeProjection typeProjection = (TypeProjection) singleOrNull;
            if (typeProjection != null && (type = typeProjection.getType()) != null) {
                KClassifier convert = convert(type);
                if (convert != null) {
                    return new KClassImpl(UtilKt.createArrayType(JvmClassMappingKt.getJavaClass((KClass) KTypesJvm.getJvmErasure(convert))));
                }
                throw new KotlinReflectionInternalError("Cannot determine classifier for array element type: " + this);
            }
            return new KClassImpl(javaClass);
        } else if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return new KTypeParameterImpl(null, (TypeParameterDescriptor) declarationDescriptor);
        } else {
            if (declarationDescriptor instanceof TypeAliasDescriptor) {
                throw new NotImplementedError("An operation is not implemented: Type alias classifiers are not yet supported");
            }
            return null;
        }
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof KTypeImpl) && Intrinsics.areEqual(this.type, ((KTypeImpl) obj).type);
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @g
    public List<Annotation> getAnnotations() {
        return UtilKt.computeAnnotations(this.type);
    }

    @Override // kotlin.reflect.KType
    @g
    public List<KTypeProjection> getArguments() {
        T value = this.arguments$delegate.getValue(this, $$delegatedProperties[1]);
        Intrinsics.checkNotNullExpressionValue(value, "<get-arguments>(...)");
        return (List) value;
    }

    @Override // kotlin.reflect.KType
    @h
    public KClassifier getClassifier() {
        return (KClassifier) this.classifier$delegate.getValue(this, $$delegatedProperties[0]);
    }

    @Override // kotlin.jvm.internal.KTypeBase
    @h
    public Type getJavaType() {
        ReflectProperties.LazySoftVal<Type> lazySoftVal = this.computeJavaType;
        if (lazySoftVal != null) {
            return lazySoftVal.invoke();
        }
        return null;
    }

    @g
    public final KotlinType getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.type.isMarkedNullable();
    }

    @g
    public final KTypeImpl makeNullableAsSpecified$kotlin_reflection(boolean z9) {
        if (FlexibleTypesKt.isFlexible(this.type) || isMarkedNullable() != z9) {
            KotlinType makeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(this.type, z9);
            Intrinsics.checkNotNullExpressionValue(makeNullableAsSpecified, "makeNullableAsSpecified(type, nullable)");
            return new KTypeImpl(makeNullableAsSpecified, this.computeJavaType);
        }
        return this;
    }

    @g
    public String toString() {
        return ReflectionObjectRenderer.INSTANCE.renderType(this.type);
    }

    public /* synthetic */ KTypeImpl(KotlinType kotlinType, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinType, (i4 & 2) != 0 ? null : function0);
    }
}
