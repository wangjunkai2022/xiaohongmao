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
@DebugMetadata(c = "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao", f = "AttachmentDao.kt", i = {0, 0, 0, 1, 1, 1, 1, 2}, l = {47, 49, 50}, m = "setAttachmentId", n = {"this", "oldId", "newId", "this", "e", "oldId", "newId", "e"}, s = {"L$0", "J$0", "J$1", "L$0", "L$1", "J$0", "J$1", "L$0"})
/* loaded from: classes2.dex */
public final class AttachmentDao$setAttachmentId$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AttachmentDao this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttachmentDao$setAttachmentId$1(AttachmentDao attachmentDao, Continuation<? super AttachmentDao$setAttachmentId$1> continuation) {
        super(continuation);
        this.this$0 = attachmentDao;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.setAttachmentId(0L, 0L, this);
    }
}
