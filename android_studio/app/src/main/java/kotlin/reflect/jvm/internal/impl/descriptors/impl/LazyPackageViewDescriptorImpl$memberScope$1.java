package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyPackageViewDescriptorImpl.kt */
/* loaded from: classes4.dex */
public final class LazyPackageViewDescriptorImpl$memberScope$1 extends Lambda implements Function0<MemberScope> {
    final /* synthetic */ LazyPackageViewDescriptorImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPackageViewDescriptorImpl$memberScope$1(LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl) {
        super(0);
        this.this$0 = lazyPackageViewDescriptorImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final MemberScope invoke() {
        int collectionSizeOrDefault;
        List plus;
        if (this.this$0.isEmpty()) {
            return MemberScope.Empty.INSTANCE;
        }
        List<PackageFragmentDescriptor> fragments = this.this$0.getFragments();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fragments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (PackageFragmentDescriptor packageFragmentDescriptor : fragments) {
            arrayList.add(packageFragmentDescriptor.getMemberScope());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends SubpackagesScope>) ((Collection<? extends Object>) arrayList), new SubpackagesScope(this.this$0.getModule(), this.this$0.getFqName()));
        ChainedMemberScope.Companion companion = ChainedMemberScope.Companion;
        return companion.create("package view scope for " + this.this$0.getFqName() + " in " + this.this$0.getModule().getName(), plus);
    }
}
