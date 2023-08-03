package org.koin.core.registry;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: InstanceRegistry.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class InstanceRegistry$declareRootInstance$def$1 extends Lambda implements Function2<Scope, y8.a, T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ T f92517a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstanceRegistry$declareRootInstance$def$1(T t9) {
        super(2);
        this.f92517a = t9;
    }

    @Override // kotlin.jvm.functions.Function2
    public final T invoke(@g Scope _createDefinition, @g y8.a it) {
        Intrinsics.checkNotNullParameter(_createDefinition, "$this$_createDefinition");
        Intrinsics.checkNotNullParameter(it, "it");
        return this.f92517a;
    }
}
