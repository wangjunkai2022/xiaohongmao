.class final Lkotlinx/coroutines/internal/u0$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreadContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/internal/a1;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Lkotlinx/coroutines/internal/a1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/a1;",
        "state",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "element",
        "a",
        "(Lkotlinx/coroutines/internal/a1;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/a1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/u0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/u0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/u0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/u0$c;->a:Lkotlinx/coroutines/internal/u0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/a1;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/a1;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/a1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext$Element;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/n3;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/n3;

    iget-object v0, p1, Lkotlinx/coroutines/internal/a1;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/n3;->l0(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/a1;->a(Lkotlinx/coroutines/n3;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/a1;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/u0$c;->a(Lkotlinx/coroutines/internal/a1;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/a1;

    move-result-object p1

    return-object p1
.end method
