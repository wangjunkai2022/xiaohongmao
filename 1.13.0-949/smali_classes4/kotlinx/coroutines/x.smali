.class public final Lkotlinx/coroutines/x;
.super Lkotlinx/coroutines/k2;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/w;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/x;",
        "Lkotlinx/coroutines/k2;",
        "Lkotlinx/coroutines/w;",
        "",
        "cause",
        "",
        "g0",
        "",
        "e",
        "Lkotlinx/coroutines/y;",
        "Lkotlinx/coroutines/y;",
        "childJob",
        "Lkotlinx/coroutines/j2;",
        "getParent",
        "()Lkotlinx/coroutines/j2;",
        "parent",
        "<init>",
        "(Lkotlinx/coroutines/y;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lkotlinx/coroutines/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/y;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/k2;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/x;->e:Lkotlinx/coroutines/y;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lkotlinx/coroutines/p2;->h0()Lkotlinx/coroutines/q2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/q2;->e0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public g0(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/x;->e:Lkotlinx/coroutines/y;

    invoke-virtual {p0}, Lkotlinx/coroutines/p2;->h0()Lkotlinx/coroutines/q2;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/y;->E(Lkotlinx/coroutines/a3;)V

    return-void
.end method

.method public getParent()Lkotlinx/coroutines/j2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/p2;->h0()Lkotlinx/coroutines/q2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/x;->g0(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
