.class final enum Lorg/jsoup/parser/c$a;
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
    .locals 6

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->L()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 6
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->L()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 7
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->L()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lorg/jsoup/parser/c;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 10
    invoke-virtual {p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jsoup/parser/c$z;->C:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->P0(Z)V

    .line 12
    new-instance v4, Lorg/jsoup/parser/Token$c;

    invoke-direct {v4}, Lorg/jsoup/parser/Token$c;-><init>()V

    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v1

    sget-object v4, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    .line 13
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->P0(Z)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v4, Lorg/jsoup/parser/Token$c;

    invoke-direct {v4}, Lorg/jsoup/parser/Token$c;-><init>()V

    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v1

    sget-object v4, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto :goto_0

    .line 15
    :cond_3
    new-instance v4, Lorg/jsoup/parser/Token$c;

    invoke-direct {v4}, Lorg/jsoup/parser/Token$c;-><init>()V

    invoke-virtual {v4, v1}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->q0()V

    .line 17
    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->u0()Lorg/jsoup/parser/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 18
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method
