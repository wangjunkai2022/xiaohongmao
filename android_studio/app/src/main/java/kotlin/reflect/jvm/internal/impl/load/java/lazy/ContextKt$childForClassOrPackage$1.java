package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
final class ContextKt$childForClassOrPackage$1 extends Lambda implements Function0<JavaTypeQualifiersByElementType> {
    final /* synthetic */ ClassOrPackageFragmentDescriptor $containingDeclaration;
    final /* synthetic */ LazyJavaResolverContext $this_childForClassOrPackage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextKt$childForClassOrPackage$1(LazyJavaResolverContext lazyJavaResolverContext, ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor) {
        super(0);
        this.$this_childForClassOrPackage = lazyJavaResolverContext;
        this.$containingDeclaration = classOrPackageFragmentDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final JavaTypeQualifiersByElementType invoke() {
        return ContextKt.computeNewDefaultTypeQualifiers(this.$this_childForClassOrPackage, this.$containingDeclaration.getAnnotations());
    }
}
