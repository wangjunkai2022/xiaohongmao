package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: Scope.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;", "org/koin/core/scope/Scope$inject$1"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes5.dex */
public final class Koin$inject$$inlined$inject$1 extends Lambda implements Function0<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Scope f92393a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92394b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f92395c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$inject$$inlined$inject$1(Scope scope, z8.a aVar, Function0 function0) {
        super(0);
        this.f92393a = scope;
        this.f92394b = aVar;
        this.f92395c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final T invoke() {
        Scope scope = this.f92393a;
        z8.a aVar = this.f92394b;
        Function0<? extends y8.a> function0 = this.f92395c;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return scope.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }
}
