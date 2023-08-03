package com.im.freechat.data.sources.database.entities.message;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MessageDao.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.message.MessageDao", f = "MessageDao.kt", i = {0}, l = {90}, m = "getMessagesToForward", n = {"ids"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class MessageDao$getMessagesToForward$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MessageDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageDao$getMessagesToForward$1(MessageDao messageDao, Continuation<? super MessageDao$getMessagesToForward$1> continuation) {
        super(continuation);
        this.this$0 = messageDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getMessagesToForward(null, this);
    }
}
