.class final Lcom/im/freechat/domain/usecase/auth/j$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SignInViaSmsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/auth/j;->e(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.domain.usecase.auth.SignInViaSmsInteractor"
    f = "SignInViaSmsInteractor.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3
    }
    l = {
        0x11,
        0xe,
        0x13,
        0x14
    }
    m = "run"
    n = {
        "this",
        "this",
        "this",
        "info",
        "firstLogin",
        "firstLogin"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "Z$0",
        "Z$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field e:Z

.field synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/im/freechat/domain/usecase/auth/j;

.field h:I


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/auth/j;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/auth/j;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/auth/j$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/j$b;->g:Lcom/im/freechat/domain/usecase/auth/j;

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

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/j$b;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/domain/usecase/auth/j$b;->h:I

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/j$b;->g:Lcom/im/freechat/domain/usecase/auth/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/im/freechat/domain/usecase/auth/j;->e(Lcom/im/freechat/domain/usecase/auth/j$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
