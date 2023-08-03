.class final enum Lorg/jsoup/parser/j$d;
.super Lorg/jsoup/parser/j;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/j;-><init>(Ljava/lang/String;ILorg/jsoup/parser/j$k;)V

    return-void
.end method

.method private q(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V
    .locals 1

    const-string v0, "</"

    .line 1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/i;->n(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->U()V

    .line 4
    sget-object p2, Lorg/jsoup/parser/j;->c:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    return-void
.end method


# virtual methods
.method m(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->k()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0, p2}, Lorg/jsoup/parser/Token$i;->w(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->f()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/j$d;->q(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->t()V

    .line 9
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/j$d;->q(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    sget-object p2, Lorg/jsoup/parser/j;->P:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/j$d;->q(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    sget-object p2, Lorg/jsoup/parser/j;->H:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 16
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/j$d;->q(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V

    :goto_0
    return-void
.end method
