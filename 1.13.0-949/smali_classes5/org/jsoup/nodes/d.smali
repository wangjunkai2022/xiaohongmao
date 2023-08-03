.class public Lorg/jsoup/nodes/d;
.super Lorg/jsoup/nodes/j;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    return-void
.end method

.method private static q0(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

    const-string v0, "#comment"

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->d0()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/k;->a:Lorg/jsoup/nodes/k;

    instance-of v1, v0, Lorg/jsoup/nodes/g;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/g;

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/k;->F(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string p2, "<!--"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->o0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->n0()Lorg/jsoup/nodes/d;

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

.method public m0()Lorg/jsoup/nodes/o;
    .locals 5
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->o0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lorg/jsoup/nodes/d;->q0(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lorg/jsoup/parser/f;->c()Lorg/jsoup/parser/f;

    move-result-object v2

    sget-object v4, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/e;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/f;->r(Lorg/jsoup/parser/e;)Lorg/jsoup/parser/f;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/f;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->C0()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/g;->A0(I)Lorg/jsoup/nodes/g;

    move-result-object v2

    .line 8
    new-instance v3, Lorg/jsoup/nodes/o;

    invoke-static {v1}, Lorg/jsoup/nodes/l;->b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/nodes/o;-><init>(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v3}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->f(Lorg/jsoup/nodes/b;)V

    :cond_1
    return-object v3
.end method

.method public n0()Lorg/jsoup/nodes/d;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/d;

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

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->o0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/jsoup/nodes/d;->q0(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r0(Ljava/lang/String;)Lorg/jsoup/nodes/d;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->n0()Lorg/jsoup/nodes/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/j;->w()Lorg/jsoup/nodes/k;

    move-result-object v0

    return-object v0
.end method
