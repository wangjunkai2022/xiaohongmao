.class public final Lkotlinx/coroutines/channels/j;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "E",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/i;",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(I)Lkotlinx/coroutines/channels/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/z2;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/g;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/g;-><init>(I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported UNLIMITED capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported 0 capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/w;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/w;-><init>()V

    goto :goto_0

    .line 5
    :cond_3
    new-instance v0, Lkotlinx/coroutines/channels/g;

    sget-object p0, Lkotlinx/coroutines/channels/m;->l2:Lkotlinx/coroutines/channels/m$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/m$b;->a()I

    move-result p0

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/g;-><init>(I)V

    :goto_0
    return-object v0
.end method
