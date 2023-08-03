package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaConstructor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import m8.g;

/* compiled from: ReflectJavaConstructor.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaConstructor extends ReflectJavaMember implements JavaConstructor {
    @g
    private final Constructor<?> member;

    public ReflectJavaConstructor(@g Constructor<?> member) {
        Intrinsics.checkNotNullParameter(member, "member");
        this.member = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember
    @g
    public Constructor<?> getMember() {
        return this.member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner
    @g
    public List<ReflectJavaTypeParameter> getTypeParameters() {
        TypeVariable<Constructor<?>>[] typeParameters = getMember().getTypeParameters();
        Intrinsics.checkNotNullExpressionValue(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeParameters) {
            arrayList.add(new ReflectJavaTypeParameter(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaConstructor
    @g
    public List<JavaValueParameter> getValueParameters() {
        Object[] copyOfRange;
        Object[] copyOfRange2;
        List<JavaValueParameter> emptyList;
        Type[] realTypes = getMember().getGenericParameterTypes();
        Intrinsics.checkNotNullExpressionValue(realTypes, "types");
        if (realTypes.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Class<?> declaringClass = getMember().getDeclaringClass();
        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
            copyOfRange2 = ArraysKt___ArraysJvmKt.copyOfRange(realTypes, 1, realTypes.length);
            realTypes = (Type[]) copyOfRange2;
        }
        Annotation[][] realAnnotations = getMember().getParameterAnnotations();
        if (realAnnotations.length >= realTypes.length) {
            if (realAnnotations.length > realTypes.length) {
                Intrinsics.checkNotNullExpressionValue(realAnnotations, "annotations");
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(realAnnotations, realAnnotations.length - realTypes.length, realAnnotations.length);
                realAnnotations = (Annotation[][]) copyOfRange;
            }
            Intrinsics.checkNotNullExpressionValue(realTypes, "realTypes");
            Intrinsics.checkNotNullExpressionValue(realAnnotations, "realAnnotations");
            return getValueParameters(realTypes, realAnnotations, getMember().isVarArgs());
        }
        throw new IllegalStateException("Illegal generic signature: " + getMember());
    }
}
