package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JavaDescriptorResolver;
import m8.g;
import m8.h;

/* compiled from: ModuleClassResolver.kt */
/* loaded from: classes4.dex */
public final class SingleModuleClassResolver implements ModuleClassResolver {
    public JavaDescriptorResolver resolver;

    @g
    public final JavaDescriptorResolver getResolver() {
        JavaDescriptorResolver javaDescriptorResolver = this.resolver;
        if (javaDescriptorResolver != null) {
            return javaDescriptorResolver;
        }
        Intrinsics.throwUninitializedPropertyAccessException("resolver");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.ModuleClassResolver
    @h
    public ClassDescriptor resolveClass(@g JavaClass javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "javaClass");
        return getResolver().resolveClass(javaClass);
    }

    public final void setResolver(@g JavaDescriptorResolver javaDescriptorResolver) {
        Intrinsics.checkNotNullParameter(javaDescriptorResolver, "<set-?>");
        this.resolver = javaDescriptorResolver;
    }
}
