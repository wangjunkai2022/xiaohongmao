package kotlin.reflect.jvm.internal;

import com.fasterxml.jackson.core.e;
import com.google.android.exoplayer2.text.ttml.d;
import com.ksyun.media.player.e.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.SortedMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* compiled from: KDeclarationContainerImpl.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\n\b \u0018\u0000 <2\u00020\u0001:\u0003<=>B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\f\u001a\u00020\r2\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u0012\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010$\u001a\u00020%H&J\"\u0010&\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0004J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u001a\u0010-\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010/\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J$\u00100\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020%H\u0002JE\u00103\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0002\u00108J(\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015*\u0006\u0012\u0002\b\u00030\t2\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.H\u0002J=\u0010:\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0002\u0010;R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006?"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "()V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "methodOwner", "Ljava/lang/Class;", "getMethodOwner", "()Ljava/lang/Class;", "addParametersAndMasks", "", "result", "", "desc", "", "isConstructor", "", "findConstructorBySignature", "Ljava/lang/reflect/Constructor;", "findDefaultConstructor", "findDefaultMethod", "Ljava/lang/reflect/Method;", "name", "isMember", "findFunctionDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "signature", "findMethodBySignature", "findPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "index", "", "getMembers", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "belonginess", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "getProperties", "loadParameterTypes", "", "loadReturnType", "parseType", "begin", d.f25727p0, "lookupMethod", "parameterTypes", "", "returnType", "isStaticDefault", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;", "tryGetConstructor", "tryGetMethod", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;", "Companion", b.f45488a, "MemberBelonginess", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class KDeclarationContainerImpl implements ClassBasedDeclarationContainer {
    @g
    public static final Companion Companion = new Companion(null);
    private static final Class<?> DEFAULT_CONSTRUCTOR_MARKER = DefaultConstructorMarker.class;
    @g
    private static final Regex LOCAL_PROPERTY_SIGNATURE = new Regex("<v#(\\d+)>");

    /* compiled from: KDeclarationContainerImpl.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0002\b\u0003 \u0005*\b\u0012\u0002\b\u0003\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Companion;", "", "()V", "DEFAULT_CONSTRUCTOR_MARKER", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "LOCAL_PROPERTY_SIGNATURE", "Lkotlin/text/Regex;", "getLOCAL_PROPERTY_SIGNATURE$kotlin_reflection", "()Lkotlin/text/Regex;", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Regex getLOCAL_PROPERTY_SIGNATURE$kotlin_reflection() {
            return KDeclarationContainerImpl.LOCAL_PROPERTY_SIGNATURE;
        }
    }

    /* compiled from: KDeclarationContainerImpl.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b¦\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "moduleData", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "getModuleData", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;", "moduleData$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public abstract class Data {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Data.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};
        @g
        private final ReflectProperties.LazySoftVal moduleData$delegate;

        public Data() {
            this.moduleData$delegate = ReflectProperties.lazySoft(new KDeclarationContainerImpl$Data$moduleData$2(KDeclarationContainerImpl.this));
        }

        @g
        public final RuntimeModuleData getModuleData() {
            T value = this.moduleData$delegate.getValue(this, $$delegatedProperties[0]);
            Intrinsics.checkNotNullExpressionValue(value, "<get-moduleData>(...)");
            return (RuntimeModuleData) value;
        }
    }

    /* compiled from: KDeclarationContainerImpl.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "", "(Ljava/lang/String;I)V", "accept", "", "member", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "DECLARED", "INHERITED", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    protected enum MemberBelonginess {
        DECLARED,
        INHERITED;

        public final boolean accept(@g CallableMemberDescriptor member) {
            Intrinsics.checkNotNullParameter(member, "member");
            return member.getKind().isReal() == (this == DECLARED);
        }
    }

    private final void addParametersAndMasks(List<Class<?>> list, String str, boolean z9) {
        List<Class<?>> loadParameterTypes = loadParameterTypes(str);
        list.addAll(loadParameterTypes);
        int size = ((loadParameterTypes.size() + 32) - 1) / 32;
        for (int i4 = 0; i4 < size; i4++) {
            Class<?> TYPE = Integer.TYPE;
            Intrinsics.checkNotNullExpressionValue(TYPE, "TYPE");
            list.add(TYPE);
        }
        if (z9) {
            Class<?> DEFAULT_CONSTRUCTOR_MARKER2 = DEFAULT_CONSTRUCTOR_MARKER;
            list.remove(DEFAULT_CONSTRUCTOR_MARKER2);
            Intrinsics.checkNotNullExpressionValue(DEFAULT_CONSTRUCTOR_MARKER2, "DEFAULT_CONSTRUCTOR_MARKER");
            list.add(DEFAULT_CONSTRUCTOR_MARKER2);
            return;
        }
        list.add(Object.class);
    }

    private final List<Class<?>> loadParameterTypes(String str) {
        boolean contains$default;
        int indexOf$default;
        int i4;
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        while (str.charAt(i10) != ')') {
            int i11 = i10;
            while (str.charAt(i11) == '[') {
                i11++;
            }
            char charAt = str.charAt(i11);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) "VZCBSIFJD", charAt, false, 2, (Object) null);
            if (contains$default) {
                i4 = i11 + 1;
            } else if (charAt == 'L') {
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ';', i10, false, 4, (Object) null);
                i4 = indexOf$default + 1;
            } else {
                throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
            }
            arrayList.add(parseType(str, i10, i4));
            i10 = i4;
        }
        return arrayList;
    }

    private final Class<?> loadReturnType(String str) {
        int indexOf$default;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ')', 0, false, 6, (Object) null);
        return parseType(str, indexOf$default + 1, str.length());
    }

    private final Method lookupMethod(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2, boolean z9) {
        Method lookupMethod;
        if (z9) {
            clsArr[0] = cls;
        }
        Method tryGetMethod = tryGetMethod(cls, str, clsArr, cls2);
        if (tryGetMethod != null) {
            return tryGetMethod;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass == null || (lookupMethod = lookupMethod(superclass, str, clsArr, cls2, z9)) == null) {
            Class<?>[] interfaces = cls.getInterfaces();
            Intrinsics.checkNotNullExpressionValue(interfaces, "interfaces");
            for (Class<?> superInterface : interfaces) {
                Intrinsics.checkNotNullExpressionValue(superInterface, "superInterface");
                Method lookupMethod2 = lookupMethod(superInterface, str, clsArr, cls2, z9);
                if (lookupMethod2 != null) {
                    return lookupMethod2;
                }
                if (z9) {
                    Class<?> tryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(ReflectClassUtilKt.getSafeClassLoader(superInterface), superInterface.getName() + "$DefaultImpls");
                    if (tryLoadClass != null) {
                        clsArr[0] = superInterface;
                        Method tryGetMethod2 = tryGetMethod(tryLoadClass, str, clsArr, cls2);
                        if (tryGetMethod2 != null) {
                            return tryGetMethod2;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        }
        return lookupMethod;
    }

    private final Class<?> parseType(String str, int i4, int i10) {
        String replace$default;
        char charAt = str.charAt(i4);
        if (charAt == 'L') {
            ClassLoader safeClassLoader = ReflectClassUtilKt.getSafeClassLoader(getJClass());
            String substring = str.substring(i4 + 1, i10 - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            replace$default = StringsKt__StringsJVMKt.replace$default(substring, (char) e.f13819f, '.', false, 4, (Object) null);
            Class<?> loadClass = safeClassLoader.loadClass(replace$default);
            Intrinsics.checkNotNullExpressionValue(loadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
            return loadClass;
        } else if (charAt == '[') {
            return UtilKt.createArrayType(parseType(str, i4 + 1, i10));
        } else {
            if (charAt == 'V') {
                Class<?> TYPE = Void.TYPE;
                Intrinsics.checkNotNullExpressionValue(TYPE, "TYPE");
                return TYPE;
            } else if (charAt == 'Z') {
                return Boolean.TYPE;
            } else {
                if (charAt == 'C') {
                    return Character.TYPE;
                }
                if (charAt == 'B') {
                    return Byte.TYPE;
                }
                if (charAt == 'S') {
                    return Short.TYPE;
                }
                if (charAt == 'I') {
                    return Integer.TYPE;
                }
                if (charAt == 'F') {
                    return Float.TYPE;
                }
                if (charAt == 'J') {
                    return Long.TYPE;
                }
                if (charAt == 'D') {
                    return Double.TYPE;
                }
                throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
            }
        }
    }

    private final Constructor<?> tryGetConstructor(Class<?> cls, List<? extends Class<?>> list) {
        try {
            Object[] array = list.toArray(new Class[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            Class[] clsArr = (Class[]) array;
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private final Method tryGetMethod(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            if (Intrinsics.areEqual(declaredMethod.getReturnType(), cls2)) {
                return declaredMethod;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "declaredMethods");
            for (Method method : declaredMethods) {
                if (Intrinsics.areEqual(method.getName(), str) && Intrinsics.areEqual(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @h
    public final Constructor<?> findConstructorBySignature(@g String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        return tryGetConstructor(getJClass(), loadParameterTypes(desc));
    }

    @h
    public final Constructor<?> findDefaultConstructor(@g String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        Class<?> jClass = getJClass();
        ArrayList arrayList = new ArrayList();
        addParametersAndMasks(arrayList, desc, true);
        Unit unit = Unit.INSTANCE;
        return tryGetConstructor(jClass, arrayList);
    }

    @h
    public final Method findDefaultMethod(@g String name, @g String desc, boolean z9) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(desc, "desc");
        if (Intrinsics.areEqual(name, "<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z9) {
            arrayList.add(getJClass());
        }
        addParametersAndMasks(arrayList, desc, false);
        Class<?> methodOwner = getMethodOwner();
        String str = name + "$default";
        Object[] array = arrayList.toArray(new Class[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return lookupMethod(methodOwner, str, (Class[]) array, loadReturnType(desc), z9);
    }

    @g
    public final FunctionDescriptor findFunctionDescriptor(@g String name, @g String signature) {
        Collection<FunctionDescriptor> functions;
        Object single;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        if (Intrinsics.areEqual(name, "<init>")) {
            functions = CollectionsKt___CollectionsKt.toList(getConstructorDescriptors());
        } else {
            Name identifier = Name.identifier(name);
            Intrinsics.checkNotNullExpressionValue(identifier, "identifier(name)");
            functions = getFunctions(identifier);
        }
        Collection<FunctionDescriptor> collection = functions;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.areEqual(RuntimeTypeMapper.INSTANCE.mapSignature((FunctionDescriptor) obj).asString(), signature)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() != 1) {
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(collection, "\n", null, null, 0, null, KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1.INSTANCE, 30, null);
            StringBuilder sb = new StringBuilder();
            sb.append("Function '");
            sb.append(name);
            sb.append("' (JVM signature: ");
            sb.append(signature);
            sb.append(") not resolved in ");
            sb.append(this);
            sb.append(':');
            sb.append(joinToString$default.length() == 0 ? " no members found" : '\n' + joinToString$default);
            throw new KotlinReflectionInternalError(sb.toString());
        }
        single = CollectionsKt___CollectionsKt.single((List<? extends Object>) arrayList);
        return (FunctionDescriptor) single;
    }

    @h
    public final Method findMethodBySignature(@g String name, @g String desc) {
        Method lookupMethod;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(desc, "desc");
        if (Intrinsics.areEqual(name, "<init>")) {
            return null;
        }
        Object[] array = loadParameterTypes(desc).toArray(new Class[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Class<?>[] clsArr = (Class[]) array;
        Class<?> loadReturnType = loadReturnType(desc);
        Method lookupMethod2 = lookupMethod(getMethodOwner(), name, clsArr, loadReturnType, false);
        if (lookupMethod2 != null) {
            return lookupMethod2;
        }
        if (!getMethodOwner().isInterface() || (lookupMethod = lookupMethod(Object.class, name, clsArr, loadReturnType, false)) == null) {
            return null;
        }
        return lookupMethod;
    }

    @g
    public final PropertyDescriptor findPropertyDescriptor(@g String name, @g String signature) {
        Object single;
        SortedMap sortedMap;
        Object last;
        String joinToString$default;
        Object first;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        MatchResult matchEntire = LOCAL_PROPERTY_SIGNATURE.matchEntire(signature);
        if (matchEntire != null) {
            String str = matchEntire.getDestructured().getMatch().getGroupValues().get(1);
            PropertyDescriptor localProperty = getLocalProperty(Integer.parseInt(str));
            if (localProperty != null) {
                return localProperty;
            }
            throw new KotlinReflectionInternalError("Local property #" + str + " not found in " + getJClass());
        }
        Name identifier = Name.identifier(name);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(name)");
        Collection<PropertyDescriptor> properties = getProperties(identifier);
        ArrayList arrayList = new ArrayList();
        for (Object obj : properties) {
            if (Intrinsics.areEqual(RuntimeTypeMapper.INSTANCE.mapPropertySignature((PropertyDescriptor) obj).asString(), signature)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            if (arrayList.size() != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : arrayList) {
                    DescriptorVisibility visibility = ((PropertyDescriptor) obj2).getVisibility();
                    Object obj3 = linkedHashMap.get(visibility);
                    if (obj3 == null) {
                        obj3 = new ArrayList();
                        linkedHashMap.put(visibility, obj3);
                    }
                    ((List) obj3).add(obj2);
                }
                sortedMap = MapsKt__MapsJVMKt.toSortedMap(linkedHashMap, KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2.INSTANCE);
                Collection values = sortedMap.values();
                Intrinsics.checkNotNullExpressionValue(values, "properties\n             …\n                }.values");
                last = CollectionsKt___CollectionsKt.last(values);
                List mostVisibleProperties = (List) last;
                if (mostVisibleProperties.size() == 1) {
                    Intrinsics.checkNotNullExpressionValue(mostVisibleProperties, "mostVisibleProperties");
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mostVisibleProperties);
                    return (PropertyDescriptor) first;
                }
                Name identifier2 = Name.identifier(name);
                Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(name)");
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(getProperties(identifier2), "\n", null, null, 0, null, KDeclarationContainerImpl$findPropertyDescriptor$allMembers$1.INSTANCE, 30, null);
                StringBuilder sb = new StringBuilder();
                sb.append("Property '");
                sb.append(name);
                sb.append("' (JVM signature: ");
                sb.append(signature);
                sb.append(") not resolved in ");
                sb.append(this);
                sb.append(':');
                sb.append(joinToString$default.length() == 0 ? " no members found" : '\n' + joinToString$default);
                throw new KotlinReflectionInternalError(sb.toString());
            }
            single = CollectionsKt___CollectionsKt.single((List<? extends Object>) arrayList);
            return (PropertyDescriptor) single;
        }
        throw new KotlinReflectionInternalError("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + this);
    }

    @g
    public abstract Collection<ConstructorDescriptor> getConstructorDescriptors();

    @g
    public abstract Collection<FunctionDescriptor> getFunctions(@g Name name);

    @h
    public abstract PropertyDescriptor getLocalProperty(int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x001e A[SYNTHETIC] */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.KCallableImpl<?>> getMembers(@m8.g kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope r8, @m8.g kotlin.reflect.jvm.internal.KDeclarationContainerImpl.MemberBelonginess r9) {
        /*
            r7 = this;
            java.lang.String r0 = "scope"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "belonginess"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            kotlin.reflect.jvm.internal.KDeclarationContainerImpl$getMembers$visitor$1 r0 = new kotlin.reflect.jvm.internal.KDeclarationContainerImpl$getMembers$visitor$1
            r0.<init>(r7)
            r1 = 0
            r2 = 3
            java.util.Collection r8 = kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope.DefaultImpls.getContributedDescriptors$default(r8, r1, r1, r2, r1)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r8 = r8.iterator()
        L1e:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L53
            java.lang.Object r3 = r8.next()
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor) r3
            boolean r4 = r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
            if (r4 == 0) goto L4c
            r4 = r3
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r4
            kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility r5 = r4.getVisibility()
            kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility r6 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.INVISIBLE_FAKE
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 != 0) goto L4c
            boolean r4 = r9.accept(r4)
            if (r4 == 0) goto L4c
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            java.lang.Object r3 = r3.accept(r0, r4)
            kotlin.reflect.jvm.internal.KCallableImpl r3 = (kotlin.reflect.jvm.internal.KCallableImpl) r3
            goto L4d
        L4c:
            r3 = r1
        L4d:
            if (r3 == 0) goto L1e
            r2.add(r3)
            goto L1e
        L53:
            java.util.List r8 = kotlin.collections.CollectionsKt.toList(r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KDeclarationContainerImpl.getMembers(kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.KDeclarationContainerImpl$MemberBelonginess):java.util.Collection");
    }

    @g
    protected Class<?> getMethodOwner() {
        Class<?> wrapperByPrimitive = ReflectClassUtilKt.getWrapperByPrimitive(getJClass());
        return wrapperByPrimitive == null ? getJClass() : wrapperByPrimitive;
    }

    @g
    public abstract Collection<PropertyDescriptor> getProperties(@g Name name);
}
