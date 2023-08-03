.class final Lcom/im/freechat/sdk/c$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/sdk/c;->f(ILjava/lang/Integer;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.sdk.LoginManager"
    f = "LoginManager.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x25,
        0x2d,
        0x2e
    }
    m = "loginWithExternal"
    n = {
        "onSuccess",
        "onFailure",
        "onFailure"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/im/freechat/sdk/c;

.field e:I


# direct methods
.method constructor <init>(Lcom/im/freechat/sdk/c;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/sdk/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/sdk/c$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/sdk/c$d;->d:Lcom/im/freechat/sdk/c;

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

    iput-object p1, p0, Lcom/im/freechat/sdk/c$d;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/sdk/c$d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/sdk/c$d;->e:I

    iget-object v0, p0, Lcom/im/freechat/sdk/c$d;->d:Lcom/im/freechat/sdk/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/im/freechat/sdk/c;->f(ILjava/lang/Integer;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
