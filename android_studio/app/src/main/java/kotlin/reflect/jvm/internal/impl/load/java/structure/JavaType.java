package kotlin.reflect.jvm.internal.impl.load.java.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.ListBasedJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: javaTypes.kt */
/* loaded from: classes4.dex */
public interface JavaType extends ListBasedJavaAnnotationOwner {

    /* compiled from: javaTypes.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static JavaAnnotation findAnnotation(@g JavaType javaType, @g FqName fqName) {
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            return ListBasedJavaAnnotationOwner.DefaultImpls.findAnnotation(javaType, fqName);
        }
    }
}
