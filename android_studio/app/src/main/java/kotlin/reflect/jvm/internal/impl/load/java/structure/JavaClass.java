package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaClass extends JavaClassifier, JavaModifierListOwner, JavaTypeParameterListOwner {
    @g
    Collection<JavaConstructor> getConstructors();

    @g
    Collection<JavaField> getFields();

    @h
    FqName getFqName();

    @g
    Collection<Name> getInnerClassNames();

    @h
    LightClassOriginKind getLightClassOriginKind();

    @g
    Collection<JavaMethod> getMethods();

    @h
    JavaClass getOuterClass();

    @g
    Collection<JavaClassifierType> getPermittedTypes();

    @g
    Collection<JavaRecordComponent> getRecordComponents();

    @g
    Collection<JavaClassifierType> getSupertypes();

    boolean hasDefaultConstructor();

    boolean isAnnotationType();

    boolean isEnum();

    boolean isInterface();

    boolean isRecord();

    boolean isSealed();
}
