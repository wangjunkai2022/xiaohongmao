.class public abstract Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
.super Lcom/im/freechat/data/sources/database/entities/BaseDao;
.source "MessageDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/data/sources/database/entities/BaseDao<",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageDao.kt\ncom/im/freechat/data/sources/database/entities/message/MessageDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1655#2,8:117\n1549#2:125\n1620#2,2:126\n766#2:128\n857#2,2:129\n1622#2:131\n*S KotlinDebug\n*F\n+ 1 MessageDao.kt\ncom/im/freechat/data/sources/database/entities/message/MessageDao\n*L\n90#1:117,8\n90#1:125\n90#1:126,2\n91#1:128\n91#1:129,2\n90#1:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010;J+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\nJ1\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u00a5@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\nJ+\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u00a5@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\nJ#\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J!\u0010\u0017\u001a\u00020\u00082\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J+\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ$\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u000b0\"2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0006H\'J\u0016\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010 \u001a\u00020\u0003H\'J\'\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020#0\u000b2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u0018J!\u0010)\u001a\u0008\u0012\u0004\u0012\u00020#0\u000b2\u0006\u0010(\u001a\u00020\u0019H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J-\u0010.\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00062\u0008\u0008\u0002\u0010-\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/J\u001b\u00100\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010\u0012J\"\u00102\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006H\'J\'\u00103\u001a\u0008\u0012\u0004\u0012\u00020#0\u000b2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u0018J\'\u00104\u001a\u0008\u0012\u0004\u0012\u00020#0\u000b2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u0010\u0018J+\u00105\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010/J\u0013\u00106\u001a\u00020\u0008H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010\u0014J\u001b\u00108\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u0012J\u0010\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0\"H\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006<"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "Lcom/im/freechat/data/sources/database/entities/BaseDao;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "",
        "currentUserId",
        "chatId",
        "",
        "messageId",
        "",
        "readMyMessage",
        "(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "readOtherMessages",
        "getOtherUnreadMessages",
        "readOtherMessage",
        "getOthersUnreadMessageCount",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessageById",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLastMessageId",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteById",
        "messageIds",
        "deleteByIds",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "content",
        "editedAt",
        "editById",
        "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteByChatId",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "id",
        "laterThan",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        "subscribeMessages",
        "subscribePinnedMessageByChatId",
        "ids",
        "getMessagesByIds",
        "query",
        "findMessagesByQuery",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "oldId",
        "newId",
        "sendTime",
        "setMessageIdUnsafe",
        "(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setMessageSending",
        "newContent",
        "modifyMessage",
        "getMessagesByMediaIds",
        "getMessagesToForward",
        "setMessageId",
        "resetSendings",
        "msgId",
        "setSendFailed",
        "subscribeLastReceivedMessage",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;-><init>()V

    return-void
.end method

.method public static synthetic modifyMessage$default(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JLjava/lang/String;JILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->modifyMessage(JLjava/lang/String;J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: modifyMessage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic readOtherMessages$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;

    invoke-direct {v0, p0, p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    iget-object v0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1
    iget v1, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-wide p3, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->J$0:J

    iget p2, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->I$1:I

    iget p1, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->I$0:I

    iget-object p0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->L$0:Ljava/lang/Object;

    iput p1, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->I$0:I

    iput p2, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->I$1:I

    iput-wide p3, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->J$0:J

    iput v2, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getOtherUnreadMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 5
    :cond_4
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 6
    iput-object v0, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->L$0:Ljava/lang/Object;

    iput v8, p5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    invoke-virtual/range {p0 .. p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessage(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_5

    return-object v7

    :cond_5
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method static synthetic setMessageId$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation build Landroidx/room/Transaction;
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;

    iget v2, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;

    invoke-direct {v1, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v1

    iget-object v0, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 1
    iget v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    if-eq v1, v14, :cond_3

    if-eq v1, v13, :cond_2

    if-ne v1, v12, :cond_1

    iget-object v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-wide v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iget-wide v3, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    iget-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v6, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/database/sqlite/SQLiteConstraintException;

    iget-object v7, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_3

    :cond_3
    iget-wide v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iget-wide v3, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    iget-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/database/sqlite/SQLiteConstraintException;

    iget-object v6, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-wide v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iget-wide v3, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    iget-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v9, v5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput-object v9, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v6, p1

    iput-wide v6, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    move-wide/from16 v4, p3

    iput-wide v4, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iput v2, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v11, :cond_9

    return-object v11

    :catch_1
    move-exception v0

    move-wide/from16 v3, p1

    move-wide/from16 v1, p3

    :goto_1
    move-object v5, v0

    .line 5
    iput-object v9, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    iput-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$1:Ljava/lang/Object;

    iput-wide v3, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    iput-wide v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iput v14, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    invoke-virtual {v9, v1, v2, v10}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessageById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_6

    return-object v11

    :cond_6
    move-object v6, v9

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    .line 6
    iput-object v6, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    iput-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$1:Ljava/lang/Object;

    iput-object v0, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$2:Ljava/lang/Object;

    iput-wide v3, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$0:J

    iput-wide v1, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->J$1:J

    iput v13, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    invoke-virtual {v6, v1, v2, v10}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_7

    return-object v11

    .line 7
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getSendTime()J

    move-result-wide v7

    iput-object v5, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$1:Ljava/lang/Object;

    iput-object v0, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->L$2:Ljava/lang/Object;

    iput v12, v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$setMessageId$1;->label:I

    move-object p0, v6

    move-wide/from16 p1, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v7

    move-object/from16 p7, v10

    invoke-virtual/range {p0 .. p7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_8

    return-object v11

    :cond_8
    move-object v1, v5

    .line 8
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    .line 9
    :cond_9
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic setMessageIdUnsafe$default(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JJJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, p5

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setMessageIdUnsafe"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract deleteByChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM message WHERE parent_chat_id = :chatId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract deleteById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM message WHERE message_id = :messageId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract deleteByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM message WHERE message_id IN (:messageIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract editById(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET content = :content, edit_time = :editedAt WHERE message_id = :messageId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract findMessagesByQuery(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message\n                    LEFT JOIN chat ON message.parent_chat_id = chat.chat_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    WHERE message.content LIKE \'%\' || :query || \'%\'\n    "
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getLastMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT MAX(message_id) FROM message"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getMessageById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message WHERE message_id = :messageId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message \n                    LEFT JOIN user ON message.sender_id = user.user_id \n                    WHERE message_id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getMessagesByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message \n                    LEFT JOIN attachment ON attachment.parent_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id \n                    WHERE message_id IN (:ids) OR media_id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public final getMessagesToForward(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$getMessagesToForward$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 10
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    move-object v2, v1

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 19
    invoke-virtual {v8}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object p2
.end method

.method protected abstract getOtherUnreadMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT message_id FROM message WHERE (sender_id != :currentUserId) AND parent_chat_id = :chatId AND message_id <= :messageId AND status = 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getOthersUnreadMessageCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(message_id) FROM message WHERE parent_chat_id = :chatId AND sender_id != :currentUserId AND status = 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract modifyMessage(JLjava/lang/String;J)V
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET content = :newContent, edit_time = :editedAt WHERE message_id = :messageId"
    .end annotation
.end method

.method public abstract readMyMessage(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET status = 2 WHERE sender_id = :currentUserId AND parent_chat_id = :chatId AND message_id <= :messageId AND status > 0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method protected abstract readOtherMessage(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET status = 2 WHERE (sender_id != :currentUserId) AND parent_chat_id = :chatId AND message_id <= :messageId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract resetSendings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET status = -1 WHERE status = 0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageId$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET message_id = :newId, status = 1, send_time = :sendTime WHERE message_id = :oldId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract setMessageSending(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET status = 0 WHERE message_id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract setSendFailed(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE message SET status = -1 WHERE message_id = :msgId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract subscribeLastReceivedMessage()Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM full_message ORDER BY send_time DESC LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract subscribeMessages(IJ)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM full_message WHERE parent_chat_id = :id AND send_time > :laterThan ORDER BY message_id DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract subscribePinnedMessageByChatId(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM full_message WHERE message_id = (SELECT pinned_message_id FROM chat WHERE chat_id = :id)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
