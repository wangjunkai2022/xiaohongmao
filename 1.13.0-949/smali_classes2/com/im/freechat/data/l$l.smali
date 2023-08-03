.class final Lcom/im/freechat/data/l$l;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SyncRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->o0(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.data.SyncRepositoryImpl"
    f = "SyncRepositoryImpl.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8
    }
    l = {
        0x227,
        0x232,
        0x234,
        0x236,
        0x23a,
        0x23d,
        0x247,
        0x24d,
        0x252,
        0x255
    }
    m = "forwardMessage"
    n = {
        "this",
        "message",
        "currentUserId",
        "chatId",
        "this",
        "message",
        "entity",
        "chatId",
        "tempMsgId",
        "this",
        "message",
        "entity",
        "chatId",
        "tempMsgId",
        "this",
        "message",
        "entity",
        "destination$iv$iv",
        "chatId",
        "tempMsgId",
        "this",
        "message",
        "entity",
        "attachments",
        "chatId",
        "tempMsgId",
        "this",
        "entity",
        "attachments",
        "chatId",
        "tempMsgId",
        "this",
        "entity",
        "attachments",
        "chatId",
        "id",
        "this",
        "entity",
        "chatId",
        "id",
        "this",
        "entity"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "I$0",
        "J$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:I

.field i:I

.field j:J

.field synthetic k:Ljava/lang/Object;

.field final synthetic l:Lcom/im/freechat/data/l;

.field m:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$l;->l:Lcom/im/freechat/data/l;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$l;->k:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/l$l;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/l$l;->m:I

    iget-object p1, p0, Lcom/im/freechat/data/l$l;->l:Lcom/im/freechat/data/l;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1, p0}, Lcom/im/freechat/data/l;->X(Lcom/im/freechat/data/l;IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
