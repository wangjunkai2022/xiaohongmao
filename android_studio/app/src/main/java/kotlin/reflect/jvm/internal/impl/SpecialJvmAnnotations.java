package kotlin.reflect.jvm.internal.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: SpecialJvmAnnotations.kt */
/* loaded from: classes4.dex */
public final class SpecialJvmAnnotations {
    @g
    public static final SpecialJvmAnnotations INSTANCE = new SpecialJvmAnnotations();
    @g
    private static final ClassId JAVA_LANG_ANNOTATION_REPEATABLE;
    @g
    private static final Set<ClassId> SPECIAL_ANNOTATIONS;

    static {
        List<FqName> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{JvmAnnotationNames.METADATA_FQ_NAME, JvmAnnotationNames.JETBRAINS_NOT_NULL_ANNOTATION, JvmAnnotationNames.JETBRAINS_NULLABLE_ANNOTATION, JvmAnnotationNames.TARGET_ANNOTATION, JvmAnnotationNames.RETENTION_ANNOTATION, JvmAnnotationNames.DOCUMENTED_ANNOTATION});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (FqName fqName : listOf) {
            linkedHashSet.add(ClassId.topLevel(fqName));
        }
        SPECIAL_ANNOTATIONS = linkedHashSet;
        ClassId classId = ClassId.topLevel(JvmAnnotationNames.REPEATABLE_ANNOTATION);
        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(JvmAnnotationNames.REPEATABLE_ANNOTATION)");
        JAVA_LANG_ANNOTATION_REPEATABLE = classId;
    }

    private SpecialJvmAnnotations() {
    }

    @g
    public final ClassId getJAVA_LANG_ANNOTATION_REPEATABLE() {
        return JAVA_LANG_ANNOTATION_REPEATABLE;
    }

    @g
    public final Set<ClassId> getSPECIAL_ANNOTATIONS() {
        return SPECIAL_ANNOTATIONS;
    }

    public final boolean isAnnotatedWithContainerMetaAnnotation(@g KotlinJvmBinaryClass klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        klass.loadClassAnnotations(new KotlinJvmBinaryClass.AnnotationVisitor() { // from class: kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations$isAnnotatedWithContainerMetaAnnotation$1
            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            @h
            public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitAnnotation(@g ClassId classId, @g SourceElement source) {
                Intrinsics.checkNotNullParameter(classId, "classId");
                Intrinsics.checkNotNullParameter(source, "source");
                if (Intrinsics.areEqual(classId, JvmAbi.INSTANCE.getREPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION())) {
                    Ref.BooleanRef.this.element = true;
                    return null;
                }
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            public void visitEnd() {
            }
        }, null);
        return booleanRef.element;
    }
}
