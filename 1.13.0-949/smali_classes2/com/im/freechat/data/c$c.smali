.class final Lcom/im/freechat/data/c$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DnsRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/c;->i(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.data.DnsRepositoryImpl"
    f = "DnsRepositoryImpl.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x2b,
        0x2c,
        0x2d,
        0x2e,
        0x2f,
        0x38,
        0x41,
        0x4a
    }
    m = "resolveDoH"
    n = {
        "this",
        "attempt",
        "this",
        "attempt",
        "this",
        "attempt",
        "this",
        "attempt",
        "this",
        "attempt",
        "this",
        "host",
        "attempt"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/im/freechat/data/c;

.field g:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/c;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/c$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/c$c;->f:Lcom/im/freechat/data/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/c$c;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/data/c$c;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/data/c$c;->g:I

    iget-object p1, p0, Lcom/im/freechat/data/c$c;->f:Lcom/im/freechat/data/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/im/freechat/data/c;->g(Lcom/im/freechat/data/c;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
