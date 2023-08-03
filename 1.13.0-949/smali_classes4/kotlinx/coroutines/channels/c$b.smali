.class Lkotlinx/coroutines/channels/c$b;
.super Lkotlinx/coroutines/internal/x$b;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/x$b<",
        "Lkotlinx/coroutines/channels/c$a<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0012\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0003`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/c$b;",
        "E",
        "Lkotlinx/coroutines/internal/x$b;",
        "Lkotlinx/coroutines/channels/c$a;",
        "Lkotlinx/coroutines/internal/AddLastDesc;",
        "Lkotlinx/coroutines/internal/x;",
        "affected",
        "",
        "e",
        "Lkotlinx/coroutines/internal/v;",
        "queue",
        "element",
        "<init>",
        "(Lkotlinx/coroutines/internal/v;Ljava/lang/Object;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/v;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/v;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/v;",
            "TE;)V"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/c$a;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/c$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/x$b;-><init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V

    return-void
.end method


# virtual methods
.method protected e(Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/v;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p1, Lkotlinx/coroutines/channels/g0;

    if-eqz p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/p0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
