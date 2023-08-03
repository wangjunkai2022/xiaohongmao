.class final Lkotlinx/coroutines/sync/d$e;
.super Lkotlinx/coroutines/internal/b;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/d$e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\u001e\u0010\u0008\u001a\u00020\u00072\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016R\u0014\u0010\u000c\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/d$e;",
        "Lkotlinx/coroutines/internal/b;",
        "Lkotlinx/coroutines/internal/d;",
        "op",
        "",
        "c",
        "failure",
        "",
        "a",
        "Lkotlinx/coroutines/sync/d;",
        "b",
        "Lkotlinx/coroutines/sync/d;",
        "mutex",
        "Ljava/lang/Object;",
        "owner",
        "<init>",
        "(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;)V",
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
.field public final b:Lkotlinx/coroutines/sync/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/sync/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/sync/d$e;->b:Lkotlinx/coroutines/sync/d;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/sync/d$e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/d;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/d<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lkotlinx/coroutines/sync/e;->d()Lkotlinx/coroutines/sync/b;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/sync/d$e;->c:Ljava/lang/Object;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlinx/coroutines/sync/e;->c()Lkotlinx/coroutines/sync/b;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/sync/b;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/sync/b;-><init>(Ljava/lang/Object;)V

    move-object p2, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/d$e;->b:Lkotlinx/coroutines/sync/d;

    sget-object v1, Lkotlinx/coroutines/sync/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, v0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lkotlinx/coroutines/internal/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/internal/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/d$e$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/d$e$a;-><init>(Lkotlinx/coroutines/sync/d$e;Lkotlinx/coroutines/internal/d;)V

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/sync/d$e;->b:Lkotlinx/coroutines/sync/d;

    sget-object v1, Lkotlinx/coroutines/sync/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/e;->d()Lkotlinx/coroutines/sync/b;

    move-result-object v2

    invoke-static {v1, p1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/e;->f()Lkotlinx/coroutines/internal/p0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/sync/d$e;->b:Lkotlinx/coroutines/sync/d;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/sync/d$e$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
