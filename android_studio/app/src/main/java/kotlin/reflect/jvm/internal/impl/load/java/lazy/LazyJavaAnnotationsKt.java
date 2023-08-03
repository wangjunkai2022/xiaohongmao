package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import m8.g;

/* compiled from: LazyJavaAnnotations.kt */
/* loaded from: classes4.dex */
public final class LazyJavaAnnotationsKt {
    @g
    public static final Annotations resolveAnnotations(@g LazyJavaResolverContext lazyJavaResolverContext, @g JavaAnnotationOwner annotationsOwner) {
        Intrinsics.checkNotNullParameter(lazyJavaResolverContext, "<this>");
        Intrinsics.checkNotNullParameter(annotationsOwner, "annotationsOwner");
        return new LazyJavaAnnotations(lazyJavaResolverContext, annotationsOwner, false, 4, null);
    }
}
