package com.im.freechat.di;

import com.im.freechat.domain.usecase.chat.h;
import com.im.freechat.domain.usecase.chat.i;
import com.im.freechat.domain.usecase.chat.r;
import com.im.freechat.domain.usecase.chat.t;
import com.im.freechat.domain.usecase.chat_request.b;
import com.im.freechat.domain.usecase.chat_request.c;
import com.im.freechat.domain.usecase.chat_request.d;
import com.im.freechat.domain.usecase.chat_request.e;
import com.im.freechat.domain.usecase.chat_request.f;
import com.im.freechat.domain.usecase.currentuser.o;
import com.im.freechat.domain.usecase.messages.j;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0019\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001\"\u0006\b\u0005\u0010\u0005\u0018\u0001\"\u0006\b\u0006\u0010\u0006\u0018\u0001\"\u0006\b\u0007\u0010\u0007\u0018\u0001\"\u0006\b\b\u0010\b\u0018\u0001\"\u0006\b\t\u0010\t\u0018\u0001\"\u0006\b\n\u0010\n\u0018\u0001\"\u0006\b\u000b\u0010\u000b\u0018\u0001\"\u0006\b\f\u0010\f\u0018\u0001\"\u0006\b\r\u0010\r\u0018\u0001\"\u0006\b\u000e\u0010\u000e\u0018\u0001\"\u0006\b\u000f\u0010\u000f\u0018\u0001\"\u0006\b\u0010\u0010\u0010\u0018\u0001\"\u0006\b\u0011\u0010\u0011\u0018\u0001\"\u0006\b\u0012\u0010\u0012\u0018\u0001*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\n¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "T12", "T13", "T14", "T15", "T16", "T17", "T18", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "com/im/freechat/di/KoinDSLHelperKt$singleOf$8", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1 extends Lambda implements Function2<Scope, y8.a, com.im.freechat.sdk.a> {
    public ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final com.im.freechat.sdk.a invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(h.class), null, null);
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(f.class), null, null);
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(c.class), null, null);
        Object p12 = single.p(Reflection.getOrCreateKotlinClass(d.class), null, null);
        Object p13 = single.p(Reflection.getOrCreateKotlinClass(b.class), null, null);
        Object p14 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat_request.a.class), null, null);
        Object p15 = single.p(Reflection.getOrCreateKotlinClass(e.class), null, null);
        Object p16 = single.p(Reflection.getOrCreateKotlinClass(r.class), null, null);
        Object p17 = single.p(Reflection.getOrCreateKotlinClass(t.class), null, null);
        Object p18 = single.p(Reflection.getOrCreateKotlinClass(i.class), null, null);
        Object p19 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.c.class), null, null);
        Object p20 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.g.class), null, null);
        Object p21 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.f.class), null, null);
        Object p22 = single.p(Reflection.getOrCreateKotlinClass(o.class), null, null);
        Object p23 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.f.class), null, null);
        Object p24 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.d.class), null, null);
        return new com.im.freechat.sdk.a((h) p9, (f) p10, (c) p11, (d) p12, (b) p13, (com.im.freechat.domain.usecase.chat_request.a) p14, (e) p15, (r) p16, (t) p17, (i) p18, (com.im.freechat.domain.usecase.chat.c) p19, (com.im.freechat.domain.usecase.currentuser.g) p20, (com.im.freechat.domain.usecase.currentuser.f) p21, (o) p22, (com.im.freechat.domain.usecase.contact.f) p23, (com.im.freechat.domain.usecase.contact.d) p24, (com.im.freechat.domain.usecase.contact.e) single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.e.class), null, null), (j) single.p(Reflection.getOrCreateKotlinClass(j.class), null, null));
    }
}
