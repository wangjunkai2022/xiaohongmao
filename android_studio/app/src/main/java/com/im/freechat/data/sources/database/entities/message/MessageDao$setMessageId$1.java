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
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.message.MessageDao", f = "MessageDao.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3}, l = {98, 100, 101, 102}, m = "setMessageId$suspendImpl", n = {"$this", "oldId", "newId", "$this", "e", "oldId", "newId", "$this", "e", "msg", "oldId", "newId", "e"}, s = {"L$0", "J$0", "J$1", "L$0", "L$1", "J$0", "J$1", "L$0", "L$1", "L$2", "J$0", "J$1", "L$0"})
/* loaded from: classes3.dex */
public final class MessageDao$setMessageId$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MessageDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageDao$setMessageId$1(MessageDao messageDao, Continuation<? super MessageDao$setMessageId$1> continuation) {
        super(continuation);
        this.this$0 = messageDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MessageDao.setMessageId$suspendImpl(this.this$0, 0L, 0L, 0L, this);
    }
}
