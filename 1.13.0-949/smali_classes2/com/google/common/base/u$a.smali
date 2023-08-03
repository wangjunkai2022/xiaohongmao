.class Lcom/google/common/base/u$a;
.super Lcom/google/common/base/u;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/u;->s(Ljava/lang/String;)Lcom/google/common/base/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/common/base/u;


# direct methods
.method constructor <init>(Lcom/google/common/base/u;Lcom/google/common/base/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/u$a;->c:Lcom/google/common/base/u;

    iput-object p3, p0, Lcom/google/common/base/u$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/u;-><init>(Lcom/google/common/base/u;Lcom/google/common/base/u$a;)V

    return-void
.end method


# virtual methods
.method public q()Lcom/google/common/base/u;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method r(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/common/base/u$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/u$a;->c:Lcom/google/common/base/u;

    invoke-virtual {v0, p1}, Lcom/google/common/base/u;->r(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public s(Ljava/lang/String;)Lcom/google/common/base/u;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
