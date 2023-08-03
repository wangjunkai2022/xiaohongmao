.class final Lcom/google/common/util/concurrent/d1$g$d;
.super Lcom/google/common/util/concurrent/w0$a;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d1$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/util/concurrent/d1$g;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/d1$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/d1$g$d;->e:Lcom/google/common/util/concurrent/d1$g;

    .line 2
    iget-object p1, p1, Lcom/google/common/util/concurrent/d1$g;->a:Lcom/google/common/util/concurrent/w0;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/w0$a;-><init>(Lcom/google/common/util/concurrent/w0;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "ServiceManagerState.this.monitor"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/d1$g$d;->e:Lcom/google/common/util/concurrent/d1$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/d1$g;->c:Lcom/google/common/collect/k3;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/d1$g$d;->e:Lcom/google/common/util/concurrent/d1$g;

    iget-object v1, v1, Lcom/google/common/util/concurrent/d1$g;->c:Lcom/google/common/collect/k3;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/util/concurrent/d1$g$d;->e:Lcom/google/common/util/concurrent/d1$g;

    iget v1, v1, Lcom/google/common/util/concurrent/d1$g;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
