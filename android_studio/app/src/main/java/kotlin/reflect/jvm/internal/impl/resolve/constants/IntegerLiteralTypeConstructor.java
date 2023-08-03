package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* compiled from: IntegerLiteralTypeConstructor.kt */
/* loaded from: classes4.dex */
public final class IntegerLiteralTypeConstructor implements TypeConstructor {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final ModuleDescriptor module;
    @g
    private final Set<KotlinType> possibleTypes;
    @g
    private final Lazy supertypes$delegate;
    @g
    private final SimpleType type;
    private final long value;

    /* JADX WARN: Multi-variable type inference failed */
    private IntegerLiteralTypeConstructor(long j4, ModuleDescriptor moduleDescriptor, Set<? extends KotlinType> set) {
        Lazy lazy;
        this.type = KotlinTypeFactory.integerLiteralType(TypeAttributes.Companion.getEmpty(), this, false);
        lazy = LazyKt__LazyJVMKt.lazy(new IntegerLiteralTypeConstructor$supertypes$2(this));
        this.supertypes$delegate = lazy;
        this.value = j4;
        this.module = moduleDescriptor;
        this.possibleTypes = set;
    }

    public /* synthetic */ IntegerLiteralTypeConstructor(long j4, ModuleDescriptor moduleDescriptor, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, moduleDescriptor, set);
    }

    private final List<KotlinType> getSupertypes() {
        return (List) this.supertypes$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isContainsOnlyUnsignedTypes() {
        Collection<KotlinType> allSignedLiteralTypes = PrimitiveTypeUtilKt.getAllSignedLiteralTypes(this.module);
        if ((allSignedLiteralTypes instanceof Collection) && allSignedLiteralTypes.isEmpty()) {
            return true;
        }
        for (KotlinType kotlinType : allSignedLiteralTypes) {
            if (!(!this.possibleTypes.contains(kotlinType))) {
                return false;
            }
        }
        return true;
    }

    private final String valueToString() {
        String joinToString$default;
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.possibleTypes, ",", null, null, 0, null, IntegerLiteralTypeConstructor$valueToString$1.INSTANCE, 30, null);
        sb.append(joinToString$default);
        sb.append(']');
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public KotlinBuiltIns getBuiltIns() {
        return this.module.getBuiltIns();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @h
    public ClassifierDescriptor getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public List<TypeParameterDescriptor> getParameters() {
        List<TypeParameterDescriptor> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @g
    public final Set<KotlinType> getPossibleTypes() {
        return this.possibleTypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @g
    public String toString() {
        return "IntegerLiteralType" + valueToString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    /* renamed from: getSupertypes  reason: collision with other method in class */
    public Collection<KotlinType> mo1364getSupertypes() {
        return getSupertypes();
    }

    /* compiled from: IntegerLiteralTypeConstructor.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IntegerLiteralTypeConstructor.kt */
        /* loaded from: classes4.dex */
        public enum Mode {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        /* compiled from: IntegerLiteralTypeConstructor.kt */
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Mode.values().length];
                iArr[Mode.COMMON_SUPER_TYPE.ordinal()] = 1;
                iArr[Mode.INTERSECTION_TYPE.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final SimpleType findCommonSuperTypeOrIntersectionType(Collection<? extends SimpleType> collection, Mode mode) {
            if (collection.isEmpty()) {
                return null;
            }
            Iterator<T> it = collection.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                while (it.hasNext()) {
                    Companion companion = IntegerLiteralTypeConstructor.Companion;
                    next = companion.fold((SimpleType) next, (SimpleType) it.next(), mode);
                }
                return (SimpleType) next;
            }
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }

        private final SimpleType fold(SimpleType simpleType, SimpleType simpleType2, Mode mode) {
            if (simpleType == null || simpleType2 == null) {
                return null;
            }
            TypeConstructor constructor = simpleType.getConstructor();
            TypeConstructor constructor2 = simpleType2.getConstructor();
            boolean z9 = constructor instanceof IntegerLiteralTypeConstructor;
            if (z9 && (constructor2 instanceof IntegerLiteralTypeConstructor)) {
                return fold((IntegerLiteralTypeConstructor) constructor, (IntegerLiteralTypeConstructor) constructor2, mode);
            }
            if (z9) {
                return fold((IntegerLiteralTypeConstructor) constructor, simpleType2);
            }
            if (constructor2 instanceof IntegerLiteralTypeConstructor) {
                return fold((IntegerLiteralTypeConstructor) constructor2, simpleType);
            }
            return null;
        }

        @h
        public final SimpleType findIntersectionType(@g Collection<? extends SimpleType> types) {
            Intrinsics.checkNotNullParameter(types, "types");
            return findCommonSuperTypeOrIntersectionType(types, Mode.INTERSECTION_TYPE);
        }

        private final SimpleType fold(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, IntegerLiteralTypeConstructor integerLiteralTypeConstructor2, Mode mode) {
            Set intersect;
            int i4 = WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
            if (i4 == 1) {
                intersect = CollectionsKt___CollectionsKt.intersect(integerLiteralTypeConstructor.getPossibleTypes(), integerLiteralTypeConstructor2.getPossibleTypes());
            } else if (i4 != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                intersect = CollectionsKt___CollectionsKt.union(integerLiteralTypeConstructor.getPossibleTypes(), integerLiteralTypeConstructor2.getPossibleTypes());
            }
            return KotlinTypeFactory.integerLiteralType(TypeAttributes.Companion.getEmpty(), new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.value, integerLiteralTypeConstructor.module, intersect, null), false);
        }

        private final SimpleType fold(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, SimpleType simpleType) {
            if (integerLiteralTypeConstructor.getPossibleTypes().contains(simpleType)) {
                return simpleType;
            }
            return null;
        }
    }
}
