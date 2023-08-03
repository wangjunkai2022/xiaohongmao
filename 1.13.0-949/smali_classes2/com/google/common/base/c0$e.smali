.class Lcom/google/common/base/c0$e;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/b0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final b:J


# instance fields
.field final a:Lcom/google/common/base/g;


# direct methods
.method constructor <init>(Lcom/google/common/base/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/g;

    iput-object p1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v0, p1}, Lcom/google/common/base/g;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/f;->b()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/common/base/c0$e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/base/c0$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/base/c0$e;

    .line 3
    iget-object v0, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v0}, Lcom/google/common/base/g;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v2}, Lcom/google/common/base/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/g;->b()I

    move-result v0

    iget-object p1, p1, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {p1}, Lcom/google/common/base/g;->b()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v1}, Lcom/google/common/base/g;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v1}, Lcom/google/common/base/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/w;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    .line 2
    invoke-static {v0}, Lcom/google/common/base/v;->c(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    .line 3
    invoke-virtual {v1}, Lcom/google/common/base/g;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    .line 4
    invoke-virtual {v1}, Lcom/google/common/base/g;->b()I

    move-result v1

    const-string v2, "pattern.flags"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/v$b;->d(Ljava/lang/String;I)Lcom/google/common/base/v$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/v$b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Predicates.contains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
