package com.im.freechat.data.sources.database.entities.contact;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UserDao.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.contact.UserDao", f = "UserDao.kt", i = {0}, l = {64}, m = "insertOrUpdateAll$suspendImpl", n = {"$this"}, s = {"L$0"})
/* loaded from: classes2.dex */
public final class UserDao$insertOrUpdateAll$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UserDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserDao$insertOrUpdateAll$1(UserDao userDao, Continuation<? super UserDao$insertOrUpdateAll$1> continuation) {
        super(continuation);
        this.this$0 = userDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UserDao.insertOrUpdateAll$suspendImpl(this.this$0, null, this);
    }
}
