.class final enum Lorg/jsoup/parser/c$v;
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

.method private o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 1

    const-string v0, "body"

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->A(Z)V

    .line 3
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/c;->b(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    :cond_3
    const-string v3, "body"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 14
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->A(Z)V

    .line 15
    sget-object p1, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_0

    :cond_4
    const-string v3, "frameset"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 18
    sget-object p1, Lorg/jsoup/parser/c;->t:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_0

    .line 19
    :cond_5
    sget-object v0, Lorg/jsoup/parser/c$z;->g:[Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 21
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->K()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/nodes/g;)V

    .line 23
    sget-object v1, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    .line 24
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->I0(Lorg/jsoup/nodes/g;)Z

    goto :goto_0

    :cond_6
    const-string v0, "head"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 27
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$v;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    goto :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v2, Lorg/jsoup/parser/c$z;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$v;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    goto :goto_0

    :cond_9
    const-string v2, "template"

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto :goto_0

    .line 34
    :cond_a
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 35
    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$v;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
