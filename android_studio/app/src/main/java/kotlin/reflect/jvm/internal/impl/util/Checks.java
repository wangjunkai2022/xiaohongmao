package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.CheckResult;
import kotlin.text.Regex;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public final class Checks {
    @g
    private final Function1<FunctionDescriptor, String> additionalCheck;
    @g
    private final Check[] checks;
    @h
    private final Name name;
    @h
    private final Collection<Name> nameList;
    @h
    private final Regex regex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: modifierChecks.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass2 extends Lambda implements Function1 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Void invoke(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "$this$null");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: modifierChecks.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass3 extends Lambda implements Function1 {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Void invoke(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "$this$null");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: modifierChecks.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.util.Checks$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass4 extends Lambda implements Function1 {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        AnonymousClass4() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Void invoke(@g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "$this$null");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Checks(Name name, Regex regex, Collection<Name> collection, Function1<? super FunctionDescriptor, String> function1, Check... checkArr) {
        this.name = name;
        this.regex = regex;
        this.nameList = collection;
        this.additionalCheck = function1;
        this.checks = checkArr;
    }

    @g
    public final CheckResult checkAll(@g FunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        for (Check check : this.checks) {
            String invoke = check.invoke(functionDescriptor);
            if (invoke != null) {
                return new CheckResult.IllegalSignature(invoke);
            }
        }
        String invoke2 = this.additionalCheck.invoke(functionDescriptor);
        if (invoke2 != null) {
            return new CheckResult.IllegalSignature(invoke2);
        }
        return CheckResult.SuccessCheck.INSTANCE;
    }

    public final boolean isApplicable(@g FunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        if (this.name == null || Intrinsics.areEqual(functionDescriptor.getName(), this.name)) {
            if (this.regex != null) {
                String asString = functionDescriptor.getName().asString();
                Intrinsics.checkNotNullExpressionValue(asString, "functionDescriptor.name.asString()");
                if (!this.regex.matches(asString)) {
                    return false;
                }
            }
            Collection<Name> collection = this.nameList;
            return collection == null || collection.contains(functionDescriptor.getName());
        }
        return false;
    }

    public /* synthetic */ Checks(Name name, Check[] checkArr, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(name, checkArr, (i4 & 4) != 0 ? AnonymousClass2.INSTANCE : function1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(@g Name name, @g Check[] checks, @g Function1<? super FunctionDescriptor, String> additionalChecks) {
        this(name, (Regex) null, (Collection<Name>) null, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(checks, "checks");
        Intrinsics.checkNotNullParameter(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ Checks(Regex regex, Check[] checkArr, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(regex, checkArr, (i4 & 4) != 0 ? AnonymousClass3.INSTANCE : function1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(@g Regex regex, @g Check[] checks, @g Function1<? super FunctionDescriptor, String> additionalChecks) {
        this((Name) null, regex, (Collection<Name>) null, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkNotNullParameter(regex, "regex");
        Intrinsics.checkNotNullParameter(checks, "checks");
        Intrinsics.checkNotNullParameter(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ Checks(Collection collection, Check[] checkArr, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(collection, checkArr, (i4 & 4) != 0 ? AnonymousClass4.INSTANCE : function1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Checks(@g Collection<Name> nameList, @g Check[] checks, @g Function1<? super FunctionDescriptor, String> additionalChecks) {
        this((Name) null, (Regex) null, nameList, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkNotNullParameter(nameList, "nameList");
        Intrinsics.checkNotNullParameter(checks, "checks");
        Intrinsics.checkNotNullParameter(additionalChecks, "additionalChecks");
    }
}
