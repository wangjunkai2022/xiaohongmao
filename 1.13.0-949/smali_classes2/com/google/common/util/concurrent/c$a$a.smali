.class Lcom/google/common/util/concurrent/c$a$a;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Lcom/google/common/base/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/c$a;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/i0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/c$a;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c$a$a;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$a;->a:Lcom/google/common/util/concurrent/c$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/c$a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
