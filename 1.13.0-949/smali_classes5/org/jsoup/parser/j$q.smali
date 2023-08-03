.class final enum Lorg/jsoup/parser/j$q;
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
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->j()V

    .line 3
    iget-object v0, p1, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<"

    .line 4
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->l(C)V

    .line 6
    sget-object p2, Lorg/jsoup/parser/j;->B:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 7
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/jsoup/parser/i;->j()V

    .line 9
    sget-object p2, Lorg/jsoup/parser/j;->z:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x3c

    .line 10
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->l(C)V

    .line 11
    sget-object p2, Lorg/jsoup/parser/j;->v:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
