.class final Lkotlinx/coroutines/flow/y$a;
.super Ljava/lang/Object;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/l1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/y$a;",
        "Lkotlinx/coroutines/l1;",
        "",
        "dispose",
        "Lkotlinx/coroutines/flow/y;",
        "a",
        "Lkotlinx/coroutines/flow/y;",
        "flow",
        "",
        "b",
        "J",
        "index",
        "",
        "c",
        "Ljava/lang/Object;",
        "value",
        "Lkotlin/coroutines/Continuation;",
        "d",
        "Lkotlin/coroutines/Continuation;",
        "cont",
        "<init>",
        "(Lkotlinx/coroutines/flow/y;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V",
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
.field public final a:Lkotlinx/coroutines/flow/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/y<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field public final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/y;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/y;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/y<",
            "*>;J",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/y$a;->a:Lkotlinx/coroutines/flow/y;

    .line 3
    iput-wide p2, p0, Lkotlinx/coroutines/flow/y$a;->b:J

    .line 4
    iput-object p4, p0, Lkotlinx/coroutines/flow/y$a;->c:Ljava/lang/Object;

    .line 5
    iput-object p5, p0, Lkotlinx/coroutines/flow/y$a;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/y$a;->a:Lkotlinx/coroutines/flow/y;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/y;->q(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/y$a;)V

    return-void
.end method
