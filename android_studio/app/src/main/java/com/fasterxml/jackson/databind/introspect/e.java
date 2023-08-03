package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.c;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.g;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnnotatedCreatorCollector.java */
/* loaded from: classes.dex */
public final class e extends m {

    /* renamed from: d  reason: collision with root package name */
    private final t f15278d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f15279e;

    /* renamed from: f  reason: collision with root package name */
    private AnnotatedConstructor f15280f;

    e(AnnotationIntrospector annotationIntrospector, t tVar, boolean z9) {
        super(annotationIntrospector);
        this.f15278d = tVar;
        this.f15279e = z9;
    }

    private List<AnnotatedConstructor> i(JavaType javaType, Class<?> cls) {
        g.a aVar;
        ArrayList arrayList;
        int i4;
        List<AnnotatedConstructor> list;
        g.a[] F;
        g.a[] F2;
        if (javaType.isEnumType()) {
            aVar = null;
            arrayList = null;
        } else {
            aVar = null;
            arrayList = null;
            for (g.a aVar2 : com.fasterxml.jackson.databind.util.g.F(javaType.getRawClass())) {
                if (t(aVar2.a())) {
                    if (aVar2.d() == 0) {
                        aVar = aVar2;
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(aVar2);
                    }
                }
            }
        }
        if (arrayList == null) {
            list = Collections.emptyList();
            if (aVar == null) {
                return list;
            }
            i4 = 0;
        } else {
            int size = arrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList2.add(null);
            }
            i4 = size;
            list = arrayList2;
        }
        if (cls != null) {
            n[] nVarArr = null;
            for (g.a aVar3 : com.fasterxml.jackson.databind.util.g.F(cls)) {
                if (aVar3.d() == 0) {
                    if (aVar != null) {
                        this.f15280f = q(aVar, aVar3);
                        aVar = null;
                    }
                } else if (arrayList != null) {
                    if (nVarArr == null) {
                        nVarArr = new n[i4];
                        for (int i11 = 0; i11 < i4; i11++) {
                            nVarArr[i11] = new n(((g.a) arrayList.get(i11)).a());
                        }
                    }
                    n nVar = new n(aVar3.a());
                    int i12 = 0;
                    while (true) {
                        if (i12 >= i4) {
                            break;
                        } else if (nVar.equals(nVarArr[i12])) {
                            list.set(i12, s((g.a) arrayList.get(i12), aVar3));
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
            }
        }
        if (aVar != null) {
            this.f15280f = q(aVar, null);
        }
        for (int i13 = 0; i13 < i4; i13++) {
            if (list.get(i13) == null) {
                list.set(i13, s((g.a) arrayList.get(i13), null));
            }
        }
        return list;
    }

    private List<AnnotatedMethod> j(TypeFactory typeFactory, JavaType javaType, Class<?> cls) {
        Method[] E;
        Method[] declaredMethods;
        ArrayList arrayList = null;
        for (Method method : com.fasterxml.jackson.databind.util.g.E(javaType.getRawClass())) {
            if (k(method)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(method);
            }
        }
        if (arrayList == null) {
            return Collections.emptyList();
        }
        t tVar = this.f15278d;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList2.add(null);
        }
        if (cls != null) {
            n[] nVarArr = null;
            for (Method method2 : cls.getDeclaredMethods()) {
                if (k(method2)) {
                    if (nVarArr == null) {
                        nVarArr = new n[size];
                        for (int i10 = 0; i10 < size; i10++) {
                            nVarArr[i10] = new n((Method) arrayList.get(i10));
                        }
                    }
                    n nVar = new n(method2);
                    int i11 = 0;
                    while (true) {
                        if (i11 >= size) {
                            break;
                        } else if (nVar.equals(nVarArr[i11])) {
                            arrayList2.set(i11, r((Method) arrayList.get(i11), tVar, method2));
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        }
        for (int i12 = 0; i12 < size; i12++) {
            if (((AnnotatedMethod) arrayList2.get(i12)) == null) {
                Method method3 = (Method) arrayList.get(i12);
                arrayList2.set(i12, r(method3, o.e(method3, javaType, typeFactory, tVar), null));
            }
        }
        return arrayList2;
    }

    private static boolean k(Method method) {
        return Modifier.isStatic(method.getModifiers()) && !method.isSynthetic();
    }

    private i m(g.a aVar, g.a aVar2) {
        if (this.f15279e) {
            AnnotationCollector e4 = e(aVar.b());
            if (aVar2 != null) {
                e4 = d(e4, aVar2.b());
            }
            return e4.b();
        }
        return m.a();
    }

    private final i n(AnnotatedElement annotatedElement, AnnotatedElement annotatedElement2) {
        AnnotationCollector e4 = e(annotatedElement.getDeclaredAnnotations());
        if (annotatedElement2 != null) {
            e4 = d(e4, annotatedElement2.getDeclaredAnnotations());
        }
        return e4.b();
    }

    private i[] o(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        if (this.f15279e) {
            int length = annotationArr.length;
            i[] iVarArr = new i[length];
            for (int i4 = 0; i4 < length; i4++) {
                AnnotationCollector d4 = d(AnnotationCollector.e(), annotationArr[i4]);
                if (annotationArr2 != null) {
                    d4 = d(d4, annotationArr2[i4]);
                }
                iVarArr[i4] = d4.b();
            }
            return iVarArr;
        }
        return m.f15304b;
    }

    public static c.a p(AnnotationIntrospector annotationIntrospector, TypeFactory typeFactory, t tVar, JavaType javaType, Class<?> cls, boolean z9) {
        return new e(annotationIntrospector, tVar, z9 | (cls != null)).l(typeFactory, javaType, cls);
    }

    private static boolean t(Constructor<?> constructor) {
        return !constructor.isSynthetic();
    }

    c.a l(TypeFactory typeFactory, JavaType javaType, Class<?> cls) {
        List<AnnotatedConstructor> i4 = i(javaType, cls);
        List<AnnotatedMethod> j4 = j(typeFactory, javaType, cls);
        if (this.f15279e) {
            AnnotatedConstructor annotatedConstructor = this.f15280f;
            if (annotatedConstructor != null && this.f15306a.hasIgnoreMarker(annotatedConstructor)) {
                this.f15280f = null;
            }
            int size = i4.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else if (this.f15306a.hasIgnoreMarker(i4.get(size))) {
                    i4.remove(size);
                }
            }
            int size2 = j4.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    break;
                } else if (this.f15306a.hasIgnoreMarker(j4.get(size2))) {
                    j4.remove(size2);
                }
            }
        }
        return new c.a(this.f15280f, i4, j4);
    }

    protected AnnotatedConstructor q(g.a aVar, g.a aVar2) {
        return new AnnotatedConstructor(this.f15278d, aVar.a(), m(aVar, aVar2), m.f15304b);
    }

    protected AnnotatedMethod r(Method method, t tVar, Method method2) {
        int length = method.getParameterTypes().length;
        if (this.f15306a == null) {
            return new AnnotatedMethod(tVar, method, m.a(), m.b(length));
        }
        if (length == 0) {
            return new AnnotatedMethod(tVar, method, n(method, method2), m.f15304b);
        }
        return new AnnotatedMethod(tVar, method, n(method, method2), o(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Type inference failed for: r3v11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.databind.introspect.AnnotatedConstructor s(com.fasterxml.jackson.databind.util.g.a r9, com.fasterxml.jackson.databind.util.g.a r10) {
        /*
            r8 = this;
            int r0 = r9.d()
            com.fasterxml.jackson.databind.AnnotationIntrospector r1 = r8.f15306a
            if (r1 != 0) goto L1c
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r10 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.t r1 = r8.f15278d
            java.lang.reflect.Constructor r9 = r9.a()
            com.fasterxml.jackson.databind.introspect.i r2 = com.fasterxml.jackson.databind.introspect.m.a()
            com.fasterxml.jackson.databind.introspect.i[] r0 = com.fasterxml.jackson.databind.introspect.m.b(r0)
            r10.<init>(r1, r9, r2, r0)
            return r10
        L1c:
            if (r0 != 0) goto L30
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r0 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.t r1 = r8.f15278d
            java.lang.reflect.Constructor r2 = r9.a()
            com.fasterxml.jackson.databind.introspect.i r9 = r8.m(r9, r10)
            com.fasterxml.jackson.databind.introspect.i[] r10 = com.fasterxml.jackson.databind.introspect.m.f15304b
            r0.<init>(r1, r2, r9, r10)
            return r0
        L30:
            java.lang.annotation.Annotation[][] r1 = r9.e()
            int r2 = r1.length
            r3 = 0
            if (r0 == r2) goto La1
            java.lang.Class r2 = r9.c()
            boolean r4 = com.fasterxml.jackson.databind.util.g.X(r2)
            r5 = 0
            r6 = 1
            r7 = 2
            if (r4 == 0) goto L5a
            int r4 = r1.length
            int r4 = r4 + r7
            if (r0 != r4) goto L5a
            int r2 = r1.length
            int r2 = r2 + r7
            java.lang.annotation.Annotation[][] r2 = new java.lang.annotation.Annotation[r2]
            int r4 = r1.length
            java.lang.System.arraycopy(r1, r5, r2, r7, r4)
            r1 = r3
            java.lang.annotation.Annotation[][] r1 = (java.lang.annotation.Annotation[][]) r1
            com.fasterxml.jackson.databind.introspect.i[] r3 = r8.o(r2, r3)
        L58:
            r1 = r2
            goto L78
        L5a:
            boolean r2 = r2.isMemberClass()
            if (r2 == 0) goto L78
            int r2 = r1.length
            int r2 = r2 + r6
            if (r0 != r2) goto L78
            int r2 = r1.length
            int r2 = r2 + r6
            java.lang.annotation.Annotation[][] r2 = new java.lang.annotation.Annotation[r2]
            int r4 = r1.length
            java.lang.System.arraycopy(r1, r5, r2, r6, r4)
            java.lang.annotation.Annotation[] r1 = com.fasterxml.jackson.databind.introspect.m.f15305c
            r2[r5] = r1
            r1 = r3
            java.lang.annotation.Annotation[][] r1 = (java.lang.annotation.Annotation[][]) r1
            com.fasterxml.jackson.databind.introspect.i[] r3 = r8.o(r2, r3)
            goto L58
        L78:
            if (r3 == 0) goto L7b
            goto Laf
        L7b:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Class r9 = r9.c()
            java.lang.String r9 = r9.getName()
            r2[r5] = r9
            java.lang.Integer r9 = java.lang.Integer.valueOf(r0)
            r2[r6] = r9
            int r9 = r1.length
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            r2[r7] = r9
            java.lang.String r9 = "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"
            java.lang.String r9 = java.lang.String.format(r9, r2)
            r10.<init>(r9)
            throw r10
        La1:
            if (r10 != 0) goto La7
            r0 = r3
            java.lang.annotation.Annotation[][] r0 = (java.lang.annotation.Annotation[][]) r0
            goto Lab
        La7:
            java.lang.annotation.Annotation[][] r3 = r10.e()
        Lab:
            com.fasterxml.jackson.databind.introspect.i[] r3 = r8.o(r1, r3)
        Laf:
            com.fasterxml.jackson.databind.introspect.AnnotatedConstructor r0 = new com.fasterxml.jackson.databind.introspect.AnnotatedConstructor
            com.fasterxml.jackson.databind.introspect.t r1 = r8.f15278d
            java.lang.reflect.Constructor r2 = r9.a()
            com.fasterxml.jackson.databind.introspect.i r9 = r8.m(r9, r10)
            r0.<init>(r1, r2, r9, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.e.s(com.fasterxml.jackson.databind.util.g$a, com.fasterxml.jackson.databind.util.g$a):com.fasterxml.jackson.databind.introspect.AnnotatedConstructor");
    }
}
