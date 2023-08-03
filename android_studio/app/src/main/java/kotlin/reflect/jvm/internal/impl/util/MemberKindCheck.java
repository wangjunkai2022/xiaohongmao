package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.util.Check;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public abstract class MemberKindCheck implements Check {
    @g
    private final String description;

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class Member extends MemberKindCheck {
        @g
        public static final Member INSTANCE = new Member();

        private Member() {
            super("must be a member function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getDispatchReceiverParameter() != null;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class MemberOrExtension extends MemberKindCheck {
        @g
        public static final MemberOrExtension INSTANCE = new MemberOrExtension();

        private MemberOrExtension() {
            super("must be a member or an extension function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.getDispatchReceiverParameter() == null && functionDescriptor.getExtensionReceiverParameter() == null) ? false : true;
        }
    }

    private MemberKindCheck(String str) {
        this.description = str;
    }

    public /* synthetic */ MemberKindCheck(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
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
