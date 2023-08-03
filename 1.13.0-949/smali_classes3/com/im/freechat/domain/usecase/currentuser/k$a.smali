.class final Lcom/im/freechat/domain/usecase/currentuser/k$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SetShowLastOnlineInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/currentuser/k;->c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.domain.usecase.currentuser.SetShowLastOnlineInteractor"
    f = "SetShowLastOnlineInteractor.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0xf,
        0x13,
        0x15,
        0x17,
        0x18
    }
    m = "run"
    n = {
        "this",
        "params",
        "this",
        "it",
        "this",
        "it",
        "this",
        "it"
    }
    s = {
        "L$0",
        "Z$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Z

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/im/freechat/domain/usecase/currentuser/k;

.field f:I


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/currentuser/k;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/currentuser/k;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/currentuser/k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k$a;->e:Lcom/im/freechat/domain/usecase/currentuser/k;

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

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k$a;->f:I

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/currentuser/k$a;->e:Lcom/im/freechat/domain/usecase/currentuser/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/im/freechat/domain/usecase/currentuser/k;->c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
