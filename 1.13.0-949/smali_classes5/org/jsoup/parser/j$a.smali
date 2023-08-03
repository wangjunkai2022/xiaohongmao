.class final enum Lorg/jsoup/parser/j$a;
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


# virtual methods
.method m(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$i;->w(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->f()C

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 p2, 0x3e

    if-eq v0, p2, :cond_2

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    const/16 p2, 0x9

    if-eq v0, p2, :cond_4

    const/16 p2, 0xa

    if-eq v0, p2, :cond_4

    const/16 p2, 0xc

    if-eq v0, p2, :cond_4

    const/16 p2, 0xd

    if-eq v0, p2, :cond_4

    .line 4
    iget-object p1, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token$i;->v(C)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->u(Lorg/jsoup/parser/j;)V

    .line 6
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->U()V

    .line 8
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->x(Lorg/jsoup/parser/j;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->t()V

    .line 10
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object p2, Lorg/jsoup/parser/j;->P:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object p2, Lorg/jsoup/parser/j;->H:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-static {}, Lorg/jsoup/parser/j;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$i;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
