package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.lang.reflect.TypeVariable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class TypeBindings implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15884e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f15885f;

    /* renamed from: g  reason: collision with root package name */
    private static final JavaType[] f15886g;

    /* renamed from: h  reason: collision with root package name */
    private static final TypeBindings f15887h;

    /* renamed from: a  reason: collision with root package name */
    private final String[] f15888a;

    /* renamed from: b  reason: collision with root package name */
    private final JavaType[] f15889b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f15890c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15891d;

    /* loaded from: classes2.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f15892a;

        /* renamed from: b  reason: collision with root package name */
        private final JavaType[] f15893b;

        /* renamed from: c  reason: collision with root package name */
        private final int f15894c;

        public a(Class<?> cls, JavaType[] javaTypeArr, int i4) {
            this.f15892a = cls;
            this.f15893b = javaTypeArr;
            this.f15894c = i4;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == a.class) {
                a aVar = (a) obj;
                if (this.f15894c == aVar.f15894c && this.f15892a == aVar.f15892a) {
                    JavaType[] javaTypeArr = aVar.f15893b;
                    int length = this.f15893b.length;
                    if (length == javaTypeArr.length) {
                        for (int i4 = 0; i4 < length; i4++) {
                            if (!this.f15893b[i4].equals(javaTypeArr[i4])) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return this.f15894c;
        }

        public String toString() {
            return this.f15892a.getName() + "<>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final TypeVariable<?>[] f15895a = AbstractList.class.getTypeParameters();

        /* renamed from: b  reason: collision with root package name */
        private static final TypeVariable<?>[] f15896b = Collection.class.getTypeParameters();

        /* renamed from: c  reason: collision with root package name */
        private static final TypeVariable<?>[] f15897c = Iterable.class.getTypeParameters();

        /* renamed from: d  reason: collision with root package name */
        private static final TypeVariable<?>[] f15898d = List.class.getTypeParameters();

        /* renamed from: e  reason: collision with root package name */
        private static final TypeVariable<?>[] f15899e = ArrayList.class.getTypeParameters();

        /* renamed from: f  reason: collision with root package name */
        private static final TypeVariable<?>[] f15900f = Map.class.getTypeParameters();

        /* renamed from: g  reason: collision with root package name */
        private static final TypeVariable<?>[] f15901g = HashMap.class.getTypeParameters();

        /* renamed from: h  reason: collision with root package name */
        private static final TypeVariable<?>[] f15902h = LinkedHashMap.class.getTypeParameters();

        b() {
        }

        public static TypeVariable<?>[] a(Class<?> cls) {
            if (cls == Collection.class) {
                return f15896b;
            }
            if (cls == List.class) {
                return f15898d;
            }
            if (cls == ArrayList.class) {
                return f15899e;
            }
            if (cls == AbstractList.class) {
                return f15895a;
            }
            if (cls == Iterable.class) {
                return f15897c;
            }
            return cls.getTypeParameters();
        }

        public static TypeVariable<?>[] b(Class<?> cls) {
            if (cls == Map.class) {
                return f15900f;
            }
            if (cls == HashMap.class) {
                return f15901g;
            }
            if (cls == LinkedHashMap.class) {
                return f15902h;
            }
            return cls.getTypeParameters();
        }
    }

    static {
        String[] strArr = new String[0];
        f15885f = strArr;
        JavaType[] javaTypeArr = new JavaType[0];
        f15886g = javaTypeArr;
        f15887h = new TypeBindings(strArr, javaTypeArr, null);
    }

    private TypeBindings(String[] strArr, JavaType[] javaTypeArr, String[] strArr2) {
        strArr = strArr == null ? f15885f : strArr;
        this.f15888a = strArr;
        javaTypeArr = javaTypeArr == null ? f15886g : javaTypeArr;
        this.f15889b = javaTypeArr;
        if (strArr.length == javaTypeArr.length) {
            int length = javaTypeArr.length;
            int i4 = 1;
            for (int i10 = 0; i10 < length; i10++) {
                i4 += this.f15889b[i10].hashCode();
            }
            this.f15890c = strArr2;
            this.f15891d = i4;
            return;
        }
        throw new IllegalArgumentException("Mismatching names (" + strArr.length + "), types (" + javaTypeArr.length + ")");
    }

    public static TypeBindings create(Class<?> cls, List<JavaType> list) {
        JavaType[] javaTypeArr;
        if (list != null && !list.isEmpty()) {
            javaTypeArr = (JavaType[]) list.toArray(f15886g);
        } else {
            javaTypeArr = f15886g;
        }
        return create(cls, javaTypeArr);
    }

    public static TypeBindings createIfNeeded(Class<?> cls, JavaType javaType) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 0) {
            return f15887h;
        }
        if (length == 1) {
            return new TypeBindings(new String[]{typeParameters[0].getName()}, new JavaType[]{javaType}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 1 type parameter: class expects " + length);
    }

    public static TypeBindings emptyBindings() {
        return f15887h;
    }

    protected Object a() {
        String[] strArr = this.f15888a;
        return (strArr == null || strArr.length == 0) ? f15887h : this;
    }

    public Object asKey(Class<?> cls) {
        return new a(cls, this.f15889b, this.f15891d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType[] b() {
        return this.f15889b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (g.Q(obj, getClass())) {
            TypeBindings typeBindings = (TypeBindings) obj;
            int length = this.f15889b.length;
            if (length != typeBindings.size()) {
                return false;
            }
            JavaType[] javaTypeArr = typeBindings.f15889b;
            for (int i4 = 0; i4 < length; i4++) {
                if (!javaTypeArr[i4].equals(this.f15889b[i4])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public JavaType findBoundType(String str) {
        JavaType selfReferencedType;
        int length = this.f15888a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(this.f15888a[i4])) {
                JavaType javaType = this.f15889b[i4];
                return (!(javaType instanceof ResolvedRecursiveType) || (selfReferencedType = ((ResolvedRecursiveType) javaType).getSelfReferencedType()) == null) ? javaType : selfReferencedType;
            }
        }
        return null;
    }

    public String getBoundName(int i4) {
        if (i4 >= 0) {
            String[] strArr = this.f15888a;
            if (i4 >= strArr.length) {
                return null;
            }
            return strArr[i4];
        }
        return null;
    }

    public JavaType getBoundType(int i4) {
        if (i4 >= 0) {
            JavaType[] javaTypeArr = this.f15889b;
            if (i4 >= javaTypeArr.length) {
                return null;
            }
            return javaTypeArr[i4];
        }
        return null;
    }

    public List<JavaType> getTypeParameters() {
        JavaType[] javaTypeArr = this.f15889b;
        if (javaTypeArr.length == 0) {
            return Collections.emptyList();
        }
        return Arrays.asList(javaTypeArr);
    }

    public boolean hasUnbound(String str) {
        String[] strArr = this.f15890c;
        if (strArr != null) {
            int length = strArr.length;
            do {
                length--;
                if (length < 0) {
                    return false;
                }
            } while (!str.equals(this.f15890c[length]));
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f15891d;
    }

    public boolean isEmpty() {
        return this.f15889b.length == 0;
    }

    public int size() {
        return this.f15889b.length;
    }

    public String toString() {
        if (this.f15889b.length == 0) {
            return "<>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Typography.less);
        int length = this.f15889b.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 > 0) {
                sb.append(',');
            }
            sb.append(this.f15889b[i4].getGenericSignature());
        }
        sb.append(Typography.greater);
        return sb.toString();
    }

    public TypeBindings withUnboundVariable(String str) {
        String[] strArr = this.f15890c;
        int length = strArr == null ? 0 : strArr.length;
        String[] strArr2 = length == 0 ? new String[1] : (String[]) Arrays.copyOf(strArr, length + 1);
        strArr2[length] = str;
        return new TypeBindings(this.f15888a, this.f15889b, strArr2);
    }

    public static TypeBindings create(Class<?> cls, JavaType[] javaTypeArr) {
        String[] strArr;
        if (javaTypeArr == null) {
            javaTypeArr = f15886g;
        } else {
            int length = javaTypeArr.length;
            if (length == 1) {
                return create(cls, javaTypeArr[0]);
            }
            if (length == 2) {
                return create(cls, javaTypeArr[0], javaTypeArr[1]);
            }
        }
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length != 0) {
            int length2 = typeParameters.length;
            strArr = new String[length2];
            for (int i4 = 0; i4 < length2; i4++) {
                strArr[i4] = typeParameters[i4].getName();
            }
        } else {
            strArr = f15885f;
        }
        if (strArr.length != javaTypeArr.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot create TypeBindings for class ");
            sb.append(cls.getName());
            sb.append(" with ");
            sb.append(javaTypeArr.length);
            sb.append(" type parameter");
            sb.append(javaTypeArr.length == 1 ? "" : "s");
            sb.append(": class expects ");
            sb.append(strArr.length);
            throw new IllegalArgumentException(sb.toString());
        }
        return new TypeBindings(strArr, javaTypeArr, null);
    }

    public static TypeBindings createIfNeeded(Class<?> cls, JavaType[] javaTypeArr) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length != 0) {
            if (javaTypeArr == null) {
                javaTypeArr = f15886g;
            }
            int length = typeParameters.length;
            String[] strArr = new String[length];
            for (int i4 = 0; i4 < length; i4++) {
                strArr[i4] = typeParameters[i4].getName();
            }
            if (length != javaTypeArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot create TypeBindings for class ");
                sb.append(cls.getName());
                sb.append(" with ");
                sb.append(javaTypeArr.length);
                sb.append(" type parameter");
                sb.append(javaTypeArr.length == 1 ? "" : "s");
                sb.append(": class expects ");
                sb.append(length);
                throw new IllegalArgumentException(sb.toString());
            }
            return new TypeBindings(strArr, javaTypeArr, null);
        }
        return f15887h;
    }

    public static TypeBindings create(Class<?> cls, JavaType javaType) {
        TypeVariable<?>[] a10 = b.a(cls);
        int length = a10 == null ? 0 : a10.length;
        if (length == 1) {
            return new TypeBindings(new String[]{a10[0].getName()}, new JavaType[]{javaType}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 1 type parameter: class expects " + length);
    }

    public static TypeBindings create(Class<?> cls, JavaType javaType, JavaType javaType2) {
        TypeVariable<?>[] b10 = b.b(cls);
        int length = b10 == null ? 0 : b10.length;
        if (length == 2) {
            return new TypeBindings(new String[]{b10[0].getName(), b10[1].getName()}, new JavaType[]{javaType, javaType2}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 2 type parameters: class expects " + length);
    }

    public static TypeBindings create(List<String> list, List<JavaType> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            return new TypeBindings((String[]) list.toArray(f15885f), (JavaType[]) list2.toArray(f15886g), null);
        }
        return f15887h;
    }
}
