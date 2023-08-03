.class final enum Lorg/jsoup/parser/c$w;
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


# static fields
.field private static final A:I = 0x18


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/c;-><init>(Ljava/lang/String;ILorg/jsoup/parser/c$k;)V

    return-void
.end method

.method private p(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "br"

    const/4 v4, 0x1

    const-string v5, "template"

    const-string v6, "body"

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_a
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_b
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_c
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_d
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_f
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    const/4 v8, 0x0

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 4
    sget-object v0, Lorg/jsoup/parser/c$z;->s:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$w;->q(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 6
    :cond_11
    sget-object v0, Lorg/jsoup/parser/c$z;->r:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 9
    :cond_12
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->C()V

    .line 10
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 11
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 12
    :cond_13
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto/16 :goto_2

    .line 13
    :cond_14
    sget-object v0, Lorg/jsoup/parser/c$z;->m:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "name"

    .line 14
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 15
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 16
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 17
    :cond_15
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->C()V

    .line 18
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 19
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 20
    :cond_16
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 21
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->s()V

    goto/16 :goto_2

    .line 22
    :cond_17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$w;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/c$w;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 24
    :pswitch_1
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 25
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 26
    :pswitch_2
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 27
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->I()Lorg/jsoup/nodes/i;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->O0(Lorg/jsoup/nodes/i;)V

    if-eqz p1, :cond_1a

    .line 29
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1

    .line 30
    :cond_18
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->C()V

    .line 31
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 32
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 33
    :cond_19
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->I0(Lorg/jsoup/nodes/g;)Z

    goto/16 :goto_2

    .line 34
    :cond_1a
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 35
    :cond_1b
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 36
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 37
    :cond_1c
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->C()V

    .line 38
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 39
    :cond_1d
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto/16 :goto_2

    .line 40
    :pswitch_3
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 41
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 42
    :cond_1e
    sget-object p1, Lorg/jsoup/parser/c;->s:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_2

    .line 43
    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->O(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 44
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 45
    :cond_1f
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 47
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 48
    :cond_20
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 49
    :pswitch_5
    sget-object p1, Lorg/jsoup/parser/c$z;->i:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->R([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 50
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 51
    :cond_21
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 53
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 54
    :cond_22
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->y0([Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_6
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 56
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v7

    .line 57
    :cond_23
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 59
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 60
    :cond_24
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 61
    :pswitch_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 62
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    return v7

    .line 63
    :pswitch_8
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 64
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 65
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 66
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 67
    :cond_25
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 69
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 70
    :cond_26
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_2

    .line 71
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    :cond_27
    :goto_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private q(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_12

    .line 4
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->F(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/c$w;->o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    .line 6
    :cond_0
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->t0(Lorg/jsoup/nodes/g;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 8
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->H0(Lorg/jsoup/nodes/g;)V

    return v7

    .line 9
    :cond_1
    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v4

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v8

    if-eq v8, v6, :cond_3

    .line 12
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 13
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v13, v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v8, :cond_6

    const/16 v14, 0x40

    if-ge v11, v14, :cond_6

    .line 14
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/g;

    if-ne v14, v6, :cond_4

    add-int/lit8 v9, v11, -0x1

    .line 15
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lorg/jsoup/nodes/g;

    .line 16
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/b;->A0(Lorg/jsoup/nodes/g;)I

    move-result v9

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    .line 17
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/b;->l0(Lorg/jsoup/nodes/g;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v10, v14

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    .line 18
    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 19
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->H0(Lorg/jsoup/nodes/g;)V

    return v7

    :cond_7
    move-object v11, v10

    move-object v12, v11

    const/4 v8, 0x0

    :goto_4
    const/4 v14, 0x3

    if-ge v8, v14, :cond_d

    .line 20
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/b;->t0(Lorg/jsoup/nodes/g;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 21
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/b;->q(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object v11

    .line 22
    :cond_8
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/b;->j0(Lorg/jsoup/nodes/g;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 23
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/b;->I0(Lorg/jsoup/nodes/g;)Z

    goto :goto_5

    :cond_9
    if-ne v11, v6, :cond_a

    goto :goto_6

    .line 24
    :cond_a
    new-instance v14, Lorg/jsoup/nodes/g;

    invoke-virtual {v11}, Lorg/jsoup/nodes/g;->H()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lorg/jsoup/parser/e;->d:Lorg/jsoup/parser/e;

    invoke-virtual {v1, v15, v4}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v15}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/b;->K0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    .line 26
    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/b;->M0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    if-ne v12, v10, :cond_b

    .line 27
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/b;->A0(Lorg/jsoup/nodes/g;)I

    move-result v4

    add-int/lit8 v9, v4, 0x1

    .line 28
    :cond_b
    invoke-virtual {v12}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 29
    invoke-virtual {v12}, Lorg/jsoup/nodes/k;->S()V

    .line 30
    :cond_c
    invoke-virtual {v14, v12}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    move-object v11, v14

    move-object v12, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    :goto_6
    if-eqz v13, :cond_11

    .line 31
    invoke-virtual {v13}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/jsoup/parser/c$z;->t:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 32
    invoke-virtual {v12}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 33
    invoke-virtual {v12}, Lorg/jsoup/nodes/k;->S()V

    .line 34
    :cond_e
    invoke-virtual {v1, v12}, Lorg/jsoup/parser/b;->c0(Lorg/jsoup/nodes/k;)V

    goto :goto_7

    .line 35
    :cond_f
    invoke-virtual {v12}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 36
    invoke-virtual {v12}, Lorg/jsoup/nodes/k;->S()V

    .line 37
    :cond_10
    invoke-virtual {v13, v12}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    .line 38
    :cond_11
    :goto_7
    new-instance v4, Lorg/jsoup/nodes/g;

    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/b;->f(Lorg/jsoup/nodes/b;)V

    .line 40
    invoke-virtual {v10}, Lorg/jsoup/nodes/k;->p()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/g;->q0(Ljava/util/Collection;)Lorg/jsoup/nodes/g;

    .line 41
    invoke-virtual {v10, v4}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    .line 42
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->H0(Lorg/jsoup/nodes/g;)V

    .line 43
    invoke-virtual {v1, v4, v9}, Lorg/jsoup/parser/b;->F0(Lorg/jsoup/nodes/g;I)V

    .line 44
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->I0(Lorg/jsoup/nodes/g;)Z

    .line 45
    invoke-virtual {v1, v10, v4}, Lorg/jsoup/parser/b;->f0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    return v7
.end method

.method private r(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "isindex"

    const-string v6, "input"

    const-string v7, "svg"

    const-string v8, "nobr"

    const-string v10, "form"

    const-string v11, "body"

    const-string v12, "li"

    const-string v13, "hr"

    const-string v14, "option"

    const-string v9, "button"

    const/16 v16, -0x1

    const-string v15, "a"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v16, 0x23

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x1f

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x1c

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v16, 0x19

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v16, 0x18

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v16, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x16

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v16, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v16, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v16, 0x12

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v16, 0x11

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v16, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v16, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v16, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "h4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v16, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "h3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v16, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v16, 0xb

    goto/16 :goto_0

    :sswitch_19
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v16, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v16, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string v4, "dd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v16, 0x8

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_0

    :cond_1c
    const/16 v16, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_0

    :cond_1d
    const/16 v16, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_0

    :cond_1e
    const/16 v16, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_0

    :cond_1f
    const/16 v16, 0x4

    goto :goto_0

    :sswitch_20
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_0

    :cond_20
    const/16 v16, 0x3

    goto :goto_0

    :sswitch_21
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_0

    :cond_21
    const/16 v16, 0x2

    goto :goto_0

    :sswitch_22
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_0

    :cond_22
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_23
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_0

    :cond_23
    const/16 v16, 0x0

    :goto_0
    const-string v4, "template"

    const-string v0, "p"

    packed-switch v16, :pswitch_data_0

    .line 4
    invoke-static {v3}, Lorg/jsoup/parser/g;->j(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 5
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    :goto_1
    move-object/from16 v3, p0

    goto/16 :goto_4

    .line 6
    :cond_24
    sget-object v4, Lorg/jsoup/parser/c$z;->n:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 7
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 8
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto :goto_1

    .line 10
    :cond_25
    sget-object v4, Lorg/jsoup/parser/c$z;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 11
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 12
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 13
    :cond_26
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 14
    :cond_27
    sget-object v0, Lorg/jsoup/parser/c$z;->g:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 15
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result v0

    return v0

    .line 16
    :cond_28
    sget-object v0, Lorg/jsoup/parser/c$z;->l:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 17
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 18
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->D0(Lorg/jsoup/nodes/g;)V

    goto :goto_1

    .line 20
    :cond_29
    sget-object v0, Lorg/jsoup/parser/c$z;->m:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 21
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 22
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 23
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->d0()V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto :goto_1

    :cond_2a
    const/4 v0, 0x0

    .line 25
    sget-object v4, Lorg/jsoup/parser/c$z;->o:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 26
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 27
    :cond_2b
    sget-object v4, Lorg/jsoup/parser/c$z;->q:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v3, p0

    .line 28
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v0

    :cond_2c
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 29
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 30
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_0
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 31
    invoke-static {v2, v1}, Lorg/jsoup/parser/c;->d(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v3, p0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 32
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->I()Lorg/jsoup/nodes/i;

    move-result-object v4

    if-eqz v4, :cond_2d

    return v0

    .line 34
    :cond_2d
    invoke-virtual {v1, v10}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    const-string v0, "action"

    .line 35
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$i;->A(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 36
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->I()Lorg/jsoup/nodes/i;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 37
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$i;->A(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 38
    iget-object v7, v2, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-virtual {v4}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 40
    :cond_2e
    invoke-virtual {v1, v13}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    const-string v0, "label"

    .line 41
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    const-string v4, "prompt"

    .line 42
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/Token$i;->A(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 43
    iget-object v7, v2, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v7, v4}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2f
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 44
    :goto_2
    new-instance v7, Lorg/jsoup/parser/Token$c;

    invoke-direct {v7}, Lorg/jsoup/parser/Token$c;-><init>()V

    invoke-virtual {v7, v4}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    .line 45
    new-instance v4, Lorg/jsoup/nodes/b;

    invoke-direct {v4}, Lorg/jsoup/nodes/b;-><init>()V

    .line 46
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 47
    iget-object v2, v2, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/a;

    .line 48
    invoke-virtual {v7}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lorg/jsoup/parser/c$z;->p:[Ljava/lang/String;

    invoke-static {v8, v11}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 49
    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/b;->G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_3

    :cond_31
    const-string v2, "name"

    .line 50
    invoke-virtual {v4, v2, v5}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 51
    invoke-virtual {v1, v6, v4}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    .line 52
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 53
    invoke-virtual {v1, v13}, Lorg/jsoup/parser/k;->m(Ljava/lang/String;)Z

    .line 54
    invoke-virtual {v1, v10}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 55
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 56
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 57
    :cond_32
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 58
    iget-object v0, v1, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->g:Lorg/jsoup/parser/j;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->H()Lorg/jsoup/nodes/Document;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->O2()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v4

    sget-object v5, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v4, v5, :cond_33

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 60
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 61
    :cond_33
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    .line 63
    sget-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v3, p0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 65
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object v2

    const-string v4, "type"

    .line 66
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hidden"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 67
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 68
    invoke-virtual {v1, v7}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v0, "img"

    .line 69
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 70
    :cond_34
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_4

    :pswitch_6
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 71
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 72
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    :cond_35
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 73
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 74
    invoke-virtual {v1, v8}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 75
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 76
    invoke-virtual {v1, v8}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 77
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 78
    :cond_36
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->D0(Lorg/jsoup/nodes/g;)V

    goto :goto_4

    :pswitch_8
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 80
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 81
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto :goto_4

    :pswitch_9
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 82
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 83
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    return v0

    :cond_37
    const/4 v0, 0x0

    .line 84
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 86
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    .line 87
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 88
    iget-object v1, v2, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/a;

    .line 89
    invoke-virtual {v2}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 90
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/b;->G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_5

    :pswitch_a
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 91
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->I()Lorg/jsoup/nodes/i;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 92
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_39
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 94
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->x(Ljava/lang/String;)V

    .line 95
    :cond_3a
    invoke-virtual {v1, v2, v9, v9}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/parser/Token$h;ZZ)Lorg/jsoup/nodes/i;

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 96
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v9, :cond_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3b

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    invoke-virtual {v5}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :cond_3b
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_7

    :cond_3c
    const/4 v4, 0x0

    .line 99
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->A(Z)V

    .line 100
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    .line 101
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 102
    iget-object v1, v2, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/a;

    .line 103
    invoke-virtual {v2}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/k;->A(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 104
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/b;->G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_6

    :cond_3e
    :goto_7
    const/4 v4, 0x0

    return v4

    :pswitch_c
    move-object/from16 v3, p0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 105
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 106
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 107
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 108
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->A(Z)V

    .line 109
    invoke-static {v2, v1}, Lorg/jsoup/parser/c;->d(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 110
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 111
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 112
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 113
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 114
    :cond_40
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 115
    iget-object v0, v1, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/a;->C(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 116
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v3, p0

    const/4 v9, 0x1

    const-string v0, "ruby"

    .line 117
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 118
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->C()V

    .line 119
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 120
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 121
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->w0(Ljava/lang/String;)V

    .line 122
    :cond_41
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v3, p0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 123
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->A(Z)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    :goto_8
    if-lez v5, :cond_44

    .line 126
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/g;

    .line 127
    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 128
    invoke-virtual {v1, v12}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    goto :goto_9

    .line 129
    :cond_42
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/b;->l0(Lorg/jsoup/nodes/g;)Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-virtual {v6}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/parser/c$z;->j:[Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    goto :goto_9

    :cond_43
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 130
    :cond_44
    :goto_9
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 131
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 132
    :cond_45
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 133
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 134
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 135
    :cond_46
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    .line 136
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 137
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 138
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 139
    :cond_47
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/jsoup/parser/c$z;->i:[Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 140
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    .line 142
    :cond_48
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v3, p0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 143
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/b;->A(Z)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    const/16 v6, 0x18

    if-lt v5, v6, :cond_49

    add-int/lit8 v6, v5, -0x18

    goto :goto_a

    :cond_49
    const/4 v6, 0x0

    :goto_a
    if-lt v5, v6, :cond_4c

    .line 146
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/g;

    .line 147
    invoke-virtual {v7}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lorg/jsoup/parser/c$z;->k:[Ljava/lang/String;

    invoke-static {v8, v10}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 148
    invoke-virtual {v7}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    goto :goto_b

    .line 149
    :cond_4a
    invoke-virtual {v1, v7}, Lorg/jsoup/parser/b;->l0(Lorg/jsoup/nodes/g;)Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-virtual {v7}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jsoup/parser/c$z;->j:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    goto :goto_b

    :cond_4b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 150
    :cond_4c
    :goto_b
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 151
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 152
    :cond_4d
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 153
    invoke-virtual {v1, v15}, Lorg/jsoup/parser/b;->F(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 154
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 155
    invoke-virtual {v1, v15}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 156
    invoke-virtual {v1, v15}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 157
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->H0(Lorg/jsoup/nodes/g;)V

    .line 158
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->I0(Lorg/jsoup/nodes/g;)Z

    .line 159
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 160
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->D0(Lorg/jsoup/nodes/g;)V

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 162
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 163
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    const/4 v0, 0x0

    .line 164
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    .line 165
    iget-boolean v0, v2, Lorg/jsoup/parser/Token$i;->k:Z

    if-eqz v0, :cond_4f

    goto/16 :goto_4

    .line 166
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->R0()Lorg/jsoup/parser/c;

    move-result-object v0

    .line 167
    sget-object v2, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    sget-object v2, Lorg/jsoup/parser/c;->k:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    sget-object v2, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    sget-object v2, Lorg/jsoup/parser/c;->n:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    sget-object v2, Lorg/jsoup/parser/c;->o:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_c

    .line 168
    :cond_50
    sget-object v0, Lorg/jsoup/parser/c;->p:Lorg/jsoup/parser/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_4

    .line 169
    :cond_51
    :goto_c
    sget-object v0, Lorg/jsoup/parser/c;->q:Lorg/jsoup/parser/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 170
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 171
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->C()Z

    move-result v0

    if-nez v0, :cond_35

    .line 172
    iget-object v0, v1, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v2, Lorg/jsoup/parser/j;->c:Lorg/jsoup/parser/j;

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->n0()V

    const/4 v0, 0x0

    .line 174
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    .line 175
    sget-object v0, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v3, p0

    const/4 v9, 0x1

    .line 176
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 177
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 178
    :cond_52
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 179
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v3, p0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 180
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    .line 181
    invoke-static {v2, v1}, Lorg/jsoup/parser/c;->d(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v3, p0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 182
    invoke-virtual {v1, v9}, Lorg/jsoup/parser/b;->N(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 183
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 184
    invoke-virtual {v1, v9}, Lorg/jsoup/parser/k;->l(Ljava/lang/String;)Z

    .line 185
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    goto :goto_e

    .line 186
    :cond_53
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->G0()V

    .line 187
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 188
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->A(Z)V

    goto :goto_e

    :pswitch_1a
    move-object/from16 v3, p0

    const/4 v4, 0x1

    .line 189
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_58

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_54

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    invoke-virtual {v5}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_f

    .line 192
    :cond_54
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Z

    move-result v5

    if-nez v5, :cond_55

    const/4 v5, 0x0

    return v5

    .line 193
    :cond_55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    .line 194
    invoke-virtual {v5}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v6

    if-eqz v6, :cond_56

    .line 195
    invoke-virtual {v5}, Lorg/jsoup/nodes/k;->S()V

    .line 196
    :cond_56
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_57

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 198
    :cond_57
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    .line 199
    sget-object v0, Lorg/jsoup/parser/c;->t:Lorg/jsoup/parser/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    :goto_e
    return v4

    :cond_58
    :goto_f
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_23
        -0x521dd8ce -> :sswitch_22
        -0x47007d5c -> :sswitch_21
        -0x3c35778b -> :sswitch_20
        -0x3bcc48c6 -> :sswitch_1f
        -0x3600cb04 -> :sswitch_1e
        -0x4d08054 -> :sswitch_1d
        0x61 -> :sswitch_1c
        0xc80 -> :sswitch_1b
        0xc90 -> :sswitch_1a
        0xcc9 -> :sswitch_19
        0xcca -> :sswitch_18
        0xccb -> :sswitch_17
        0xccc -> :sswitch_16
        0xccd -> :sswitch_15
        0xcce -> :sswitch_14
        0xd0a -> :sswitch_13
        0xd7d -> :sswitch_12
        0xe3e -> :sswitch_11
        0xe42 -> :sswitch_10
        0x1b2a3 -> :sswitch_f
        0x1be64 -> :sswitch_e
        0x1d01b -> :sswitch_d
        0x2e39a2 -> :sswitch_c
        0x300cc4 -> :sswitch_b
        0x3107ab -> :sswitch_a
        0x330708 -> :sswitch_9
        0x33add1 -> :sswitch_8
        0x35f74a -> :sswitch_7
        0x5faa95b -> :sswitch_6
        0x5fb57ca -> :sswitch_5
        0x6903bce -> :sswitch_4
        0xad8ba84 -> :sswitch_3
        0x759d29f7 -> :sswitch_2
        0x7ca6c5e8 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/c$q;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->S0()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    sget-object v0, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/jsoup/parser/c;->b(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->G0()V

    .line 9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->G0()V

    .line 11
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Y(Lorg/jsoup/parser/Token$c;)V

    .line 12
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->A(Z)V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$w;->p(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 14
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c$w;->r(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1

    .line 15
    :pswitch_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v1

    .line 16
    :pswitch_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/parser/Token$d;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method o(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object p1

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->M()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v2

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_4

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/g;

    .line 7
    invoke-virtual {v4}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 11
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->l0(Lorg/jsoup/nodes/g;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method
