package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInSerializerProtocol;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsResourceLoader;
import m8.g;
import m8.h;

/* compiled from: ReflectKotlinClassFinder.kt */
/* loaded from: classes4.dex */
public final class ReflectKotlinClassFinder implements KotlinClassFinder {
    @g
    private final BuiltInsResourceLoader builtInsResourceLoader;
    @g
    private final ClassLoader classLoader;

    public ReflectKotlinClassFinder(@g ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        this.classLoader = classLoader;
        this.builtInsResourceLoader = new BuiltInsResourceLoader();
    }

    private final KotlinClassFinder.Result findKotlinClass(String str) {
        ReflectKotlinClass create;
        Class<?> tryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(this.classLoader, str);
        if (tryLoadClass == null || (create = ReflectKotlinClass.Factory.create(tryLoadClass)) == null) {
            return null;
        }
        return new KotlinClassFinder.Result.KotlinClass(create, null, 2, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.KotlinMetadataFinder
    @h
    public InputStream findBuiltInsData(@g FqName packageFqName) {
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        if (packageFqName.startsWith(StandardNames.BUILT_INS_PACKAGE_NAME)) {
            return this.builtInsResourceLoader.loadResource(BuiltInSerializerProtocol.INSTANCE.getBuiltInsFilePath(packageFqName));
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder
    @h
    public KotlinClassFinder.Result findKotlinClassOrContent(@g ClassId classId) {
        String runtimeFqName;
        Intrinsics.checkNotNullParameter(classId, "classId");
        runtimeFqName = ReflectKotlinClassFinderKt.toRuntimeFqName(classId);
        return findKotlinClass(runtimeFqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder
    @h
    public KotlinClassFinder.Result findKotlinClassOrContent(@g JavaClass javaClass) {
        String asString;
        Intrinsics.checkNotNullParameter(javaClass, "javaClass");
        FqName fqName = javaClass.getFqName();
        if (fqName == null || (asString = fqName.asString()) == null) {
            return null;
        }
        return findKotlinClass(asString);
    }
}
