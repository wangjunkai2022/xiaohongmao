.class final enum Lorg/jsoup/parser/c$g;
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
    .locals 0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 9

    .line 1
    sget-object v0, Lorg/jsoup/parser/c$q;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    const-string v3, "html"

    const-string v4, "select"

    const/4 v5, 0x0

    const-string v6, "optgroup"

    const-string v7, "option"

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$g;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 3
    :pswitch_0
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v5

    .line 8
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$g;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 13
    :pswitch_3
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->q(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->q(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 15
    :cond_5
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    goto/16 :goto_2

    .line 17
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto/16 :goto_2

    .line 18
    :pswitch_4
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v5

    .line 20
    :cond_7
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 21
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->N0()V

    goto/16 :goto_2

    .line 22
    :pswitch_5
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    goto/16 :goto_2

    .line 24
    :cond_8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    goto/16 :goto_2

    .line 25
    :pswitch_6
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    .line 26
    :pswitch_7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 29
    sget-object p1, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    .line 30
    :cond_9
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 31
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 33
    :cond_a
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 34
    :cond_b
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 35
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 36
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 37
    :cond_c
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 38
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 39
    :cond_d
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 40
    :cond_e
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 41
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 42
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 43
    :cond_f
    sget-object v1, Lorg/jsoup/parser/c$z;->H:[Ljava/lang/String;

    invoke-static {v8, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 44
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 45
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    return v5

    .line 46
    :cond_10
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 47
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_11
    const-string v0, "script"

    .line 48
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    .line 49
    :cond_12
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$g;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 50
    :cond_13
    :goto_1
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    .line 51
    :pswitch_8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v5

    .line 52
    :pswitch_9
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    :cond_14
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
