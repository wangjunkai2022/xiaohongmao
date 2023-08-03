.class final Lcom/im/freechat/sdk/a$a0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/sdk/a;->D(ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.sdk.DataManager"
    f = "DataManager.kt"
    i = {
        0x0
    }
    l = {
        0x4b
    }
    m = "sendMessage"
    n = {
        "onResult"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/sdk/a;

.field d:I


# direct methods
.method constructor <init>(Lcom/im/freechat/sdk/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/sdk/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/sdk/a$a0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/sdk/a$a0;->c:Lcom/im/freechat/sdk/a;

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

    iput-object p1, p0, Lcom/im/freechat/sdk/a$a0;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/sdk/a$a0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/sdk/a$a0;->d:I

    iget-object v0, p0, Lcom/im/freechat/sdk/a$a0;->c:Lcom/im/freechat/sdk/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/sdk/a;->D(ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
