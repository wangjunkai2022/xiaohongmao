package com.im.freechat.data.sources.database.entities.attachment;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AttachmentDao.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao", f = "AttachmentDao.kt", i = {0, 0}, l = {56, 58}, m = "insertOrUpdate$suspendImpl", n = {"$this", "value"}, s = {"L$0", "L$1"})
/* loaded from: classes2.dex */
public final class AttachmentDao$insertOrUpdate$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AttachmentDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttachmentDao$insertOrUpdate$1(AttachmentDao attachmentDao, Continuation<? super AttachmentDao$insertOrUpdate$1> continuation) {
        super(continuation);
        this.this$0 = attachmentDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AttachmentDao.insertOrUpdate$suspendImpl(this.this$0, null, this);
    }
}