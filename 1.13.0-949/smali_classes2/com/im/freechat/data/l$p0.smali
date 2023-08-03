.class final Lcom/im/freechat/data/l$p0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SyncRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->Q(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x6,
        0x7
    }
    l = {
        0x11e,
        0x12b,
        0x12b,
        0x12e,
        0x12f,
        0x132,
        0x135,
        0x137
    }
    m = "sendMessage"
    n = {
        "this",
        "content",
        "attachmentUris",
        "replyToMessageId",
        "mentions",
        "currentUserId",
        "chatId",
        "mentionAll",
        "removeOnFail",
        "this",
        "msg",
        "destination$iv$iv",
        "removeOnFail",
        "tempId",
        "this",
        "msg",
        "destination$iv$iv",
        "removeOnFail",
        "tempId",
        "this",
        "msg",
        "attachments",
        "removeOnFail",
        "this",
        "msg",
        "attachments",
        "removeOnFail",
        "this",
        "msg",
        "removeOnFail",
        "e",
        "e"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "I$0",
        "I$1",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:J

.field l:J

.field synthetic m:Ljava/lang/Object;

.field final synthetic n:Lcom/im/freechat/data/l;

.field o:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$p0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$p0;->n:Lcom/im/freechat/data/l;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$p0;->m:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/l$p0;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/l$p0;->o:I

    iget-object v0, p0, Lcom/im/freechat/data/l$p0;->n:Lcom/im/freechat/data/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/im/freechat/data/l;->Q(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
