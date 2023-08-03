package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.e;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* loaded from: classes2.dex */
public abstract class TypeBase extends JavaType implements f {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15877k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final TypeBindings f15878l = TypeBindings.emptyBindings();

    /* renamed from: m  reason: collision with root package name */
    private static final JavaType[] f15879m = new JavaType[0];

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f15880g;

    /* renamed from: h  reason: collision with root package name */
    protected final JavaType[] f15881h;

    /* renamed from: i  reason: collision with root package name */
    protected final TypeBindings f15882i;

    /* renamed from: j  reason: collision with root package name */
    volatile transient String f15883j;

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeBase(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, int i4, Object obj, Object obj2, boolean z9) {
        super(cls, i4, obj, obj2, z9);
        this.f15882i = typeBindings == null ? f15878l : typeBindings;
        this.f15880g = javaType;
        this.f15881h = javaTypeArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static JavaType d0(Class<?> cls) {
        if (cls.getSuperclass() == null) {
            return null;
        }
        return TypeFactory.unknownType();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static StringBuilder e0(Class<?> cls, StringBuilder sb, boolean z9) {
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE) {
                sb.append(Matrix.MATRIX_TYPE_ZERO);
            } else if (cls == Byte.TYPE) {
                sb.append('B');
            } else if (cls == Short.TYPE) {
                sb.append('S');
            } else if (cls == Character.TYPE) {
                sb.append('C');
            } else if (cls == Integer.TYPE) {
                sb.append('I');
            } else if (cls == Long.TYPE) {
                sb.append('J');
            } else if (cls == Float.TYPE) {
                sb.append('F');
            } else if (cls == Double.TYPE) {
                sb.append('D');
            } else if (cls == Void.TYPE) {
                sb.append('V');
            } else {
                throw new IllegalStateException("Unrecognized primitive type: " + cls.getName());
            }
        } else {
            sb.append(Matrix.MATRIX_TYPE_RANDOM_LT);
            String name = cls.getName();
            int length = name.length();
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = name.charAt(i4);
                if (charAt == '.') {
                    charAt = e.f13819f;
                }
                sb.append(charAt);
            }
            if (z9) {
                sb.append(';');
            }
        }
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public int containedTypeCount() {
        return this.f15882i.size();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    @Deprecated
    public String containedTypeName(int i4) {
        return this.f15882i.getBoundName(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean f0(int i4) {
        return this.f14354a.getTypeParameters().length == i4;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public final JavaType findSuperType(Class<?> cls) {
        JavaType findSuperType;
        JavaType[] javaTypeArr;
        if (cls == this.f14354a) {
            return this;
        }
        if (cls.isInterface() && (javaTypeArr = this.f15881h) != null) {
            int length = javaTypeArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                JavaType findSuperType2 = this.f15881h[i4].findSuperType(cls);
                if (findSuperType2 != null) {
                    return findSuperType2;
                }
            }
        }
        JavaType javaType = this.f15880g;
        if (javaType == null || (findSuperType = javaType.findSuperType(cls)) == null) {
            return null;
        }
        return findSuperType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType[] findTypeParameters(Class<?> cls) {
        JavaType findSuperType = findSuperType(cls);
        if (findSuperType == null) {
            return f15879m;
        }
        return findSuperType.getBindings().b();
    }

    protected String g0() {
        return this.f14354a.getName();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public TypeBindings getBindings() {
        return this.f15882i;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public abstract StringBuilder getErasedSignature(StringBuilder sb);

    @Override // com.fasterxml.jackson.databind.JavaType
    public abstract StringBuilder getGenericSignature(StringBuilder sb);

    @Override // com.fasterxml.jackson.databind.JavaType
    public List<JavaType> getInterfaces() {
        JavaType[] javaTypeArr = this.f15881h;
        if (javaTypeArr == null) {
            return Collections.emptyList();
        }
        int length = javaTypeArr.length;
        if (length != 0) {
            if (length != 1) {
                return Arrays.asList(javaTypeArr);
            }
            return Collections.singletonList(javaTypeArr[0]);
        }
        return Collections.emptyList();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType getSuperClass() {
        return this.f15880g;
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.P1(toCanonical());
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId writableTypeId = new WritableTypeId(this, JsonToken.VALUE_STRING);
        fVar.o(jsonGenerator, writableTypeId);
        serialize(jsonGenerator, lVar);
        fVar.v(jsonGenerator, writableTypeId);
    }

    @Override // com.fasterxml.jackson.core.type.a
    public String toCanonical() {
        String str = this.f15883j;
        return str == null ? g0() : str;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType containedType(int i4) {
        return this.f15882i.getBoundType(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeBase(TypeBase typeBase) {
        super(typeBase);
        this.f15880g = typeBase.f15880g;
        this.f15881h = typeBase.f15881h;
        this.f15882i = typeBase.f15882i;
    }
}
