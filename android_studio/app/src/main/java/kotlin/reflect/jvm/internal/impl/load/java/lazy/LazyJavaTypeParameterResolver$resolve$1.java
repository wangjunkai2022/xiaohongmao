package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: resolvers.kt */
/* loaded from: classes4.dex */
public final class LazyJavaTypeParameterResolver$resolve$1 extends Lambda implements Function1<JavaTypeParameter, LazyJavaTypeParameterDescriptor> {
    final /* synthetic */ LazyJavaTypeParameterResolver this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaTypeParameterResolver$resolve$1(LazyJavaTypeParameterResolver lazyJavaTypeParameterResolver) {
        super(1);
        this.this$0 = lazyJavaTypeParameterResolver;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final LazyJavaTypeParameterDescriptor invoke(@g JavaTypeParameter typeParameter) {
        Map map;
        LazyJavaResolverContext lazyJavaResolverContext;
        DeclarationDescriptor declarationDescriptor;
        int i4;
        DeclarationDescriptor declarationDescriptor2;
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        map = this.this$0.typeParameters;
        Integer num = (Integer) map.get(typeParameter);
        if (num != null) {
            LazyJavaTypeParameterResolver lazyJavaTypeParameterResolver = this.this$0;
            int intValue = num.intValue();
            lazyJavaResolverContext = lazyJavaTypeParameterResolver.f84756c;
            LazyJavaResolverContext child = ContextKt.child(lazyJavaResolverContext, lazyJavaTypeParameterResolver);
            declarationDescriptor = lazyJavaTypeParameterResolver.containingDeclaration;
            LazyJavaResolverContext copyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(child, declarationDescriptor.getAnnotations());
            i4 = lazyJavaTypeParameterResolver.typeParametersIndexOffset;
            int i10 = i4 + intValue;
            declarationDescriptor2 = lazyJavaTypeParameterResolver.containingDeclaration;
            return new LazyJavaTypeParameterDescriptor(copyWithNewDefaultTypeQualifiers, typeParameter, i10, declarationDescriptor2);
        }
        return null;
    }
}
