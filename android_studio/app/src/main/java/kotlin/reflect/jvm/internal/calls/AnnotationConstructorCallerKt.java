package kotlin.reflect.jvm.internal.calls;

import androidx.exifinterface.media.ExifInterface;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.text.Typography;
import m8.g;

/* compiled from: AnnotationConstructorCaller.kt */
@Metadata(d1 = {"\u00004\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u001aI\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0000¢\u0006\u0002\u0010\u000b\u001a$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002¨\u0006\u0014²\u0006\u0014\u0010\u0015\u001a\u00020\u000f\"\b\b\u0000\u0010\u0001*\u00020\u0002X\u008a\u0084\u0002²\u0006\u0014\u0010\u0016\u001a\u00020\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0002X\u008a\u0084\u0002"}, d2 = {"createAnnotationInstance", ExifInterface.GPS_DIRECTION_TRUE, "", "annotationClass", "Ljava/lang/Class;", "values", "", "", "methods", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;", "throwIllegalArgumentType", "", "index", "", "name", "expectedJvmType", "transformKotlinToJvm", "expectedType", "kotlin-reflection", "hashCode", "toString"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AnnotationConstructorCallerKt {
    @g
    public static final <T> T createAnnotationInstance(@g final Class<T> annotationClass, @g final Map<String, ? extends Object> values, @g final List<Method> methods) {
        final Lazy lazy;
        final Lazy lazy2;
        Intrinsics.checkNotNullParameter(annotationClass, "annotationClass");
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(methods, "methods");
        lazy = LazyKt__LazyJVMKt.lazy(new AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2(values));
        lazy2 = LazyKt__LazyJVMKt.lazy(new AnnotationConstructorCallerKt$createAnnotationInstance$toString$2(annotationClass, values));
        T t9 = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, new InvocationHandler() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$result$1
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] args) {
                List list;
                Object single;
                boolean createAnnotationInstance$equals;
                String m1360createAnnotationInstance$lambda3;
                int m1359createAnnotationInstance$lambda2;
                String name = method.getName();
                if (name != null) {
                    int hashCode = name.hashCode();
                    if (hashCode != -1776922004) {
                        if (hashCode != 147696667) {
                            if (hashCode == 1444986633 && name.equals("annotationType")) {
                                return annotationClass;
                            }
                        } else if (name.equals("hashCode")) {
                            m1359createAnnotationInstance$lambda2 = AnnotationConstructorCallerKt.m1359createAnnotationInstance$lambda2(lazy);
                            return Integer.valueOf(m1359createAnnotationInstance$lambda2);
                        }
                    } else if (name.equals("toString")) {
                        m1360createAnnotationInstance$lambda3 = AnnotationConstructorCallerKt.m1360createAnnotationInstance$lambda3(lazy2);
                        return m1360createAnnotationInstance$lambda3;
                    }
                }
                if (Intrinsics.areEqual(name, "equals")) {
                    boolean z9 = true;
                    if ((args == null || args.length != 1) ? false : false) {
                        Class<T> cls = annotationClass;
                        List<Method> list2 = methods;
                        Map<String, Object> map = values;
                        Intrinsics.checkNotNullExpressionValue(args, "args");
                        single = ArraysKt___ArraysKt.single(args);
                        createAnnotationInstance$equals = AnnotationConstructorCallerKt.createAnnotationInstance$equals(cls, list2, map, single);
                        return Boolean.valueOf(createAnnotationInstance$equals);
                    }
                }
                if (values.containsKey(name)) {
                    return values.get(name);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Method is not supported: ");
                sb.append(method);
                sb.append(" (args: ");
                if (args == null) {
                    args = new Object[0];
                }
                list = ArraysKt___ArraysKt.toList(args);
                sb.append(list);
                sb.append(')');
                throw new KotlinReflectionInternalError(sb.toString());
            }
        });
        Intrinsics.checkNotNull(t9, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance");
        return t9;
    }

    public static /* synthetic */ Object createAnnotationInstance$default(Class cls, Map map, List list, int i4, Object obj) {
        int collectionSizeOrDefault;
        if ((i4 & 4) != 0) {
            Set<String> keySet = map.keySet();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str : keySet) {
                arrayList.add(cls.getDeclaredMethod(str, new Class[0]));
            }
            list = arrayList;
        }
        return createAnnotationInstance(cls, map, list);
    }

    public static final <T> boolean createAnnotationInstance$equals(Class<T> cls, List<Method> list, Map<String, ? extends Object> map, Object obj) {
        boolean areEqual;
        boolean z9;
        KClass annotationClass;
        Class cls2 = null;
        Annotation annotation = obj instanceof Annotation ? (Annotation) obj : null;
        if (annotation != null && (annotationClass = JvmClassMappingKt.getAnnotationClass(annotation)) != null) {
            cls2 = JvmClassMappingKt.getJavaClass(annotationClass);
        }
        if (Intrinsics.areEqual(cls2, cls)) {
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (Method method : list) {
                    Object obj2 = map.get(method.getName());
                    Object invoke = method.invoke(obj, new Object[0]);
                    if (obj2 instanceof boolean[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.BooleanArray");
                        areEqual = Arrays.equals((boolean[]) obj2, (boolean[]) invoke);
                        continue;
                    } else if (obj2 instanceof char[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.CharArray");
                        areEqual = Arrays.equals((char[]) obj2, (char[]) invoke);
                        continue;
                    } else if (obj2 instanceof byte[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.ByteArray");
                        areEqual = Arrays.equals((byte[]) obj2, (byte[]) invoke);
                        continue;
                    } else if (obj2 instanceof short[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.ShortArray");
                        areEqual = Arrays.equals((short[]) obj2, (short[]) invoke);
                        continue;
                    } else if (obj2 instanceof int[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.IntArray");
                        areEqual = Arrays.equals((int[]) obj2, (int[]) invoke);
                        continue;
                    } else if (obj2 instanceof float[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.FloatArray");
                        areEqual = Arrays.equals((float[]) obj2, (float[]) invoke);
                        continue;
                    } else if (obj2 instanceof long[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.LongArray");
                        areEqual = Arrays.equals((long[]) obj2, (long[]) invoke);
                        continue;
                    } else if (obj2 instanceof double[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.DoubleArray");
                        areEqual = Arrays.equals((double[]) obj2, (double[]) invoke);
                        continue;
                    } else if (obj2 instanceof Object[]) {
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Array<*>");
                        areEqual = Arrays.equals((Object[]) obj2, (Object[]) invoke);
                        continue;
                    } else {
                        areEqual = Intrinsics.areEqual(obj2, invoke);
                        continue;
                    }
                    if (!areEqual) {
                        z9 = false;
                        break;
                    }
                }
            }
            z9 = true;
            if (z9) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: createAnnotationInstance$lambda-2 */
    public static final int m1359createAnnotationInstance$lambda2(Lazy<Integer> lazy) {
        return lazy.getValue().intValue();
    }

    /* renamed from: createAnnotationInstance$lambda-3 */
    public static final String m1360createAnnotationInstance$lambda3(Lazy<String> lazy) {
        return lazy.getValue();
    }

    public static final Void throwIllegalArgumentType(int i4, String str, Class<?> cls) {
        KClass orCreateKotlinClass;
        String qualifiedName;
        if (Intrinsics.areEqual(cls, Class.class)) {
            orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KClass.class);
        } else {
            orCreateKotlinClass = (cls.isArray() && Intrinsics.areEqual(cls.getComponentType(), Class.class)) ? Reflection.getOrCreateKotlinClass(KClass[].class) : JvmClassMappingKt.getKotlinClass(cls);
        }
        if (Intrinsics.areEqual(orCreateKotlinClass.getQualifiedName(), Reflection.getOrCreateKotlinClass(Object[].class).getQualifiedName())) {
            StringBuilder sb = new StringBuilder();
            sb.append(orCreateKotlinClass.getQualifiedName());
            sb.append(Typography.less);
            Class<?> componentType = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getComponentType();
            Intrinsics.checkNotNullExpressionValue(componentType, "kotlinClass.java.componentType");
            sb.append(JvmClassMappingKt.getKotlinClass(componentType).getQualifiedName());
            sb.append(Typography.greater);
            qualifiedName = sb.toString();
        } else {
            qualifiedName = orCreateKotlinClass.getQualifiedName();
        }
        throw new IllegalArgumentException("Argument #" + i4 + ' ' + str + " is not of the required type " + qualifiedName);
    }

    public static final Object transformKotlinToJvm(Object obj, Class<?> cls) {
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof KClass) {
            obj = JvmClassMappingKt.getJavaClass((KClass) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Class[]) {
                return null;
            }
            if (objArr instanceof KClass[]) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                KClass[] kClassArr = (KClass[]) obj;
                ArrayList arrayList = new ArrayList(kClassArr.length);
                for (KClass kClass : kClassArr) {
                    arrayList.add(JvmClassMappingKt.getJavaClass(kClass));
                }
                obj = arrayList.toArray(new Class[0]);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            } else {
                obj = objArr;
            }
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }
}
