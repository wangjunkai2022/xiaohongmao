.class public Lorg/jsoup/parser/l;
.super Lorg/jsoup/parser/k;
.source "XmlTreeBuilder.java"


# static fields
.field private static final l:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/k;-><init>()V

    return-void
.end method

.method private u(Lorg/jsoup/nodes/k;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method private z(Lorg/jsoup/parser/Token$g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_5

    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method c()Lorg/jsoup/parser/e;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/e;

    return-object v0
.end method

.method protected f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V
    .locals 0
    .annotation runtime Lr7/j;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/k;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V

    .line 2
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 4
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->p(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 5
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->f(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->m(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method bridge synthetic h()Lorg/jsoup/parser/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/l;->v()Lorg/jsoup/parser/l;

    move-result-object v0

    return-object v0
.end method

.method j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1, p3, p4}, Lorg/jsoup/parser/l;->y(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected k(Lorg/jsoup/parser/Token;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/l$a;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Lorg/jsoup/parser/Token$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/l;->t(Lorg/jsoup/parser/Token$e;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/l;->r(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/l;->s(Lorg/jsoup/parser/Token$d;)V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/parser/l;->z(Lorg/jsoup/parser/Token$g;)V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/l;->q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/k;->n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p1

    return p1
.end method

.method q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    iget-object v2, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->n(Lorg/jsoup/parser/e;)I

    .line 4
    :cond_0
    new-instance v1, Lorg/jsoup/nodes/g;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    iget-object v4, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/e;->c(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 5
    invoke-direct {p0, v1}, Lorg/jsoup/parser/l;->u(Lorg/jsoup/nodes/k;)V

    .line 6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->i()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->o()Lorg/jsoup/parser/g;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v1
.end method

.method r(Lorg/jsoup/parser/Token$c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/c;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jsoup/nodes/n;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/l;->u(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method s(Lorg/jsoup/parser/Token$d;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$d;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$d;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->p0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/d;->m0()Lorg/jsoup/nodes/o;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lorg/jsoup/parser/l;->u(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method t(Lorg/jsoup/parser/Token$e;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jsoup/nodes/f;

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->p0(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/jsoup/parser/l;->u(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method v()Lorg/jsoup/parser/l;
    .locals 1

    new-instance v0, Lorg/jsoup/parser/l;

    invoke-direct {v0}, Lorg/jsoup/parser/l;-><init>()V

    return-object v0
.end method

.method w(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    new-instance v0, Lorg/jsoup/parser/f;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/k;->i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method x(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/jsoup/parser/f;

    invoke-direct {p1, p0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    invoke-virtual {p0, v0, p2, p1}, Lorg/jsoup/parser/k;->i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method y(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/f;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/l;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->o()V

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->p()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
