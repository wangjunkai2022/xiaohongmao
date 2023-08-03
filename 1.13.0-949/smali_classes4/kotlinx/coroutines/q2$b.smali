.class final Lkotlinx/coroutines/q2$b;
.super Lkotlinx/coroutines/p2;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0013\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/q2$b;",
        "Lkotlinx/coroutines/p2;",
        "",
        "cause",
        "",
        "g0",
        "Lkotlinx/coroutines/q2;",
        "e",
        "Lkotlinx/coroutines/q2;",
        "parent",
        "Lkotlinx/coroutines/q2$c;",
        "f",
        "Lkotlinx/coroutines/q2$c;",
        "state",
        "Lkotlinx/coroutines/x;",
        "g",
        "Lkotlinx/coroutines/x;",
        "child",
        "",
        "h",
        "Ljava/lang/Object;",
        "proposedUpdate",
        "<init>",
        "(Lkotlinx/coroutines/q2;Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)V",
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
.field private final e:Lkotlinx/coroutines/q2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lkotlinx/coroutines/q2$c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lkotlinx/coroutines/x;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Ljava/lang/Object;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/q2;Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/q2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/q2$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/p2;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/q2$b;->e:Lkotlinx/coroutines/q2;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/q2$b;->f:Lkotlinx/coroutines/q2$c;

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/q2$b;->g:Lkotlinx/coroutines/x;

    .line 5
    iput-object p4, p0, Lkotlinx/coroutines/q2$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g0(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/q2$b;->e:Lkotlinx/coroutines/q2;

    iget-object v0, p0, Lkotlinx/coroutines/q2$b;->f:Lkotlinx/coroutines/q2$c;

    iget-object v1, p0, Lkotlinx/coroutines/q2$b;->g:Lkotlinx/coroutines/x;

    iget-object v2, p0, Lkotlinx/coroutines/q2$b;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/q2;->P(Lkotlinx/coroutines/q2;Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q2$b;->g0(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
