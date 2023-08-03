.class Lcom/google/common/hash/k$e;
.super Ljava/io/OutputStream;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/google/common/hash/a0;


# direct methods
.method constructor <init>(Lcom/google/common/hash/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/a0;

    iput-object p1, p0, Lcom/google/common/hash/k$e;->a:Lcom/google/common/hash/a0;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/hash/k$e;->a:Lcom/google/common/hash/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/k$e;->a:Lcom/google/common/hash/a0;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/google/common/hash/a0;->c(B)Lcom/google/common/hash/a0;

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/k$e;->a:Lcom/google/common/hash/a0;

    invoke-interface {v0, p1}, Lcom/google/common/hash/a0;->a([B)Lcom/google/common/hash/a0;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/k$e;->a:Lcom/google/common/hash/a0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/a0;->e([BII)Lcom/google/common/hash/a0;

    return-void
.end method
