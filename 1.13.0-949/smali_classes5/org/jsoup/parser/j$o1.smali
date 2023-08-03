.class final enum Lorg/jsoup/parser/j$o1;
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
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->u(Lorg/jsoup/parser/j;)V

    const-string p2, "</"

    .line 3
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->i(Z)Lorg/jsoup/parser/Token$i;

    .line 7
    sget-object p2, Lorg/jsoup/parser/j;->j:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 8
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->x(Lorg/jsoup/parser/j;)V

    .line 10
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->x(Lorg/jsoup/parser/j;)V

    .line 12
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->f()V

    .line 13
    iget-object p2, p1, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$d;->p(C)Lorg/jsoup/parser/Token$d;

    .line 14
    sget-object p2, Lorg/jsoup/parser/j;->Q:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
