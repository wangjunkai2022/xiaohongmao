package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;

/* compiled from: Substitutable.kt */
/* loaded from: classes4.dex */
public interface Substitutable<T extends DeclarationDescriptorNonRoot> {
    @g
    T substitute(@g TypeSubstitutor typeSubstitutor);
}
