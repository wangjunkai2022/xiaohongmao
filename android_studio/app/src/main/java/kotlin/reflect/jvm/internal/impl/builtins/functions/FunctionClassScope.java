package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: FunctionClassScope.kt */
/* loaded from: classes4.dex */
public final class FunctionClassScope extends GivenFunctionsMemberScope {

    /* compiled from: FunctionClassScope.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FunctionClassKind.values().length];
            iArr[FunctionClassKind.Function.ordinal()] = 1;
            iArr[FunctionClassKind.SuspendFunction.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassScope(@g StorageManager storageManager, @g FunctionClassDescriptor containingClass) {
        super(storageManager, containingClass);
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(containingClass, "containingClass");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    @g
    public List<FunctionDescriptor> computeDeclaredFunctions() {
        List<FunctionDescriptor> listOf;
        List<FunctionDescriptor> listOf2;
        List<FunctionDescriptor> emptyList;
        ClassDescriptor containingClass = getContainingClass();
        Intrinsics.checkNotNull(containingClass, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor");
        int i4 = WhenMappings.$EnumSwitchMapping$0[((FunctionClassDescriptor) containingClass).getFunctionKind().ordinal()];
        if (i4 == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(FunctionInvokeDescriptor.Factory.create((FunctionClassDescriptor) getContainingClass(), false));
            return listOf;
        } else if (i4 != 2) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(FunctionInvokeDescriptor.Factory.create((FunctionClassDescriptor) getContainingClass(), true));
            return listOf2;
        }
    }
}
