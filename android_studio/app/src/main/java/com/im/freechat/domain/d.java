package com.im.freechat.domain;

import com.im.freechat.shared.entities.DnsResolutionState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: DnsRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0005H&J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/domain/d;", "", "", "b", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "c", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "d", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface d {
    @m8.g
    String a();

    @m8.h
    Object b(@m8.g Continuation<? super Unit> continuation);

    @m8.g
    String c();

    @m8.g
    kotlinx.coroutines.flow.i<DnsResolutionState> d();
}
