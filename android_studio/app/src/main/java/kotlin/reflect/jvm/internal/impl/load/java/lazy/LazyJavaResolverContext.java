package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
public final class LazyJavaResolverContext {
    @g
    private final JavaResolverComponents components;
    @g
    private final Lazy defaultTypeQualifiers$delegate;
    @g
    private final Lazy<JavaTypeQualifiersByElementType> delegateForDefaultTypeQualifiers;
    @g
    private final TypeParameterResolver typeParameterResolver;
    @g
    private final JavaTypeResolver typeResolver;

    public LazyJavaResolverContext(@g JavaResolverComponents components, @g TypeParameterResolver typeParameterResolver, @g Lazy<JavaTypeQualifiersByElementType> delegateForDefaultTypeQualifiers) {
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(typeParameterResolver, "typeParameterResolver");
        Intrinsics.checkNotNullParameter(delegateForDefaultTypeQualifiers, "delegateForDefaultTypeQualifiers");
        this.components = components;
        this.typeParameterResolver = typeParameterResolver;
        this.delegateForDefaultTypeQualifiers = delegateForDefaultTypeQualifiers;
        this.defaultTypeQualifiers$delegate = delegateForDefaultTypeQualifiers;
        this.typeResolver = new JavaTypeResolver(this, typeParameterResolver);
    }

    @g
    public final JavaResolverComponents getComponents() {
        return this.components;
    }

    @h
    public final JavaTypeQualifiersByElementType getDefaultTypeQualifiers() {
        return (JavaTypeQualifiersByElementType) this.defaultTypeQualifiers$delegate.getValue();
    }

    @g
    public final Lazy<JavaTypeQualifiersByElementType> getDelegateForDefaultTypeQualifiers$descriptors_jvm() {
        return this.delegateForDefaultTypeQualifiers;
    }

    @g
    public final ModuleDescriptor getModule() {
        return this.components.getModule();
    }

    @g
    public final StorageManager getStorageManager() {
        return this.components.getStorageManager();
    }

    @g
    public final TypeParameterResolver getTypeParameterResolver() {
        return this.typeParameterResolver;
    }

    @g
    public final JavaTypeResolver getTypeResolver() {
        return this.typeResolver;
    }
}
