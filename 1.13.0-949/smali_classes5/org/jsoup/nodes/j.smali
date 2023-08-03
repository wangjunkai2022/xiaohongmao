.class abstract Lorg/jsoup/nodes/j;
.super Lorg/jsoup/nodes/k;
.source "LeafNode.java"


# instance fields
.field e:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/k;-><init>()V

    return-void
.end method

.method private l0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    .line 3
    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    .line 4
    iput-object v1, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->H()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;->l0()V

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final B()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/nodes/b;

    return v0
.end method

.method public T(Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;->l0()V

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->T(Ljava/lang/String;)Lorg/jsoup/nodes/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;->l0()V

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/nodes/j;->l0()V

    .line 4
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/k;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    :goto_0
    return-object p0
.end method

.method public final i()Lorg/jsoup/nodes/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/nodes/j;->l0()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/b;

    return-object v0
.end method

.method i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/j;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/k;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->O()Lorg/jsoup/nodes/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/k;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected k0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/j;

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->k()Lorg/jsoup/nodes/b;

    move-result-object v0

    iput-object v0, p1, Lorg/jsoup/nodes/j;->e:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic u(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/k;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/j;->k0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/j;

    move-result-object p1

    return-object p1
.end method

.method protected v(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public w()Lorg/jsoup/nodes/k;
    .locals 0

    return-object p0
.end method

.method protected x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/jsoup/nodes/k;->c:Ljava/util/List;

    return-object v0
.end method
