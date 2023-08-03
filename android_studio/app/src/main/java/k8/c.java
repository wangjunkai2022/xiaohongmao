package k8;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import org.aspectj.lang.reflect.AdviceKind;
import org.aspectj.lang.reflect.DeclareAnnotation;
import org.aspectj.lang.reflect.NoSuchAdviceException;
import org.aspectj.lang.reflect.NoSuchPointcutException;

/* compiled from: AjType.java */
/* loaded from: classes4.dex */
public interface c<T> extends Type, AnnotatedElement {
    p[] A();

    q[] B();

    q C(String str, c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    boolean D();

    i[] E();

    c<?> F();

    Method[] G();

    a[] H(AdviceKind... adviceKindArr);

    p[] I();

    p J(String str, c<?> cVar) throws NoSuchFieldException;

    q[] K();

    v L(String str) throws NoSuchPointcutException;

    Method M(String str, c<?>... cVarArr) throws NoSuchMethodException;

    T[] N();

    Field O(String str) throws NoSuchFieldException;

    Method P();

    q Q(String str, c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    Constructor[] R();

    boolean S();

    Type T();

    Constructor U(c<?>... cVarArr) throws NoSuchMethodException;

    a V(String str) throws NoSuchAdviceException;

    c<?> W();

    u X();

    v[] Y();

    Class<T> Z();

    c<?> a();

    h[] a0();

    c<?>[] b();

    Method b0(String str, c<?>... cVarArr) throws NoSuchMethodException;

    Field c(String str) throws NoSuchFieldException;

    n[] d();

    n[] e();

    Constructor[] getConstructors();

    Field[] getFields();

    Method[] getMethods();

    int getModifiers();

    String getName();

    TypeVariable<Class<T>>[] getTypeParameters();

    DeclareAnnotation[] h();

    v[] i();

    boolean isArray();

    boolean isEnum();

    boolean isInstance(Object obj);

    boolean isInterface();

    boolean isPrimitive();

    boolean j();

    n k(c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    v l(String str) throws NoSuchPointcutException;

    p m(String str, c<?> cVar) throws NoSuchFieldException;

    c<?>[] n();

    a[] o(AdviceKind... adviceKindArr);

    c<?>[] p();

    boolean q();

    j[] r();

    Field[] s();

    k[] t();

    n u(c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    boolean v();

    Constructor w();

    a x(String str) throws NoSuchAdviceException;

    Package y();

    Constructor z(c<?>... cVarArr) throws NoSuchMethodException;
}
