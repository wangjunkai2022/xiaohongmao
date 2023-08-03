package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: InstanceRegistry.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0007\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/registry/InstanceRegistry$declareRootInstance$def$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class Koin$declare$$inlined$declareRootInstance$1 extends Lambda implements Function2<Scope, y8.a, T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Object f92392a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$declare$$inlined$declareRootInstance$1(Object obj) {
        super(2);
        this.f92392a = obj;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final T invoke(@g Scope _createDefinition, @g y8.a it) {
        Intrinsics.checkNotNullParameter(_createDefinition, "$this$_createDefinition");
        Intrinsics.checkNotNullParameter(it, "it");
        return this.f92392a;
    }
}
