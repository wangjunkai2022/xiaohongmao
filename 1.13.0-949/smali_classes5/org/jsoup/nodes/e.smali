.class public Lorg/jsoup/nodes/e;
.super Lorg/jsoup/nodes/j;
.source "DataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/jsoup/nodes/e;

    invoke-direct {p1, p0}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    return-object p1
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

    const-string v0, "#data"

    return-object v0
.end method

.method L(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->o0()Ljava/lang/String;

    move-result-object p2

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->m0()Lorg/jsoup/nodes/e;

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

.method public m0()Lorg/jsoup/nodes/e;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/k;->t()Lorg/jsoup/nodes/k;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/e;

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

.method public p0(Ljava/lang/String;)Lorg/jsoup/nodes/e;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->m0()Lorg/jsoup/nodes/e;

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
