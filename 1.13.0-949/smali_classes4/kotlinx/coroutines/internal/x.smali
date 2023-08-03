.class public Lkotlinx/coroutines/internal/x;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/x$c;,
        Lkotlinx/coroutines/internal/x$b;,
        Lkotlinx/coroutines/internal/x$e;,
        Lkotlinx/coroutines/internal/x$d;,
        Lkotlinx/coroutines/internal/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,671:1\n91#1,3:675\n91#1,3:678\n1#2:672\n155#3,2:673\n155#3,2:681\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n154#1:675,3\n177#1:678,3\n99#1:673,2\n546#1:681,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0017\u0018\u00002\u00020\u0001:\u0005IJKLMB\u0007\u00a2\u0006\u0004\u0008H\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0007\u001a\u00060\u0000j\u0002`\u00052\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0005H\u0082\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\"\u0010\u000f\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082\u0010\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J,\u0010\u0016\u001a\u00020\u00152\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0081\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\n2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ)\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001c\"\u000c\u0008\u0000\u0010\u001b*\u00060\u0000j\u0002`\u00052\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ,\u0010\u001f\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\u0008\u00a2\u0006\u0004\u0008\u001f\u0010 J4\u0010#\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!H\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010$JD\u0010%\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!2\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\u0008\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010\'\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0001\u00a2\u0006\u0004\u0008\'\u0010(J/\u0010+\u001a\u00020*2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u00052\u0006\u0010)\u001a\u00020\u0015H\u0001\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0001\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\n\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\nH\u0001\u00a2\u0006\u0004\u00083\u00102J\u0015\u00104\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005\u00a2\u0006\u0004\u00084\u00100J\u0017\u00106\u001a\u000c\u0012\u0008\u0012\u00060\u0000j\u0002`\u000505\u00a2\u0006\u0004\u00086\u00107J.\u00108\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u001b\u0018\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130!H\u0086\u0008\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010:\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0014\u00a2\u0006\u0004\u0008:\u00100J\'\u0010<\u001a\u00020\n2\n\u0010;\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0000\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008?\u0010@R\u0014\u0010B\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010.R\u0011\u0010\t\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u0015\u0010F\u001a\u00060\u0000j\u0002`\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008E\u00100R\u0015\u0010G\u001a\u00060\u0000j\u0002`\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u00100\u00a8\u0006N"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/x;",
        "",
        "Lkotlinx/coroutines/internal/j0;",
        "d0",
        "()Lkotlinx/coroutines/internal/j0;",
        "Lkotlinx/coroutines/internal/Node;",
        "current",
        "P",
        "(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x;",
        "next",
        "",
        "Q",
        "(Lkotlinx/coroutines/internal/x;)V",
        "Lkotlinx/coroutines/internal/h0;",
        "op",
        "M",
        "(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;",
        "node",
        "Lkotlin/Function0;",
        "",
        "condition",
        "Lkotlinx/coroutines/internal/x$c;",
        "X",
        "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/x$c;",
        "L",
        "(Lkotlinx/coroutines/internal/x;)Z",
        "F",
        "T",
        "Lkotlinx/coroutines/internal/x$b;",
        "N",
        "(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x$b;",
        "G",
        "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Z",
        "Lkotlin/Function1;",
        "predicate",
        "H",
        "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;)Z",
        "J",
        "(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z",
        "K",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z",
        "condAdd",
        "",
        "e0",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I",
        "Z",
        "()Z",
        "c0",
        "()Lkotlinx/coroutines/internal/x;",
        "U",
        "()V",
        "V",
        "b0",
        "Lkotlinx/coroutines/internal/x$e;",
        "O",
        "()Lkotlinx/coroutines/internal/x$e;",
        "a0",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Y",
        "prev",
        "f0",
        "(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "W",
        "isRemoved",
        "R",
        "()Ljava/lang/Object;",
        "S",
        "nextNode",
        "prevNode",
        "<init>",
        "a",
        "b",
        "c",
        "d",
        "e",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation build Lkotlinx/coroutines/e2;
.end annotation


# static fields
.field static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field volatile synthetic _prev:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile synthetic _removedRef:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/internal/x;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/x;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lkotlinx/coroutines/internal/x;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/internal/x;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic A(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/x;->M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/x;->Q(Lkotlinx/coroutines/internal/x;)V

    return-void
.end method

.method public static final synthetic E(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/j0;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/x;->d0()Lkotlinx/coroutines/internal/j0;

    move-result-object p0

    return-object p0
.end method

.method private final M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/x;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    move-object v3, v1

    .line 2
    :goto_2
    iget-object v4, v2, Lkotlinx/coroutines/internal/x;->_next:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v2, :cond_0

    return-object v2

    .line 3
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-ne v4, p1, :cond_4

    return-object v2

    .line 5
    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/h0;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_5

    .line 6
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/internal/h0;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/h0;->b(Lkotlinx/coroutines/internal/h0;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 7
    :cond_5
    check-cast v4, Lkotlinx/coroutines/internal/h0;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_6
    instance-of v5, v4, Lkotlinx/coroutines/internal/j0;

    if-eqz v5, :cond_9

    if-eqz v3, :cond_8

    .line 9
    sget-object v5, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/j0;

    iget-object v4, v4, Lkotlinx/coroutines/internal/j0;->a:Lkotlinx/coroutines/internal/x;

    invoke-static {v5, v3, v2, v4}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_1

    .line 10
    :cond_8
    iget-object v2, v2, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/x;

    goto :goto_2

    .line 11
    :cond_9
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/x;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2
.end method

.method private final P(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/x;

    goto :goto_0
.end method

.method private final Q(Lkotlinx/coroutines/internal/x;)V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/x;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p1, v0, p0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/x;->M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    :cond_2
    return-void
.end method

.method private final d0()Lkotlinx/coroutines/internal/j0;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j0;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/j0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/j0;-><init>(Lkotlinx/coroutines/internal/x;)V

    sget-object v1, Lkotlinx/coroutines/internal/x;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final F(Lkotlinx/coroutines/internal/x;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final G(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/x;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x$f;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/internal/x$f;-><init>(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1, p0, v0}, Lkotlinx/coroutines/internal/x;->e0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public final H(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/x;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/internal/x;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public final J(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z
    .locals 3
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/x;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/internal/x;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x$f;

    invoke-direct {v0, p1, p3}, Lkotlinx/coroutines/internal/x$f;-><init>(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object p3

    .line 3
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p3, p1, p0, v0}, Lkotlinx/coroutines/internal/x;->e0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public final K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v0, p0, p2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/x;->Q(Lkotlinx/coroutines/internal/x;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final L(Lkotlinx/coroutines/internal/x;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, p0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/x;->Q(Lkotlinx/coroutines/internal/x;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final N(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x$b;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/internal/x;",
            ">(TT;)",
            "Lkotlinx/coroutines/internal/x$b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/x$b;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/x$b;-><init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V

    return-object v0
.end method

.method public final O()Lkotlinx/coroutines/internal/x$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/x$e<",
            "Lkotlinx/coroutines/internal/x;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/x$e;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/x$e;-><init>(Lkotlinx/coroutines/internal/x;)V

    return-object v0
.end method

.method public final R()Ljava/lang/Object;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->_next:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/h0;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/h0;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/h0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final S()Lkotlinx/coroutines/internal/x;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/w;->h(Ljava/lang/Object;)Lkotlinx/coroutines/internal/x;

    move-result-object v0

    return-object v0
.end method

.method public final T()Lkotlinx/coroutines/internal/x;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/x;->M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/x;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/x;->P(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/internal/x;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final U()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/j0;

    iget-object v0, v0, Lkotlinx/coroutines/internal/j0;->a:Lkotlinx/coroutines/internal/x;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->V()V

    return-void
.end method

.method public final V()V
    .locals 3
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lkotlinx/coroutines/internal/j0;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/x;->M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    return-void

    .line 4
    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/j0;

    iget-object v0, v1, Lkotlinx/coroutines/internal/j0;->a:Lkotlinx/coroutines/internal/x;

    goto :goto_0
.end method

.method public W()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/internal/j0;

    return v0
.end method

.method public final X(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/x$c;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/x;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/internal/x$c;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/x$f;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/internal/x$f;-><init>(Lkotlinx/coroutines/internal/x;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method protected Y()Lkotlinx/coroutines/internal/x;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/j0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j0;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/j0;->a:Lkotlinx/coroutines/internal/x;

    :goto_1
    return-object v2
.end method

.method public Z()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->c0()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic a0(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/x;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    const-string v3, "T"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v0, Ljava/lang/Object;

    if-nez v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->c0()Lkotlinx/coroutines/internal/x;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 6
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->V()V

    goto :goto_0
.end method

.method public final b0()Lkotlinx/coroutines/internal/x;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/x;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->U()V

    goto :goto_0
.end method

.method public final c0()Lkotlinx/coroutines/internal/x;
    .locals 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/j0;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/j0;

    iget-object v0, v0, Lkotlinx/coroutines/internal/j0;->a:Lkotlinx/coroutines/internal/x;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/x;

    return-object v0

    .line 4
    :cond_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/x;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/x;->d0()Lkotlinx/coroutines/internal/j0;

    move-result-object v2

    .line 5
    sget-object v3, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, v0}, Lkotlinx/coroutines/internal/x;->M(Lkotlinx/coroutines/internal/h0;)Lkotlinx/coroutines/internal/x;

    return-object v0
.end method

.method public final e0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/internal/x$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/x;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/x;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p2, p3, Lkotlinx/coroutines/internal/x$c;->c:Lkotlinx/coroutines/internal/x;

    .line 4
    invoke-static {v0, p0, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public final f0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/x$g;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/x$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/v0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
