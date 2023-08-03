.class public final Lkotlinx/coroutines/internal/x$d;
.super Lkotlinx/coroutines/internal/h0;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n1#2:672\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0012\n\u0010\u0003\u001a\u00060\tj\u0002`\n\u0012\n\u0010\u000e\u001a\u00060\tj\u0002`\n\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016R\u0018\u0010\u0003\u001a\u00060\tj\u0002`\n8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u000e\u001a\u00060\tj\u0002`\n8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0010R\u0018\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/x$d;",
        "Lkotlinx/coroutines/internal/h0;",
        "",
        "affected",
        "c",
        "",
        "d",
        "",
        "toString",
        "Lkotlinx/coroutines/internal/x;",
        "Lkotlinx/coroutines/internal/Node;",
        "a",
        "Lkotlinx/coroutines/internal/x;",
        "b",
        "next",
        "Lkotlinx/coroutines/internal/x$a;",
        "Lkotlinx/coroutines/internal/x$a;",
        "desc",
        "Lkotlinx/coroutines/internal/d;",
        "()Lkotlinx/coroutines/internal/d;",
        "atomicOp",
        "<init>",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$a;)V",
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
.field public final a:Lkotlinx/coroutines/internal/x;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public final b:Lkotlinx/coroutines/internal/x;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/internal/x$a;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$a;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/internal/x$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/x$d;->a:Lkotlinx/coroutines/internal/x;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/x$d;->b:Lkotlinx/coroutines/internal/x;

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/internal/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/d<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->b()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/x;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/x$a;->j(Lkotlinx/coroutines/internal/x$d;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lkotlinx/coroutines/internal/y;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->b:Lkotlinx/coroutines/internal/x;

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/internal/x;->E(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/j0;

    move-result-object v3

    .line 6
    sget-object v4, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p1, p0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/x$a;->k(Lkotlinx/coroutines/internal/x;)V

    .line 8
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/x;->A(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$d;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$d;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/d;->f()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_0
    sget-object v1, Lkotlinx/coroutines/internal/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$d;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    iget-object v1, p0, Lkotlinx/coroutines/internal/x$d;->b:Lkotlinx/coroutines/internal/x;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/x$a;->n(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->b:Lkotlinx/coroutines/internal/x;

    .line 14
    :goto_1
    sget-object v1, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$d;->c:Lkotlinx/coroutines/internal/x$a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/x$a;->g(Lkotlinx/coroutines/internal/x$d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareOp(op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x$d;->a()Lkotlinx/coroutines/internal/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
