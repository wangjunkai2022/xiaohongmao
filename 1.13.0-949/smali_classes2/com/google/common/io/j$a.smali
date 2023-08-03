.class final Lcom/google/common/io/j$a;
.super Lcom/google/common/io/f;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/nio/charset/Charset;

.field final synthetic b:Lcom/google/common/io/j;


# direct methods
.method constructor <init>(Lcom/google/common/io/j;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/j$a;->b:Lcom/google/common/io/j;

    invoke-direct {p0}, Lcom/google/common/io/f;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/io/j$a;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/j$a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/io/j$a;->b:Lcom/google/common/io/j;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/io/f;->a(Ljava/nio/charset/Charset;)Lcom/google/common/io/j;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/common/io/a0;

    iget-object v1, p0, Lcom/google/common/io/j$a;->b:Lcom/google/common/io/j;

    invoke-virtual {v1}, Lcom/google/common/io/j;->m()Ljava/io/Reader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/j$a;->a:Ljava/nio/charset/Charset;

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/a0;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/io/j$a;->b:Lcom/google/common/io/j;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asByteSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/io/j$a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
