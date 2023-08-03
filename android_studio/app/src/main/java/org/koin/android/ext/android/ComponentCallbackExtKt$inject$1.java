package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ComponentCallbackExt.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class ComponentCallbackExtKt$inject$1 extends Lambda implements Function0<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentCallbacks f92160a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92161b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<y8.a> f92162c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ComponentCallbackExtKt$inject$1(ComponentCallbacks componentCallbacks, z8.a aVar, Function0<? extends y8.a> function0) {
        super(0);
        this.f92160a = componentCallbacks;
        this.f92161b = aVar;
        this.f92162c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final T invoke() {
        ComponentCallbacks componentCallbacks = this.f92160a;
        z8.a aVar = this.f92161b;
        Function0<y8.a> function0 = this.f92162c;
        Scope a10 = a.a(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a10.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }
}
