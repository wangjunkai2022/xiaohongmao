.class Lcom/google/common/util/concurrent/i$e;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/i;->p(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/t0$a<",
        "Lcom/google/common/util/concurrent/Service$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Service$State;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/google/common/util/concurrent/i;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/i$e;->c:Lcom/google/common/util/concurrent/i;

    iput-object p2, p0, Lcom/google/common/util/concurrent/i$e;->a:Lcom/google/common/util/concurrent/Service$State;

    iput-object p3, p0, Lcom/google/common/util/concurrent/i$e;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/Service$b;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/i$e;->b(Lcom/google/common/util/concurrent/Service$b;)V

    return-void
.end method

.method public b(Lcom/google/common/util/concurrent/Service$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/i$e;->a:Lcom/google/common/util/concurrent/Service$State;

    iget-object v1, p0, Lcom/google/common/util/concurrent/i$e;->b:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/Service$b;->a(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/i$e;->a:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/i$e;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
