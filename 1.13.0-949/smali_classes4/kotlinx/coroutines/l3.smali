.class final Lkotlinx/coroutines/l3;
.super Lkotlinx/coroutines/l2;
.source "Supervisor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/l3;",
        "Lkotlinx/coroutines/l2;",
        "",
        "cause",
        "",
        "e0",
        "Lkotlinx/coroutines/j2;",
        "parent",
        "<init>",
        "(Lkotlinx/coroutines/j2;)V",
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
.method public constructor <init>(Lkotlinx/coroutines/j2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/j2;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lkotlinx/coroutines/l2;-><init>(Lkotlinx/coroutines/j2;)V

    return-void
.end method


# virtual methods
.method public e0(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
