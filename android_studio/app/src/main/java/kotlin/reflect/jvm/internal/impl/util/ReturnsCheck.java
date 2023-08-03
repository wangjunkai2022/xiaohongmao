package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.util.Check;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public abstract class ReturnsCheck implements Check {
    @g
    private final String description;
    @g
    private final String name;
    @g
    private final Function1<KotlinBuiltIns, KotlinType> type;

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class ReturnsBoolean extends ReturnsCheck {
        @g
        public static final ReturnsBoolean INSTANCE = new ReturnsBoolean();

        /* compiled from: modifierChecks.kt */
        /* renamed from: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsBoolean$1  reason: invalid class name */
        /* loaded from: classes4.dex */
        static final class AnonymousClass1 extends Lambda implements Function1<KotlinBuiltIns, KotlinType> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @g
            public final KotlinType invoke(@g KotlinBuiltIns kotlinBuiltIns) {
                Intrinsics.checkNotNullParameter(kotlinBuiltIns, "$this$null");
                SimpleType booleanType = kotlinBuiltIns.getBooleanType();
                Intrinsics.checkNotNullExpressionValue(booleanType, "booleanType");
                return booleanType;
            }
        }

        private ReturnsBoolean() {
            super("Boolean", AnonymousClass1.INSTANCE, null);
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class ReturnsInt extends ReturnsCheck {
        @g
        public static final ReturnsInt INSTANCE = new ReturnsInt();

        /* compiled from: modifierChecks.kt */
        /* renamed from: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsInt$1  reason: invalid class name */
        /* loaded from: classes4.dex */
        static final class AnonymousClass1 extends Lambda implements Function1<KotlinBuiltIns, KotlinType> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @g
            public final KotlinType invoke(@g KotlinBuiltIns kotlinBuiltIns) {
                Intrinsics.checkNotNullParameter(kotlinBuiltIns, "$this$null");
                SimpleType intType = kotlinBuiltIns.getIntType();
                Intrinsics.checkNotNullExpressionValue(intType, "intType");
                return intType;
            }
        }

        private ReturnsInt() {
            super("Int", AnonymousClass1.INSTANCE, null);
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class ReturnsUnit extends ReturnsCheck {
        @g
        public static final ReturnsUnit INSTANCE = new ReturnsUnit();

        /* compiled from: modifierChecks.kt */
        /* renamed from: kotlin.reflect.jvm.internal.impl.util.ReturnsCheck$ReturnsUnit$1  reason: invalid class name */
        /* loaded from: classes4.dex */
        static final class AnonymousClass1 extends Lambda implements Function1<KotlinBuiltIns, KotlinType> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @g
            public final KotlinType invoke(@g KotlinBuiltIns kotlinBuiltIns) {
                Intrinsics.checkNotNullParameter(kotlinBuiltIns, "$this$null");
                SimpleType unitType = kotlinBuiltIns.getUnitType();
                Intrinsics.checkNotNullExpressionValue(unitType, "unitType");
                return unitType;
            }
        }

        private ReturnsUnit() {
            super("Unit", AnonymousClass1.INSTANCE, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ReturnsCheck(String str, Function1<? super KotlinBuiltIns, ? extends KotlinType> function1) {
        this.name = str;
        this.type = function1;
        this.description = "must return " + str;
    }

    public /* synthetic */ ReturnsCheck(String str, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean check(@g FunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        return Intrinsics.areEqual(functionDescriptor.getReturnType(), this.type.invoke(DescriptorUtilsKt.getBuiltIns(functionDescriptor)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @g
    public String getDescription() {
        return this.description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @h
    public String invoke(@g FunctionDescriptor functionDescriptor) {
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }
}
