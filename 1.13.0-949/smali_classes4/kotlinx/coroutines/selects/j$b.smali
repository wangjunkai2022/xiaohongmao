.class final Lkotlinx/coroutines/selects/j$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectUnbiased.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/j;->y(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003 \u0000H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Q",
        "R",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/d<",
            "TQ;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlinx/coroutines/selects/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TQ;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/d;Lkotlinx/coroutines/selects/j;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/d<",
            "+TQ;>;",
            "Lkotlinx/coroutines/selects/j<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/j$b;->a:Lkotlinx/coroutines/selects/d;

    iput-object p2, p0, Lkotlinx/coroutines/selects/j$b;->b:Lkotlinx/coroutines/selects/j;

    iput-object p3, p0, Lkotlinx/coroutines/selects/j$b;->c:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/j$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/selects/j$b;->a:Lkotlinx/coroutines/selects/d;

    iget-object v1, p0, Lkotlinx/coroutines/selects/j$b;->b:Lkotlinx/coroutines/selects/j;

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/j;->b()Lkotlinx/coroutines/selects/b;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/selects/j$b;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/selects/d;->c(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
