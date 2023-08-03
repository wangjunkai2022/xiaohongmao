package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import m8.g;

/* compiled from: KotlinJvmBinaryPackageSourceElement.kt */
/* loaded from: classes4.dex */
public final class KotlinJvmBinaryPackageSourceElement implements SourceElement {
    @g
    private final LazyJavaPackageFragment packageFragment;

    public KotlinJvmBinaryPackageSourceElement(@g LazyJavaPackageFragment packageFragment) {
        Intrinsics.checkNotNullParameter(packageFragment, "packageFragment");
        this.packageFragment = packageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.SourceElement
    @g
    public SourceFile getContainingFile() {
        SourceFile NO_SOURCE_FILE = SourceFile.NO_SOURCE_FILE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @g
    public String toString() {
        return this.packageFragment + ": " + this.packageFragment.getBinaryClasses$descriptors_jvm().keySet();
    }
}
