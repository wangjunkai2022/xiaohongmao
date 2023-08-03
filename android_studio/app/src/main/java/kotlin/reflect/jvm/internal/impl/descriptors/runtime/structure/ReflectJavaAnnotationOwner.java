package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaAnnotationOwner.kt */
/* loaded from: classes4.dex */
public interface ReflectJavaAnnotationOwner extends JavaAnnotationOwner {

    /* compiled from: ReflectJavaAnnotationOwner.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static ReflectJavaAnnotation findAnnotation(@g ReflectJavaAnnotationOwner reflectJavaAnnotationOwner, @g FqName fqName) {
            Annotation[] declaredAnnotations;
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            AnnotatedElement element = reflectJavaAnnotationOwner.getElement();
            if (element == null || (declaredAnnotations = element.getDeclaredAnnotations()) == null) {
                return null;
            }
            return ReflectJavaAnnotationOwnerKt.findAnnotation(declaredAnnotations, fqName);
        }

        @g
        public static List<ReflectJavaAnnotation> getAnnotations(@g ReflectJavaAnnotationOwner reflectJavaAnnotationOwner) {
            List<ReflectJavaAnnotation> emptyList;
            Annotation[] declaredAnnotations;
            List<ReflectJavaAnnotation> annotations;
            AnnotatedElement element = reflectJavaAnnotationOwner.getElement();
            if (element == null || (declaredAnnotations = element.getDeclaredAnnotations()) == null || (annotations = ReflectJavaAnnotationOwnerKt.getAnnotations(declaredAnnotations)) == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            return annotations;
        }

        public static boolean isDeprecatedInJavaDoc(@g ReflectJavaAnnotationOwner reflectJavaAnnotationOwner) {
            return false;
        }
    }

    @h
    AnnotatedElement getElement();
}
