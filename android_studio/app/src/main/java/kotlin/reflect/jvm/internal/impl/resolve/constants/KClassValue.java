package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: constantValues.kt */
/* loaded from: classes4.dex */
public final class KClassValue extends ConstantValue<Value> {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: constantValues.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @h
        public final ConstantValue<?> create(@g KotlinType argumentType) {
            Object single;
            Intrinsics.checkNotNullParameter(argumentType, "argumentType");
            if (KotlinTypeKt.isError(argumentType)) {
                return null;
            }
            KotlinType kotlinType = argumentType;
            int i4 = 0;
            while (KotlinBuiltIns.isArray(kotlinType)) {
                single = CollectionsKt___CollectionsKt.single((List<? extends Object>) kotlinType.getArguments());
                kotlinType = ((TypeProjection) single).getType();
                Intrinsics.checkNotNullExpressionValue(kotlinType, "type.arguments.single().type");
                i4++;
            }
            ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof ClassDescriptor) {
                ClassId classId = DescriptorUtilsKt.getClassId(declarationDescriptor);
                return classId == null ? new KClassValue(new Value.LocalClass(argumentType)) : new KClassValue(classId, i4);
            } else if (declarationDescriptor instanceof TypeParameterDescriptor) {
                ClassId classId2 = ClassId.topLevel(StandardNames.FqNames.any.toSafe());
                Intrinsics.checkNotNullExpressionValue(classId2, "topLevel(StandardNames.FqNames.any.toSafe())");
                return new KClassValue(classId2, 0);
            } else {
                return null;
            }
        }
    }

    /* compiled from: constantValues.kt */
    /* loaded from: classes4.dex */
    public static abstract class Value {

        /* compiled from: constantValues.kt */
        /* loaded from: classes4.dex */
        public static final class LocalClass extends Value {
            @g
            private final KotlinType type;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LocalClass(@g KotlinType type) {
                super(null);
                Intrinsics.checkNotNullParameter(type, "type");
                this.type = type;
            }

            public boolean equals(@h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LocalClass) && Intrinsics.areEqual(this.type, ((LocalClass) obj).type);
            }

            @g
            public final KotlinType getType() {
                return this.type;
            }

            public int hashCode() {
                return this.type.hashCode();
            }

            @g
            public String toString() {
                return "LocalClass(type=" + this.type + ')';
            }
        }

        /* compiled from: constantValues.kt */
        /* loaded from: classes4.dex */
        public static final class NormalClass extends Value {
            @g
            private final ClassLiteralValue value;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NormalClass(@g ClassLiteralValue value) {
                super(null);
                Intrinsics.checkNotNullParameter(value, "value");
                this.value = value;
            }

            public boolean equals(@h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NormalClass) && Intrinsics.areEqual(this.value, ((NormalClass) obj).value);
            }

            public final int getArrayDimensions() {
                return this.value.getArrayNestedness();
            }

            @g
            public final ClassId getClassId() {
                return this.value.getClassId();
            }

            @g
            public final ClassLiteralValue getValue() {
                return this.value;
            }

            public int hashCode() {
                return this.value.hashCode();
            }

            @g
            public String toString() {
                return "NormalClass(value=" + this.value + ')';
            }
        }

        private Value() {
        }

        public /* synthetic */ Value(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassValue(@g Value value) {
        super(value);
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @g
    public final KotlinType getArgumentType(@g ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        Value value = getValue();
        if (value instanceof Value.LocalClass) {
            return ((Value.LocalClass) getValue()).getType();
        }
        if (value instanceof Value.NormalClass) {
            ClassLiteralValue value2 = ((Value.NormalClass) getValue()).getValue();
            ClassId component1 = value2.component1();
            int component2 = value2.component2();
            ClassDescriptor findClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, component1);
            if (findClassAcrossModuleDependencies == null) {
                ErrorTypeKind errorTypeKind = ErrorTypeKind.UNRESOLVED_KCLASS_CONSTANT_VALUE;
                String classId = component1.toString();
                Intrinsics.checkNotNullExpressionValue(classId, "classId.toString()");
                return ErrorUtils.createErrorType(errorTypeKind, classId, String.valueOf(component2));
            }
            SimpleType defaultType = findClassAcrossModuleDependencies.getDefaultType();
            Intrinsics.checkNotNullExpressionValue(defaultType, "descriptor.defaultType");
            KotlinType replaceArgumentsWithStarProjections = TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType);
            for (int i4 = 0; i4 < component2; i4++) {
                replaceArgumentsWithStarProjections = module.getBuiltIns().getArrayType(Variance.INVARIANT, replaceArgumentsWithStarProjections);
                Intrinsics.checkNotNullExpressionValue(replaceArgumentsWithStarProjections, "module.builtIns.getArray…Variance.INVARIANT, type)");
            }
            return replaceArgumentsWithStarProjections;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    @g
    public KotlinType getType(@g ModuleDescriptor module) {
        List listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        TypeAttributes empty = TypeAttributes.Companion.getEmpty();
        ClassDescriptor kClass = module.getBuiltIns().getKClass();
        Intrinsics.checkNotNullExpressionValue(kClass, "module.builtIns.kClass");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new TypeProjectionImpl(getArgumentType(module)));
        return KotlinTypeFactory.simpleNotNullType(empty, kClass, listOf);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KClassValue(@g ClassLiteralValue value) {
        this(new Value.NormalClass(value));
        Intrinsics.checkNotNullParameter(value, "value");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KClassValue(@g ClassId classId, int i4) {
        this(new ClassLiteralValue(classId, i4));
        Intrinsics.checkNotNullParameter(classId, "classId");
    }
}
