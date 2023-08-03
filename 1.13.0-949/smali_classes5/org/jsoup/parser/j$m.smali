.class final enum Lorg/jsoup/parser/j$m;
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

    const/16 v0, 0x2d

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/i;->l(C)V

    .line 3
    sget-object p2, Lorg/jsoup/parser/j;->x:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lorg/jsoup/parser/j;->f:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
