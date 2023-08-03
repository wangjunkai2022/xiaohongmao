.class final Lcom/im/freechat/domain/usecase/downloads/c$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RemoveDownloadInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/downloads/c;->c(Lcom/im/freechat/domain/usecase/downloads/c$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.domain.usecase.downloads.RemoveDownloadInteractor"
    f = "RemoveDownloadInteractor.kt"
    i = {
        0x0
    }
    l = {
        0xd
    }
    m = "run"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/domain/usecase/downloads/c;

.field d:I


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/downloads/c;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/downloads/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/downloads/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/c$b;->c:Lcom/im/freechat/domain/usecase/downloads/c;

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

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/c$b;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/im/freechat/domain/usecase/downloads/c$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/im/freechat/domain/usecase/downloads/c$b;->d:I

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/c$b;->c:Lcom/im/freechat/domain/usecase/downloads/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/im/freechat/domain/usecase/downloads/c;->c(Lcom/im/freechat/domain/usecase/downloads/c$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
