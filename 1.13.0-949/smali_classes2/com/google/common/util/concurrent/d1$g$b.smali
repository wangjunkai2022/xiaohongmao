.class Lcom/google/common/util/concurrent/d1$g$b;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/d1$g;->h(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/t0$a<",
        "Lcom/google/common/util/concurrent/d1$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Service;

.field final synthetic b:Lcom/google/common/util/concurrent/d1$g;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/d1$g;Lcom/google/common/util/concurrent/Service;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/d1$g$b;->b:Lcom/google/common/util/concurrent/d1$g;

    iput-object p2, p0, Lcom/google/common/util/concurrent/d1$g$b;->a:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/d1$d;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d1$g$b;->b(Lcom/google/common/util/concurrent/d1$d;)V

    return-void
.end method

.method public b(Lcom/google/common/util/concurrent/d1$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/d1$g$b;->a:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/d1$d;->a(Lcom/google/common/util/concurrent/Service;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d1$g$b;->a:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
