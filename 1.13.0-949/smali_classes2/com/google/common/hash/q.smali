.class public final Lcom/google/common/hash/q;
.super Ljava/io/FilterOutputStream;
.source "HashingOutputStream.java"


# annotations
.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Lcom/google/common/hash/n;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/m;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    invoke-interface {p1}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/n;

    iput-object p1, p0, Lcom/google/common/hash/q;->a:Lcom/google/common/hash/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/hash/l;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/q;->a:Lcom/google/common/hash/n;

    invoke-interface {v0}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/q;->a:Lcom/google/common/hash/n;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/hash/n;->c(B)Lcom/google/common/hash/n;

    .line 2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/q;->a:Lcom/google/common/hash/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/n;->e([BII)Lcom/google/common/hash/n;

    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
