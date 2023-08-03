package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public interface Check {

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static String invoke(@g Check check, @g FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            if (check.check(functionDescriptor)) {
                return null;
            }
            return check.getDescription();
        }
    }

    boolean check(@g FunctionDescriptor functionDescriptor);

    @g
    String getDescription();

    @h
    String invoke(@g FunctionDescriptor functionDescriptor);
}
