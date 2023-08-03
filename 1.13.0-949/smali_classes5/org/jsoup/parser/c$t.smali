.class final enum Lorg/jsoup/parser/c$t;
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

.method private o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z
    .locals 1

    const-string v0, "head"

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/c;->b(Lorg/jsoup/parser/Token;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lorg/jsoup/parser/c$q;->a:[I

    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_12

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    const-string v4, "template"

    const-string v5, "head"

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$t;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 9
    sget-object p1, Lorg/jsoup/parser/c;->f:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_0

    .line 10
    :cond_2
    sget-object v2, Lorg/jsoup/parser/c$z;->c:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$t;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto/16 :goto_0

    .line 15
    :cond_4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->E(Z)V

    .line 16
    invoke-virtual {p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 17
    :cond_5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 18
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->s()V

    .line 19
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 20
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->N0()V

    goto/16 :goto_0

    .line 21
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 22
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v2

    const-string v6, "html"

    .line 24
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 25
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/c;->n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 26
    :cond_8
    sget-object v6, Lorg/jsoup/parser/c$z;->a:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 27
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object p1

    const-string v0, "base"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 29
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->o0(Lorg/jsoup/nodes/g;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "meta"

    .line 30
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 31
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_0

    :cond_a
    const-string v6, "title"

    .line 32
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 33
    invoke-static {v0, p2}, Lorg/jsoup/parser/c;->c(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto :goto_0

    .line 34
    :cond_b
    sget-object v6, Lorg/jsoup/parser/c$z;->b:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 35
    invoke-static {v0, p2}, Lorg/jsoup/parser/c;->d(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto :goto_0

    :cond_c
    const-string v6, "noscript"

    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 37
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 38
    sget-object p1, Lorg/jsoup/parser/c;->e:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_0

    :cond_d
    const-string v6, "script"

    .line 39
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 40
    iget-object p1, p2, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v2, Lorg/jsoup/parser/j;->f:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 41
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->n0()V

    .line 42
    sget-object p1, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 43
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_0

    .line 44
    :cond_e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 45
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 46
    :cond_f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 47
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 48
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->d0()V

    .line 49
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->A(Z)V

    .line 50
    sget-object p1, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 51
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    goto :goto_0

    .line 52
    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$t;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z

    move-result p1

    return p1

    .line 53
    :cond_11
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 54
    :cond_12
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    :cond_13
    :goto_0
    return v1
.end method
