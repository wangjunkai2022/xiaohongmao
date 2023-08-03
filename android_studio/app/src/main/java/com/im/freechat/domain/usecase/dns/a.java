package com.im.freechat.domain.usecase.dns;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.DnsResolutionState;
import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: ListenDnsStatusInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/dns/a;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/d;", "a", "Lcom/im/freechat/domain/d;", "dnsRepository", "<init>", "(Lcom/im/freechat/domain/d;)V", d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends FlowUseCase<Unit, DnsResolutionState> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.d f41750a;

    public a(@g com.im.freechat.domain.d dnsRepository) {
        Intrinsics.checkNotNullParameter(dnsRepository, "dnsRepository");
        this.f41750a = dnsRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    @h
    /* renamed from: e */
    public Object b(@g Unit unit, @g Continuation<? super i<? extends DnsResolutionState>> continuation) {
        return this.f41750a.d();
    }
}
