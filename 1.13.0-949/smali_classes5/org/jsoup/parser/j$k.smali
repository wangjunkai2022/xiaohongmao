.class final enum Lorg/jsoup/parser/j$k;
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
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->h()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lorg/jsoup/parser/Token$f;

    invoke-direct {p2}, Lorg/jsoup/parser/Token$f;-><init>()V

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->o(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lorg/jsoup/parser/j;->h:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object p2, Lorg/jsoup/parser/j;->b:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/i;->x(Lorg/jsoup/parser/j;)V

    .line 8
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->f()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->l(C)V

    :goto_0
    return-void
.end method
