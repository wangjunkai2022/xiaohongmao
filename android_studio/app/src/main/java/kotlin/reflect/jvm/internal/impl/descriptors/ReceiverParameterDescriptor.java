package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface ReceiverParameterDescriptor extends ParameterDescriptor {
    @g
    ReceiverValue getValue();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    @h
    ReceiverParameterDescriptor substitute(@g TypeSubstitutor typeSubstitutor);
}
