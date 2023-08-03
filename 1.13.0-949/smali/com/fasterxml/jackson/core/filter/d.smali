.class public Lcom/fasterxml/jackson/core/filter/d;
.super Lcom/fasterxml/jackson/core/f;
.source "TokenFilterContext.java"


# instance fields
.field protected final f:Lcom/fasterxml/jackson/core/filter/d;

.field protected g:Lcom/fasterxml/jackson/core/filter/d;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected j:Z

.field protected k:Z


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/core/filter/d;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/f;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 6
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    return-void
.end method

.method private s(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/d;->s(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    if-eqz v0, :cond_4

    .line 6
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    .line 9
    iget v2, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    .line 11
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    if-eqz v0, :cond_4

    .line 12
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v2, v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static z(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/d;
    .locals 4

    new-instance v0, Lcom/fasterxml/jackson/core/filter/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/fasterxml/jackson/core/filter/d;-><init>(ILcom/fasterxml/jackson/core/filter/d;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public B(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/filter/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public C()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public final D()Lcom/fasterxml/jackson/core/filter/d;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    return v0
.end method

.method public F()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    .line 8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected G(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    return-object p0
.end method

.method public H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object p1
.end method

.method public I()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    iput-object v0, v2, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 4
    iget-object v1, v1, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/d;->s(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->k:Z

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    .line 8
    iget v1, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/d;->D()Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

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

    return-void
.end method

.method protected t(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/d;->t(Ljava/lang/StringBuilder;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7b

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v0, 0x7d

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5b

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "/"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/d;->t(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/f;->b:I

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->h(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->s(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->R0()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->b()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    return-object p1
.end method

.method public w(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/d;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->S0()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->c()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/d;->f:Lcom/fasterxml/jackson/core/filter/d;

    return-object p1
.end method

.method public x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->g:Lcom/fasterxml/jackson/core/filter/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/filter/d;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fasterxml/jackson/core/filter/d;-><init>(ILcom/fasterxml/jackson/core/filter/d;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->g:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/filter/d;->G(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->g:Lcom/fasterxml/jackson/core/filter/d;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/filter/d;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fasterxml/jackson/core/filter/d;-><init>(ILcom/fasterxml/jackson/core/filter/d;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/d;->g:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/filter/d;->G(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    return-object p1
.end method
