package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import m8.g;
import m8.h;

/* compiled from: ContractDeserializer.kt */
/* loaded from: classes4.dex */
public interface ContractDeserializer {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ContractDeserializer.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final ContractDeserializer DEFAULT = new ContractDeserializer() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer$Companion$DEFAULT$1
            @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer
            @h
            public Pair deserializeContractFromFunction(@g ProtoBuf.Function proto, @g FunctionDescriptor ownerFunction, @g TypeTable typeTable, @g TypeDeserializer typeDeserializer) {
                Intrinsics.checkNotNullParameter(proto, "proto");
                Intrinsics.checkNotNullParameter(ownerFunction, "ownerFunction");
                Intrinsics.checkNotNullParameter(typeTable, "typeTable");
                Intrinsics.checkNotNullParameter(typeDeserializer, "typeDeserializer");
                return null;
            }
        };

        private Companion() {
        }

        @g
        public final ContractDeserializer getDEFAULT() {
            return DEFAULT;
        }
    }

    @h
    Pair<CallableDescriptor.UserDataKey<?>, Object> deserializeContractFromFunction(@g ProtoBuf.Function function, @g FunctionDescriptor functionDescriptor, @g TypeTable typeTable, @g TypeDeserializer typeDeserializer);
}
