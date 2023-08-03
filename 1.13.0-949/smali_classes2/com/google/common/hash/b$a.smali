.class Lcom/google/common/hash/b$a;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/b;->n([Lcom/google/common/hash/n;)Lcom/google/common/hash/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/google/common/hash/n;

.field final synthetic b:Lcom/google/common/hash/b;


# direct methods
.method constructor <init>(Lcom/google/common/hash/b;[Lcom/google/common/hash/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/hash/b$a;->b:Lcom/google/common/hash/b;

    iput-object p2, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a([B)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->a([B)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->a([B)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic b(C)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->b(C)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public b(C)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->b(C)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic c(B)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->c(B)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public c(B)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->c(B)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/CharSequence;)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->d(Ljava/lang/CharSequence;)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->d(Ljava/lang/CharSequence;)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic e([BII)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/b$a;->e([BII)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2, p3}, Lcom/google/common/hash/n;->e([BII)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-interface {v4, p1}, Lcom/google/common/hash/n;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/b$a;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/n;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public h(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/n;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/n;->h(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public i()Lcom/google/common/hash/l;
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/b$a;->b:Lcom/google/common/hash/b;

    iget-object v1, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/b;->o([Lcom/google/common/hash/n;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->putBoolean(Z)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Z)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->putBoolean(Z)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/b$a;->putDouble(D)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(D)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/n;->putDouble(D)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->putFloat(F)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(F)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->putFloat(F)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->putInt(I)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->putInt(I)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/b$a;->putLong(J)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/n;->putLong(J)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->putShort(S)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)Lcom/google/common/hash/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, Lcom/google/common/hash/n;->putShort(S)Lcom/google/common/hash/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
