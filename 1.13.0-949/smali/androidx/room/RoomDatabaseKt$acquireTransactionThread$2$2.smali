.class final Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;
.super Ljava/lang/Object;
.source "RoomDatabase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->acquireTransactionThread(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/q<",
            "Lkotlin/coroutines/ContinuationInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $controlJob:Lkotlinx/coroutines/j2;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "-",
            "Lkotlin/coroutines/ContinuationInterceptor;",
            ">;",
            "Lkotlinx/coroutines/j2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Lkotlinx/coroutines/q;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Lkotlinx/coroutines/j2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Lkotlinx/coroutines/q;

    iget-object v2, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Lkotlinx/coroutines/j2;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;-><init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    invoke-static {v3, v0, v1, v3}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
