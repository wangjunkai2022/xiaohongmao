package k8;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: InterTypeMethodDeclaration.java */
/* loaded from: classes4.dex */
public interface q extends o {
    c<?>[] c();

    Type[] d();

    Type e();

    String getName();

    c<?>[] getParameterTypes();

    c<?> getReturnType();

    TypeVariable<Method>[] getTypeParameters();
}
