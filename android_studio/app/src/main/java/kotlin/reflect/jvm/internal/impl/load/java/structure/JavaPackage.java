package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaPackage extends JavaAnnotationOwner, JavaElement {
    @g
    Collection<JavaClass> getClasses(@g Function1<? super Name, Boolean> function1);

    @g
    FqName getFqName();

    @g
    Collection<JavaPackage> getSubPackages();
}
