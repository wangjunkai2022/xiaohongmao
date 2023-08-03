.class abstract Lorg/jsoup/parser/k;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field protected a:Lorg/jsoup/parser/f;

.field b:Lorg/jsoup/parser/a;

.field c:Lorg/jsoup/parser/i;

.field protected d:Lorg/jsoup/nodes/Document;

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Lorg/jsoup/parser/Token;

.field protected h:Lorg/jsoup/parser/e;

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/jsoup/parser/Token$h;

.field private k:Lorg/jsoup/parser/Token$g;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/k;->j:Lorg/jsoup/parser/Token$h;

    .line 3
    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/k;->k:Lorg/jsoup/parser/Token$g;

    return-void
.end method


# virtual methods
.method protected a()Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    :goto_0
    return-object v0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract c()Lorg/jsoup/parser/e;
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/k;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->a:Lorg/jsoup/parser/f;

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    invoke-direct {v1, v2, p1, p2}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V
    .locals 1
    .annotation runtime Lr7/j;
    .end annotation

    const-string v0, "String input must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    .line 2
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    .line 5
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->M2(Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    .line 6
    iput-object p3, p0, Lorg/jsoup/parser/k;->a:Lorg/jsoup/parser/f;

    .line 7
    invoke-virtual {p3}, Lorg/jsoup/parser/f;->q()Lorg/jsoup/parser/e;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    .line 8
    new-instance v0, Lorg/jsoup/parser/a;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    .line 9
    invoke-virtual {p3}, Lorg/jsoup/parser/f;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/a;->T(Z)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    .line 11
    new-instance p1, Lorg/jsoup/parser/i;

    iget-object v0, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    invoke-virtual {p3}, Lorg/jsoup/parser/f;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lorg/jsoup/parser/i;-><init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/k;->i:Ljava/util/Map;

    .line 14
    iput-object p2, p0, Lorg/jsoup/parser/k;->f:Ljava/lang/String;

    return-void
.end method

.method protected g(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract h()Lorg/jsoup/parser/k;
.end method

.method i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0
    .annotation runtime Lr7/j;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/k;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->o()V

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->d()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    .line 5
    iput-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    .line 7
    iput-object p1, p0, Lorg/jsoup/parser/k;->i:Ljava/util/Map;

    .line 8
    iget-object p1, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    return-object p1
.end method

.method abstract j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/f;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract k(Lorg/jsoup/parser/Token;)Z
.end method

.method protected l(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/k;->k:Lorg/jsoup/parser/Token$g;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->H()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected m(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->j:Lorg/jsoup/parser/Token$h;

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 3
    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$h;->H()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->j:Lorg/jsoup/parser/Token$h;

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 3
    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->K(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$h;->H()Lorg/jsoup/parser/Token$i;

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->K(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    .line 6
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    .line 2
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/i;->A()Lorg/jsoup/parser/Token;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/parser/Token;->m()Lorg/jsoup/parser/Token;

    .line 6
    iget-object v2, v2, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_0

    return-void
.end method

.method protected p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/g;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lorg/jsoup/parser/g;->q(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    .line 3
    iget-object p2, p0, Lorg/jsoup/parser/k;->i:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
