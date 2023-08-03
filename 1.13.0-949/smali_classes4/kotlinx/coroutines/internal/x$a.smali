.class public abstract Lkotlinx/coroutines/internal/x$a;
.super Lkotlinx/coroutines/internal/b;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n1#2:672\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0018\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0014J\u001c\u0010\u000c\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\n\u001a\u00020\u0008H\u0014J \u0010\u000e\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H$J \u0010\u000f\u001a\u00020\u00082\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u00052\n\u0010\n\u001a\u00060\u0004j\u0002`\u0005H&J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0014\u0010\u0014\u001a\u00020\r2\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0015J\u001c\u0010\u0018\u001a\u00020\r2\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008R\u001c\u0010\u001b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/internal/x$a;",
        "Lkotlinx/coroutines/internal/b;",
        "Lkotlinx/coroutines/internal/h0;",
        "op",
        "Lkotlinx/coroutines/internal/x;",
        "Lkotlinx/coroutines/internal/Node;",
        "m",
        "affected",
        "",
        "e",
        "next",
        "",
        "l",
        "",
        "f",
        "n",
        "Lkotlinx/coroutines/internal/x$d;",
        "prepareOp",
        "g",
        "j",
        "k",
        "Lkotlinx/coroutines/internal/d;",
        "c",
        "failure",
        "a",
        "h",
        "()Lkotlinx/coroutines/internal/x;",
        "affectedNode",
        "i",
        "originalNext",
        "<init>",
        "()V",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/d;Ljava/lang/Object;)V
    .locals 4
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

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$a;->h()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$a;->i()Lkotlinx/coroutines/internal/x;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/x$a;->n(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 4
    :goto_1
    sget-object v3, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/x$a;->f(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V

    :cond_4
    return-void
.end method

.method public final c(Lkotlinx/coroutines/internal/d;)Ljava/lang/Object;
    .locals 5
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
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/x$a;->m(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1

    .line 2
    :cond_1
    iget-object v1, v0, Lkotlinx/coroutines/internal/x;->_next:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    return-object v2

    .line 3
    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 4
    :cond_3
    instance-of v3, v1, Lkotlinx/coroutines/internal/h0;

    if-eqz v3, :cond_5

    .line 5
    check-cast v1, Lkotlinx/coroutines/internal/h0;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/internal/h0;->b(Lkotlinx/coroutines/internal/h0;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    sget-object p1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_4
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/x$a;->e(Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    return-object v3

    .line 9
    :cond_6
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/x$a;->l(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 10
    :cond_7
    new-instance v3, Lkotlinx/coroutines/internal/x$d;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/internal/x;

    invoke-direct {v3, v0, v4, p0}, Lkotlinx/coroutines/internal/x$d;-><init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$a;)V

    .line 11
    sget-object v4, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/internal/x$d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    sget-object v0, Lkotlinx/coroutines/internal/y;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_8

    goto :goto_0

    :cond_8
    return-object v2

    :catchall_0
    move-exception p1

    .line 14
    sget-object v2, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, v0, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    throw p1
.end method

.method protected e(Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract f(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract g(Lkotlinx/coroutines/internal/x$d;)V
    .param p1    # Lkotlinx/coroutines/internal/x$d;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method protected abstract h()Lkotlinx/coroutines/internal/x;
    .annotation build Lm8/h;
    .end annotation
.end method

.method protected abstract i()Lkotlinx/coroutines/internal/x;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public j(Lkotlinx/coroutines/internal/x$d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x$d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/x$a;->g(Lkotlinx/coroutines/internal/x$d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Lkotlinx/coroutines/internal/x;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method protected l(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected m(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$a;->h()Lkotlinx/coroutines/internal/x;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public abstract n(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method
