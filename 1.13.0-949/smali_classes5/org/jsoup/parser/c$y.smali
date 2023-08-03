.class final enum Lorg/jsoup/parser/c$y;
.super Lorg/jsoup/parser/c;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/c;-><init>(Ljava/lang/String;ILorg/jsoup/parser/c$k;)V

    return-void
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/c$z;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->q0()V

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->n0()V

    .line 4
    sget-object v0, Lorg/jsoup/parser/c;->j:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 5
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    return v1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v2

    .line 10
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    const-string v3, "template"

    const-string v4, "table"

    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v5

    const-string v6, "caption"

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v()V

    .line 15
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->d0()V

    .line 16
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 17
    sget-object p1, Lorg/jsoup/parser/c;->k:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_1

    :cond_3
    const-string v6, "colgroup"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v()V

    .line 20
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 21
    sget-object p1, Lorg/jsoup/parser/c;->l:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_1

    :cond_4
    const-string v7, "col"

    .line 22
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v()V

    .line 24
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 25
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 26
    :cond_5
    sget-object v6, Lorg/jsoup/parser/c$z;->u:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 27
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v()V

    .line 28
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 29
    sget-object p1, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_1

    .line 30
    :cond_6
    sget-object v6, Lorg/jsoup/parser/c$z;->v:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 31
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v()V

    const-string v0, "tbody"

    .line 32
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 33
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 34
    :cond_7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 35
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 36
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 37
    :cond_8
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 38
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->N0()V

    .line 39
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->R0()Lorg/jsoup/parser/c;

    move-result-object v2

    sget-object v3, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    if-ne v2, v3, :cond_9

    .line 40
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    return v1

    .line 41
    :cond_9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 42
    :cond_a
    sget-object v4, Lorg/jsoup/parser/c$z;->w:[Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 43
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    :cond_b
    const-string v4, "input"

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 45
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    .line 46
    :cond_c
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 47
    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$y;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    :cond_e
    const-string v4, "form"

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 49
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 50
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->I()Lorg/jsoup/nodes/i;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    .line 51
    :cond_f
    invoke-virtual {p2, v0, v2, v2}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/parser/Token$h;ZZ)Lorg/jsoup/nodes/i;

    :goto_1
    return v1

    :cond_10
    :goto_2
    return v2

    .line 52
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$y;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 53
    :cond_12
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 54
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 57
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 58
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v2

    .line 59
    :cond_13
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 60
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->N0()V

    goto :goto_3

    .line 61
    :cond_14
    sget-object v4, Lorg/jsoup/parser/c$z;->B:[Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 62
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v2

    .line 63
    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 64
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    :goto_3
    return v1

    .line 65
    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$y;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 66
    :cond_17
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "html"

    .line 67
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 68
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    :cond_18
    return v1

    .line 69
    :cond_19
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$y;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method

.method o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->P0(Z)V

    .line 3
    sget-object v1, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->P0(Z)V

    return v0
.end method
