package org.koin.core.component;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinComponent.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes5.dex */
public final class KoinComponentKt$inject$1 extends Lambda implements Function0<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f92413a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92414b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<y8.a> f92415c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KoinComponentKt$inject$1(a aVar, z8.a aVar2, Function0<? extends y8.a> function0) {
        super(0);
        this.f92413a = aVar;
        this.f92414b = aVar2;
        this.f92415c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final T invoke() {
        Scope h4;
        a aVar = this.f92413a;
        z8.a aVar2 = this.f92414b;
        Function0<y8.a> function0 = this.f92415c;
        if (aVar instanceof b) {
            h4 = ((b) aVar).getScope();
        } else {
            h4 = aVar.getKoin().I().h();
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return h4.p(Reflection.getOrCreateKotlinClass(Object.class), aVar2, function0);
    }
}
