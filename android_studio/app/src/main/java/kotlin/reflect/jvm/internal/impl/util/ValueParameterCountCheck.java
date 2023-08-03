package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.util.Check;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public abstract class ValueParameterCountCheck implements Check {
    @g
    private final String description;

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class AtLeast extends ValueParameterCountCheck {

        /* renamed from: n  reason: collision with root package name */
        private final int f84771n;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public AtLeast(int r3) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "must have at least "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " value parameter"
                r0.append(r1)
                r1 = 1
                if (r3 <= r1) goto L18
                java.lang.String r1 = "s"
                goto L1a
            L18:
                java.lang.String r1 = ""
            L1a:
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r1 = 0
                r2.<init>(r0, r1)
                r2.f84771n = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.ValueParameterCountCheck.AtLeast.<init>(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() >= this.f84771n;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class Equals extends ValueParameterCountCheck {

        /* renamed from: n  reason: collision with root package name */
        private final int f84772n;

        public Equals(int i4) {
            super("must have exactly " + i4 + " value parameters", null);
            this.f84772n = i4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == this.f84772n;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class NoValueParameters extends ValueParameterCountCheck {
        @g
        public static final NoValueParameters INSTANCE = new NoValueParameters();

        private NoValueParameters() {
            super("must have no value parameters", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().isEmpty();
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class SingleValueParameter extends ValueParameterCountCheck {
        @g
        public static final SingleValueParameter INSTANCE = new SingleValueParameter();

        private SingleValueParameter() {
            super("must have a single value parameter", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == 1;
        }
    }

    private ValueParameterCountCheck(String str) {
        this.description = str;
    }

    public /* synthetic */ ValueParameterCountCheck(String str, DefaultConstructorMarker defaultConstructorMarker) {
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
