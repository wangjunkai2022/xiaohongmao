.class final Lkotlinx/coroutines/rx2/a$a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx2/a$a;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker$schedule$1\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,181:1\n17#2:182\n*S KotlinDebug\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker$schedule$1\n*L\n89#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u001c\u0010\u0004\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "task",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "a",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/rx2/a$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/rx2/a$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a$a$b;->a:Lkotlinx/coroutines/rx2/a$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/a$a$b;->a:Lkotlinx/coroutines/rx2/a$a;

    .line 2
    new-instance v1, Lkotlinx/coroutines/rx2/a$a$b$a;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/rx2/a$a$b$a;-><init>(Lkotlinx/coroutines/rx2/a$a;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/a$a$b;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method
