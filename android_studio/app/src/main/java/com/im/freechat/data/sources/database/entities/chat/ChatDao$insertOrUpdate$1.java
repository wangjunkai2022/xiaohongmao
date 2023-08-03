package com.im.freechat.data.sources.database.entities.chat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChatDao.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.chat.ChatDao", f = "ChatDao.kt", i = {0, 0}, l = {116, 118}, m = "insertOrUpdate", n = {"this", "value"}, s = {"L$0", "L$1"})
/* loaded from: classes2.dex */
public final class ChatDao$insertOrUpdate$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDao$insertOrUpdate$1(ChatDao chatDao, Continuation<? super ChatDao$insertOrUpdate$1> continuation) {
        super(continuation);
        this.this$0 = chatDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.insertOrUpdate((PartialChatUpdateEntity) null, (Continuation<? super Unit>) this);
    }
}
