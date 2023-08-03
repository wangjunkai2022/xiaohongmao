package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* compiled from: LazyJavaStaticClassScope.kt */
/* loaded from: classes4.dex */
final class LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1 extends Lambda implements Function1<MemberScope, Collection<? extends PropertyDescriptor>> {
    final /* synthetic */ Name $name;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1(Name name) {
        super(1);
        this.$name = name;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Collection<? extends PropertyDescriptor> invoke(@g MemberScope it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getContributedVariables(this.$name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
    }
}
