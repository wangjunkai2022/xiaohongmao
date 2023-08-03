.class final Lcom/im/freechat/data/l$i;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SyncRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->O(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x6,
        0x7,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x25e,
        0x262,
        0x265,
        0x26d,
        0x272,
        0x274,
        0x283,
        0x287,
        0x289
    }
    m = "deleteMessages"
    n = {
        "this",
        "messageIds",
        "currentUserId",
        "chatId",
        "this",
        "messageIds",
        "messagesToRemoveFromApi",
        "currentUserId",
        "chatId",
        "this",
        "messageIds",
        "messagesToRemoveFromApi",
        "currentUserId",
        "chatId",
        "needChatSync",
        "this",
        "messageIds",
        "messagesToRemoveFromApi",
        "currentUserId",
        "chatId",
        "needChatSync",
        "this",
        "currentUserId",
        "chatId",
        "needChatSync",
        "this",
        "mediaIds",
        "currentUserId",
        "chatId",
        "needChatSync",
        "this",
        "mediaIds",
        "group",
        "currentUserId",
        "chatId",
        "needChatSync",
        "this",
        "currentUserId",
        "chatId",
        "needChatSync"
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
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "I$0",
        "I$1",
        "I$2"
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

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/im/freechat/data/l;

.field j:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$i;->i:Lcom/im/freechat/data/l;

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

    iput-object p1, p0, Lcom/im/freechat/data/l$i;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/l$i;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/l$i;->j:I

    iget-object p1, p0, Lcom/im/freechat/data/l$i;->i:Lcom/im/freechat/data/l;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, p0}, Lcom/im/freechat/data/l;->O(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
