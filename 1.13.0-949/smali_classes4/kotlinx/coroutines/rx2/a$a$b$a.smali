.class public final Lkotlinx/coroutines/rx2/a$a$b$a;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx2/a$a$b;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker$schedule$1\n*L\n1#1,18:1\n89#2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "run",
        "()V",
        "kotlinx/coroutines/f3$a",
        "<anonymous>"
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

.field final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/rx2/a$a;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a$a$b$a;->a:Lkotlinx/coroutines/rx2/a$a;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/a$a$b$a;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/rx2/a$a$b$a;->a:Lkotlinx/coroutines/rx2/a$a;

    invoke-static {v0}, Lkotlinx/coroutines/rx2/a$a;->e(Lkotlinx/coroutines/rx2/a$a;)Lkotlinx/coroutines/channels/m;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/rx2/a$a$b$a;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
