package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationMapper;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJavaAnnotations.kt */
/* loaded from: classes4.dex */
public final class LazyJavaAnnotations$annotationDescriptors$1 extends Lambda implements Function1<JavaAnnotation, AnnotationDescriptor> {
    final /* synthetic */ LazyJavaAnnotations this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaAnnotations$annotationDescriptors$1(LazyJavaAnnotations lazyJavaAnnotations) {
        super(1);
        this.this$0 = lazyJavaAnnotations;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final AnnotationDescriptor invoke(@g JavaAnnotation annotation) {
        LazyJavaResolverContext lazyJavaResolverContext;
        boolean z9;
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        JavaAnnotationMapper javaAnnotationMapper = JavaAnnotationMapper.INSTANCE;
        lazyJavaResolverContext = this.this$0.f84754c;
        z9 = this.this$0.areAnnotationsFreshlySupported;
        return javaAnnotationMapper.mapOrResolveJavaAnnotation(annotation, lazyJavaResolverContext, z9);
    }
}
