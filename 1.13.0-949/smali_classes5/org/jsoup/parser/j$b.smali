.class final enum Lorg/jsoup/parser/j$b;
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

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->E(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->j()V

    .line 3
    sget-object p2, Lorg/jsoup/parser/j;->l:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/i;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->i(Z)Lorg/jsoup/parser/Token$i;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/parser/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p2

    iput-object p2, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    .line 6
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->t()V

    .line 7
    sget-object p2, Lorg/jsoup/parser/j;->h:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_0

    :cond_1
    const-string p2, "<"

    .line 8
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lorg/jsoup/parser/j;->c:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
