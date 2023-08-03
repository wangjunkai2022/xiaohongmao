package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaAnnotationOwner extends JavaElement {
    @h
    JavaAnnotation findAnnotation(@g FqName fqName);

    @g
    Collection<JavaAnnotation> getAnnotations();

    boolean isDeprecatedInJavaDoc();
}
