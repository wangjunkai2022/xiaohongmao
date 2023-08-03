package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaAnnotation.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaAnnotation extends ReflectJavaElement implements JavaAnnotation {
    @g
    private final Annotation annotation;

    public ReflectJavaAnnotation(@g Annotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.annotation = annotation;
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof ReflectJavaAnnotation) && this.annotation == ((ReflectJavaAnnotation) obj).annotation;
    }

    @g
    public final Annotation getAnnotation() {
        return this.annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    @g
    public Collection<JavaAnnotationArgument> getArguments() {
        Method[] declaredMethods = JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.annotation)).getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            ReflectJavaAnnotationArgument.Factory factory = ReflectJavaAnnotationArgument.Factory;
            Object invoke = method.invoke(this.annotation, new Object[0]);
            Intrinsics.checkNotNullExpressionValue(invoke, "method.invoke(annotation)");
            arrayList.add(factory.create(invoke, Name.identifier(method.getName())));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    @g
    public ClassId getClassId() {
        return ReflectClassUtilKt.getClassId(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.annotation)));
    }

    public int hashCode() {
        return System.identityHashCode(this.annotation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public boolean isFreshlySupportedTypeUseAnnotation() {
        return JavaAnnotation.DefaultImpls.isFreshlySupportedTypeUseAnnotation(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public boolean isIdeExternalAnnotation() {
        return JavaAnnotation.DefaultImpls.isIdeExternalAnnotation(this);
    }

    @g
    public String toString() {
        return ReflectJavaAnnotation.class.getName() + ": " + this.annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    @g
    public ReflectJavaClass resolve() {
        return new ReflectJavaClass(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.annotation)));
    }
}
