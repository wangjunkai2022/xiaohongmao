package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeBase;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import okhttp3.HttpUrl;

/* compiled from: TypesJVM.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\b\u001a\u0004\b\u0005\u0010\t¨\u0006\u0015"}, d2 = {"javaType", "Ljava/lang/reflect/Type;", "Lkotlin/reflect/KType;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)V", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "createPossiblyInnerType", "jClass", "Ljava/lang/Class;", "arguments", "", "typeToString", "", "type", "computeJavaType", "forceWrapper", "", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TypesJVMKt {

    /* compiled from: TypesJVM.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KVariance.values().length];
            iArr[KVariance.IN.ordinal()] = 1;
            iArr[KVariance.INVARIANT.ordinal()] = 2;
            iArr[KVariance.OUT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalStdlibApi
    public static final Type computeJavaType(KType kType, boolean z9) {
        Object singleOrNull;
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameter) {
            return new TypeVariableImpl((KTypeParameter) classifier);
        }
        if (classifier instanceof KClass) {
            KClass kClass = (KClass) classifier;
            Class javaObjectType = z9 ? JvmClassMappingKt.getJavaObjectType(kClass) : JvmClassMappingKt.getJavaClass(kClass);
            List<KTypeProjection> arguments = kType.getArguments();
            if (arguments.isEmpty()) {
                return javaObjectType;
            }
            if (javaObjectType.isArray()) {
                if (javaObjectType.getComponentType().isPrimitive()) {
                    return javaObjectType;
                }
                singleOrNull = CollectionsKt___CollectionsKt.singleOrNull((List<? extends Object>) arguments);
                KTypeProjection kTypeProjection = (KTypeProjection) singleOrNull;
                if (kTypeProjection != null) {
                    KVariance component1 = kTypeProjection.component1();
                    KType component2 = kTypeProjection.component2();
                    int i4 = component1 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[component1.ordinal()];
                    if (i4 == -1 || i4 == 1) {
                        return javaObjectType;
                    }
                    if (i4 != 2 && i4 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Intrinsics.checkNotNull(component2);
                    Type computeJavaType$default = computeJavaType$default(component2, false, 1, null);
                    return computeJavaType$default instanceof Class ? javaObjectType : new GenericArrayTypeImpl(computeJavaType$default);
                }
                throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
            }
            return createPossiblyInnerType(javaObjectType, arguments);
        }
        throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
    }

    static /* synthetic */ Type computeJavaType$default(KType kType, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return computeJavaType(kType, z9);
    }

    @ExperimentalStdlibApi
    private static final Type createPossiblyInnerType(Class<?> cls, List<KTypeProjection> list) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
            for (KTypeProjection kTypeProjection : list) {
                arrayList.add(getJavaType(kTypeProjection));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        } else if (Modifier.isStatic(cls.getModifiers())) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (KTypeProjection kTypeProjection2 : list) {
                arrayList2.add(getJavaType(kTypeProjection2));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        } else {
            int length = cls.getTypeParameters().length;
            Type createPossiblyInnerType = createPossiblyInnerType(declaringClass, list.subList(length, list.size()));
            List<KTypeProjection> subList = list.subList(0, length);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(subList, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
            for (KTypeProjection kTypeProjection3 : subList) {
                arrayList3.add(getJavaType(kTypeProjection3));
            }
            return new ParameterizedTypeImpl(cls, createPossiblyInnerType, arrayList3);
        }
    }

    @g
    public static final Type getJavaType(@g KType kType) {
        Type javaType;
        Intrinsics.checkNotNullParameter(kType, "<this>");
        return (!(kType instanceof KTypeBase) || (javaType = ((KTypeBase) kType).getJavaType()) == null) ? computeJavaType$default(kType, false, 1, null) : javaType;
    }

    @LowPriorityInOverloadResolution
    @SinceKotlin(version = "1.4")
    @ExperimentalStdlibApi
    public static /* synthetic */ void getJavaType$annotations(KType kType) {
    }

    @ExperimentalStdlibApi
    private static /* synthetic */ void getJavaType$annotations(KTypeProjection kTypeProjection) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String typeToString(Type type) {
        String name;
        Sequence generateSequence;
        Object last;
        int count;
        String repeat;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                generateSequence = SequencesKt__SequencesKt.generateSequence(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
                StringBuilder sb = new StringBuilder();
                last = SequencesKt___SequencesKt.last(generateSequence);
                sb.append(((Class) last).getName());
                count = SequencesKt___SequencesKt.count(generateSequence);
                repeat = StringsKt__StringsJVMKt.repeat(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, count);
                sb.append(repeat);
                name = sb.toString();
            } else {
                name = cls.getName();
            }
            Intrinsics.checkNotNullExpressionValue(name, "{\n        if (type.isArr…   } else type.name\n    }");
            return name;
        }
        return type.toString();
    }

    private static final Type getJavaType(KTypeProjection kTypeProjection) {
        KVariance variance = kTypeProjection.getVariance();
        if (variance == null) {
            return WildcardTypeImpl.Companion.getSTAR();
        }
        KType type = kTypeProjection.getType();
        Intrinsics.checkNotNull(type);
        int i4 = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return new WildcardTypeImpl(computeJavaType(type, true), null);
                }
                throw new NoWhenBranchMatchedException();
            }
            return computeJavaType(type, true);
        }
        return new WildcardTypeImpl(null, computeJavaType(type, true));
    }
}
