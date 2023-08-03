package v5;

import com.squareup.moshi.JsonReader;
import com.squareup.moshi.b0;
import com.squareup.moshi.h;
import com.squareup.moshi.u;
import com.squareup.moshi.z;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.full.KClasses;
import kotlin.reflect.jvm.KCallablesJvm;
import kotlin.reflect.jvm.ReflectJvmMapping;
import m8.g;
import v5.a;

/* compiled from: KotlinJsonAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ.\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\r"}, d2 = {"Lv5/b;", "Lcom/squareup/moshi/h$e;", "Ljava/lang/reflect/Type;", "type", "", "", "annotations", "Lcom/squareup/moshi/u;", "moshi", "Lcom/squareup/moshi/h;", "create", "<init>", "()V", "reflect"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class b implements h.e {
    @Override // com.squareup.moshi.h.e
    @m8.h
    public h<?> create(@g Type type, @g Set<? extends Annotation> annotations, @g u moshi) {
        Class<? extends Annotation> cls;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        List<a.C0847a> filterNotNull;
        int collectionSizeOrDefault2;
        Object obj;
        List mutableList;
        String name;
        Type javaType;
        Object obj2;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        boolean z9 = true;
        if (!annotations.isEmpty()) {
            return null;
        }
        Class<?> d4 = b0.d(type);
        if (d4.isInterface() || d4.isEnum()) {
            return null;
        }
        cls = c.f94211a;
        if (d4.isAnnotationPresent(cls) && !com.squareup.moshi.internal.c.m(d4)) {
            try {
                h<?> f10 = com.squareup.moshi.internal.c.f(moshi, type, d4);
                if (f10 != null) {
                    return f10;
                }
            } catch (RuntimeException e4) {
                if (!(e4.getCause() instanceof ClassNotFoundException)) {
                    throw e4;
                }
            }
            if (!d4.isLocalClass()) {
                KClass kotlinClass = JvmClassMappingKt.getKotlinClass(d4);
                if (!kotlinClass.isAbstract()) {
                    if (!kotlinClass.isInner()) {
                        if (kotlinClass.getObjectInstance() == null) {
                            if (!kotlinClass.isSealed()) {
                                KFunction primaryConstructor = KClasses.getPrimaryConstructor(kotlinClass);
                                if (primaryConstructor == null) {
                                    return null;
                                }
                                List<KParameter> parameters = primaryConstructor.getParameters();
                                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                                for (Object obj3 : parameters) {
                                    linkedHashMap.put(((KParameter) obj3).getName(), obj3);
                                }
                                KCallablesJvm.setAccessible(primaryConstructor, true);
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                for (KProperty1 kProperty1 : KClasses.getMemberProperties(kotlinClass)) {
                                    KParameter kParameter = (KParameter) linkedHashMap.get(kProperty1.getName());
                                    KCallablesJvm.setAccessible(kProperty1, z9);
                                    Iterator<T> it = kProperty1.getAnnotations().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            obj = null;
                                            break;
                                        }
                                        obj = it.next();
                                        if (((Annotation) obj) instanceof com.squareup.moshi.g) {
                                            break;
                                        }
                                    }
                                    com.squareup.moshi.g gVar = (com.squareup.moshi.g) obj;
                                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) kProperty1.getAnnotations());
                                    if (kParameter != null) {
                                        CollectionsKt__MutableCollectionsKt.addAll(mutableList, kParameter.getAnnotations());
                                        if (gVar == null) {
                                            Iterator<T> it2 = kParameter.getAnnotations().iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    obj2 = null;
                                                    break;
                                                }
                                                obj2 = it2.next();
                                                if (((Annotation) obj2) instanceof com.squareup.moshi.g) {
                                                    break;
                                                }
                                            }
                                            gVar = (com.squareup.moshi.g) obj2;
                                        }
                                    }
                                    Field javaField = ReflectJvmMapping.getJavaField(kProperty1);
                                    if (Modifier.isTransient(javaField == null ? 0 : javaField.getModifiers())) {
                                        if (!(kParameter == null || kParameter.isOptional())) {
                                            throw new IllegalArgumentException(Intrinsics.stringPlus("No default value for transient constructor ", kParameter).toString());
                                        }
                                    } else if (gVar != null && gVar.ignore() == z9) {
                                        if (!(kParameter == null || kParameter.isOptional())) {
                                            throw new IllegalArgumentException(Intrinsics.stringPlus("No default value for ignored constructor ", kParameter).toString());
                                        }
                                    } else if (kParameter == null || Intrinsics.areEqual(kParameter.getType(), kProperty1.getReturnType())) {
                                        if ((kProperty1 instanceof KMutableProperty1) || kParameter != null) {
                                            if (gVar == null || (name = gVar.name()) == null || Intrinsics.areEqual(name, com.squareup.moshi.g.f55599d1)) {
                                                name = null;
                                            }
                                            if (name == null) {
                                                name = kProperty1.getName();
                                            }
                                            String str = name;
                                            KClassifier classifier = kProperty1.getReturnType().getClassifier();
                                            if (classifier instanceof KClass) {
                                                KClass kClass = (KClass) classifier;
                                                if (kClass.isValue()) {
                                                    javaType = JvmClassMappingKt.getJavaClass(kClass);
                                                    if (!kProperty1.getReturnType().getArguments().isEmpty()) {
                                                        List<KTypeProjection> arguments = kProperty1.getReturnType().getArguments();
                                                        ArrayList arrayList = new ArrayList();
                                                        for (KTypeProjection kTypeProjection : arguments) {
                                                            KType type2 = kTypeProjection.getType();
                                                            Type javaType2 = type2 == null ? null : ReflectJvmMapping.getJavaType(type2);
                                                            if (javaType2 != null) {
                                                                arrayList.add(javaType2);
                                                            }
                                                        }
                                                        Object[] array = arrayList.toArray(new Type[0]);
                                                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                                                        Type[] typeArr = (Type[]) array;
                                                        javaType = z.m(javaType, (Type[]) Arrays.copyOf(typeArr, typeArr.length));
                                                    }
                                                } else {
                                                    javaType = ReflectJvmMapping.getJavaType(kProperty1.getReturnType());
                                                }
                                            } else if (classifier instanceof KTypeParameter) {
                                                javaType = ReflectJvmMapping.getJavaType(kProperty1.getReturnType());
                                            } else {
                                                throw new IllegalStateException("Not possible!".toString());
                                            }
                                            Type u9 = com.squareup.moshi.internal.c.u(type, d4, javaType);
                                            Object[] array2 = mutableList.toArray(new Annotation[0]);
                                            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                                            h adapter = moshi.g(u9, com.squareup.moshi.internal.c.o((Annotation[]) array2), kProperty1.getName());
                                            String name2 = kProperty1.getName();
                                            Intrinsics.checkNotNullExpressionValue(adapter, "adapter");
                                            linkedHashMap2.put(name2, new a.C0847a(str, adapter, kProperty1, kParameter, kParameter == null ? -1 : kParameter.getIndex()));
                                            z9 = true;
                                        }
                                    } else {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append('\'');
                                        sb.append(kProperty1.getName());
                                        sb.append("' has a constructor parameter of type ");
                                        Intrinsics.checkNotNull(kParameter);
                                        sb.append(kParameter.getType());
                                        sb.append(" but a property of type ");
                                        sb.append(kProperty1.getReturnType());
                                        sb.append('.');
                                        throw new IllegalArgumentException(sb.toString().toString());
                                    }
                                }
                                ArrayList arrayList2 = new ArrayList();
                                for (KParameter kParameter2 : primaryConstructor.getParameters()) {
                                    a.C0847a c0847a = (a.C0847a) linkedHashMap2.remove(kParameter2.getName());
                                    if (c0847a != null || kParameter2.isOptional()) {
                                        arrayList2.add(c0847a);
                                    } else {
                                        throw new IllegalArgumentException(Intrinsics.stringPlus("No property for required constructor ", kParameter2).toString());
                                    }
                                }
                                int size = arrayList2.size();
                                Iterator it3 = linkedHashMap2.entrySet().iterator();
                                while (true) {
                                    int i4 = size;
                                    if (!it3.hasNext()) {
                                        break;
                                    }
                                    size = i4 + 1;
                                    arrayList2.add(a.C0847a.g((a.C0847a) ((Map.Entry) it3.next()).getValue(), null, null, null, null, i4, 15, null));
                                }
                                filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList2);
                                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(filterNotNull, 10);
                                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                                for (a.C0847a c0847a2 : filterNotNull) {
                                    arrayList3.add(c0847a2.j());
                                }
                                Object[] array3 = arrayList3.toArray(new String[0]);
                                Objects.requireNonNull(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                                String[] strArr = (String[]) array3;
                                JsonReader.b options = JsonReader.b.a((String[]) Arrays.copyOf(strArr, strArr.length));
                                Intrinsics.checkNotNullExpressionValue(options, "options");
                                return new a(primaryConstructor, arrayList2, filterNotNull, options).nullSafe();
                            }
                            throw new IllegalArgumentException(("Cannot reflectively serialize sealed class " + ((Object) d4.getName()) + ". Please register an adapter.").toString());
                        }
                        throw new IllegalArgumentException(Intrinsics.stringPlus("Cannot serialize object declaration ", d4.getName()).toString());
                    }
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Cannot serialize inner class ", d4.getName()).toString());
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("Cannot serialize abstract class ", d4.getName()).toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Cannot serialize local class or object expression ", d4.getName()).toString());
        }
        return null;
    }
}
