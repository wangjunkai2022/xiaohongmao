package org.aspectj.internal.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import k8.u;
import k8.v;
import org.aspectj.lang.reflect.AdviceKind;
import org.aspectj.lang.reflect.DeclareAnnotation;
import org.aspectj.lang.reflect.NoSuchAdviceException;
import org.aspectj.lang.reflect.NoSuchPointcutException;
import org.aspectj.lang.reflect.PerClauseKind;

/* compiled from: AjTypeImpl.java */
/* loaded from: classes4.dex */
public class b<T> implements k8.c<T> {

    /* renamed from: l  reason: collision with root package name */
    private static final String f90934l = "ajc$";

    /* renamed from: a  reason: collision with root package name */
    private Class<T> f90935a;

    /* renamed from: b  reason: collision with root package name */
    private v[] f90936b = null;

    /* renamed from: c  reason: collision with root package name */
    private v[] f90937c = null;

    /* renamed from: d  reason: collision with root package name */
    private k8.a[] f90938d = null;

    /* renamed from: e  reason: collision with root package name */
    private k8.a[] f90939e = null;

    /* renamed from: f  reason: collision with root package name */
    private k8.q[] f90940f = null;

    /* renamed from: g  reason: collision with root package name */
    private k8.q[] f90941g = null;

    /* renamed from: h  reason: collision with root package name */
    private k8.p[] f90942h = null;

    /* renamed from: i  reason: collision with root package name */
    private k8.p[] f90943i = null;

    /* renamed from: j  reason: collision with root package name */
    private k8.n[] f90944j = null;

    /* renamed from: k  reason: collision with root package name */
    private k8.n[] f90945k = null;

    public b(Class<T> cls) {
        this.f90935a = cls;
    }

    private void c0(List<k8.q> list, boolean z9) {
        Field[] declaredFields;
        Method[] declaredMethods;
        if (S()) {
            for (Field field : this.f90935a.getDeclaredFields()) {
                if (field.getType().isInterface() && field.isAnnotationPresent(i8.k.class) && ((i8.k) field.getAnnotation(i8.k.class)).defaultImpl() != i8.k.class) {
                    for (Method method : field.getType().getDeclaredMethods()) {
                        if (Modifier.isPublic(method.getModifiers()) || !z9) {
                            list.add(new k(this, k8.d.a(field.getType()), method, 1));
                        }
                    }
                }
            }
        }
    }

    private k8.a d0(Method method) {
        if (method.getAnnotations().length == 0) {
            return null;
        }
        i8.g gVar = (i8.g) method.getAnnotation(i8.g.class);
        if (gVar != null) {
            return new a(method, gVar.value(), AdviceKind.BEFORE);
        }
        i8.b bVar = (i8.b) method.getAnnotation(i8.b.class);
        if (bVar != null) {
            return new a(method, bVar.value(), AdviceKind.AFTER);
        }
        i8.c cVar = (i8.c) method.getAnnotation(i8.c.class);
        if (cVar != null) {
            String pointcut = cVar.pointcut();
            if (pointcut.equals("")) {
                pointcut = cVar.value();
            }
            return new a(method, pointcut, AdviceKind.AFTER_RETURNING, cVar.returning());
        }
        i8.d dVar = (i8.d) method.getAnnotation(i8.d.class);
        if (dVar != null) {
            String pointcut2 = dVar.pointcut();
            if (pointcut2 == null) {
                pointcut2 = dVar.value();
            }
            return new a(method, pointcut2, AdviceKind.AFTER_THROWING, dVar.throwing());
        }
        i8.e eVar = (i8.e) method.getAnnotation(i8.e.class);
        if (eVar != null) {
            return new a(method, eVar.value(), AdviceKind.AROUND);
        }
        return null;
    }

    private v e0(Method method) {
        int indexOf;
        i8.n nVar = (i8.n) method.getAnnotation(i8.n.class);
        if (nVar != null) {
            String name = method.getName();
            if (name.startsWith(f90934l) && (indexOf = (name = name.substring(name.indexOf("$$") + 2, name.length())).indexOf("$")) != -1) {
                name = name.substring(0, indexOf);
            }
            return new o(name, nVar.value(), method, k8.d.a(method.getDeclaringClass()), nVar.argNames());
        }
        return null;
    }

    private void f(List<k8.i> list) {
        Field[] declaredFields;
        for (Field field : this.f90935a.getDeclaredFields()) {
            if (field.isAnnotationPresent(i8.k.class) && field.getType().isInterface()) {
                list.add(new e(((i8.k) field.getAnnotation(i8.k.class)).value(), field.getType().getName(), false, this));
            }
        }
    }

    private k8.a[] f0(Set set) {
        k8.a[] aVarArr;
        if (this.f90939e == null) {
            h0();
        }
        ArrayList arrayList = new ArrayList();
        for (k8.a aVar : this.f90939e) {
            if (set.contains(aVar.getKind())) {
                arrayList.add(aVar);
            }
        }
        k8.a[] aVarArr2 = new k8.a[arrayList.size()];
        arrayList.toArray(aVarArr2);
        return aVarArr2;
    }

    private void g(List<k8.p> list, boolean z9) {
    }

    private k8.a[] g0(Set set) {
        k8.a[] aVarArr;
        if (this.f90938d == null) {
            i0();
        }
        ArrayList arrayList = new ArrayList();
        for (k8.a aVar : this.f90938d) {
            if (set.contains(aVar.getKind())) {
                arrayList.add(aVar);
            }
        }
        k8.a[] aVarArr2 = new k8.a[arrayList.size()];
        arrayList.toArray(aVarArr2);
        return aVarArr2;
    }

    private void h0() {
        Method[] methods = this.f90935a.getMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : methods) {
            k8.a d02 = d0(method);
            if (d02 != null) {
                arrayList.add(d02);
            }
        }
        k8.a[] aVarArr = new k8.a[arrayList.size()];
        this.f90939e = aVarArr;
        arrayList.toArray(aVarArr);
    }

    private void i0() {
        Method[] declaredMethods = this.f90935a.getDeclaredMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : declaredMethods) {
            k8.a d02 = d0(method);
            if (d02 != null) {
                arrayList.add(d02);
            }
        }
        k8.a[] aVarArr = new k8.a[arrayList.size()];
        this.f90938d = aVarArr;
        arrayList.toArray(aVarArr);
    }

    private boolean j0(Method method) {
        if (method.getName().startsWith(f90934l)) {
            return false;
        }
        if (method.getAnnotations().length == 0) {
            return true;
        }
        return (method.isAnnotationPresent(i8.n.class) || method.isAnnotationPresent(i8.g.class) || method.isAnnotationPresent(i8.b.class) || method.isAnnotationPresent(i8.c.class) || method.isAnnotationPresent(i8.d.class) || method.isAnnotationPresent(i8.e.class)) ? false : true;
    }

    private k8.c<?>[] k0(Class<?>[] clsArr) {
        int length = clsArr.length;
        k8.c<?>[] cVarArr = new k8.c[length];
        for (int i4 = 0; i4 < length; i4++) {
            cVarArr[i4] = k8.d.a(clsArr[i4]);
        }
        return cVarArr;
    }

    private Class<?>[] l0(k8.c<?>[] cVarArr) {
        int length = cVarArr.length;
        Class<?>[] clsArr = new Class[length];
        for (int i4 = 0; i4 < length; i4++) {
            clsArr[i4] = cVarArr[i4].Z();
        }
        return clsArr;
    }

    @Override // k8.c
    public k8.p[] A() {
        Method[] methods;
        List<k8.p> arrayList = new ArrayList<>();
        if (this.f90943i == null) {
            for (Method method : this.f90935a.getMethods()) {
                if (method.isAnnotationPresent(h8.f.class)) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    if (method.getName().contains("ajc$interFieldInit") && Modifier.isPublic(fVar.modifiers())) {
                        try {
                            Method declaredMethod = method.getDeclaringClass().getDeclaredMethod(method.getName().replace("FieldInit", "FieldGetDispatch"), method.getParameterTypes());
                            arrayList.add(new j(this, fVar.targetType(), fVar.modifiers(), fVar.name(), k8.d.a(declaredMethod.getReturnType()), declaredMethod.getGenericReturnType()));
                        } catch (NoSuchMethodException unused) {
                            throw new IllegalStateException("Can't find field get dispatch method for " + method.getName());
                        }
                    }
                }
            }
            g(arrayList, true);
            k8.p[] pVarArr = new k8.p[arrayList.size()];
            this.f90943i = pVarArr;
            arrayList.toArray(pVarArr);
        }
        return this.f90943i;
    }

    @Override // k8.c
    public k8.q[] B() {
        Method[] declaredMethods;
        if (this.f90941g == null) {
            List<k8.q> arrayList = new ArrayList<>();
            for (Method method : this.f90935a.getDeclaredMethods()) {
                if (method.getName().contains("ajc$interMethod$") && method.isAnnotationPresent(h8.f.class)) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    if (Modifier.isPublic(fVar.modifiers())) {
                        arrayList.add(new k(this, fVar.targetType(), fVar.modifiers(), fVar.name(), method));
                    }
                }
            }
            c0(arrayList, true);
            k8.q[] qVarArr = new k8.q[arrayList.size()];
            this.f90941g = qVarArr;
            arrayList.toArray(qVarArr);
        }
        return this.f90941g;
    }

    @Override // k8.c
    public k8.q C(String str, k8.c<?> cVar, k8.c<?>... cVarArr) throws NoSuchMethodException {
        k8.q[] B;
        for (k8.q qVar : B()) {
            try {
                if (qVar.getName().equals(str) && qVar.f().equals(cVar)) {
                    k8.c<?>[] parameterTypes = qVar.getParameterTypes();
                    if (parameterTypes.length == cVarArr.length) {
                        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
                            if (!parameterTypes[i4].equals(cVarArr[i4])) {
                                break;
                            }
                        }
                        return qVar;
                    }
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException(str);
    }

    @Override // k8.c
    public boolean D() {
        return this.f90935a.isLocalClass() && !S();
    }

    @Override // k8.c
    public k8.i[] E() {
        Method[] declaredMethods;
        List<k8.i> arrayList = new ArrayList<>();
        for (Method method : this.f90935a.getDeclaredMethods()) {
            if (method.isAnnotationPresent(h8.c.class)) {
                h8.c cVar = (h8.c) method.getAnnotation(h8.c.class);
                arrayList.add(new e(cVar.targetTypePattern(), cVar.parentTypes(), cVar.isExtends(), this));
            }
        }
        f(arrayList);
        if (W().S()) {
            arrayList.addAll(Arrays.asList(W().E()));
        }
        k8.i[] iVarArr = new k8.i[arrayList.size()];
        arrayList.toArray(iVarArr);
        return iVarArr;
    }

    @Override // k8.c
    public k8.c<?> F() {
        Class<?> enclosingClass = this.f90935a.getEnclosingClass();
        if (enclosingClass != null) {
            return new b(enclosingClass);
        }
        return null;
    }

    @Override // k8.c
    public Method[] G() {
        Method[] declaredMethods = this.f90935a.getDeclaredMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : declaredMethods) {
            if (j0(method)) {
                arrayList.add(method);
            }
        }
        Method[] methodArr = new Method[arrayList.size()];
        arrayList.toArray(methodArr);
        return methodArr;
    }

    @Override // k8.c
    public k8.a[] H(AdviceKind... adviceKindArr) {
        EnumSet enumSet;
        if (adviceKindArr.length == 0) {
            enumSet = EnumSet.allOf(AdviceKind.class);
        } else {
            EnumSet noneOf = EnumSet.noneOf(AdviceKind.class);
            noneOf.addAll(Arrays.asList(adviceKindArr));
            enumSet = noneOf;
        }
        return f0(enumSet);
    }

    @Override // k8.c
    public k8.p[] I() {
        Method[] declaredMethods;
        List<k8.p> arrayList = new ArrayList<>();
        if (this.f90942h == null) {
            for (Method method : this.f90935a.getDeclaredMethods()) {
                if (method.isAnnotationPresent(h8.f.class) && method.getName().contains("ajc$interFieldInit")) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    try {
                        Method declaredMethod = this.f90935a.getDeclaredMethod(method.getName().replace("FieldInit", "FieldGetDispatch"), method.getParameterTypes());
                        arrayList.add(new j(this, fVar.targetType(), fVar.modifiers(), fVar.name(), k8.d.a(declaredMethod.getReturnType()), declaredMethod.getGenericReturnType()));
                    } catch (NoSuchMethodException unused) {
                        throw new IllegalStateException("Can't find field get dispatch method for " + method.getName());
                    }
                }
            }
            g(arrayList, false);
            k8.p[] pVarArr = new k8.p[arrayList.size()];
            this.f90942h = pVarArr;
            arrayList.toArray(pVarArr);
        }
        return this.f90942h;
    }

    @Override // k8.c
    public k8.p J(String str, k8.c<?> cVar) throws NoSuchFieldException {
        k8.p[] A;
        for (k8.p pVar : A()) {
            if (pVar.getName().equals(str)) {
                try {
                    if (pVar.f().equals(cVar)) {
                        return pVar;
                    }
                } catch (ClassNotFoundException unused) {
                    continue;
                }
            }
        }
        throw new NoSuchFieldException(str);
    }

    @Override // k8.c
    public k8.q[] K() {
        Method[] declaredMethods;
        if (this.f90940f == null) {
            List<k8.q> arrayList = new ArrayList<>();
            for (Method method : this.f90935a.getDeclaredMethods()) {
                if (method.getName().contains("ajc$interMethodDispatch1$") && method.isAnnotationPresent(h8.f.class)) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    arrayList.add(new k(this, fVar.targetType(), fVar.modifiers(), fVar.name(), method));
                }
            }
            c0(arrayList, false);
            k8.q[] qVarArr = new k8.q[arrayList.size()];
            this.f90940f = qVarArr;
            arrayList.toArray(qVarArr);
        }
        return this.f90940f;
    }

    @Override // k8.c
    public v L(String str) throws NoSuchPointcutException {
        v[] Y;
        for (v vVar : Y()) {
            if (vVar.getName().equals(str)) {
                return vVar;
            }
        }
        throw new NoSuchPointcutException(str);
    }

    @Override // k8.c
    public Method M(String str, k8.c<?>... cVarArr) throws NoSuchMethodException {
        Method method = this.f90935a.getMethod(str, l0(cVarArr));
        if (j0(method)) {
            return method;
        }
        throw new NoSuchMethodException(str);
    }

    @Override // k8.c
    public T[] N() {
        return this.f90935a.getEnumConstants();
    }

    @Override // k8.c
    public Field O(String str) throws NoSuchFieldException {
        Field field = this.f90935a.getField(str);
        if (field.getName().startsWith(f90934l)) {
            throw new NoSuchFieldException(str);
        }
        return field;
    }

    @Override // k8.c
    public Method P() {
        return this.f90935a.getEnclosingMethod();
    }

    @Override // k8.c
    public k8.q Q(String str, k8.c<?> cVar, k8.c<?>... cVarArr) throws NoSuchMethodException {
        k8.q[] K;
        for (k8.q qVar : K()) {
            try {
                if (qVar.getName().equals(str) && qVar.f().equals(cVar)) {
                    k8.c<?>[] parameterTypes = qVar.getParameterTypes();
                    if (parameterTypes.length == cVarArr.length) {
                        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
                            if (!parameterTypes[i4].equals(cVarArr[i4])) {
                                break;
                            }
                        }
                        return qVar;
                    }
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException(str);
    }

    @Override // k8.c
    public Constructor[] R() {
        return this.f90935a.getDeclaredConstructors();
    }

    @Override // k8.c
    public boolean S() {
        return this.f90935a.getAnnotation(i8.f.class) != null;
    }

    @Override // k8.c
    public Type T() {
        return this.f90935a.getGenericSuperclass();
    }

    @Override // k8.c
    public Constructor U(k8.c<?>... cVarArr) throws NoSuchMethodException {
        return this.f90935a.getDeclaredConstructor(l0(cVarArr));
    }

    @Override // k8.c
    public k8.a V(String str) throws NoSuchAdviceException {
        k8.a[] aVarArr;
        if (!str.equals("")) {
            if (this.f90938d == null) {
                i0();
            }
            for (k8.a aVar : this.f90938d) {
                if (aVar.getName().equals(str)) {
                    return aVar;
                }
            }
            throw new NoSuchAdviceException(str);
        }
        throw new IllegalArgumentException("use getAdvice(AdviceType...) instead for un-named advice");
    }

    @Override // k8.c
    public k8.c<? super T> W() {
        Class<? super T> superclass = this.f90935a.getSuperclass();
        if (superclass == null) {
            return null;
        }
        return new b(superclass);
    }

    @Override // k8.c
    public u X() {
        if (S()) {
            String value = ((i8.f) this.f90935a.getAnnotation(i8.f.class)).value();
            if (value.equals("")) {
                if (W().S()) {
                    return W().X();
                }
                return new l(PerClauseKind.SINGLETON);
            } else if (value.startsWith("perthis(")) {
                return new m(PerClauseKind.PERTHIS, value.substring(8, value.length() - 1));
            } else {
                if (value.startsWith("pertarget(")) {
                    return new m(PerClauseKind.PERTARGET, value.substring(10, value.length() - 1));
                }
                if (value.startsWith("percflow(")) {
                    return new m(PerClauseKind.PERCFLOW, value.substring(9, value.length() - 1));
                }
                if (value.startsWith("percflowbelow(")) {
                    return new m(PerClauseKind.PERCFLOWBELOW, value.substring(14, value.length() - 1));
                }
                if (value.startsWith("pertypewithin")) {
                    return new r(PerClauseKind.PERTYPEWITHIN, value.substring(14, value.length() - 1));
                }
                throw new IllegalStateException("Per-clause not recognized: " + value);
            }
        }
        return null;
    }

    @Override // k8.c
    public v[] Y() {
        v[] vVarArr = this.f90936b;
        if (vVarArr != null) {
            return vVarArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f90935a.getDeclaredMethods()) {
            v e02 = e0(method);
            if (e02 != null) {
                arrayList.add(e02);
            }
        }
        v[] vVarArr2 = new v[arrayList.size()];
        arrayList.toArray(vVarArr2);
        this.f90936b = vVarArr2;
        return vVarArr2;
    }

    @Override // k8.c
    public Class<T> Z() {
        return this.f90935a;
    }

    @Override // k8.c
    public k8.c<?> a() {
        Class<?> declaringClass = this.f90935a.getDeclaringClass();
        if (declaringClass != null) {
            return new b(declaringClass);
        }
        return null;
    }

    @Override // k8.c
    public k8.h[] a0() {
        Field[] declaredFields;
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Field field : this.f90935a.getDeclaredFields()) {
            try {
                if (field.isAnnotationPresent(i8.m.class)) {
                    i8.m mVar = (i8.m) field.getAnnotation(i8.m.class);
                    if (Modifier.isPublic(field.getModifiers()) && Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(new d(mVar.value(), (String) field.get(null), false, this));
                    }
                } else if (field.isAnnotationPresent(i8.i.class)) {
                    i8.i iVar = (i8.i) field.getAnnotation(i8.i.class);
                    if (Modifier.isPublic(field.getModifiers()) && Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(new d(iVar.value(), (String) field.get(null), true, this));
                    }
                }
            } catch (IllegalAccessException | IllegalArgumentException unused) {
            }
        }
        for (Method method : this.f90935a.getDeclaredMethods()) {
            if (method.isAnnotationPresent(h8.b.class)) {
                h8.b bVar = (h8.b) method.getAnnotation(h8.b.class);
                arrayList.add(new d(bVar.pointcut(), bVar.message(), bVar.isError(), this));
            }
        }
        k8.h[] hVarArr = new k8.h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return hVarArr;
    }

    @Override // k8.c
    public k8.c<?>[] b() {
        return k0(this.f90935a.getDeclaredClasses());
    }

    @Override // k8.c
    public Method b0(String str, k8.c<?>... cVarArr) throws NoSuchMethodException {
        Method declaredMethod = this.f90935a.getDeclaredMethod(str, l0(cVarArr));
        if (j0(declaredMethod)) {
            return declaredMethod;
        }
        throw new NoSuchMethodException(str);
    }

    @Override // k8.c
    public Field c(String str) throws NoSuchFieldException {
        Field declaredField = this.f90935a.getDeclaredField(str);
        if (declaredField.getName().startsWith(f90934l)) {
            throw new NoSuchFieldException(str);
        }
        return declaredField;
    }

    @Override // k8.c
    public k8.n[] d() {
        Method[] methods;
        if (this.f90944j == null) {
            ArrayList arrayList = new ArrayList();
            for (Method method : this.f90935a.getMethods()) {
                if (method.getName().contains("ajc$postInterConstructor") && method.isAnnotationPresent(h8.f.class)) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    if (Modifier.isPublic(fVar.modifiers())) {
                        arrayList.add(new h(this, fVar.targetType(), fVar.modifiers(), method));
                    }
                }
            }
            k8.n[] nVarArr = new k8.n[arrayList.size()];
            this.f90944j = nVarArr;
            arrayList.toArray(nVarArr);
        }
        return this.f90944j;
    }

    @Override // k8.c
    public k8.n[] e() {
        Method[] declaredMethods;
        if (this.f90945k == null) {
            ArrayList arrayList = new ArrayList();
            for (Method method : this.f90935a.getDeclaredMethods()) {
                if (method.getName().contains("ajc$postInterConstructor") && method.isAnnotationPresent(h8.f.class)) {
                    h8.f fVar = (h8.f) method.getAnnotation(h8.f.class);
                    arrayList.add(new h(this, fVar.targetType(), fVar.modifiers(), method));
                }
            }
            k8.n[] nVarArr = new k8.n[arrayList.size()];
            this.f90945k = nVarArr;
            arrayList.toArray(nVarArr);
        }
        return this.f90945k;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f90935a.equals(this.f90935a);
        }
        return false;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f90935a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return this.f90935a.getAnnotations();
    }

    @Override // k8.c
    public Constructor[] getConstructors() {
        return this.f90935a.getConstructors();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return this.f90935a.getDeclaredAnnotations();
    }

    @Override // k8.c
    public Field[] getFields() {
        Field[] fields = this.f90935a.getFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (!field.getName().startsWith(f90934l) && !field.isAnnotationPresent(i8.m.class) && !field.isAnnotationPresent(i8.i.class)) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr = new Field[arrayList.size()];
        arrayList.toArray(fieldArr);
        return fieldArr;
    }

    @Override // k8.c
    public Method[] getMethods() {
        Method[] methods = this.f90935a.getMethods();
        ArrayList arrayList = new ArrayList();
        for (Method method : methods) {
            if (j0(method)) {
                arrayList.add(method);
            }
        }
        Method[] methodArr = new Method[arrayList.size()];
        arrayList.toArray(methodArr);
        return methodArr;
    }

    @Override // k8.c
    public int getModifiers() {
        return this.f90935a.getModifiers();
    }

    @Override // k8.c
    public String getName() {
        return this.f90935a.getName();
    }

    @Override // k8.c
    public TypeVariable<Class<T>>[] getTypeParameters() {
        return this.f90935a.getTypeParameters();
    }

    @Override // k8.c
    public DeclareAnnotation[] h() {
        Method[] declaredMethods;
        Annotation annotation;
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f90935a.getDeclaredMethods()) {
            if (method.isAnnotationPresent(h8.a.class)) {
                h8.a aVar = (h8.a) method.getAnnotation(h8.a.class);
                Annotation[] annotations = method.getAnnotations();
                int length = annotations.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        annotation = null;
                        break;
                    }
                    Annotation annotation2 = annotations[i4];
                    if (annotation2.annotationType() != h8.a.class) {
                        annotation = annotation2;
                        break;
                    }
                    i4++;
                }
                arrayList.add(new c(this, aVar.kind(), aVar.pattern(), annotation, aVar.annotation()));
            }
        }
        if (W().S()) {
            arrayList.addAll(Arrays.asList(W().h()));
        }
        DeclareAnnotation[] declareAnnotationArr = new DeclareAnnotation[arrayList.size()];
        arrayList.toArray(declareAnnotationArr);
        return declareAnnotationArr;
    }

    public int hashCode() {
        return this.f90935a.hashCode();
    }

    @Override // k8.c
    public v[] i() {
        v[] vVarArr = this.f90937c;
        if (vVarArr != null) {
            return vVarArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f90935a.getMethods()) {
            v e02 = e0(method);
            if (e02 != null) {
                arrayList.add(e02);
            }
        }
        v[] vVarArr2 = new v[arrayList.size()];
        arrayList.toArray(vVarArr2);
        this.f90937c = vVarArr2;
        return vVarArr2;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f90935a.isAnnotationPresent(cls);
    }

    @Override // k8.c
    public boolean isArray() {
        return this.f90935a.isArray();
    }

    @Override // k8.c
    public boolean isEnum() {
        return this.f90935a.isEnum();
    }

    @Override // k8.c
    public boolean isInstance(Object obj) {
        return this.f90935a.isInstance(obj);
    }

    @Override // k8.c
    public boolean isInterface() {
        return this.f90935a.isInterface();
    }

    @Override // k8.c
    public boolean isPrimitive() {
        return this.f90935a.isPrimitive();
    }

    @Override // k8.c
    public boolean j() {
        return this.f90935a.isMemberClass() && !S();
    }

    @Override // k8.c
    public k8.n k(k8.c<?> cVar, k8.c<?>... cVarArr) throws NoSuchMethodException {
        k8.n[] e4;
        for (k8.n nVar : e()) {
            try {
                if (nVar.f().equals(cVar)) {
                    k8.c<?>[] parameterTypes = nVar.getParameterTypes();
                    if (parameterTypes.length == cVarArr.length) {
                        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
                            if (!parameterTypes[i4].equals(cVarArr[i4])) {
                                break;
                            }
                        }
                        return nVar;
                    }
                    continue;
                } else {
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException();
    }

    @Override // k8.c
    public v l(String str) throws NoSuchPointcutException {
        v[] i4;
        for (v vVar : i()) {
            if (vVar.getName().equals(str)) {
                return vVar;
            }
        }
        throw new NoSuchPointcutException(str);
    }

    @Override // k8.c
    public k8.p m(String str, k8.c<?> cVar) throws NoSuchFieldException {
        k8.p[] I;
        for (k8.p pVar : I()) {
            if (pVar.getName().equals(str)) {
                try {
                    if (pVar.f().equals(cVar)) {
                        return pVar;
                    }
                } catch (ClassNotFoundException unused) {
                    continue;
                }
            }
        }
        throw new NoSuchFieldException(str);
    }

    @Override // k8.c
    public k8.c<?>[] n() {
        return k0(this.f90935a.getInterfaces());
    }

    @Override // k8.c
    public k8.a[] o(AdviceKind... adviceKindArr) {
        EnumSet enumSet;
        if (adviceKindArr.length == 0) {
            enumSet = EnumSet.allOf(AdviceKind.class);
        } else {
            EnumSet noneOf = EnumSet.noneOf(AdviceKind.class);
            noneOf.addAll(Arrays.asList(adviceKindArr));
            enumSet = noneOf;
        }
        return g0(enumSet);
    }

    @Override // k8.c
    public k8.c<?>[] p() {
        return k0(this.f90935a.getClasses());
    }

    @Override // k8.c
    public boolean q() {
        return this.f90935a.isMemberClass() && S();
    }

    @Override // k8.c
    public k8.j[] r() {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        if (this.f90935a.isAnnotationPresent(i8.l.class)) {
            arrayList.add(new f(((i8.l) this.f90935a.getAnnotation(i8.l.class)).value(), this));
        }
        for (Method method : this.f90935a.getDeclaredMethods()) {
            if (method.isAnnotationPresent(h8.d.class)) {
                arrayList.add(new f(((h8.d) method.getAnnotation(h8.d.class)).value(), this));
            }
        }
        if (W().S()) {
            arrayList.addAll(Arrays.asList(W().r()));
        }
        k8.j[] jVarArr = new k8.j[arrayList.size()];
        arrayList.toArray(jVarArr);
        return jVarArr;
    }

    @Override // k8.c
    public Field[] s() {
        Field[] declaredFields = this.f90935a.getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (!field.getName().startsWith(f90934l) && !field.isAnnotationPresent(i8.m.class) && !field.isAnnotationPresent(i8.i.class)) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr = new Field[arrayList.size()];
        arrayList.toArray(fieldArr);
        return fieldArr;
    }

    @Override // k8.c
    public k8.k[] t() {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Method method : this.f90935a.getDeclaredMethods()) {
            if (method.isAnnotationPresent(h8.e.class)) {
                h8.e eVar = (h8.e) method.getAnnotation(h8.e.class);
                arrayList.add(new g(this, eVar.pointcut(), eVar.exceptionType()));
            }
        }
        if (W().S()) {
            arrayList.addAll(Arrays.asList(W().t()));
        }
        k8.k[] kVarArr = new k8.k[arrayList.size()];
        arrayList.toArray(kVarArr);
        return kVarArr;
    }

    public String toString() {
        return getName();
    }

    @Override // k8.c
    public k8.n u(k8.c<?> cVar, k8.c<?>... cVarArr) throws NoSuchMethodException {
        k8.n[] d4;
        for (k8.n nVar : d()) {
            try {
                if (nVar.f().equals(cVar)) {
                    k8.c<?>[] parameterTypes = nVar.getParameterTypes();
                    if (parameterTypes.length == cVarArr.length) {
                        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
                            if (!parameterTypes[i4].equals(cVarArr[i4])) {
                                break;
                            }
                        }
                        return nVar;
                    }
                    continue;
                } else {
                    continue;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        throw new NoSuchMethodException();
    }

    @Override // k8.c
    public boolean v() {
        return S() && this.f90935a.isAnnotationPresent(h8.g.class);
    }

    @Override // k8.c
    public Constructor w() {
        return this.f90935a.getEnclosingConstructor();
    }

    @Override // k8.c
    public k8.a x(String str) throws NoSuchAdviceException {
        k8.a[] aVarArr;
        if (!str.equals("")) {
            if (this.f90939e == null) {
                h0();
            }
            for (k8.a aVar : this.f90939e) {
                if (aVar.getName().equals(str)) {
                    return aVar;
                }
            }
            throw new NoSuchAdviceException(str);
        }
        throw new IllegalArgumentException("use getAdvice(AdviceType...) instead for un-named advice");
    }

    @Override // k8.c
    public Package y() {
        return this.f90935a.getPackage();
    }

    @Override // k8.c
    public Constructor z(k8.c<?>... cVarArr) throws NoSuchMethodException {
        return this.f90935a.getConstructor(l0(cVarArr));
    }
}
