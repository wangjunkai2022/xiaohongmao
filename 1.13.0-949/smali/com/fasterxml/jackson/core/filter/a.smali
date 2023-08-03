.class public Lcom/fasterxml/jackson/core/filter/a;
.super Lcom/fasterxml/jackson/core/util/g;
.source "FilteringGeneratorDelegate.java"


# instance fields
.field protected g:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected h:Z

.field protected i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field protected j:Lcom/fasterxml/jackson/core/filter/d;

.field protected k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected l:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/g;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/a;->g:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 5
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/d;->z(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 7
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/a;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/filter/a;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V

    return-void
.end method


# virtual methods
.method public A1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->A1([CII)V

    :cond_0
    return-void
.end method

.method public B1([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->B1([BII)V

    :cond_0
    return-void
.end method

.method public D1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->D1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public E1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->E1(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public F1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->F1([CII)V

    :cond_0
    return-void
.end method

.method public G1()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    return-void

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    :cond_2
    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v3, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v3, :cond_5

    .line 14
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/filter/a;->b2(Z)V

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public H1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H1(I)V

    return-void

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    :cond_2
    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v3, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H1(I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v1, v3, :cond_5

    .line 14
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/filter/a;->b2(Z)V

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->H1(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public I1(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->I1(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    :cond_2
    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v3, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->I1(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public J1(Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->J1(Ljava/lang/Object;I)V

    return-void

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    :cond_2
    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->d()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v3, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->J1(Ljava/lang/Object;I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/filter/d;->x(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public K0(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonGenerator;->K0(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    :cond_0
    return-void
.end method

.method public K1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    return-void

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eq v0, v2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v2, v4, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/filter/a;->b2(Z)V

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public L1(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->L1(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eq v0, v2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->L1(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v4, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v2, v4, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/filter/a;->b2(Z)V

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->L1(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public M1(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->M1(Ljava/lang/Object;I)V

    return-void

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eq v0, v2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->e()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->M1(Ljava/lang/Object;I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->y(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    :goto_0
    return-void
.end method

.method public N1(Lcom/fasterxml/jackson/core/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->N1(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public O0(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->g(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->O0(Z)V

    return-void
.end method

.method public O1(Ljava/io/Reader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->t(Ljava/io/Reader;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->O1(Ljava/io/Reader;I)V

    return-void
.end method

.method public P1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    return-void
.end method

.method public Q1([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eq v2, v1, :cond_2

    .line 5
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->Q1([CII)V

    return-void
.end method

.method public R0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->v(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public S0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->w(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/d;->C()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    :cond_0
    return-void
.end method

.method public T0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/filter/a;->V0(Ljava/lang/String;)V

    return-void
.end method

.method public T1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->T1(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public U0(Lcom/fasterxml/jackson/core/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->c2()V

    :cond_2
    return-void
.end method

.method public V0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/d;->H(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->q(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p1, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->c2()V

    :cond_2
    return-void
.end method

.method public W0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->j()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    return-void
.end method

.method public W1([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->W1([BII)V

    :cond_0
    return-void
.end method

.method public Y0(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->k(D)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->Y0(D)V

    return-void
.end method

.method public Z0(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->l(F)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->Z0(F)V

    return-void
.end method

.method protected Z1()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    return v3

    :cond_2
    return v1
.end method

.method public a1(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->m(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a1(I)V

    return-void
.end method

.method protected a2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/a;->b2(Z)V

    return-void
.end method

.method public b1(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->n(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->b1(J)V

    return-void
.end method

.method protected b2(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/a;->l:I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->J(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->A(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/filter/a;->h:Z

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/filter/d;->I()V

    :cond_3
    return-void
.end method

.method public c1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->r()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c1(Ljava/lang/String;)V

    return-void
.end method

.method protected c2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/a;->l:I

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->i:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->J(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/d;->A(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 6
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/a;->h:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/d;->I()V

    :cond_2
    return-void
.end method

.method public d1(Ljava/math/BigDecimal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->o(Ljava/math/BigDecimal;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d1(Ljava/math/BigDecimal;)V

    return-void
.end method

.method protected d2()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    return v3

    :cond_2
    return v1
.end method

.method public e1(Ljava/math/BigInteger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->p(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->e1(Ljava/math/BigInteger;)V

    return-void
.end method

.method public e2()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->g:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public f1(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->m(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->f1(S)V

    return-void
.end method

.method public f2()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0
.end method

.method public g1([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->a:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/filter/d;->u(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->r()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->a2()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->g1([CII)V

    return-void
.end method

.method public g2()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/a;->l:I

    return v0
.end method

.method public h0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->j:Lcom/fasterxml/jackson/core/filter/d;

    return-object v0
.end method

.method public r1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->r1(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public s1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->s1(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public t1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/a;->k:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->t1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w1(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    :cond_0
    return-void
.end method

.method public x1(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->x1(Lcom/fasterxml/jackson/core/j;)V

    :cond_0
    return-void
.end method

.method public y1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/a;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/g;->e:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->z1(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
