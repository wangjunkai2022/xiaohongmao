.class final enum Lorg/jsoup/parser/j$s0;
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
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->f()C

    move-result p2

    const-string v0, "--!"

    if-eqz p2, :cond_3

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    iget-object v1, p1, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    .line 3
    sget-object p2, Lorg/jsoup/parser/j;->U:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->u(Lorg/jsoup/parser/j;)V

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->r()V

    .line 6
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->r()V

    .line 8
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p1, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    .line 10
    sget-object p2, Lorg/jsoup/parser/j;->V:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->x(Lorg/jsoup/parser/j;)V

    .line 12
    iget-object p2, p1, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    move-result-object p2

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    .line 13
    sget-object p2, Lorg/jsoup/parser/j;->U:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
