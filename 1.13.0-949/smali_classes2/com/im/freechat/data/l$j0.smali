.class final Lcom/im/freechat/data/l$j0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SyncRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->j(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
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
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
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
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x2c9,
        0x2d6,
        0x2df,
        0x2e0,
        0x2e2,
        0x2f2,
        0x2f7,
        0x2fb
    }
    m = "sendGiphy"
    n = {
        "this",
        "mediaId",
        "replyToMessageId",
        "userId",
        "chatId",
        "width",
        "height",
        "this",
        "mediaId",
        "replyToMessageId",
        "msg",
        "chatId",
        "width",
        "height",
        "tempId",
        "this",
        "mediaId",
        "replyToMessageId",
        "attachment",
        "chatId",
        "width",
        "height",
        "tempId",
        "this",
        "mediaId",
        "replyToMessageId",
        "attachment",
        "chatId",
        "width",
        "height",
        "tempId",
        "this",
        "attachment",
        "chatId",
        "tempId",
        "this",
        "attachment",
        "chatId",
        "id",
        "this",
        "chatId",
        "id"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "J$0",
        "L$0",
        "L$1",
        "I$0",
        "J$0",
        "L$0",
        "L$1",
        "I$0",
        "J$0",
        "L$0",
        "I$0",
        "J$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:J

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/im/freechat/data/l;

.field l:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$j0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$j0;->k:Lcom/im/freechat/data/l;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$j0;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/l$j0;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/l$j0;->l:I

    iget-object v0, p0, Lcom/im/freechat/data/l$j0;->k:Lcom/im/freechat/data/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/im/freechat/data/l;->j(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
