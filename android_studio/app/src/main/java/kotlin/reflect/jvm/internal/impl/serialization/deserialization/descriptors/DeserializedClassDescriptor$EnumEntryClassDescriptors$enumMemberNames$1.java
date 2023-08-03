package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedClassDescriptor.kt */
/* loaded from: classes4.dex */
public final class DeserializedClassDescriptor$EnumEntryClassDescriptors$enumMemberNames$1 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ DeserializedClassDescriptor.EnumEntryClassDescriptors this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor$EnumEntryClassDescriptors$enumMemberNames$1(DeserializedClassDescriptor.EnumEntryClassDescriptors enumEntryClassDescriptors) {
        super(0);
        this.this$0 = enumEntryClassDescriptors;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Set<? extends Name> invoke() {
        Set<? extends Name> computeEnumMemberNames;
        computeEnumMemberNames = this.this$0.computeEnumMemberNames();
        return computeEnumMemberNames;
    }
}
