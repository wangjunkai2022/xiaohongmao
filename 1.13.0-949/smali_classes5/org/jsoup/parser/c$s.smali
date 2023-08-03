.class final enum Lorg/jsoup/parser/c$s;
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
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/c;->b(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/c;->n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    const-string v2, "head"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Q0(Lorg/jsoup/nodes/g;)V

    .line 12
    sget-object p1, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/jsoup/parser/c$z;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 15
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 16
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 18
    :cond_6
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 19
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method
