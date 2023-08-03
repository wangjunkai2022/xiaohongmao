.class public final Lkotlinx/coroutines/scheduling/c;
.super Lkotlinx/coroutines/scheduling/h;
.source "Dispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/c;",
        "Lkotlinx/coroutines/scheduling/h;",
        "",
        "v0",
        "()V",
        "close",
        "",
        "toString",
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
.field public static final g:Lkotlinx/coroutines/scheduling/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/c;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    sget v1, Lkotlinx/coroutines/scheduling/n;->c:I

    sget v2, Lkotlinx/coroutines/scheduling/n;->d:I

    .line 2
    sget-wide v3, Lkotlinx/coroutines/scheduling/n;->e:J

    const-string v5, "DefaultDispatcher"

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/h;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method

.method public final v0()V
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/scheduling/h;->close()V

    return-void
.end method
