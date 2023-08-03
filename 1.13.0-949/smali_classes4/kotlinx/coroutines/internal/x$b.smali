.class public Lkotlinx/coroutines/internal/x$b;
.super Lkotlinx/coroutines/internal/x$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lkotlinx/coroutines/internal/x;",
        ">",
        "Lkotlinx/coroutines/internal/x$a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n1#2:672\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000*\u000c\u0008\u0000\u0010\u0003*\u00060\u0001j\u0002`\u00022\u00020\u0004B\u001b\u0012\n\u0010\u001a\u001a\u00060\u0001j\u0002`\u0002\u0012\u0006\u0010\u001c\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\"\u0010\u0017J\u001f\u0010\u0007\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\r\u001a\u00020\u000c2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0014\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\'\u0010\u0016\u001a\u00020\u00112\n\u0010\t\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u00060\u0001j\u0002`\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u001c\u0010\u001f\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00028DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010!\u001a\u00060\u0001j\u0002`\u00028DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/x$b;",
        "Lkotlinx/coroutines/internal/x;",
        "Lkotlinx/coroutines/internal/Node;",
        "T",
        "Lkotlinx/coroutines/internal/x$a;",
        "Lkotlinx/coroutines/internal/h0;",
        "op",
        "m",
        "(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;",
        "affected",
        "",
        "next",
        "",
        "l",
        "(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/internal/x$d;",
        "prepareOp",
        "",
        "g",
        "(Lkotlinx/coroutines/internal/x$d;)V",
        "n",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;",
        "f",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V",
        "b",
        "Lkotlinx/coroutines/internal/x;",
        "queue",
        "c",
        "node",
        "h",
        "()Lkotlinx/coroutines/internal/x;",
        "affectedNode",
        "i",
        "originalNext",
        "<init>",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _affectedNode:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public final b:Lkotlinx/coroutines/internal/x;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/internal/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/x$b;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_affectedNode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/x$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/x;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/x$a;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/x$b;->c:Lkotlinx/coroutines/internal/x;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/x$b;->_affectedNode:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected f(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/internal/x$b;->c:Lkotlinx/coroutines/internal/x;

    iget-object p2, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/x;->D(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V

    return-void
.end method

.method public g(Lkotlinx/coroutines/internal/x$d;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/x$d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object v0, Lkotlinx/coroutines/internal/x$b;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p1, p1, Lkotlinx/coroutines/internal/x$d;->a:Lkotlinx/coroutines/internal/x;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected final h()Lkotlinx/coroutines/internal/x;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$b;->_affectedNode:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/x;

    return-object v0
.end method

.method protected final i()Lkotlinx/coroutines/internal/x;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    return-object v0
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

    iget-object p1, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final m(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/x;->A(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    move-result-object p1

    return-object p1
.end method

.method public n(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object p2, p0, Lkotlinx/coroutines/internal/x$b;->c:Lkotlinx/coroutines/internal/x;

    sget-object v0, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p2, p2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/internal/x$b;->c:Lkotlinx/coroutines/internal/x;

    sget-object p2, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, Lkotlinx/coroutines/internal/x$b;->b:Lkotlinx/coroutines/internal/x;

    invoke-static {p2, p1, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/internal/x$b;->c:Lkotlinx/coroutines/internal/x;

    return-object p1
.end method
