.class public Lorg/jsoup/nodes/n;
.super Lorg/jsoup/nodes/j;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public static n0(Ljava/lang/String;)Lorg/jsoup/nodes/n;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/jsoup/nodes/n;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static q0(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static r0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/internal/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static t0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->A(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->d0()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    instance-of v2, v1, Lorg/jsoup/nodes/g;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/jsoup/nodes/g;

    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/g;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->p0()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->e0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->p0()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/k;->F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    invoke-static {v2}, Lorg/jsoup/nodes/g;->T1(Lorg/jsoup/nodes/k;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lorg/jsoup/nodes/Entities;->g(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    return-void
.end method

.method M(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic T(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->T(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->m0()Lorg/jsoup/nodes/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/j;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m0()Lorg/jsoup/nodes/n;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/n;

    return-object v0
.end method

.method public bridge synthetic o()I
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->o()I

    move-result v0

    return v0
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p0()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/f;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s0(I)Lorg/jsoup/nodes/n;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Split offset must be not be negative"

    .line 2
    invoke-static {v3, v4}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Split offset must not be greater than current text length"

    invoke-static {v3, v4}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/n;->v0(Ljava/lang/String;)Lorg/jsoup/nodes/n;

    .line 7
    new-instance v0, Lorg/jsoup/nodes/n;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->d0()I

    move-result v3

    add-int/2addr v3, v1

    new-array v1, v1, [Lorg/jsoup/nodes/k;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/jsoup/nodes/k;->b(I[Lorg/jsoup/nodes/k;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->m0()Lorg/jsoup/nodes/n;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0(Ljava/lang/String;)Lorg/jsoup/nodes/n;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic w()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->w()Lorg/jsoup/nodes/k;

    move-result-object v0

    return-object v0
.end method
