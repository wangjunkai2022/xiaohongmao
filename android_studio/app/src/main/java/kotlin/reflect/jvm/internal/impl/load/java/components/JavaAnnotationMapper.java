package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: JavaAnnotationMapper.kt */
/* loaded from: classes4.dex */
public final class JavaAnnotationMapper {
    @g
    private static final Name DEPRECATED_ANNOTATION_MESSAGE;
    @g
    public static final JavaAnnotationMapper INSTANCE = new JavaAnnotationMapper();
    @g
    private static final Name RETENTION_ANNOTATION_VALUE;
    @g
    private static final Name TARGET_ANNOTATION_ALLOWED_TARGETS;
    @g
    private static final Map<FqName, FqName> kotlinToJavaNameMap;

    static {
        Map<FqName, FqName> mapOf;
        Name identifier = Name.identifier("message");
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"message\")");
        DEPRECATED_ANNOTATION_MESSAGE = identifier;
        Name identifier2 = Name.identifier("allowedTargets");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(\"allowedTargets\")");
        TARGET_ANNOTATION_ALLOWED_TARGETS = identifier2;
        Name identifier3 = Name.identifier("value");
        Intrinsics.checkNotNullExpressionValue(identifier3, "identifier(\"value\")");
        RETENTION_ANNOTATION_VALUE = identifier3;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(StandardNames.FqNames.target, JvmAnnotationNames.TARGET_ANNOTATION), TuplesKt.to(StandardNames.FqNames.retention, JvmAnnotationNames.RETENTION_ANNOTATION), TuplesKt.to(StandardNames.FqNames.mustBeDocumented, JvmAnnotationNames.DOCUMENTED_ANNOTATION));
        kotlinToJavaNameMap = mapOf;
    }

    private JavaAnnotationMapper() {
    }

    public static /* synthetic */ AnnotationDescriptor mapOrResolveJavaAnnotation$default(JavaAnnotationMapper javaAnnotationMapper, JavaAnnotation javaAnnotation, LazyJavaResolverContext lazyJavaResolverContext, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        return javaAnnotationMapper.mapOrResolveJavaAnnotation(javaAnnotation, lazyJavaResolverContext, z9);
    }

    @h
    public final AnnotationDescriptor findMappedJavaAnnotation(@g FqName kotlinName, @g JavaAnnotationOwner annotationOwner, @g LazyJavaResolverContext c10) {
        JavaAnnotation findAnnotation;
        Intrinsics.checkNotNullParameter(kotlinName, "kotlinName");
        Intrinsics.checkNotNullParameter(annotationOwner, "annotationOwner");
        Intrinsics.checkNotNullParameter(c10, "c");
        if (Intrinsics.areEqual(kotlinName, StandardNames.FqNames.deprecated)) {
            FqName DEPRECATED_ANNOTATION = JvmAnnotationNames.DEPRECATED_ANNOTATION;
            Intrinsics.checkNotNullExpressionValue(DEPRECATED_ANNOTATION, "DEPRECATED_ANNOTATION");
            JavaAnnotation findAnnotation2 = annotationOwner.findAnnotation(DEPRECATED_ANNOTATION);
            if (findAnnotation2 != null || annotationOwner.isDeprecatedInJavaDoc()) {
                return new JavaDeprecatedAnnotationDescriptor(findAnnotation2, c10);
            }
        }
        FqName fqName = kotlinToJavaNameMap.get(kotlinName);
        if (fqName == null || (findAnnotation = annotationOwner.findAnnotation(fqName)) == null) {
            return null;
        }
        return mapOrResolveJavaAnnotation$default(INSTANCE, findAnnotation, c10, false, 4, null);
    }

    @g
    public final Name getDEPRECATED_ANNOTATION_MESSAGE$descriptors_jvm() {
        return DEPRECATED_ANNOTATION_MESSAGE;
    }

    @g
    public final Name getRETENTION_ANNOTATION_VALUE$descriptors_jvm() {
        return RETENTION_ANNOTATION_VALUE;
    }

    @g
    public final Name getTARGET_ANNOTATION_ALLOWED_TARGETS$descriptors_jvm() {
        return TARGET_ANNOTATION_ALLOWED_TARGETS;
    }

    @h
    public final AnnotationDescriptor mapOrResolveJavaAnnotation(@g JavaAnnotation annotation, @g LazyJavaResolverContext c10, boolean z9) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(c10, "c");
        ClassId classId = annotation.getClassId();
        if (Intrinsics.areEqual(classId, ClassId.topLevel(JvmAnnotationNames.TARGET_ANNOTATION))) {
            return new JavaTargetAnnotationDescriptor(annotation, c10);
        }
        if (Intrinsics.areEqual(classId, ClassId.topLevel(JvmAnnotationNames.RETENTION_ANNOTATION))) {
            return new JavaRetentionAnnotationDescriptor(annotation, c10);
        }
        if (Intrinsics.areEqual(classId, ClassId.topLevel(JvmAnnotationNames.DOCUMENTED_ANNOTATION))) {
            return new JavaAnnotationDescriptor(c10, annotation, StandardNames.FqNames.mustBeDocumented);
        }
        if (Intrinsics.areEqual(classId, ClassId.topLevel(JvmAnnotationNames.DEPRECATED_ANNOTATION))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(c10, annotation, z9);
    }
}
