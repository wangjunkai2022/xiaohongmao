.class public final Lcom/fasterxml/jackson/core/json/d;
.super Lcom/fasterxml/jackson/core/f;
.source "JsonReadContext.java"


# instance fields
.field protected final f:Lcom/fasterxml/jackson/core/json/d;

.field protected g:Lcom/fasterxml/jackson/core/json/b;

.field protected h:Lcom/fasterxml/jackson/core/json/d;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/Object;

.field protected k:I

.field protected l:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/json/d;Lcom/fasterxml/jackson/core/json/b;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->f:Lcom/fasterxml/jackson/core/json/d;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    .line 4
    iput p3, p0, Lcom/fasterxml/jackson/core/f;->a:I

    .line 5
    iput p4, p0, Lcom/fasterxml/jackson/core/json/d;->k:I

    .line 6
    iput p5, p0, Lcom/fasterxml/jackson/core/json/d;->l:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    return-void
.end method

.method private s(Lcom/fasterxml/jackson/core/json/b;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/b;->c()Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static w(IILcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/core/json/d;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p2

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/d;-><init>(Lcom/fasterxml/jackson/core/json/d;Lcom/fasterxml/jackson/core/json/b;III)V

    return-object v6
.end method

.method public static x(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/core/json/d;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/d;-><init>(Lcom/fasterxml/jackson/core/json/d;Lcom/fasterxml/jackson/core/json/b;III)V

    return-object v6
.end method


# virtual methods
.method public A()Lcom/fasterxml/jackson/core/json/d;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->f:Lcom/fasterxml/jackson/core/json/d;

    return-object v0
.end method

.method public B(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 3
    iput p2, p0, Lcom/fasterxml/jackson/core/json/d;->k:I

    .line 4
    iput p3, p0, Lcom/fasterxml/jackson/core/json/d;->l:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->i:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->j:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/b;->e()V

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->i:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/d;->s(Lcom/fasterxml/jackson/core/json/b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public D(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic e()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/d;->A()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/d;->q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v4, p0, Lcom/fasterxml/jackson/core/json/d;->k:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/d;->l:I

    const-wide/16 v2, -0x1

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V

    return-object v6
.end method

.method public t()Lcom/fasterxml/jackson/core/json/d;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->j:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->f:Lcom/fasterxml/jackson/core/json/d;

    return-object v0
.end method

.method public u(II)Lcom/fasterxml/jackson/core/json/d;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->h:Lcom/fasterxml/jackson/core/json/d;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/json/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/b;->a()Lcom/fasterxml/jackson/core/json/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/d;-><init>(Lcom/fasterxml/jackson/core/json/d;Lcom/fasterxml/jackson/core/json/b;III)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->h:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/json/d;->B(III)V

    :goto_1
    return-object v0
.end method

.method public v(II)Lcom/fasterxml/jackson/core/json/d;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->h:Lcom/fasterxml/jackson/core/json/d;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/json/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/b;->a()Lcom/fasterxml/jackson/core/json/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x2

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/d;-><init>(Lcom/fasterxml/jackson/core/json/d;Lcom/fasterxml/jackson/core/json/b;III)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->h:Lcom/fasterxml/jackson/core/json/d;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/json/d;->B(III)V

    return-object v0
.end method

.method public y()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public z()Lcom/fasterxml/jackson/core/json/b;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/d;->g:Lcom/fasterxml/jackson/core/json/b;

    return-object v0
.end method
