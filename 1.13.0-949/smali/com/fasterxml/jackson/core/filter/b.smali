.class public Lcom/fasterxml/jackson/core/filter/b;
.super Lcom/fasterxml/jackson/core/util/h;
.source "FilteringParserDelegate.java"


# instance fields
.field protected i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected j:Z

.field protected k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field protected l:Lcom/fasterxml/jackson/core/JsonToken;

.field protected m:Lcom/fasterxml/jackson/core/JsonToken;

.field protected n:Lcom/fasterxml/jackson/core/filter/d;

.field protected o:Lcom/fasterxml/jackson/core/filter/d;

.field protected p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected q:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/h;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/b;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 5
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/d;->z(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 7
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/b;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/filter/b;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V

    return-void
.end method

.method private X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/d;->F()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    if-eq p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/d;->B(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/d;->F()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const-string p1, "Unexpected problem: chain of filtered context broken"

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Internal error: failed to locate expected buffered tokens"

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method private final a2()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/b;->q:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/filter/b;->j:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/filter/b;->q:I

    return v1
.end method


# virtual methods
.method public A0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->A0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public A1(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can not currently override name during filtering read"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C0()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->C0()F

    move-result v0

    return v0
.end method

.method public D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I

    move-result p1

    return p1
.end method

.method public F0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->F0()I

    move-result v0

    return v0
.end method

.method public G0()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->m:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public H0()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->H0()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->m:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method

.method public J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public K0()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->K0()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->W1()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public N0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->W1()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    return-object v0
.end method

.method public Q0()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->Q0()S

    move-result v0

    return v0
.end method

.method public S0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T0()[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->T0()[C

    move-result-object v0

    return-object v0
.end method

.method public U0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U0()I

    move-result v0

    return v0
.end method

.method public U1()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    .line 3
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0
.end method

.method public V0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->V0()I

    move-result v0

    return v0
.end method

.method public W()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method protected W1()Lcom/fasterxml/jackson/core/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0
.end method

.method public final X()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    :goto_0
    return v0
.end method

.method public Y0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->Y0()Z

    move-result v0

    return v0
.end method

.method protected final Y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    const/4 v4, 0x2

    if-eq v1, v4, :cond_11

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 5
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_2

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    if-eqz v1, :cond_0

    .line 7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 9
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->v(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->u0()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    .line 14
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v2, v3, :cond_5

    .line 15
    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_5
    if-nez v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 21
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 22
    :cond_7
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v3, :cond_9

    .line 23
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_0

    .line 25
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 31
    :cond_a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 32
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_b

    .line 33
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 34
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_b
    if-nez v1, :cond_c

    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 36
    :cond_c
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_d

    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_d
    if-eq v1, v4, :cond_e

    .line 38
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 39
    :cond_e
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_f

    .line 40
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 41
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_f
    if-eqz v1, :cond_10

    .line 42
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_10

    .line 43
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 44
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 46
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 49
    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->E()Z

    move-result v1

    .line 50
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 51
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v2, v3, :cond_12

    .line 52
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->b()V

    .line 53
    :cond_12
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->D()Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 54
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v1, :cond_0

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 56
    :cond_13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 57
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_14

    .line 58
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 59
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_14
    if-nez v1, :cond_15

    .line 60
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 61
    :cond_15
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_16

    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_16
    if-eq v1, v4, :cond_17

    .line 63
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 64
    :cond_17
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_18

    .line 65
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 66
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_18
    if-eqz v1, :cond_19

    .line 67
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_19

    .line 68
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 69
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 70
    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 71
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public Z0(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->Z0(Z)Z

    move-result p1

    return p1
.end method

.method protected final Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    const/4 v4, 0x4

    if-eq v1, v4, :cond_e

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 8
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->v(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->u0()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 13
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_5

    .line 14
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 15
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 21
    :cond_7
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    goto/16 :goto_0

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 27
    :cond_a
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_b

    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 29
    :cond_b
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_c

    .line 30
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 31
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v0, :cond_d

    .line 32
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v4, :cond_d

    .line 33
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 34
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 35
    :cond_d
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    goto/16 :goto_0

    .line 36
    :cond_e
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 37
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v4, :cond_f

    .line 38
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->b()V

    .line 39
    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    if-ne v1, p1, :cond_10

    const/4 v4, 0x1

    goto :goto_1

    :cond_10
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_11

    .line 40
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->E()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    .line 41
    :cond_11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->D()Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 42
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v2, :cond_0

    return-object v0

    .line 43
    :cond_12
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 44
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_13

    .line 45
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0

    :cond_13
    if-nez v1, :cond_14

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 47
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_15

    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    :cond_15
    if-eq v0, v4, :cond_16

    .line 49
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 50
    :cond_16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v4, :cond_17

    .line 51
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 52
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_17
    if-eqz v0, :cond_18

    .line 53
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v4, :cond_18

    .line 54
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 55
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/b;->X1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 56
    :cond_18
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    goto/16 :goto_0
.end method

.method public a1()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->a1()D

    move-result-wide v0

    return-wide v0
.end method

.method public b1(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->b1(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public b2()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public c1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->c1()I

    move-result v0

    return v0
.end method

.method public c2()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/b;->q:I

    return v0
.end method

.method public d1(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->d1(I)I

    move-result p1

    return p1
.end method

.method public e1()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->e1()J

    move-result-wide v0

    return-wide v0
.end method

.method public f1(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->f1(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->g1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->M()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i1()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->j1()Z

    move-result v0

    return v0
.end method

.method public final k1(Lcom/fasterxml/jackson/core/JsonToken;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l1(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public n0()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->n0()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    return-object p1
.end method

.method public p1()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q0()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->q0()Z

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r0()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->r0()B

    move-result v0

    return v0
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->t0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->W1()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public v0()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final w0()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->X()I

    move-result v0

    return v0
.end method

.method public y0()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y0()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/b;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/d;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v2, :cond_0

    .line 3
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_5

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/d;->F()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    if-ne v0, v2, :cond_3

    .line 8
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->v0()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_5

    .line 14
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 15
    :cond_3
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->B(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->o:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Unexpected problem: chain of filtered context broken"

    .line 17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_6

    .line 19
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 20
    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/4 v4, 0x2

    if-eq v1, v4, :cond_16

    const/4 v4, 0x3

    if-eq v1, v4, :cond_f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 22
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v2, :cond_7

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_7
    if-eqz v1, :cond_1f

    .line 24
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_1f

    .line 25
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 26
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->v(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 27
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->u0()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    .line 31
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v2, v3, :cond_a

    .line 32
    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 33
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_a
    if-nez v2, :cond_b

    .line 34
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 36
    :cond_b
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_c

    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 38
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 39
    :cond_c
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v3, :cond_e

    .line 40
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/b;->a2()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 41
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_e

    .line 42
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 43
    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 44
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    .line 45
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-eq v0, v1, :cond_1f

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 47
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 48
    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 49
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_10

    .line 50
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 51
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_10
    if-nez v1, :cond_11

    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 53
    :cond_11
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_12

    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    :cond_12
    if-eq v1, v4, :cond_13

    .line 55
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 56
    :cond_13
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_14

    .line 57
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 58
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_14
    if-eqz v1, :cond_15

    .line 59
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_15

    .line 60
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 61
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 62
    :cond_15
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 63
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_1f

    .line 64
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 65
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 66
    :cond_16
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/d;->E()Z

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 68
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v2, v3, :cond_17

    .line 69
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->b()V

    .line 70
    :cond_17
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->D()Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 71
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v1, :cond_1f

    .line 72
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 73
    :cond_18
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 74
    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_19

    .line 75
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 76
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_19
    if-nez v1, :cond_1a

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 78
    :cond_1a
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    :cond_1b
    if-eq v1, v4, :cond_1c

    .line 80
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 81
    :cond_1c
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->p:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v4, :cond_1d

    .line 82
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 83
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1d
    if-eqz v1, :cond_1e

    .line 84
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v4, v5, :cond_1e

    .line 85
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 86
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 87
    :cond_1e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->n:Lcom/fasterxml/jackson/core/filter/d;

    .line 88
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/b;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v2, :cond_1f

    .line 89
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/b;->Z1(Lcom/fasterxml/jackson/core/filter/d;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 90
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/b;->l:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 91
    :cond_1f
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->Y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public z0()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/h;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->z0()D

    move-result-wide v0

    return-wide v0
.end method

.method public z1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/b;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :cond_0
    return-object v0
.end method
