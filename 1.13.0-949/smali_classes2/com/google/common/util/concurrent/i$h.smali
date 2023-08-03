.class final Lcom/google/common/util/concurrent/i$h;
.super Lcom/google/common/util/concurrent/w0$a;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/util/concurrent/i;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/i$h;->e:Lcom/google/common/util/concurrent/i;

    .line 2
    invoke-static {p1}, Lcom/google/common/util/concurrent/i;->j(Lcom/google/common/util/concurrent/i;)Lcom/google/common/util/concurrent/w0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/w0$a;-><init>(Lcom/google/common/util/concurrent/w0;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/i$h;->e:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
