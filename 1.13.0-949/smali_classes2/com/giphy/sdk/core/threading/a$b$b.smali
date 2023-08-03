.class final Lcom/giphy/sdk/core/threading/a$b$b;
.super Ljava/lang/Object;
.source "ApiTask.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/core/threading/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "V",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/core/threading/a$b;

.field final synthetic b:Ljava/util/concurrent/ExecutionException;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/core/threading/a$b;Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/core/threading/a$b$b;->a:Lcom/giphy/sdk/core/threading/a$b;

    iput-object p2, p0, Lcom/giphy/sdk/core/threading/a$b$b;->b:Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/giphy/sdk/core/threading/a$b$b;->a:Lcom/giphy/sdk/core/threading/a$b;

    iget-object v0, v0, Lcom/giphy/sdk/core/threading/a$b;->b:Lcom/giphy/sdk/core/network/api/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/giphy/sdk/core/threading/a$b$b;->b:Ljava/util/concurrent/ExecutionException;

    invoke-interface {v0, v1, v2}, Lcom/giphy/sdk/core/network/api/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
