package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import m8.g;

/* compiled from: ModuleVisibilityHelper.kt */
/* loaded from: classes4.dex */
public interface ModuleVisibilityHelper {

    /* compiled from: ModuleVisibilityHelper.kt */
    /* loaded from: classes4.dex */
    public static final class EMPTY implements ModuleVisibilityHelper {
        @g
        public static final EMPTY INSTANCE = new EMPTY();

        private EMPTY() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.ModuleVisibilityHelper
        public boolean isInFriendModule(@g DeclarationDescriptor what, @g DeclarationDescriptor from) {
            Intrinsics.checkNotNullParameter(what, "what");
            Intrinsics.checkNotNullParameter(from, "from");
            return true;
        }
    }

    boolean isInFriendModule(@g DeclarationDescriptor declarationDescriptor, @g DeclarationDescriptor declarationDescriptor2);
}
