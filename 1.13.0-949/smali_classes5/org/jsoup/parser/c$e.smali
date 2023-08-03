.class final enum Lorg/jsoup/parser/c$e;
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

    sget-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1
.end method

.method private p(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z
    .locals 1

    const-string v0, "tr"

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/k;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lorg/jsoup/parser/c$z;->x:[Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->w()V

    .line 6
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 7
    sget-object p1, Lorg/jsoup/parser/c;->o:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->d0()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lorg/jsoup/parser/c$z;->F:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$e;->p(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$e;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 18
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->w()V

    .line 19
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 20
    sget-object p1, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_0

    :cond_4
    const-string v2, "table"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$e;->p(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/k;)Z

    move-result p1

    return p1

    .line 23
    :cond_5
    sget-object v2, Lorg/jsoup/parser/c$z;->u:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->V(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->w()V

    .line 26
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 27
    sget-object p1, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 28
    :cond_7
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 29
    :cond_8
    sget-object v1, Lorg/jsoup/parser/c$z;->G:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v3

    .line 31
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$e;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 32
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$e;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method
