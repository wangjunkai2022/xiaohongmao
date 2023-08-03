package com.im.freechat.data.sources.websocket;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WsService.kt */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.im.freechat.data.sources.websocket.WsService$onSocketMessage$1", f = "WsService.kt", i = {0}, l = {115, 119}, m = "invokeSuspend", n = {"it"}, s = {"L$1"})
/* loaded from: classes3.dex */
public final class WsService$onSocketMessage$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $text;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ WsService this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WsService$onSocketMessage$1(WsService wsService, String str, Continuation<? super WsService$onSocketMessage$1> continuation) {
        super(2, continuation);
        this.this$0 = wsService;
        this.$text = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new WsService$onSocketMessage$1(this.this$0, this.$text, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((WsService$onSocketMessage$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2b
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r0 = r6.L$0
            com.im.freechat.data.sources.websocket.WsService r0 = (com.im.freechat.data.sources.websocket.WsService) r0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L92
            goto L8e
        L17:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1f:
            java.lang.Object r1 = r6.L$1
            com.im.freechat.data.openapigen.models.SocketMessage r1 = (com.im.freechat.data.openapigen.models.SocketMessage) r1
            java.lang.Object r3 = r6.L$0
            com.im.freechat.data.sources.websocket.WsService r3 = (com.im.freechat.data.sources.websocket.WsService) r3
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L92
            goto L66
        L2b:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.websocket.WsService r7 = r6.this$0     // Catch: java.lang.Exception -> L92
            com.squareup.moshi.u r7 = com.im.freechat.data.sources.websocket.WsService.access$getMoshi(r7)     // Catch: java.lang.Exception -> L92
            java.lang.Class<com.im.freechat.data.openapigen.models.SocketMessage> r1 = com.im.freechat.data.openapigen.models.SocketMessage.class
            com.squareup.moshi.h r7 = r7.c(r1)     // Catch: java.lang.Exception -> L92
            java.lang.String r1 = r6.$text     // Catch: java.lang.Exception -> L92
            java.lang.Object r7 = r7.fromJson(r1)     // Catch: java.lang.Exception -> L92
            r1 = r7
            com.im.freechat.data.openapigen.models.SocketMessage r1 = (com.im.freechat.data.openapigen.models.SocketMessage) r1     // Catch: java.lang.Exception -> L92
            if (r1 == 0) goto L98
            com.im.freechat.data.sources.websocket.WsService r7 = r6.this$0     // Catch: java.lang.Exception -> L92
            boolean r4 = r1 instanceof com.im.freechat.data.openapigen.models.LoggedInSuccessfully     // Catch: java.lang.Exception -> L92
            if (r4 == 0) goto L68
            kotlinx.coroutines.flow.t r4 = com.im.freechat.data.sources.websocket.WsService.access$getConnectionState$p(r7)     // Catch: java.lang.Exception -> L92
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Exception -> L92
            r4.setValue(r5)     // Catch: java.lang.Exception -> L92
            r4 = 100
            r6.L$0 = r7     // Catch: java.lang.Exception -> L92
            r6.L$1 = r1     // Catch: java.lang.Exception -> L92
            r6.label = r3     // Catch: java.lang.Exception -> L92
            java.lang.Object r3 = kotlinx.coroutines.b1.b(r4, r6)     // Catch: java.lang.Exception -> L92
            if (r3 != r0) goto L65
            return r0
        L65:
            r3 = r7
        L66:
            r7 = r3
            goto L76
        L68:
            boolean r3 = r1 instanceof com.im.freechat.data.openapigen.models.Ping     // Catch: java.lang.Exception -> L92
            if (r3 == 0) goto L76
            com.im.freechat.data.openapigen.models.Pong r3 = new com.im.freechat.data.openapigen.models.Pong     // Catch: java.lang.Exception -> L92
            com.im.freechat.data.openapigen.models.Pong$Type r4 = com.im.freechat.data.openapigen.models.Pong.Type.pong     // Catch: java.lang.Exception -> L92
            r3.<init>(r4)     // Catch: java.lang.Exception -> L92
            r7.sendWsRequest(r3)     // Catch: java.lang.Exception -> L92
        L76:
            kotlinx.coroutines.flow.s r3 = com.im.freechat.data.sources.websocket.WsService.access$getMessageChannel$p(r7)     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "it"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)     // Catch: java.lang.Exception -> L92
            r6.L$0 = r7     // Catch: java.lang.Exception -> L92
            r4 = 0
            r6.L$1 = r4     // Catch: java.lang.Exception -> L92
            r6.label = r2     // Catch: java.lang.Exception -> L92
            java.lang.Object r1 = r3.emit(r1, r6)     // Catch: java.lang.Exception -> L92
            if (r1 != r0) goto L8d
            return r0
        L8d:
            r0 = r7
        L8e:
            com.im.freechat.data.sources.websocket.WsService.access$setAwaitingMessageTimer(r0)     // Catch: java.lang.Exception -> L92
            goto L98
        L92:
            r7 = move-exception
            timber.log.Timber$b r0 = timber.log.Timber.f93860a
            r0.e(r7)
        L98:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.websocket.WsService$onSocketMessage$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
