package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
final class ContextKt$copyWithNewDefaultTypeQualifiers$1 extends Lambda implements Function0<JavaTypeQualifiersByElementType> {
    final /* synthetic */ Annotations $additionalAnnotations;
    final /* synthetic */ LazyJavaResolverContext $this_copyWithNewDefaultTypeQualifiers;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextKt$copyWithNewDefaultTypeQualifiers$1(LazyJavaResolverContext lazyJavaResolverContext, Annotations annotations) {
        super(0);
        this.$this_copyWithNewDefaultTypeQualifiers = lazyJavaResolverContext;
        this.$additionalAnnotations = annotations;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final JavaTypeQualifiersByElementType invoke() {
        return ContextKt.computeNewDefaultTypeQualifiers(this.$this_copyWithNewDefaultTypeQualifiers, this.$additionalAnnotations);
    }
}
