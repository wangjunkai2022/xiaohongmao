package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner;
import m8.g;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
public final class ContextKt {
    @g
    public static final LazyJavaResolverContext child(@g LazyJavaResolverContext lazyJavaResolverContext, @g TypeParameterResolver typeParameterResolver) {
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(typeParameterResolver, "typeParameterResolver");
        return new LazyJavaResolverContext(lazyJavaResolverContext.getComponents(), typeParameterResolver, lazyJavaResolverContext.getDelegateForDefaultTypeQualifiers$descriptors_jvm());
    }

    @g
    public static final LazyJavaResolverContext childForClassOrPackage(@g LazyJavaResolverContext lazyJavaResolverContext, @g ClassOrPackageFragmentDescriptor containingDeclaration, @h JavaTypeParameterListOwner javaTypeParameterListOwner, int i4) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ContextKt$childForClassOrPackage$1(lazyJavaResolverContext, containingDeclaration));
        return child(lazyJavaResolverContext, containingDeclaration, javaTypeParameterListOwner, i4, lazy);
    }

    public static /* synthetic */ LazyJavaResolverContext childForClassOrPackage$default(LazyJavaResolverContext lazyJavaResolverContext, ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor, JavaTypeParameterListOwner javaTypeParameterListOwner, int i4, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            javaTypeParameterListOwner = null;
        }
        if ((i10 & 4) != 0) {
            i4 = 0;
        }
        return childForClassOrPackage(lazyJavaResolverContext, classOrPackageFragmentDescriptor, javaTypeParameterListOwner, i4);
    }

    @g
    public static final LazyJavaResolverContext childForMethod(@g LazyJavaResolverContext lazyJavaResolverContext, @g DeclarationDescriptor containingDeclaration, @g JavaTypeParameterListOwner typeParameterOwner, int i4) {
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        Intrinsics.checkNotNullParameter(typeParameterOwner, "typeParameterOwner");
        return child(lazyJavaResolverContext, containingDeclaration, typeParameterOwner, i4, lazyJavaResolverContext.getDelegateForDefaultTypeQualifiers$descriptors_jvm());
    }

    public static /* synthetic */ LazyJavaResolverContext childForMethod$default(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaTypeParameterListOwner javaTypeParameterListOwner, int i4, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            i4 = 0;
        }
        return childForMethod(lazyJavaResolverContext, declarationDescriptor, javaTypeParameterListOwner, i4);
    }

    @h
    public static final JavaTypeQualifiersByElementType computeNewDefaultTypeQualifiers(@g LazyJavaResolverContext lazyJavaResolverContext, @g Annotations additionalAnnotations) {
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(additionalAnnotations, "additionalAnnotations");
        return lazyJavaResolverContext.getComponents().getAnnotationTypeQualifierResolver().extractAndMergeDefaultQualifiers(lazyJavaResolverContext.getDefaultTypeQualifiers(), additionalAnnotations);
    }

    @g
    public static final LazyJavaResolverContext copyWithNewDefaultTypeQualifiers(@g LazyJavaResolverContext lazyJavaResolverContext, @g Annotations additionalAnnotations) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(additionalAnnotations, "additionalAnnotations");
        if (additionalAnnotations.isEmpty()) {
            return lazyJavaResolverContext;
        }
        JavaResolverComponents components = lazyJavaResolverContext.getComponents();
        TypeParameterResolver typeParameterResolver = lazyJavaResolverContext.getTypeParameterResolver();
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ContextKt$copyWithNewDefaultTypeQualifiers$1(lazyJavaResolverContext, additionalAnnotations));
        return new LazyJavaResolverContext(components, typeParameterResolver, lazy);
    }

    @g
    public static final LazyJavaResolverContext replaceComponents(@g LazyJavaResolverContext lazyJavaResolverContext, @g JavaResolverComponents components) {
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(components, "components");
        return new LazyJavaResolverContext(components, lazyJavaResolverContext.getTypeParameterResolver(), lazyJavaResolverContext.getDelegateForDefaultTypeQualifiers$descriptors_jvm());
    }

    private static final LazyJavaResolverContext child(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaTypeParameterListOwner javaTypeParameterListOwner, int i4, Lazy<JavaTypeQualifiersByElementType> lazy) {
        TypeParameterResolver typeParameterResolver;
        JavaResolverComponents components = lazyJavaResolverContext.getComponents();
        if (javaTypeParameterListOwner != null) {
            typeParameterResolver = new LazyJavaTypeParameterResolver(lazyJavaResolverContext, declarationDescriptor, javaTypeParameterListOwner, i4);
        } else {
            typeParameterResolver = lazyJavaResolverContext.getTypeParameterResolver();
        }
        return new LazyJavaResolverContext(components, typeParameterResolver, lazy);
    }
}
