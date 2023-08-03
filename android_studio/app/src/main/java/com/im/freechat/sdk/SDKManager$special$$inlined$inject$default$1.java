package com.im.freechat.sdk;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinComponent.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;", "org/koin/core/component/KoinComponentKt$inject$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SDKManager$special$$inlined$inject$default$1 extends Lambda implements Function0<com.im.freechat.domain.usecase.dns.b> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ org.koin.core.component.a f41980a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f41981b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f41982c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SDKManager$special$$inlined$inject$default$1(org.koin.core.component.a aVar, z8.a aVar2, Function0 function0) {
        super(0);
        this.f41980a = aVar;
        this.f41981b = aVar2;
        this.f41982c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.im.freechat.domain.usecase.dns.b, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final com.im.freechat.domain.usecase.dns.b invoke() {
        Scope h4;
        org.koin.core.component.a aVar = this.f41980a;
        z8.a aVar2 = this.f41981b;
        Function0<? extends y8.a> function0 = this.f41982c;
        if (aVar instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) aVar).getScope();
        } else {
            h4 = aVar.getKoin().I().h();
        }
        return h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.dns.b.class), aVar2, function0);
    }
}
