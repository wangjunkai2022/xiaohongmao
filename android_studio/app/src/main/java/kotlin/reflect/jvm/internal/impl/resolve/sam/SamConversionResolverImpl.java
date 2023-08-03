package kotlin.reflect.jvm.internal.impl.resolve.sam;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.CacheWithNullableValues;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: SamConversionResolverImpl.kt */
/* loaded from: classes4.dex */
public final class SamConversionResolverImpl implements SamConversionResolver {
    @g
    private final CacheWithNullableValues<ClassDescriptor, SimpleType> functionTypesForSamInterfaces;
    @g
    private final Iterable<Object> samWithReceiverResolvers;

    public SamConversionResolverImpl(@g StorageManager storageManager, @g Iterable<? extends Object> samWithReceiverResolvers) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(samWithReceiverResolvers, "samWithReceiverResolvers");
        this.samWithReceiverResolvers = samWithReceiverResolvers;
        this.functionTypesForSamInterfaces = storageManager.createCacheWithNullableValues();
    }
}
