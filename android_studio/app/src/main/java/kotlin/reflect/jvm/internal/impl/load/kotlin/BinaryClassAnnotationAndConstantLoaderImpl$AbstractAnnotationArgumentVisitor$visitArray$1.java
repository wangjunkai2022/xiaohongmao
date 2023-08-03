package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import m8.g;
import m8.h;

/* compiled from: BinaryClassAnnotationAndConstantLoaderImpl.kt */
/* loaded from: classes4.dex */
public final class BinaryClassAnnotationAndConstantLoaderImpl$AbstractAnnotationArgumentVisitor$visitArray$1 implements KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor {
    final /* synthetic */ Name $name;
    @g
    private final ArrayList<ConstantValue<?>> elements = new ArrayList<>();
    final /* synthetic */ BinaryClassAnnotationAndConstantLoaderImpl this$0;
    final /* synthetic */ BinaryClassAnnotationAndConstantLoaderImpl.AbstractAnnotationArgumentVisitor this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinaryClassAnnotationAndConstantLoaderImpl$AbstractAnnotationArgumentVisitor$visitArray$1(BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl, Name name, BinaryClassAnnotationAndConstantLoaderImpl.AbstractAnnotationArgumentVisitor abstractAnnotationArgumentVisitor) {
        this.this$0 = binaryClassAnnotationAndConstantLoaderImpl;
        this.$name = name;
        this.this$1 = abstractAnnotationArgumentVisitor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor
    public void visit(@h Object obj) {
        this.elements.add(this.this$0.createConstant(this.$name, obj));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor
    @h
    public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitAnnotation(@g ClassId classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        final ArrayList arrayList = new ArrayList();
        BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl = this.this$0;
        SourceElement NO_SOURCE = SourceElement.NO_SOURCE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
        final KotlinJvmBinaryClass.AnnotationArgumentVisitor loadAnnotation = binaryClassAnnotationAndConstantLoaderImpl.loadAnnotation(classId, NO_SOURCE, arrayList);
        Intrinsics.checkNotNull(loadAnnotation);
        return new KotlinJvmBinaryClass.AnnotationArgumentVisitor(this, arrayList) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl$AbstractAnnotationArgumentVisitor$visitArray$1$visitAnnotation$1
            private final /* synthetic */ KotlinJvmBinaryClass.AnnotationArgumentVisitor $$delegate_0;
            final /* synthetic */ ArrayList<AnnotationDescriptor> $list;
            final /* synthetic */ BinaryClassAnnotationAndConstantLoaderImpl$AbstractAnnotationArgumentVisitor$visitArray$1 this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
                this.$list = arrayList;
                this.$$delegate_0 = KotlinJvmBinaryClass.AnnotationArgumentVisitor.this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            public void visit(@h Name name, @h Object obj) {
                this.$$delegate_0.visit(name, obj);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            @h
            public KotlinJvmBinaryClass.AnnotationArgumentVisitor visitAnnotation(@h Name name, @g ClassId classId2) {
                Intrinsics.checkNotNullParameter(classId2, "classId");
                return this.$$delegate_0.visitAnnotation(name, classId2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            @h
            public KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor visitArray(@h Name name) {
                return this.$$delegate_0.visitArray(name);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            public void visitClassLiteral(@h Name name, @g ClassLiteralValue value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this.$$delegate_0.visitClassLiteral(name, value);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            public void visitEnd() {
                ArrayList arrayList2;
                Object single;
                KotlinJvmBinaryClass.AnnotationArgumentVisitor.this.visitEnd();
                arrayList2 = this.this$0.elements;
                single = CollectionsKt___CollectionsKt.single((List<? extends Object>) this.$list);
                arrayList2.add(new AnnotationValue((AnnotationDescriptor) single));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArgumentVisitor
            public void visitEnum(@h Name name, @g ClassId enumClassId, @g Name enumEntryName) {
                Intrinsics.checkNotNullParameter(enumClassId, "enumClassId");
                Intrinsics.checkNotNullParameter(enumEntryName, "enumEntryName");
                this.$$delegate_0.visitEnum(name, enumClassId, enumEntryName);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor
    public void visitClassLiteral(@g ClassLiteralValue value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.elements.add(new KClassValue(value));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor
    public void visitEnd() {
        this.this$1.visitArrayValue(this.$name, this.elements);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor
    public void visitEnum(@g ClassId enumClassId, @g Name enumEntryName) {
        Intrinsics.checkNotNullParameter(enumClassId, "enumClassId");
        Intrinsics.checkNotNullParameter(enumEntryName, "enumEntryName");
        this.elements.add(new EnumValue(enumClassId, enumEntryName));
    }
}
