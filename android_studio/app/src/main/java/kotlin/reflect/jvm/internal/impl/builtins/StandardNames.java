package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;

/* compiled from: StandardNames.kt */
/* loaded from: classes4.dex */
public final class StandardNames {
    @JvmField
    @g
    public static final FqName ANNOTATION_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final Name BACKING_FIELD;
    @JvmField
    @g
    public static final FqName BUILT_INS_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final Set<FqName> BUILT_INS_PACKAGE_FQ_NAMES;
    @JvmField
    @g
    public static final Name BUILT_INS_PACKAGE_NAME;
    @JvmField
    @g
    public static final Name CHAR_CODE;
    @JvmField
    @g
    public static final FqName COLLECTIONS_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final Name CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME;
    @JvmField
    @g
    public static final FqName CONTINUATION_INTERFACE_FQ_NAME;
    @JvmField
    @g
    public static final FqName COROUTINES_INTRINSICS_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final FqName COROUTINES_JVM_INTERNAL_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final FqName COROUTINES_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final Name DATA_CLASS_COPY;
    @JvmField
    @g
    public static final Name DEFAULT_VALUE_PARAMETER;
    @JvmField
    @g
    public static final Name ENUM_VALUES;
    @JvmField
    @g
    public static final Name ENUM_VALUE_OF;
    @JvmField
    @g
    public static final Name HASHCODE_NAME;
    @g
    public static final StandardNames INSTANCE = new StandardNames();
    @g
    private static final FqName KOTLIN_INTERNAL_FQ_NAME;
    @JvmField
    @g
    public static final FqName KOTLIN_REFLECT_FQ_NAME;
    @JvmField
    @g
    public static final List<String> PREFIXES;
    @JvmField
    @g
    public static final FqName RANGES_PACKAGE_FQ_NAME;
    @JvmField
    @g
    public static final FqName RESULT_FQ_NAME;
    @JvmField
    @g
    public static final FqName TEXT_PACKAGE_FQ_NAME;

    /* compiled from: StandardNames.kt */
    /* loaded from: classes4.dex */
    public static final class FqNames {
        @g
        public static final FqNames INSTANCE;
        @JvmField
        @g
        public static final FqNameUnsafe _boolean;
        @JvmField
        @g
        public static final FqNameUnsafe _byte;
        @JvmField
        @g
        public static final FqNameUnsafe _char;
        @JvmField
        @g
        public static final FqNameUnsafe _double;
        @JvmField
        @g
        public static final FqNameUnsafe _enum;
        @JvmField
        @g
        public static final FqNameUnsafe _float;
        @JvmField
        @g
        public static final FqNameUnsafe _int;
        @JvmField
        @g
        public static final FqNameUnsafe _long;
        @JvmField
        @g
        public static final FqNameUnsafe _short;
        @JvmField
        @g
        public static final FqName annotation;
        @JvmField
        @g
        public static final FqName annotationRetention;
        @JvmField
        @g
        public static final FqName annotationTarget;
        @JvmField
        @g
        public static final FqNameUnsafe any;
        @JvmField
        @g
        public static final FqNameUnsafe array;
        @JvmField
        @g
        public static final Map<FqNameUnsafe, PrimitiveType> arrayClassFqNameToPrimitiveType;
        @JvmField
        @g
        public static final FqNameUnsafe charSequence;
        @JvmField
        @g
        public static final FqNameUnsafe cloneable;
        @JvmField
        @g
        public static final FqName collection;
        @JvmField
        @g
        public static final FqName comparable;
        @JvmField
        @g
        public static final FqName contextFunctionTypeParams;
        @JvmField
        @g
        public static final FqName deprecated;
        @JvmField
        @g
        public static final FqName deprecatedSinceKotlin;
        @JvmField
        @g
        public static final FqName deprecationLevel;
        @JvmField
        @g
        public static final FqName extensionFunctionType;
        @JvmField
        @g
        public static final Map<FqNameUnsafe, PrimitiveType> fqNameToPrimitiveType;
        @JvmField
        @g
        public static final FqNameUnsafe functionSupertype;
        @JvmField
        @g
        public static final FqNameUnsafe intRange;
        @JvmField
        @g
        public static final FqName iterable;
        @JvmField
        @g
        public static final FqName iterator;
        @JvmField
        @g
        public static final FqNameUnsafe kCallable;
        @JvmField
        @g
        public static final FqNameUnsafe kClass;
        @JvmField
        @g
        public static final FqNameUnsafe kDeclarationContainer;
        @JvmField
        @g
        public static final FqNameUnsafe kMutableProperty0;
        @JvmField
        @g
        public static final FqNameUnsafe kMutableProperty1;
        @JvmField
        @g
        public static final FqNameUnsafe kMutableProperty2;
        @JvmField
        @g
        public static final FqNameUnsafe kMutablePropertyFqName;
        @JvmField
        @g
        public static final ClassId kProperty;
        @JvmField
        @g
        public static final FqNameUnsafe kProperty0;
        @JvmField
        @g
        public static final FqNameUnsafe kProperty1;
        @JvmField
        @g
        public static final FqNameUnsafe kProperty2;
        @JvmField
        @g
        public static final FqNameUnsafe kPropertyFqName;
        @JvmField
        @g
        public static final FqName list;
        @JvmField
        @g
        public static final FqName listIterator;
        @JvmField
        @g
        public static final FqNameUnsafe longRange;
        @JvmField
        @g
        public static final FqName map;
        @JvmField
        @g
        public static final FqName mapEntry;
        @JvmField
        @g
        public static final FqName mustBeDocumented;
        @JvmField
        @g
        public static final FqName mutableCollection;
        @JvmField
        @g
        public static final FqName mutableIterable;
        @JvmField
        @g
        public static final FqName mutableIterator;
        @JvmField
        @g
        public static final FqName mutableList;
        @JvmField
        @g
        public static final FqName mutableListIterator;
        @JvmField
        @g
        public static final FqName mutableMap;
        @JvmField
        @g
        public static final FqName mutableMapEntry;
        @JvmField
        @g
        public static final FqName mutableSet;
        @JvmField
        @g
        public static final FqNameUnsafe nothing;
        @JvmField
        @g
        public static final FqNameUnsafe number;
        @JvmField
        @g
        public static final FqName parameterName;
        @JvmField
        @g
        public static final ClassId parameterNameClassId;
        @JvmField
        @g
        public static final Set<Name> primitiveArrayTypeShortNames;
        @JvmField
        @g
        public static final Set<Name> primitiveTypeShortNames;
        @JvmField
        @g
        public static final FqName publishedApi;
        @JvmField
        @g
        public static final FqName repeatable;
        @JvmField
        @g
        public static final ClassId repeatableClassId;
        @JvmField
        @g
        public static final FqName replaceWith;
        @JvmField
        @g
        public static final FqName retention;
        @JvmField
        @g
        public static final ClassId retentionClassId;
        @JvmField
        @g
        public static final FqName set;
        @JvmField
        @g
        public static final FqNameUnsafe string;
        @JvmField
        @g
        public static final FqName suppress;
        @JvmField
        @g
        public static final FqName target;
        @JvmField
        @g
        public static final ClassId targetClassId;
        @JvmField
        @g
        public static final FqName throwable;
        @JvmField
        @g
        public static final ClassId uByte;
        @JvmField
        @g
        public static final FqName uByteArrayFqName;
        @JvmField
        @g
        public static final FqName uByteFqName;
        @JvmField
        @g
        public static final ClassId uInt;
        @JvmField
        @g
        public static final FqName uIntArrayFqName;
        @JvmField
        @g
        public static final FqName uIntFqName;
        @JvmField
        @g
        public static final ClassId uLong;
        @JvmField
        @g
        public static final FqName uLongArrayFqName;
        @JvmField
        @g
        public static final FqName uLongFqName;
        @JvmField
        @g
        public static final ClassId uShort;
        @JvmField
        @g
        public static final FqName uShortArrayFqName;
        @JvmField
        @g
        public static final FqName uShortFqName;
        @JvmField
        @g
        public static final FqNameUnsafe unit;
        @JvmField
        @g
        public static final FqName unsafeVariance;

        static {
            PrimitiveType[] values;
            PrimitiveType[] values2;
            FqNames fqNames = new FqNames();
            INSTANCE = fqNames;
            any = fqNames.fqNameUnsafe("Any");
            nothing = fqNames.fqNameUnsafe("Nothing");
            cloneable = fqNames.fqNameUnsafe("Cloneable");
            suppress = fqNames.fqName("Suppress");
            unit = fqNames.fqNameUnsafe("Unit");
            charSequence = fqNames.fqNameUnsafe("CharSequence");
            string = fqNames.fqNameUnsafe("String");
            array = fqNames.fqNameUnsafe("Array");
            _boolean = fqNames.fqNameUnsafe("Boolean");
            _char = fqNames.fqNameUnsafe("Char");
            _byte = fqNames.fqNameUnsafe("Byte");
            _short = fqNames.fqNameUnsafe("Short");
            _int = fqNames.fqNameUnsafe("Int");
            _long = fqNames.fqNameUnsafe("Long");
            _float = fqNames.fqNameUnsafe("Float");
            _double = fqNames.fqNameUnsafe("Double");
            number = fqNames.fqNameUnsafe("Number");
            _enum = fqNames.fqNameUnsafe("Enum");
            functionSupertype = fqNames.fqNameUnsafe("Function");
            throwable = fqNames.fqName("Throwable");
            comparable = fqNames.fqName("Comparable");
            intRange = fqNames.rangesFqName("IntRange");
            longRange = fqNames.rangesFqName("LongRange");
            deprecated = fqNames.fqName("Deprecated");
            deprecatedSinceKotlin = fqNames.fqName("DeprecatedSinceKotlin");
            deprecationLevel = fqNames.fqName("DeprecationLevel");
            replaceWith = fqNames.fqName("ReplaceWith");
            extensionFunctionType = fqNames.fqName("ExtensionFunctionType");
            contextFunctionTypeParams = fqNames.fqName("ContextFunctionTypeParams");
            FqName fqName = fqNames.fqName("ParameterName");
            parameterName = fqName;
            ClassId classId = ClassId.topLevel(fqName);
            Intrinsics.checkNotNullExpressionValue(classId, "topLevel(parameterName)");
            parameterNameClassId = classId;
            annotation = fqNames.fqName("Annotation");
            FqName annotationName = fqNames.annotationName("Target");
            target = annotationName;
            ClassId classId2 = ClassId.topLevel(annotationName);
            Intrinsics.checkNotNullExpressionValue(classId2, "topLevel(target)");
            targetClassId = classId2;
            annotationTarget = fqNames.annotationName("AnnotationTarget");
            annotationRetention = fqNames.annotationName("AnnotationRetention");
            FqName annotationName2 = fqNames.annotationName("Retention");
            retention = annotationName2;
            ClassId classId3 = ClassId.topLevel(annotationName2);
            Intrinsics.checkNotNullExpressionValue(classId3, "topLevel(retention)");
            retentionClassId = classId3;
            FqName annotationName3 = fqNames.annotationName("Repeatable");
            repeatable = annotationName3;
            ClassId classId4 = ClassId.topLevel(annotationName3);
            Intrinsics.checkNotNullExpressionValue(classId4, "topLevel(repeatable)");
            repeatableClassId = classId4;
            mustBeDocumented = fqNames.annotationName("MustBeDocumented");
            unsafeVariance = fqNames.fqName("UnsafeVariance");
            publishedApi = fqNames.fqName("PublishedApi");
            iterator = fqNames.collectionsFqName("Iterator");
            iterable = fqNames.collectionsFqName("Iterable");
            collection = fqNames.collectionsFqName("Collection");
            list = fqNames.collectionsFqName("List");
            listIterator = fqNames.collectionsFqName("ListIterator");
            set = fqNames.collectionsFqName("Set");
            FqName collectionsFqName = fqNames.collectionsFqName("Map");
            map = collectionsFqName;
            FqName child = collectionsFqName.child(Name.identifier("Entry"));
            Intrinsics.checkNotNullExpressionValue(child, "map.child(Name.identifier(\"Entry\"))");
            mapEntry = child;
            mutableIterator = fqNames.collectionsFqName("MutableIterator");
            mutableIterable = fqNames.collectionsFqName("MutableIterable");
            mutableCollection = fqNames.collectionsFqName("MutableCollection");
            mutableList = fqNames.collectionsFqName("MutableList");
            mutableListIterator = fqNames.collectionsFqName("MutableListIterator");
            mutableSet = fqNames.collectionsFqName("MutableSet");
            FqName collectionsFqName2 = fqNames.collectionsFqName("MutableMap");
            mutableMap = collectionsFqName2;
            FqName child2 = collectionsFqName2.child(Name.identifier("MutableEntry"));
            Intrinsics.checkNotNullExpressionValue(child2, "mutableMap.child(Name.identifier(\"MutableEntry\"))");
            mutableMapEntry = child2;
            kClass = reflect("KClass");
            kCallable = reflect("KCallable");
            kProperty0 = reflect("KProperty0");
            kProperty1 = reflect("KProperty1");
            kProperty2 = reflect("KProperty2");
            kMutableProperty0 = reflect("KMutableProperty0");
            kMutableProperty1 = reflect("KMutableProperty1");
            kMutableProperty2 = reflect("KMutableProperty2");
            FqNameUnsafe reflect = reflect("KProperty");
            kPropertyFqName = reflect;
            kMutablePropertyFqName = reflect("KMutableProperty");
            ClassId classId5 = ClassId.topLevel(reflect.toSafe());
            Intrinsics.checkNotNullExpressionValue(classId5, "topLevel(kPropertyFqName.toSafe())");
            kProperty = classId5;
            kDeclarationContainer = reflect("KDeclarationContainer");
            FqName fqName2 = fqNames.fqName("UByte");
            uByteFqName = fqName2;
            FqName fqName3 = fqNames.fqName("UShort");
            uShortFqName = fqName3;
            FqName fqName4 = fqNames.fqName("UInt");
            uIntFqName = fqName4;
            FqName fqName5 = fqNames.fqName("ULong");
            uLongFqName = fqName5;
            ClassId classId6 = ClassId.topLevel(fqName2);
            Intrinsics.checkNotNullExpressionValue(classId6, "topLevel(uByteFqName)");
            uByte = classId6;
            ClassId classId7 = ClassId.topLevel(fqName3);
            Intrinsics.checkNotNullExpressionValue(classId7, "topLevel(uShortFqName)");
            uShort = classId7;
            ClassId classId8 = ClassId.topLevel(fqName4);
            Intrinsics.checkNotNullExpressionValue(classId8, "topLevel(uIntFqName)");
            uInt = classId8;
            ClassId classId9 = ClassId.topLevel(fqName5);
            Intrinsics.checkNotNullExpressionValue(classId9, "topLevel(uLongFqName)");
            uLong = classId9;
            uByteArrayFqName = fqNames.fqName("UByteArray");
            uShortArrayFqName = fqNames.fqName("UShortArray");
            uIntArrayFqName = fqNames.fqName("UIntArray");
            uLongArrayFqName = fqNames.fqName("ULongArray");
            HashSet newHashSetWithExpectedSize = CollectionsKt.newHashSetWithExpectedSize(PrimitiveType.values().length);
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                newHashSetWithExpectedSize.add(primitiveType.getTypeName());
            }
            primitiveTypeShortNames = newHashSetWithExpectedSize;
            HashSet newHashSetWithExpectedSize2 = CollectionsKt.newHashSetWithExpectedSize(PrimitiveType.values().length);
            for (PrimitiveType primitiveType2 : PrimitiveType.values()) {
                newHashSetWithExpectedSize2.add(primitiveType2.getArrayTypeName());
            }
            primitiveArrayTypeShortNames = newHashSetWithExpectedSize2;
            HashMap newHashMapWithExpectedSize = CollectionsKt.newHashMapWithExpectedSize(PrimitiveType.values().length);
            for (PrimitiveType primitiveType3 : PrimitiveType.values()) {
                FqNames fqNames2 = INSTANCE;
                String asString = primitiveType3.getTypeName().asString();
                Intrinsics.checkNotNullExpressionValue(asString, "primitiveType.typeName.asString()");
                newHashMapWithExpectedSize.put(fqNames2.fqNameUnsafe(asString), primitiveType3);
            }
            fqNameToPrimitiveType = newHashMapWithExpectedSize;
            HashMap newHashMapWithExpectedSize2 = CollectionsKt.newHashMapWithExpectedSize(PrimitiveType.values().length);
            for (PrimitiveType primitiveType4 : PrimitiveType.values()) {
                FqNames fqNames3 = INSTANCE;
                String asString2 = primitiveType4.getArrayTypeName().asString();
                Intrinsics.checkNotNullExpressionValue(asString2, "primitiveType.arrayTypeName.asString()");
                newHashMapWithExpectedSize2.put(fqNames3.fqNameUnsafe(asString2), primitiveType4);
            }
            arrayClassFqNameToPrimitiveType = newHashMapWithExpectedSize2;
        }

        private FqNames() {
        }

        private final FqName annotationName(String str) {
            FqName child = StandardNames.ANNOTATION_PACKAGE_FQ_NAME.child(Name.identifier(str));
            Intrinsics.checkNotNullExpressionValue(child, "ANNOTATION_PACKAGE_FQ_NA…e.identifier(simpleName))");
            return child;
        }

        private final FqName collectionsFqName(String str) {
            FqName child = StandardNames.COLLECTIONS_PACKAGE_FQ_NAME.child(Name.identifier(str));
            Intrinsics.checkNotNullExpressionValue(child, "COLLECTIONS_PACKAGE_FQ_N…e.identifier(simpleName))");
            return child;
        }

        private final FqName fqName(String str) {
            FqName child = StandardNames.BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(str));
            Intrinsics.checkNotNullExpressionValue(child, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(simpleName))");
            return child;
        }

        private final FqNameUnsafe fqNameUnsafe(String str) {
            FqNameUnsafe unsafe = fqName(str).toUnsafe();
            Intrinsics.checkNotNullExpressionValue(unsafe, "fqName(simpleName).toUnsafe()");
            return unsafe;
        }

        private final FqNameUnsafe rangesFqName(String str) {
            FqNameUnsafe unsafe = StandardNames.RANGES_PACKAGE_FQ_NAME.child(Name.identifier(str)).toUnsafe();
            Intrinsics.checkNotNullExpressionValue(unsafe, "RANGES_PACKAGE_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return unsafe;
        }

        @JvmStatic
        @g
        public static final FqNameUnsafe reflect(@g String simpleName) {
            Intrinsics.checkNotNullParameter(simpleName, "simpleName");
            FqNameUnsafe unsafe = StandardNames.KOTLIN_REFLECT_FQ_NAME.child(Name.identifier(simpleName)).toUnsafe();
            Intrinsics.checkNotNullExpressionValue(unsafe, "KOTLIN_REFLECT_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return unsafe;
        }
    }

    static {
        List<String> listOf;
        Set<FqName> of;
        Name identifier = Name.identifier("field");
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"field\")");
        BACKING_FIELD = identifier;
        Name identifier2 = Name.identifier("value");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(\"value\")");
        DEFAULT_VALUE_PARAMETER = identifier2;
        Name identifier3 = Name.identifier("values");
        Intrinsics.checkNotNullExpressionValue(identifier3, "identifier(\"values\")");
        ENUM_VALUES = identifier3;
        Name identifier4 = Name.identifier("valueOf");
        Intrinsics.checkNotNullExpressionValue(identifier4, "identifier(\"valueOf\")");
        ENUM_VALUE_OF = identifier4;
        Name identifier5 = Name.identifier("copy");
        Intrinsics.checkNotNullExpressionValue(identifier5, "identifier(\"copy\")");
        DATA_CLASS_COPY = identifier5;
        Name identifier6 = Name.identifier("hashCode");
        Intrinsics.checkNotNullExpressionValue(identifier6, "identifier(\"hashCode\")");
        HASHCODE_NAME = identifier6;
        Name identifier7 = Name.identifier("code");
        Intrinsics.checkNotNullExpressionValue(identifier7, "identifier(\"code\")");
        CHAR_CODE = identifier7;
        Name identifier8 = Name.identifier("count");
        Intrinsics.checkNotNullExpressionValue(identifier8, "identifier(\"count\")");
        CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME = identifier8;
        FqName fqName = new FqName("kotlin.coroutines");
        COROUTINES_PACKAGE_FQ_NAME = fqName;
        COROUTINES_JVM_INTERNAL_PACKAGE_FQ_NAME = new FqName("kotlin.coroutines.jvm.internal");
        COROUTINES_INTRINSICS_PACKAGE_FQ_NAME = new FqName("kotlin.coroutines.intrinsics");
        FqName child = fqName.child(Name.identifier("Continuation"));
        Intrinsics.checkNotNullExpressionValue(child, "COROUTINES_PACKAGE_FQ_NA…entifier(\"Continuation\"))");
        CONTINUATION_INTERFACE_FQ_NAME = child;
        RESULT_FQ_NAME = new FqName("kotlin.Result");
        FqName fqName2 = new FqName("kotlin.reflect");
        KOTLIN_REFLECT_FQ_NAME = fqName2;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"KProperty", "KMutableProperty", "KFunction", "KSuspendFunction"});
        PREFIXES = listOf;
        Name identifier9 = Name.identifier("kotlin");
        Intrinsics.checkNotNullExpressionValue(identifier9, "identifier(\"kotlin\")");
        BUILT_INS_PACKAGE_NAME = identifier9;
        FqName fqName3 = FqName.topLevel(identifier9);
        Intrinsics.checkNotNullExpressionValue(fqName3, "topLevel(BUILT_INS_PACKAGE_NAME)");
        BUILT_INS_PACKAGE_FQ_NAME = fqName3;
        FqName child2 = fqName3.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child2, "BUILT_INS_PACKAGE_FQ_NAM…identifier(\"annotation\"))");
        ANNOTATION_PACKAGE_FQ_NAME = child2;
        FqName child3 = fqName3.child(Name.identifier("collections"));
        Intrinsics.checkNotNullExpressionValue(child3, "BUILT_INS_PACKAGE_FQ_NAM…dentifier(\"collections\"))");
        COLLECTIONS_PACKAGE_FQ_NAME = child3;
        FqName child4 = fqName3.child(Name.identifier("ranges"));
        Intrinsics.checkNotNullExpressionValue(child4, "BUILT_INS_PACKAGE_FQ_NAM…ame.identifier(\"ranges\"))");
        RANGES_PACKAGE_FQ_NAME = child4;
        FqName child5 = fqName3.child(Name.identifier("text"));
        Intrinsics.checkNotNullExpressionValue(child5, "BUILT_INS_PACKAGE_FQ_NAM…(Name.identifier(\"text\"))");
        TEXT_PACKAGE_FQ_NAME = child5;
        FqName child6 = fqName3.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child6, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(\"internal\"))");
        KOTLIN_INTERNAL_FQ_NAME = child6;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{fqName3, child3, child4, child2, fqName2, child6, fqName});
        BUILT_INS_PACKAGE_FQ_NAMES = of;
    }

    private StandardNames() {
    }

    @JvmStatic
    @g
    public static final ClassId getFunctionClassId(int i4) {
        return new ClassId(BUILT_INS_PACKAGE_FQ_NAME, Name.identifier(getFunctionName(i4)));
    }

    @JvmStatic
    @g
    public static final String getFunctionName(int i4) {
        return "Function" + i4;
    }

    @JvmStatic
    @g
    public static final FqName getPrimitiveFqName(@g PrimitiveType primitiveType) {
        Intrinsics.checkNotNullParameter(primitiveType, "primitiveType");
        FqName child = BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.getTypeName());
        Intrinsics.checkNotNullExpressionValue(child, "BUILT_INS_PACKAGE_FQ_NAM…d(primitiveType.typeName)");
        return child;
    }

    @JvmStatic
    @g
    public static final String getSuspendFunctionName(int i4) {
        return FunctionClassKind.SuspendFunction.getClassNamePrefix() + i4;
    }

    @JvmStatic
    public static final boolean isPrimitiveArray(@g FqNameUnsafe arrayFqName) {
        Intrinsics.checkNotNullParameter(arrayFqName, "arrayFqName");
        return FqNames.arrayClassFqNameToPrimitiveType.get(arrayFqName) != null;
    }
}
