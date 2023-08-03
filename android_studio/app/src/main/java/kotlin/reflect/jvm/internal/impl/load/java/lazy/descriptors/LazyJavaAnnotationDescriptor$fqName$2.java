package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaAnnotationDescriptor.kt */
/* loaded from: classes4.dex */
public final class LazyJavaAnnotationDescriptor$fqName$2 extends Lambda implements Function0<FqName> {
    final /* synthetic */ LazyJavaAnnotationDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaAnnotationDescriptor$fqName$2(LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor) {
        super(0);
        this.this$0 = lazyJavaAnnotationDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final FqName invoke() {
        JavaAnnotation javaAnnotation;
        javaAnnotation = this.this$0.javaAnnotation;
        ClassId classId = javaAnnotation.getClassId();
        if (classId != null) {
            return classId.asSingleFqName();
        }
        return null;
    }
}
