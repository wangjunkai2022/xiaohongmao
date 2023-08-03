package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.Typography;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaClassFinder.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaClassFinder implements JavaClassFinder {
    @g
    private final ClassLoader classLoader;

    public ReflectJavaClassFinder(@g ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        this.classLoader = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    @h
    public JavaClass findClass(@g JavaClassFinder.Request request) {
        String replace$default;
        Intrinsics.checkNotNullParameter(request, "request");
        ClassId classId = request.getClassId();
        FqName packageFqName = classId.getPackageFqName();
        Intrinsics.checkNotNullExpressionValue(packageFqName, "classId.packageFqName");
        String asString = classId.getRelativeClassName().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "classId.relativeClassName.asString()");
        replace$default = StringsKt__StringsJVMKt.replace$default(asString, '.', (char) Typography.dollar, false, 4, (Object) null);
        if (!packageFqName.isRoot()) {
            replace$default = packageFqName.asString() + '.' + replace$default;
        }
        Class<?> tryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(this.classLoader, replace$default);
        if (tryLoadClass != null) {
            return new ReflectJavaClass(tryLoadClass);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    @h
    public JavaPackage findPackage(@g FqName fqName, boolean z9) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        return new ReflectJavaPackage(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    @h
    public Set<String> knownClassNamesInPackage(@g FqName packageFqName) {
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        return null;
    }
}
