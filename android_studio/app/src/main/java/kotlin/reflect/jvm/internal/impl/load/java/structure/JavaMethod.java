package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.List;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaMethod extends JavaMember, JavaTypeParameterListOwner {

    /* compiled from: javaElements.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean getHasAnnotationParameterDefaultValue(@g JavaMethod javaMethod) {
            return javaMethod.getAnnotationParameterDefaultValue() != null;
        }
    }

    @h
    JavaAnnotationArgument getAnnotationParameterDefaultValue();

    boolean getHasAnnotationParameterDefaultValue();

    @g
    JavaType getReturnType();

    @g
    List<JavaValueParameter> getValueParameters();
}
