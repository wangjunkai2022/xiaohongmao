.class public Lorg/jsoup/nodes/i;
.super Lorg/jsoup/nodes/g;
.source "FormElement.java"


# instance fields
.field private final l:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 2
    new-instance p1, Lorg/jsoup/select/Elements;

    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/i;->l:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public bridge synthetic I0()Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->v2()Lorg/jsoup/nodes/i;

    move-result-object v0

    return-object v0
.end method

.method protected U(Lorg/jsoup/nodes/k;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/k;->U(Lorg/jsoup/nodes/k;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/i;->l:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->v2()Lorg/jsoup/nodes/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lorg/jsoup/nodes/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->v2()Lorg/jsoup/nodes/i;

    move-result-object v0

    return-object v0
.end method

.method public u2(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/i;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/i;->l:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public v2()Lorg/jsoup/nodes/i;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/g;->I0()Lorg/jsoup/nodes/g;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    return-object v0
.end method

.method public w2()Lorg/jsoup/select/Elements;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/i;->l:Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public x2()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/Connection$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jsoup/nodes/i;->l:Lorg/jsoup/select/Elements;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/g;->g()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    .line 4
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "name"

    .line 5
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "type"

    .line 7
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "button"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "option[selected]"

    .line 10
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/g;->a2(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    .line 12
    invoke-virtual {v5}, Lorg/jsoup/nodes/g;->q2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_0

    const-string v4, "option"

    .line 13
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/g;->c2(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->q2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v5, "checkbox"

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "radio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->q2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    :goto_2
    const-string v4, "checked"

    .line 17
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->q2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->q2()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const-string v2, "on"

    .line 19
    :goto_3
    invoke-static {v3, v2}, Lorg/jsoup/helper/c$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/c$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public y2()Lorg/jsoup/Connection;
    .locals 3

    const-string v0, "action"

    .line 1
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing."

    .line 2
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    .line 3
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 5
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->y2()Lorg/jsoup/Connection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jsoup/Connection;->s()Lorg/jsoup/Connection;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/jsoup/a;->j()Lorg/jsoup/Connection;

    move-result-object v2

    .line 7
    :goto_2
    invoke-interface {v2, v0}, Lorg/jsoup/Connection;->x(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lorg/jsoup/nodes/i;->x2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/jsoup/Connection;->e(Ljava/util/Collection;)Lorg/jsoup/Connection;

    move-result-object v0

    .line 9
    invoke-interface {v0, v1}, Lorg/jsoup/Connection;->m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method
