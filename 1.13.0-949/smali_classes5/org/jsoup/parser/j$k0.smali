.class final enum Lorg/jsoup/parser/j$k0;
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
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/i;->n:Lorg/jsoup/parser/Token$d;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->o(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/Token$d;->q(Ljava/lang/String;)Lorg/jsoup/parser/Token$d;

    .line 2
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result v0

    if-eq v0, v1, :cond_0

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->f()C

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->r()V

    .line 5
    sget-object p2, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :cond_1
    return-void
.end method
