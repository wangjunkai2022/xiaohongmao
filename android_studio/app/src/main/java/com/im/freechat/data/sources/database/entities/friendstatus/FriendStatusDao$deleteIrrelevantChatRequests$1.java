package com.im.freechat.data.sources.database.entities.friendstatus;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FriendStatusDao.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao", f = "FriendStatusDao.kt", i = {0, 0, 1}, l = {34, 38}, m = "deleteIrrelevantChatRequests$suspendImpl", n = {"$this", "relevantIds", "$this"}, s = {"L$0", "L$1", "L$0"})
/* loaded from: classes2.dex */
public final class FriendStatusDao$deleteIrrelevantChatRequests$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FriendStatusDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendStatusDao$deleteIrrelevantChatRequests$1(FriendStatusDao friendStatusDao, Continuation<? super FriendStatusDao$deleteIrrelevantChatRequests$1> continuation) {
        super(continuation);
        this.this$0 = friendStatusDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FriendStatusDao.deleteIrrelevantChatRequests$suspendImpl(this.this$0, null, this);
    }
}
