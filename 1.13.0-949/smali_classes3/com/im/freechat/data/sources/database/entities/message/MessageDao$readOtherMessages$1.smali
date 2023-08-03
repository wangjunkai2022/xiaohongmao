.class final Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MessageDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.data.sources.database.entities.message.MessageDao"
    f = "MessageDao.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    }
    l = {
        0x11,
        0x12
    }
    m = "readOtherMessages$suspendImpl"
    n = {
        "$this",
        "currentUserId",
        "chatId",
        "messageId",
        "messageIds"
    }
    s = {
        "L$0",
        "I$0",
        "I$1",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->label:I

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao$readOtherMessages$1;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages$suspendImpl(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
