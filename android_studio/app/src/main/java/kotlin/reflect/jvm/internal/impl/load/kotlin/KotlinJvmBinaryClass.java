package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import m8.g;
import m8.h;

/* compiled from: KotlinJvmBinaryClass.kt */
/* loaded from: classes4.dex */
public interface KotlinJvmBinaryClass {

    /* compiled from: KotlinJvmBinaryClass.kt */
    /* loaded from: classes4.dex */
    public interface AnnotationArgumentVisitor {
        void visit(@h Name name, @h Object obj);

        @h
        AnnotationArgumentVisitor visitAnnotation(@h Name name, @g ClassId classId);

        @h
        AnnotationArrayArgumentVisitor visitArray(@h Name name);

        void visitClassLiteral(@h Name name, @g ClassLiteralValue classLiteralValue);

        void visitEnd();

        void visitEnum(@h Name name, @g ClassId classId, @g Name name2);
    }

    /* compiled from: KotlinJvmBinaryClass.kt */
    /* loaded from: classes4.dex */
    public interface AnnotationArrayArgumentVisitor {
        void visit(@h Object obj);

        @h
        AnnotationArgumentVisitor visitAnnotation(@g ClassId classId);

        void visitClassLiteral(@g ClassLiteralValue classLiteralValue);

        void visitEnd();

        void visitEnum(@g ClassId classId, @g Name name);
    }

    /* compiled from: KotlinJvmBinaryClass.kt */
    /* loaded from: classes4.dex */
    public interface AnnotationVisitor {
        @h
        AnnotationArgumentVisitor visitAnnotation(@g ClassId classId, @g SourceElement sourceElement);

        void visitEnd();
    }

    /* compiled from: KotlinJvmBinaryClass.kt */
    /* loaded from: classes4.dex */
    public interface MemberVisitor {
        @h
        AnnotationVisitor visitField(@g Name name, @g String str, @h Object obj);

        @h
        MethodAnnotationVisitor visitMethod(@g Name name, @g String str);
    }

    /* compiled from: KotlinJvmBinaryClass.kt */
    /* loaded from: classes4.dex */
    public interface MethodAnnotationVisitor extends AnnotationVisitor {
        @h
        AnnotationArgumentVisitor visitParameterAnnotation(int i4, @g ClassId classId, @g SourceElement sourceElement);
    }

    @g
    KotlinClassHeader getClassHeader();

    @g
    ClassId getClassId();

    @g
    String getLocation();

    void loadClassAnnotations(@g AnnotationVisitor annotationVisitor, @h byte[] bArr);

    void visitMembers(@g MemberVisitor memberVisitor, @h byte[] bArr);
}
