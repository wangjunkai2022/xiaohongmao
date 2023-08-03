.class public Lcom/fasterxml/jackson/core/io/d;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/core/io/ContentReference;

.field protected final b:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected c:Lcom/fasterxml/jackson/core/JsonEncoding;

.field protected final d:Z

.field protected final e:Lcom/fasterxml/jackson/core/util/a;

.field protected f:[B

.field protected g:[B

.field protected h:[B

.field protected i:[C

.field protected j:[C

.field protected k:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/d;->a:Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->b:Ljava/lang/Object;

    .line 5
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/d;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;Ljava/lang/Object;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/d;-><init>(Lcom/fasterxml/jackson/core/util/a;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-void
.end method

.method private A()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer smaller than original"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final b([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/d;->A()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final c([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/d;->A()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    return-object v0
.end method

.method public e(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->b(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    return-object p1
.end method

.method public f()[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->j:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->c(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->j:[C

    return-object v0
.end method

.method public g(I)[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->d(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    return-object p1
.end method

.method public h()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    return-object v0
.end method

.method public i(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->b(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    return-object p1
.end method

.method public j()[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->c(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    return-object v0
.end method

.method public k(I)[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->d(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    return-object p1
.end method

.method public l()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    return-object v0
.end method

.method public m(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->b(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    return-object p1
.end method

.method public n()Lcom/fasterxml/jackson/core/util/j;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/j;-><init>(Lcom/fasterxml/jackson/core/util/a;)V

    return-object v0
.end method

.method public o()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->a:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method public p()Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object v0
.end method

.method public q()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/d;->d:Z

    return v0
.end method

.method public s([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->b([B[B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->h:[B

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->i(I[B)V

    :cond_0
    return-void
.end method

.method public t([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->j:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->c([C[C)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->j:[C

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->j(I[C)V

    :cond_0
    return-void
.end method

.method public u([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->c([C[C)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->k:[C

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->j(I[C)V

    :cond_0
    return-void
.end method

.method public v([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->b([B[B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->f:[B

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->i(I[B)V

    :cond_0
    return-void
.end method

.method public w([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->c([C[C)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->i:[C

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->j(I[C)V

    :cond_0
    return-void
.end method

.method public x([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/d;->b([B[B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->g:[B

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/a;->i(I[B)V

    :cond_0
    return-void
.end method

.method public y(Lcom/fasterxml/jackson/core/JsonEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-void
.end method

.method public z(Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/io/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object p0
.end method
