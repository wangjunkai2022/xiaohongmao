.class public final Lkotlinx/coroutines/b2;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/c2;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/b2;",
        "Lkotlinx/coroutines/c2;",
        "",
        "toString",
        "Lkotlinx/coroutines/v2;",
        "a",
        "Lkotlinx/coroutines/v2;",
        "f",
        "()Lkotlinx/coroutines/v2;",
        "list",
        "",
        "()Z",
        "isActive",
        "<init>",
        "(Lkotlinx/coroutines/v2;)V",
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
.field private final a:Lkotlinx/coroutines/v2;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/v2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/v2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/b2;->a:Lkotlinx/coroutines/v2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lkotlinx/coroutines/v2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/b2;->a:Lkotlinx/coroutines/v2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
