.class final enum Lorg/jsoup/parser/c$i;
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
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/c$q;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "template"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    .line 5
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->s()V

    .line 6
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 7
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->N0()V

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->R0()Lorg/jsoup/parser/c;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->S0()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_1
    return v2

    .line 10
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto/16 :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    const/4 p1, 0x0

    return p1

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->G()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lorg/jsoup/parser/c$z;->M:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    goto/16 :goto_1

    .line 17
    :cond_3
    sget-object v1, Lorg/jsoup/parser/c$z;->N:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 19
    sget-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 20
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 21
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_4
    const-string v1, "col"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 24
    sget-object v0, Lorg/jsoup/parser/c;->l:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 25
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 26
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_5
    const-string v1, "tr"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 29
    sget-object v0, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 30
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 31
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_6
    const-string v1, "td"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 33
    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 34
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 35
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 36
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 37
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->z0()Lorg/jsoup/parser/c;

    .line 38
    sget-object v0, Lorg/jsoup/parser/c;->n:Lorg/jsoup/parser/c;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 39
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 40
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->k(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 41
    :pswitch_3
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
