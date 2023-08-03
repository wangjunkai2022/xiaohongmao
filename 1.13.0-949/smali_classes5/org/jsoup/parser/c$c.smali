.class final enum Lorg/jsoup/parser/c$c;
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

    const-string v0, "colgroup"

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 4
    sget-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 5
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 9

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

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v3, 0x3

    const-string v4, "html"

    const/4 v5, 0x0

    const-string v6, "template"

    if-eq v0, v3, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$c;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$c;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 7
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "colgroup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$c;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 12
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v5

    .line 13
    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 14
    sget-object p1, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_2

    .line 15
    :cond_6
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :sswitch_1
    const-string v2, "col"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$c;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 19
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    .line 20
    :pswitch_1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 21
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto :goto_2

    .line 22
    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto :goto_2

    .line 23
    :cond_c
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        0x18180 -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
